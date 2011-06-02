class RandomtesssesController < ApplicationController
  # GET /randomtessses
  # GET /randomtessses.xml
  def index
    @randomtessses = Randomtesss.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @randomtessses }
    end
  end

  # GET /randomtessses/1
  # GET /randomtessses/1.xml
  def show
    @randomtesss = Randomtesss.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @randomtesss }
    end
  end

  # GET /randomtessses/new
  # GET /randomtessses/new.xml
  def new
    @randomtesss = Randomtesss.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @randomtesss }
    end
  end

  # GET /randomtessses/1/edit
  def edit
    @randomtesss = Randomtesss.find(params[:id])
  end

  # POST /randomtessses
  # POST /randomtessses.xml
  def create
    @randomtesss = Randomtesss.new(params[:randomtesss])

    respond_to do |format|
      if @randomtesss.save
        format.html { redirect_to(@randomtesss, :notice => 'Randomtesss was successfully created.') }
        format.xml  { render :xml => @randomtesss, :status => :created, :location => @randomtesss }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @randomtesss.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /randomtessses/1
  # PUT /randomtessses/1.xml
  def update
    @randomtesss = Randomtesss.find(params[:id])

    respond_to do |format|
      if @randomtesss.update_attributes(params[:randomtesss])
        format.html { redirect_to(@randomtesss, :notice => 'Randomtesss was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @randomtesss.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /randomtessses/1
  # DELETE /randomtessses/1.xml
  def destroy
    @randomtesss = Randomtesss.find(params[:id])
    @randomtesss.destroy

    respond_to do |format|
      format.html { redirect_to(randomtessses_url) }
      format.xml  { head :ok }
    end
  end
end
