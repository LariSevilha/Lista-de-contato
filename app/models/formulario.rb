class Formulario < ApplicationRecord
  mount_uploader :icon, ImageFormUploader
  searchkick index_prefix: "lista"

end
