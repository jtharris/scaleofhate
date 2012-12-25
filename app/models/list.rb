class List
  include Mongoid::Document
  include Mongoid::Timestamps

  field :owner_id, type: String
  field :name, type: String
  field :items, type: Array
end
