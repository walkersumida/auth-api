class TopController < ApplicationController
  include DeviseTokenAuth::Concerns::SetUserByToken
  before_action :authenticate_user!
  skip_before_action :authenticate_user!, only: :index

  def index
  end

  def show
    binding.pry
  end
end
