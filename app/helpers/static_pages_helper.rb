module StaticPagesHelper
  IMG_SRC_BASE_URL = "https://live.staticflickr.com/"
  def img_src_url(photo)
    "#{IMG_SRC_BASE_URL}#{photo['server']}/#{photo['id']}_#{photo['secret']}.jpg"
  end
end
