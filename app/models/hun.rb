class Hun < ActiveRecord::Base
attr_accessible :name

has_many :comments

 validates_presence_of :name
end
