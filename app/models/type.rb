# frozen_string_literal: true

class Type < ApplicationRecord
  belongs_to :category

  enum occasion: [ :cold, :cool, :hot ]
end
