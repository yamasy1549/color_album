class DesignsController < ApplicationController
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
end
