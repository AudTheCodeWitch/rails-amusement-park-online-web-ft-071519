class User < ActiveRecord::Base
  has_many :rides
  has_many :attractions, through: :rides
  has_secure_password

  def mood
    nausea > happiness ? 'sad' : 'happy'
  end

  def is_admin?
    admin
  end
end
