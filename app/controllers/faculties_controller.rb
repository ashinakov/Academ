class FacultiesController < ApplicationController

  # GET /faculties
  # GET /faculties.xml
  def index
    @faculties = Faculty.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @faculties }
    end
  end

  # GET /faculties/1
  # GET /faculties/1.xml
  def show
    @faculty = Faculty.includes(:chairs).find(params[:id])
    @fac_chairs = Chair.where(:faculty_id => params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @faculty }
    end
  end

  # GET /faculties/new
  # GET /faculties/new.xml
  def new
    @faculty = Faculty.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @faculty }
    end
  end

  # GET /faculties/1/edit
  def edit
    @faculty = Faculty.find(params[:id])
  end

  # POST /faculties
  # POST /faculties.xml
  def create
    @faculty = Faculty.new(params[:faculty])

    respond_to do |format|
      if @faculty.save
        format.html { redirect_to(faculties_path, :notice => 'Факультет создан.') }
        format.xml  { render :xml => @faculty, :status => :created, :location => @faculty }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @faculty.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /faculties/1
  # PUT /faculties/1.xml
  def update
    @faculty = Faculty.find(params[:id])

    respond_to do |format|
      if @faculty.update_attributes(params[:faculty])
        format.html { redirect_to(faculty_path, :notice => 'Факультет переименован') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @faculty.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /faculties/1
  # DELETE /faculties/1.xml
  def destroy
    @faculty = Faculty.find(params[:id])
    @faculty.destroy

    respond_to do |format|
      format.html { redirect_to(faculties_url) }
      format.xml  { head :ok }
    end
  end
end
