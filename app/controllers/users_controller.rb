class UsersController < ApplicationController
	def new
	  	@user = User.new
 
	  	respond_to do |format|
    		format.html  # new.html.erb
    		format.json  { render :json => @user }
  		end
	end
	
	def find
	  	@user = User.find(params[:id])
 
	  	respond_to do |format|
    		format.html  # new.html.erb
    		format.json  { render :json => @user }
  		end
	end
	
	def create
		@user = User.new(params[:post])
		
		respond_to do |format|
    		if @user.save
		    	format.html  { redirect_to(@user,
                    :notice => 'Post was successfully created.') }
      			format.json  { render :json => @user,
                    :status => :created, :location => @user }
		    else
			    format.html  { render :action => "new" }
			    format.json  { render :json => @user.errors,
                    :status => :unprocessable_entity }
    		end
  		end
	end
	
	def index
		@users = User.all
		
		respond_to do |format|
	    	format.html  # index.html.erb
    		format.json  { render :json => @users }
  		end
	end
	
	def show
		@user = User.find(params[:id])
		
		respond_to do |format|
    		format.html  # show.html.erb
    		format.json  { render :json => @user }
  		end
  	end
  	
  	def edit
  		@user = User.find(params[:id])
  	end
  	
  	def update
  		@user = User.find(params[:id])
 
  		respond_to do |format|
    		if @user.update_attributes(params[:user])
      			format.html  { redirect_to(@user,
                    :notice => 'User was successfully updated.') }
      			format.json  { render :json => {}, :status => :ok }
    		else
		      	format.html  { render :action => "edit" }
      			format.json  { render :json => @user.errors,
                    :status => :unprocessable_entity }
    		end
  		end
	end
	
	def destroy
		@user = User.find(params[:id])
		@user.destroy
		
		respond_to do |format|
    		format.html { redirect_to users_url }
    		format.json { head :ok }
  		end
	end
end