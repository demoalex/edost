class OrdersController < ApplicationController
	layout "default2"
	before_filter :authenticate_user!
	def index
		begin
		if((current_user.role)>2)
			@orders = Order.find(:all,:order => "created_at")
		else
			@orders = Order.find_all_by_userid(current_user.id,:order => "created_at")
		end
		rescue ActiveRecord::RecordNotFound
			logger.error("Attempt to access invalid product #{params[:id]}" )
			flash[:notice] = "Invalid product"
			redirect_to :action => 'index'
		else
			respond_to do |format|
	        format.html # index.html.erb
	        format.xml  { render :xml => @orders }
    		end
		end
	end
	def show
		begin
    		@order = Order.find(params[:id])
		rescue ActiveRecord::RecordNotFound
			logger.error("Attempt to access invalid product #{params[:id]}" )
			flash[:notice] = "Invalid product"
			redirect_to :action => 'index'
		else
		    respond_to do |format|
		      format.html # show.html.erb
		      format.xml  { render :xml => @order }
		    end
		end
  	end
  	def edit
  		begin
    	@order = Order.find(params[:id])
		rescue ActiveRecord::RecordNotFound
			logger.error("Attempt to access invalid product #{params[:id]}" )
			flash[:notice] = "Invalid product"
			redirect_to :action => 'index'
		else
		end
  	end
  	def update
  		begin
   			@order = Order.find(params[:id])
    	rescue ActiveRecord::RecordNotFound
			logger.error("Attempt to access invalid product #{params[:id]}" )
			flash[:notice] = "Invalid product"
			redirect_to :action => 'index'
		else
		    if(params[:order][:status].to_i==0)
		    	params[:order][:cycle]=0
		    	
			elsif params[:order][:status].to_i<5
				params[:order][:cycle]=1
			else
				params[:order][:cycle]=params[:order][:status].to_i-3
			end
		    respond_to do |format|
		      if @order.update_attributes(params[:order])
		        flash[:notice] = 'Заказ изменен'
		        format.html { redirect_to(@order) }
		        format.xml  { head :ok }
		      else
		        format.html { render :action => "edit" }
		        format.xml  { render :xml => @order.errors, :status => :unprocessable_entity }
		      end
		    end
    	end
  	end
  	def new
  		@order = Order.new
		
    	respond_to do |format|
      		format.html # new.html.erb
      		format.xml  { render :xml => @order }
    	end
  	end
  	def create
  		params[:order][:userid]=current_user.id
  		params[:order][:status]=0
    	@order = Order.new(params[:order])
	
    respond_to do |format|
      if @order.save
        flash[:notice] = 'Заказ создан.'
        format.html { redirect_to(@order) }
        format.xml  { render :xml => @order, :status => :created, :location => @order }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @product.errors, :status => :unprocessable_entity }
      end
    end
  end
end
