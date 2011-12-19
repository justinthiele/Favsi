class ListsController < ApplicationController
  before_filter :authenticate_user!, :except => [:show, :index, :create]  
  
  
  # GET /lists
  # GET /lists.xml
  def index
    @lists = List.order("id DESC").page(params[:page]).per(20)
    @tags = List.tag_counts_on(:tags).sort { |x, y| x.name <=> y.name }

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @lists }
    end
  end

  # GET /lists/1
  # GET /lists/1.xml
  def show
    @list = List.find(params[:id])  
    
    @newlist = List.new
    4.times { @newlist.items.build }    


    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @list }
    end
  end


  # GET /lists/new
  # GET /lists/new.xml
  def new
    @list = List.new
    4.times { @list.items.build }

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @list }
    end
  end

  # GET /lists/1/edit
  def edit
    @list = current_user.lists.find(params[:id])
  end

  # POST /lists
  # POST /lists.xml
  
  def create
    
    if current_user.nil?
       # store the form data in the session so we can retrieve it after login
       session[:list] = params
       redirect_to new_user_registration_path    
    
    else
      @list = current_user.lists.new(params[:list])
      respond_to do |format|
        if @list.save
          format.html { redirect_to(user_list_path(@list.user, @list), :notice => 'Sweet, your list has been created. Tell your friends :)') }
          format.xml  { render :xml => @list, :status => :created, :location => @list }
        else
          format.html { render :action => "new" }
          format.xml  { render :xml => @list.errors, :status => :unprocessable_entity }
        end
      end
    end
  end
  

  # PUT /lists/1
  # PUT /lists/1.xml
  def update
    @list = current_user.lists.find(params[:id])

    respond_to do |format|
      if @list.update_attributes(params[:list])
        format.html { redirect_to(user_list_path(@list.user, @list), :notice => 'Updated. Much better now :)') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @list.errors, :status => :unprocessable_entity }
      end
    end
  end



  # DELETE /lists/1
  # DELETE /lists/1.xml
  def destroy
    @list = current_user.lists.find(params[:id])
    @list.destroy

    respond_to do |format|
      format.html { redirect_to(@list.user, :notice => 'Done. That list is sleeping with the fishes.') }
      format.xml  { head :ok }
    end
  end
  
end
