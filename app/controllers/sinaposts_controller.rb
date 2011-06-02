class SinapostsController < ApplicationController
  # GET /sinaposts
  # GET /sinaposts.xml
  def index
    @sinaposts = Sinapost.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sinaposts }
    end
  end

  # GET /sinaposts/1
  # GET /sinaposts/1.xml
  def show
    @sinapost = Sinapost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sinapost }
    end
  end

  # GET /sinaposts/new
  # GET /sinaposts/new.xml
  def new
    @sinapost = Sinapost.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sinapost }
    end
  end

  # GET /sinaposts/1/edit
  def edit
    @sinapost = Sinapost.find(params[:id])
  end

  # POST /sinaposts
  # POST /sinaposts.xml
  def create
    @sinapost = Sinapost.new(params[:sinapost])

    respond_to do |format|
      if @sinapost.save
        format.html { redirect_to(@sinapost, :notice => 'Sinapost was successfully created.') }
        format.xml  { render :xml => @sinapost, :status => :created, :location => @sinapost }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sinapost.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sinaposts/1
  # PUT /sinaposts/1.xml
  def update
    @sinapost = Sinapost.find(params[:id])

    respond_to do |format|
      if @sinapost.update_attributes(params[:sinapost])
        format.html { redirect_to(@sinapost, :notice => 'Sinapost was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sinapost.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sinaposts/1
  # DELETE /sinaposts/1.xml
  def destroy
    @sinapost = Sinapost.find(params[:id])
    @sinapost.destroy

    respond_to do |format|
      format.html { redirect_to(sinaposts_url) }
      format.xml  { head :ok }
    end
  end
end
