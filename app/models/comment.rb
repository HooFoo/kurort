class Comment < ApplicationRecord

  belongs_to :user
  belongs_to :point

  mount_uploader :image, UserPhotoUploader

end
