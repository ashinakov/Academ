class WishesController < ApplicationController
  before_filter :check_user_wish,:only=>[:edit,:destroy,:update]

  # GET /wishes
  # GET /wishes.xml
  def index
    @wishes = Wish.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @wishes }
    end
  end

  # GET /wishes/1
  # GET /wishes/1.xml
  def show
    @wish = Wish.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @wish }
    end
  end

  # GET /wishes/new
  # GET /wishes/new.xml
  def new
    @wish = Wish.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @wish }
    end
  end

  # GET /wishes/1/edit
  def edit
    @wish = Wish.find(params[:id])
  end

  # POST /wishes
  # POST /wishes.xml
  def create
    @wish = Wish.new(params[:wish])
    @wish.user_id=@current_user.id
    respond_to do |format|
      if @wish.save
        format.html { redirect_to(wishes_path, :notice => 'Пожелание создано.') }
        format.xml  { render :xml => @wish, :status => :created, :location => @wish }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @wish.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /wishes/1
  # PUT /wishes/1.xml
  def update
    @wish = Wish.find(params[:id])

    respond_to do |format|
      if @wish.update_attributes(params[:wish])
        format.html { redirect_to(wishes_path, :notice => '') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @wish.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /wishes/1
  # DELETE /wishes/1.xml
  def destroy
    @wish = Wish.find(params[:id])
    @wish.destroy

    respond_to do |format|
      format.html { redirect_to(wishes_url) }
      format.xml  { head :ok }
    end
  end
end
