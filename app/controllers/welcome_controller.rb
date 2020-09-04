class WelcomeController < ApplicationController
  before_action :check_name, except: [:get_name]
  def index

  end

  def get_name
    render 'welcome/name'
  end

  private

  def check_name
    if params[:name] != 'name'
      redirect_to root_path
    end
  end
end
