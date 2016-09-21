# 这里需要清理
require 'active_record'
require 'pathname'
require 'faraday'
require 'nokogiri'
require 'settingslogic'


require 'require_all'

# 配置文件
require_all 'config/settings.rb'
# models
require_all 'models'
# tools
require_all 'tools'


# 数据库链接
ActiveRecord::Base.establish_connection Settings.database
