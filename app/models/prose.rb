class Prose
  include MongoMapper::Document

  key :title, String
  key :content, String
  key :author, String
  key :created_at, Time

end
