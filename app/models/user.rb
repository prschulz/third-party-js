class User < ActiveRecord::Base

  include Tokenable

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  before_create :assign_level

  def assign_level
    self.level = rand(0..10)
  end
end
