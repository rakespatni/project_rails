class Registration < ActiveRecord::Base
validates_presence_of :name
validates_numericality_of :phone, :only_integer=>true
validates_uniqueness_of :name
end
