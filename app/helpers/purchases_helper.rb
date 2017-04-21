module PurchasesHelper
    def purchase_pic(purchased_clothing)
    if purchased_clothing.photo? == false
      asset_path('boy_clothing.jpeg')
    else
      cl_image_path purchased_clothing.photo, height: 300, width: 400, crop: :fill
    end
  end
end
