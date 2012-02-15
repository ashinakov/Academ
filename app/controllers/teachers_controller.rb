class TeachersController < ApplicationController


  # GET /teachers
  # GET /teachers.xml
  def index
    @teachers = Teacher.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @teachers }
    end
  end

  # GET /teachers/1
  # GET /teachers/1.xml
  def show
    @teacher = Teacher.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @teacher }
    end
  end

  # GET /teachers/new
  # GET /teachers/new.xml
  def new
    @teacher = Teacher.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @teacher }
    end
  end

  # GET /teachers/1/edit
  def edit
    @teacher = Teacher.find(params[:id])
  end

  # POST /teachers
  # POST /teachers.xml
  def create
    @teacher = Teacher.new(params[:teacher])
#u = User.new(:f_name => @teacher.f_name, :s_name => @teacher.s_name, :l_name => @teacher.l_name, :login => @teacher.login, :password => @teacher.password, :password_confirmation => @teacher.password, :role => 0)
    if @teacher.save
      u = User.new
      u.f_name = @teacher.f_name
      u.s_name = @teacher.s_name
      u.l_name = @teacher.l_name
      u.login = @teacher.login
      u.password = @teacher.password
      u.password_confirmation = @teacher.password
      u.role=0
      u.save
      
      redirect_to @teacher, :notice => ' '
    else
      render :action => "new"
    end
  end

  # PUT /teachers/1
  # PUT /teachers/1.xml
  def update
    @teacher = Teacher.find(params[:id])

    respond_to do |format|
      if @teacher.update_attributes(params[:teacher])
        format.html { redirect_to(@teacher, :notice => 'Информация отредактирована.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @teacher.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /teachers/1
  # DELETE /teachers/1.xml
  def destroy
    @teacher = Teacher.find(params[:id])  
    @teacher.destroy


    respond_to do |format|
      format.html { redirect_to(teachers_url) }
      format.xml  { head :ok }
    end
  end
end
