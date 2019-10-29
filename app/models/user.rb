class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :trackable, :rememberable, :validatable, :authentication_keys => [:username]
  validates_uniqueness_of :username
  has_many :scores, dependent: :destroy
  
  def email_required?
    false
  end

  def will_save_change_to_email?
    false
  end

  def email_changed?
    false
  end
end
