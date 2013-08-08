class User < ActiveRecord::Base

	attr_accessible :email, :password, :password_confirmation
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # attr_accessible :title, :body

  # Forem depends on to_s method being available for User model to display user name in posts
  def to_s
  	name
  end

  # Forem depends on email method to display avatars using Gravatar
  # def email
  # 	email_address
  # end

end
