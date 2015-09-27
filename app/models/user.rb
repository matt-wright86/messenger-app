class User < ActiveRecord::Base
  has_secure_password
  acts_as_followable
  acts_as_follower

  has_many :messages, -> { order 'created_at desc' }



end
