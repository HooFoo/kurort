class Point < ApplicationRecord

  belongs_to :user

  mount_uploader :image, UserPhotoUploader

end
