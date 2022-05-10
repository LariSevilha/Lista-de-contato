class Formulario < ApplicationRecord
  mount_uploader :icon, ImageFormUploader
  searchkick 

end
