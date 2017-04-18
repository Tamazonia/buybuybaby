module ClothingsHelper
  def clothing_pic(clothing)
    if clothing.photo? == false
      asset_path('boy_clothing.jpeg')
    else
      cl_image_path clothing.photo, height: 300, width: 400, crop: :fill
    end
  end
end
