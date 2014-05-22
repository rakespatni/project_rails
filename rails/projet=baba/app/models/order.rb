class Order < ActiveRecord::Base
validates_presence_of :quantity
end
