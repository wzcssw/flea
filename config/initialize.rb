# require 'active_record'
# require 'pathname'
# require 'faraday'
# require 'nokogiri'


require 'require_all'

# 加载 models
require_all 'models'

# 加载 tools
require_all 'tools'

# 初始化 active_record
ActiveRecord::Base.establish_connection(
    :adapter => "mysql2",
    :database  => "data_acquisition_development",
    :username  => "root",
    :password  => "hdwzc",
    :socket  => "/tmp/mysql.sock"
  )
