class Type < ApplicationRecord
  belongs_to :category

  enum occasion: [ :cold, :cool, :hot ]
end
