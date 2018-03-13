class Patient < ActiveRecord::Base
  has_many :reviews
end
