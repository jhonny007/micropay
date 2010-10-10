class User < ActiveRecord::Base
  has_many :microposts
  has_one  :electronic_purse

  attr_accessor :name, :email

  def initialize(attributes = {})
    @name  = attributes[:name]
    @email = attributes[:email]
  end

  def formatted_email
    "#{@name} <#{@email}>"
  end
end
