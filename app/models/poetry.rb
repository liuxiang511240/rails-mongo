class Poetry
  include MongoMapper::Document
  # validates_absence_of :title, :message => '必须填写title'
  # validates_absence_of :content, :message => '必须填写内容！'
  # validates_absence_of :author, :message => '必须填写作者！'
  key :title, String
  key :content, String
  key :author, String
  key :created_at, Time
end
