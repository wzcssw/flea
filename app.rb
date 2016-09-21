require './config/initialize'

doc = Rocket.get_elements('http://www.easyicon.net/iconsearch/panda/')
elements = doc.search("img")
result = elements.select{|attributes| attributes['width']='100'}
result.each do |e|
  uri = URI.parse(e.attributes['src'])
  obj = Hash.new
  obj[:url] = uri.to_s
  obj[:name] = uri.path.split('/').last
  obj[:alt] = e.attributes['alt']
  obj[:mark] = uri.request_uri
  #存入数据库
  org = Org.where(name: uri.request_uri).first_or_create
  org.update obj
  # # 保存文件
  # file_body = Rocket.get_elements(uri.to_s)
  # Downloador.save_file(obj[:name],file_body)
end

# Downloador.save_file(1,2)
