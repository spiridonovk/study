class UsersController < ApplicationController
skip_before_filter :verify_authenticity_token
 before_action :user_find, only: [:show, :edit, :update, :destroy]

def user_find 
  @user=User.find(params[:id])
end
def index
  @users=User.all
end
def show
 # @user=User.find(params[:id])
end

 def edit
 # @user = User.find(params[:id])
 end
def create
  #@user=User.create(params[:user])
  @user=User.create(name: params[:user][:name], family: params[:user][:family], avatar: params[:user][:avatar])
  redirect_to '/users/'
  if @user.errors.empty?
 	  flash[:good] = "Все хорошо"
 	else
    flash[:bad]="Все пипец #{@user.errors.messages[:name]}"

  end
end
def destroy
#  @user = User.find(params[:id])
  @user.destroy
  flash[:delet] = "Удалено"
  redirect_to '/users/'
end
def update 
 # @user = User.find(params[:id])
   @user.update!(person_params)
   redirect_to '/users/'

end
 def person_params
      params.require(:user).permit(:name, :family, :avatar)
    end
def snip
params.require(:user).permit(:name, :family)
end

def new

end
  def new_page
 
  end
end

