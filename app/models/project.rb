class Project < ApplicationRecord
  include PlaceHolder
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates_presence_of :title, :body, :main_image, :thumb_image

  after_initialize :set_defaults
  def set_defaults
    self.main_image ||= PlaceHolder.image_generator(height: '600', width: '400')
    self.thumb_image ||= PlaceHolder.image_generator(height: '350', width: '200')
  end
end