module Rocket
  def self.get_page (url) # 发送数据
    response = Faraday.get url
    response.body
  end

  def self.get_elements (url)
       str = get_page(url)
       Nokogiri::HTML(str)
  end
end
