class Project < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  has_many :technologies
  accepts_nested_attributes_for :technologies,
                                allow_destroy: true,
                                reject_if: lambda { |attrs| attrs['name'].blank? }

  validates_presence_of :title, :body, :main_image, :thumb_image

  mount_uploader :main_image, ProjectUploader
  mount_uploader :thumb_image, ProjectUploader
end
