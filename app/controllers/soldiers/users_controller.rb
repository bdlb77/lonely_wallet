class Soldiers::UsersController < ApplicationController
    
  def dashboard
    @soldier = {name: 'Steve'}
  end
end
