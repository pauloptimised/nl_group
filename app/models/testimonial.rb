class Testimonial < ActiveRecord::Base

  mount_uploader :image, TestimonialUploader

  validates :forename, :surname, :role, :content, presence: true

  scope :displayed, -> { where(display: true) }
  scope :positioned, -> { } #order(:position) }
end
