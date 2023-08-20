class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable


  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :name, presence: true, length: { maximum: 50 }
  # validates :email, presence: true, length: { maximum: 50 },
                    # format: { with: VALID_EMAIL_REGEX },
                    # uniqueness: true
  # validates :password, presence: true, length: { minimum: 6 }, on: :create
  # validates_confirmation_of :password

end
