class User < ActiveRecord::Base
  has_many :microposts
  has_one  :electronic_purse
end
