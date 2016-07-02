class Design < ActiveRecord::Base
  attr_accessor :title, :image

  mount_uploader :image, ImageUploader
end
