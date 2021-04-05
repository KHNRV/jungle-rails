require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    context 'new user' do
      it "save successfuly when password match" do
        User.create(first_name: "Rick",last_name: "Sanchez", email: "rick.sanchez@citadel.rick", password: "morty+jessica", password_confirmation: "morty+jessica")
        expect(User.where(email: "rick.sanchez@citadel.rick")).to exist
      end
      it "does not save when password mismatch" do
        @user = User.create(first_name: "Rick",last_name: "Sanchez", email: "rick.sanchez@citadel.rick", password: "morty+jessica", password_confirmation: "mortyandjessica")
        expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
      end
      it 'does not save when password_confirmation missing' do
        @user = User.create(first_name: "Rick",last_name: "Sanchez", email: "rick.sanchez@citadel.rick", password: "morty+jessica", password_confirmation: "")
        expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
      end
      it 'does not save when email is already used (case insensitive)' do
        @user_1 = User.create(first_name: "Rick",last_name: "Sanchez", email: "rick.sanchez@citadel.rick", password: "morty+jessica", password_confirmation: "morty+jessica")
        @user_2 = User.create(first_name: "Rick",last_name: "Sanchez", email: "rick.sanchez@citadel.rick", password: "morty+jessica", password_confirmation: "morty+jessica")
        expect(@user_2.errors.full_messages).to include("Email has already been taken")
        @user_3 = User.create(first_name: "Rick",last_name: "Sanchez", email: "Rick.Sanchez@Citadel.Rick", password: "morty+jessica", password_confirmation: "morty+jessica")
        expect(@user_3.errors.full_messages).to include("Email has already been taken")
      end
      it 'does not save when password is less than 8 characters' do
        @user = User.create(first_name: "Rick",last_name: "Sanchez", email: "rick.sanchez@citadel.rick", password: "morty", password_confirmation: "morty")
        expect(@user.errors.full_messages).to include("Password is too short (minimum is 8 characters)")
      end
    end
  end
  describe '.authenticate_with_credentials' do
    context "When user logs in"
    it 'return user when auhtentification is a success' do
      @user = User.create(first_name: "Rick",last_name: "Sanchez", email: "rick.sanchez@citadel.rick", password: "morty+jessica", password_confirmation: "morty+jessica")
      @result = @user.authenticate_with_credentials("rick.sanchez@citadel.rick", "morty+jessica")
      expect(@result).to match(@user)
    end
    it 'return nil when auhtentification is not a success' do
      @user = User.create(first_name: "Rick",last_name: "Sanchez", email: "rick.sanchez@citadel.rick", password: "morty+jessica", password_confirmation: "morty+jessica")
      @result = @user.authenticate_with_credentials("rick.sanchez@citadel.rick", "mortyandjessica")
      expect(@result).to be_nil
    end
    it 'auhtentification should be not take whitesapces into account' do
      @user = User.create(first_name: "Rick",last_name: "Sanchez", email: "rick.sanchez@citadel.rick", password: "morty+jessica", password_confirmation: "morty+jessica")
      @result = @user.authenticate_with_credentials(" rick.sanchez@citadel.rick   ", "morty+jessica")
      expect(@result).to match(@user)
    end
    it 'auhtentification should be case incensitive' do
      @user = User.create(first_name: "Rick",last_name: "Sanchez", email: "rick.sanchez@citadel.rick", password: "morty+jessica", password_confirmation: "morty+jessica")
      @result = @user.authenticate_with_credentials("Rick.Sanchez@Citadel.Rick", "morty+jessica")
      expect(@result).to match(@user)
    end
  end
end

