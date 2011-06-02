class YahoopostsController < ApplicationController
  # GET /yahooposts
  # GET /yahooposts.xml
  def index
    @yahooposts = Yahoopost.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @yahooposts }
    end
  end

  # GET /yahooposts/1
  # GET /yahooposts/1.xml
  def show
    @yahoopost = Yahoopost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @yahoopost }
    end
  end

  # GET /yahooposts/new
  # GET /yahooposts/new.xml
  def new
    @yahoopost = Yahoopost.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @yahoopost }
    end
  end

  # GET /yahooposts/1/edit
  def edit
    @yahoopost = Yahoopost.find(params[:id])
  end

  # POST /yahooposts
  # POST /yahooposts.xml
  def create
    @yahoopost = Yahoopost.new(params[:yahoopost])

    respond_to do |format|
      if @yahoopost.save
        format.html { redirect_to(@yahoopost, :notice => 'Yahoopost was successfully created.') }
        format.xml  { render :xml => @yahoopost, :status => :created, :location => @yahoopost }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @yahoopost.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /yahooposts/1
  # PUT /yahooposts/1.xml
  def update
    @yahoopost = Yahoopost.find(params[:id])

    respond_to do |format|
      if @yahoopost.update_attributes(params[:yahoopost])
        format.html { redirect_to(@yahoopost, :notice => 'Yahoopost was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @yahoopost.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /yahooposts/1
  # DELETE /yahooposts/1.xml
  def destroy
    @yahoopost = Yahoopost.find(params[:id])
    @yahoopost.destroy

    respond_to do |format|
      format.html { redirect_to(yahooposts_url) }
      format.xml  { head :ok }
    end
  end
end
