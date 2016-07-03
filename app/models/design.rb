class Design < ActiveRecord::Base
  acts_as_taggable_on :color_tags, :custom_tags
  attr_accessor :image

  mount_uploader :image, ImageUploader
end
