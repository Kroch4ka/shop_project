require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    before(:each) do
      @user = FactoryBot.build(:user)
    end

    describe 'first_name' do

      it 'should be valid with' do
        expect(@user).to be_valid
      end

      it 'should be invalid with nil' do
        @user.first_name = nil

        expect(@user).to_not be_valid
        expect(@user.errors[:first_name].size).to be > 0
      end

      it 'should be invalid with empty string' do
        @user.first_name = ''

        expect(@user).to_not be_valid
        expect(@user.errors[:first_name].size).to be > 0
      end
    end

    describe 'last_name' do

      it 'should be valid with' do
        expect(@user).to be_valid
      end

      it 'should be invalid with nil' do
        @user.last_name = nil

        expect(@user).to_not be_valid
        expect(@user.errors[:last_name].size).to be > 0
      end

      it 'should be invalid with empty string' do
        @user.last_name = ''

        expect(@user).to_not be_valid
        expect(@user.errors[:last_name].size).to be > 0
      end
    end
  end
end
