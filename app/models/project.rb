class Project
  include MongoMapper::Document

  key :name, String
  key :priority, Integer
end
