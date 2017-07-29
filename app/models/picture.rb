class Picture < ApplicationRecord
mount_uploader :image, ImagesUploader
end