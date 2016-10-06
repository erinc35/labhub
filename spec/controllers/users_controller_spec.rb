require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe 'GET user#index' do
    context 'when user is logged in' do
      with :user
      before do
        sign_in user
        get :index
      end
      it { is_expected.to respond_with :ok }
      it { is_expected.to render_with_layout }
      it { is_expected.to render_template }
    end
    context 'when user is logged out' do
      before do
        get :index
      end
      it { is_expected.to redirect_to }
      it { is_expected.to set_the_flash }
    end
  end

  describe 'GET user#create' do
    context 'when user is logged in' do
      with :user
      before do
        sign_in user
        get :index
      end
      it { is_expected.to redirect_to }
      it { is_expected.to set_the_flash }
    end
    context 'when user is logged out' do
      before do
        get :index
      end
      it { is_expected.to respond_with :ok }
      it { is_expected.to render_with_layout }
      it { is_expected.to render_template }
    end
  end
end
