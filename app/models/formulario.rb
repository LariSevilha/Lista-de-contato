class Formulario < ApplicationRecord
  mount_uploader :icon, ImageFormUploader
  validates :name, :phone, :company, :email, presence: true
  searchkick index_prefix: "lista"

end
