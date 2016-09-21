# 下载文件（至 file 目录）

module Downloador
    def self.save_file(file_name,body)
      puts Pathname.new(File.dirname(__FILE__)).realpath
      # # path = '../file/' << file_name
      # path = '/Users/Orange/Desktop/Org/file/' << file_name
      # # 保存文件
      # File.open(path, 'wb') { |fp| fp.write(body) }

    end
end
