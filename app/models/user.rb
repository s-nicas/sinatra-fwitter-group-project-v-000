class User < ActiveRecord::Base
  has_secure_password
  validates :username, presence: true
  validates :email, presence: true
  has_many :tweets

  include Slugify::InstanceMethods
    extend Slugify::ClassMethods
end
