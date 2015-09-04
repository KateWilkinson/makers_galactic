class Flight < ActiveRecord::Base
  has_many :tickets
end
