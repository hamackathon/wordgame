class UsersController < ApplicationController
  def list
 	@users = User.all
   	#@deleted_users = User.only_deleted
  end
end
