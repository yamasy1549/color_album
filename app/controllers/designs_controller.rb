class DesignsController < ApplicationController
  skip_before_filter :verify_authenticity_token
  before_action :set_design, only: [:show, :edit, :update, :destroy]

  def index
    @designs = Design.all
  end

  def show
  end

  def new
    @design = Design.new
  end

  def edit
  end

  def create
    @design = Design.new(design_params)

    respond_to do |format|
      if @design.save
        get_color_info

        format.html { redirect_to @design, notice: 'Design was successfully created.' }
        format.json { render :show, status: :created, location: @design }
      else
        format.html { render :new }
        format.json { render json: @design.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @design.update(design_params)
        get_color_info

        format.html { redirect_to @design, notice: 'Design was successfully updated.' }
        format.json { render :show, status: :ok, location: @design }
      else
        format.html { render :edit }
        format.json { render json: @design.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @design.destroy
    respond_to do |format|
      format.html { redirect_to designs_url, notice: 'Design was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_design
      @design = Design.find(params[:id])
    end

    def design_params
      params.require(:design).permit(:title, :image, :tag_list)
    end

    def get_color_info
      Design.transaction do
        uri = URI.parse('http://color-album-api-server.herokuapp.com/color_info')
        http = Net::HTTP.new(uri.host, uri.port)

        req = Net::HTTP::Post.new(uri.request_uri)
        req["Content-Type"] = "application/json"
        req.body = { image: @design.image.url }.to_json
        res = http.request(req)
        @design.tag_list.add(JSON.parse(res.body))
        @design.save
      end
    end
end
