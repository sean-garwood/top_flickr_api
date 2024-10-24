module StaticPagesHelper
  IMG_SRC_BASE_URL = "https://live.staticflickr.com/"
  def img_src_url(photo)
    "#{IMG_SRC_BASE_URL}#{photo['server']}/#{photo['id']}_#{photo['secret']}.jpg"
  end

  def title(photo)
    photo["title"]
  end

  def description(photo)
    photo["description"]
  end
end
