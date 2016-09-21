require 'active_record'

ActiveRecord::Base.establish_connection(
    :adapter => "mysql2",
    :database  => "data_acquisition_development",
    :username  => "root",
    :password  => "hdwzc",
    :socket  => "/tmp/mysql.sock"
  )


ActiveRecord::Schema.define do
  drop_table :orgs if table_exists? :orgs
  create_table :orgs do |table|
    table.column :name, :string
    table.column :url, :string
    table.column :alt, :string
    table.column :mark, :string
  end
end
