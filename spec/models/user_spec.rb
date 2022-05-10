require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    it 'must be created with a password and password_confirmation fields' do
      @user = User.new(
        :first_name => 'Kevin',
        :last_name => 'Lee',
        :email => 'kevin@hotmail.com',
        :password => '12345678',
        :password_confirmation => '87654321'
      )
      expect(@user).to_not be_valid
      expect(@user.errors.full_messages).to include "Password confirmation doesn't match Password"
    end

    it 'must be a unique email' do
      @user1 = User.create(
        :first_name => 'Kevin',
        :last_name => 'Lee',
        :email => 'kevin@hotmail.com',
        :password => '123456789',
        :password_confirmation => '123456789'
      )
      @user2 = User.create(
        :first_name => 'Kevin',
        :last_name => 'Lee',
        :email => 'KEVIN@hotmail.com',
        :password => '12345678',
        :password_confirmation => '12345678'
      )
      expect(@user2).to_not be_valid
      expect(@user2.errors.full_messages).to include "Email has already been taken"
    end
    
    it 'must meet the minumum password length' do
      @user = User.new(
        :first_name => 'Kevin',
        :last_name => 'Lee',
        :email => 'kevin@hotmail.com',
        :password => '123',
        :password_confirmation => '123'
      )
      expect(@user).to_not be_valid
      expect(@user.errors.full_messages).to include "Password is too short (minimum is 8 characters)"
    end
  end

  describe '.authenticate_with_credentials' do
    it 'returns an instance of the user' do
      @user1 = User.create(
        :first_name => 'Kevin',
        :last_name => 'Lee',
        :email => 'kevin@hotmail.com',
        :password => '12345678',
        :password_confirmation => '12345678'
      )
      @user1 = User.authenticate_with_credentials('  KeViN@hotmail.com  ', '12345678')
      expect(@user1).to be_an_instance_of(User)
    end
  end
end
