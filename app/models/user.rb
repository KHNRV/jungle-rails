class User < ActiveRecord::Base
  has_secure_password
  validates :email, uniqueness: {case_sensitive: false}
  validates :password, confirmation: true, length: { minimum: 8 }

  def authenticate_with_credentials(email, password)
    @user = User.find_by_email(email.strip.downcase)
    return (@user && @user.authenticate(password) )? @user : nil
  end
end
