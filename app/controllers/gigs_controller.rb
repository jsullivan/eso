class GigsController < ApplicationController
  # GET /gigs
  # GET /gigs.xml
  def index
    @gigs = Gig.find(:all)
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @gigs }
    end
  end

  # GET /gigs/1
  # GET /gigs/1.xml
  def show
    @gig = Gig.find(params[:id])
      # Create a new map object, also defining the div ("map") 
      # where the map will be rendered in the view
      @map = GMap.new("map")
      # Use the larger pan/zoom control but disable the map type
      # selector
      @map.control_init(:large_map => true,:map_type => false)
      # Center the map on specific coordinates and focus in fairly
      # closely
      @map.center_zoom_init([41.023849,-80.682053], 10)
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @gig }
    end
  end

  # GET /gigs/new
  # GET /gigs/new.xml
  def new
    @gig = Gig.new
    @venue = Venue.new
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @gig }
    end
  end

  # GET /gigs/1/edit
  def edit
    @gig = Gig.find(params[:id])
  end

  # POST /gigs
  # POST /gigs.xml
  def create
    @gig = Gig.new(params[:gig])
    @venue = Venue.new(params[:venue])
    respond_to do |format|
      if @gig.save
        @gig.venue_id = @venue
        @venue.save
        format.html { redirect_to(@gig) }
        format.xml  { render :xml => @gig, :status => :created, :location => @gig }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @gig.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /gigs/1
  # PUT /gigs/1.xml
  def update
    @gig = Gig.find(params[:id])

    respond_to do |format|
      if @gig.update_attributes(params[:gig])
        flash[:notice] = 'Gig was successfully updated.'
        format.html { redirect_to(@gig) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @gig.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /gigs/1
  # DELETE /gigs/1.xml
  def destroy
    @gig = Gig.find(params[:id])
    @gig.destroy

    respond_to do |format|
      format.html { redirect_to(gigs_url) }
      format.xml  { head :ok }
    end
  end
end
