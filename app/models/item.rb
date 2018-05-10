class Item < ApplicationRecord
    belongs_to :user
    mount_uploader :image, ImageUploader
    
    def self.search(search)
        where("name ILIKE ? OR description I LIKE ? OR category ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", )
    end
end
