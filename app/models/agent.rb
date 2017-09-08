class Agent < ApplicationRecord
     has_many :properties    
     mount_uploader :image, ImageUploader
end
