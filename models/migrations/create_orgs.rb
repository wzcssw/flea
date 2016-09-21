ActiveRecord::Schema.define do
  # 创建表
  drop_table :orgs if table_exists? :orgs
  create_table :orgs do |table|
    table.column :name, :string
    table.column :url, :string
    table.column :alt, :string
    table.column :mark, :string
  end

end
