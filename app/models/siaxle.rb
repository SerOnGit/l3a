class Siaxle < ApplicationRecord

  has_one_attached :sia_image

  validate :acceptable_image

  validates :name, presence: true

  validates :description, length: { minimum: 1 }


  # validates :image_file_name, format: {
  #   with: /\w+\.(jpg|png)\z/i,
  #   message: "must be a JPG or PNG image"
  # }

  def self.upcoming
    where("starts_at > ?", Time.now).order("starts_at")
  end

  private

  def acceptable_image
    return unless sia_image.attached?
  
    unless sia_image.blob.byte_size <= 3.megabyte
      errors.add(:sia_image, "is too big")
    end
  
    acceptable_types = ["image/jpeg", "image/png"]
    unless acceptable_types.include?(sia_image.content_type)
      errors.add(:sia_image, "must be a JPEG or PNG")
    end
  end

  
end
