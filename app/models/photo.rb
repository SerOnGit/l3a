class Photo < ApplicationRecord

  has_one_attached :pho_image
  

  validate :acceptable_image

    # validates :image_name, presence: true


    def self.next(photo)
      where('id < ?', photo.id).last
    end
    
    def self.previous(photo)
      where('id > ?', photo.id).first
    end

    private

    def acceptable_image
      return unless pho_image.attached?
    
      unless pho_image.blob.byte_size <= 5.megabyte
        errors.add(:pho_image, "is too big")
      end
    
      acceptable_types = ["image/jpeg", "image/png", "video/mp4", "video/avi"]
      unless acceptable_types.include?(pho_image.content_type)
        errors.add(:pho_image, "must be a JPEG or PNG or MP4 or AVI")
      end
    end
  

end
