class Event < ApplicationRecord

  has_one_attached :eve_image

  validates :name, presence: true

  validates :description, length: { minimum: 1 }

  validate :acceptable_image


  # validates :image_file_name, format: {
  #   with: /\w+\.(jpg|png)\z/i,
  #   message: "must be a JPG or PNG image"
  # }

  def self.upcoming
    where("starts_at > ?", Time.now).order("starts_at")
  end

  private

  def acceptable_image
    return unless eve_image.attached?
  
    unless eve_image.blob.byte_size <= 3.megabyte
      errors.add(:eve_image, "is too big")
    end
  
    acceptable_types = ["image/jpeg", "image/png"]
    unless acceptable_types.include?(eve_image.content_type)
      errors.add(:eve_image, "must be a JPEG or PNG")
    end
  end

end
