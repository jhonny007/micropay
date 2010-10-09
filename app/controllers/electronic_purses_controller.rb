class ElectronicPursesController < ApplicationController
  # GET /electronic_purses
  # GET /electronic_purses.xml
  def index
    @electronic_purses = ElectronicPurse.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @electronic_purses }
    end
  end

  # GET /electronic_purses/1
  # GET /electronic_purses/1.xml
  def show
    @electronic_purse = ElectronicPurse.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @electronic_purse }
    end
  end

  # GET /electronic_purses/new
  # GET /electronic_purses/new.xml
  def new
    @electronic_purse = ElectronicPurse.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @electronic_purse }
    end
  end

  # GET /electronic_purses/1/edit
  def edit
    @electronic_purse = ElectronicPurse.find(params[:id])
  end

  # POST /electronic_purses
  # POST /electronic_purses.xml
  def create
    @electronic_purse = ElectronicPurse.new(params[:electronic_purse])

    respond_to do |format|
      if @electronic_purse.save
        format.html { redirect_to(@electronic_purse, :notice => 'Electronic purse was successfully created.') }
        format.xml  { render :xml => @electronic_purse, :status => :created, :location => @electronic_purse }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @electronic_purse.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /electronic_purses/1
  # PUT /electronic_purses/1.xml
  def update
    @electronic_purse = ElectronicPurse.find(params[:id])

    respond_to do |format|
      if @electronic_purse.update_attributes(params[:electronic_purse])
        format.html { redirect_to(@electronic_purse, :notice => 'Electronic purse was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @electronic_purse.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /electronic_purses/1
  # DELETE /electronic_purses/1.xml
  def destroy
    @electronic_purse = ElectronicPurse.find(params[:id])
    @electronic_purse.destroy

    respond_to do |format|
      format.html { redirect_to(electronic_purses_url) }
      format.xml  { head :ok }
    end
  end
end
