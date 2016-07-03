module DesignsHelper
  def destroy_icon(target)
    link_to target, method: :delete, data: { confirm: 'Are you sure?' }, class: 'icon_edit' do
      fa_icon 'trash'
    end
  end

  def edit_icon(target)
    link_to target, class: 'icon_destroy' do
      fa_icon 'pencil'
    end
  end
end
