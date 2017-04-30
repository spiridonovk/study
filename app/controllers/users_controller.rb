class UsersController < ApplicationController
skip_before_filter :verify_authenticity_token
  def index
  	   @users=User.all
  end
  def show
  	  	@user=User.find(params[:id])
  end
  def create
    	@user=User.create(name: params[:name], family: params[:family])
    	redirect_to '/users/'
 if @user.errors.empty?
 	flash[:good] = "Все хорошо"
 	 else
  flash[:bad]="Все пипец #{@user.errors}"

end
  end
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:delet] = "Удалено"
    redirect_to '/users/'

end
def new

end
  def new_page
  	@a= "\\      \\ d      \s d"
	@b= '1\\        \\   \s'
  end
end

