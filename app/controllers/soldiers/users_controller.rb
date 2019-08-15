class Soldiers::UsersController < ApplicationController
    before_action :is_soldier?, only: [:dashboard]
  def dashboard
    @soldier = {name: 'Steve'}
  end

  private 

  def is_soldier?
    unless current_user.soldier?
      redirect_to root_path, notice: 'You cannot access this page.'
    end
  end
end
