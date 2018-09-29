class Session
  include Mongoid::Document
  field :lensession, type: Integer
  field :wisession, type: Integer
  field :hesession, type: Integer
  field :wesession, type: Integer

  has_one :product
end
