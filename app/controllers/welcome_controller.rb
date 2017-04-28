class WelcomeController < ApplicationController
	skip_before_filter :verify_authenticity_token
  def index
  	   @users_list=User.all
  end
  def show
  	  	@user=User.find(params[:id])
  end
  def create
  	p params
  	
  	@user=User.create(name: params[:name], family: params[:family])
 redirect_to '/welcome/'
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
    redirect_to '/welcome/'

end
  def new_page

  end
end
