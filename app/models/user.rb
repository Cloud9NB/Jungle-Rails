class User < ApplicationRecord

  has_secure_password
  validates :password, :length => { :minimum => 8 },
                       :presence => true
  validates :password_confirmation, :presence => true

  validates :email, :uniqueness => { :case_sensitive => false },
                    :presence => true

  validates :first_name, :presence => true
  validates :last_name, :presence => true

  def self.authenticate_with_credentials(email, password)
    email = email.strip.downcase

    @user = User.find_by_email(email)
    if @user && @user.authenticate(password)
      @user
    else
      nil
    end
  end


end
