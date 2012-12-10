class List
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :items, type: Array
end
