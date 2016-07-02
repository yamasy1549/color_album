class Design < ActiveRecord::Base
  acts_as_taggable
  attr_accessor :title, :image

  mount_uploader :image, ImageUploader
end
