class PostersController < ApplicationController
  # GET /posters
  # GET /posters.xml
  def index
    @posters = Poster.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @posters }
    end
  end

  # GET /posters/1
  # GET /posters/1.xml
  def show
    @poster = Poster.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @poster }
    end
  end

  # GET /posters/new
  # GET /posters/new.xml
  def new
    @poster = Poster.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @poster }
    end
  end

  # GET /posters/1/edit
  def edit
    @poster = Poster.find(params[:id])
  end

  # POST /posters
  # POST /posters.xml
  def create
    @poster = Poster.new(params[:poster])

    respond_to do |format|
      if @poster.save
        flash[:notice] = 'Poster was successfully created.'
        format.html { redirect_to(@poster) }
        format.xml  { render :xml => @poster, :status => :created, :location => @poster }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @poster.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /posters/1
  # PUT /posters/1.xml
  def update
    @poster = Poster.find(params[:id])

    respond_to do |format|
      if @poster.update_attributes(params[:poster])
        flash[:notice] = 'Poster was successfully updated.'
        format.html { redirect_to(@poster) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @poster.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /posters/1
  # DELETE /posters/1.xml
  def destroy
    @poster = Poster.find(params[:id])
    @poster.destroy

    respond_to do |format|
      format.html { redirect_to(posters_url) }
      format.xml  { head :ok }
    end
  end
end
