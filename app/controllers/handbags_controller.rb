class HandbagsController < ApplicationController
  # GET /handbags
  # GET /handbags.xml
  def index
    @handbags = Handbag.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @handbags }
    end
  end

  # GET /handbags/1
  # GET /handbags/1.xml
  def show
    @handbag = Handbag.find(params[:id])
    
    @templates = Template.find_templates_for_sale
  	
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @handbag }
    end
  end

  # GET /handbags/new
  # GET /handbags/new.xml
  def new
    @template = Template.find(params[:template_id])
    
  	@handbag = Handbag.new
  	@handbag[:template_id] = @template.id

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @handbag }
    end
  end

  # GET /handbags/1/edit
  def edit
    @handbag = Handbag.find(params[:id])
  end

  # POST /handbags
  # POST /handbags.xml
  def create
    @handbag = Handbag.new(params[:handbag])

    respond_to do |format|
      if @handbag.save
        format.html { redirect_to(@handbag, :notice => 'Handbag was successfully created.') }
        format.xml  { render :xml => @handbag, :status => :created, :location => @handbag }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @handbag.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /handbags/1
  # PUT /handbags/1.xml
  def update
    @handbag = Handbag.find(params[:id])

    respond_to do |format|
      if @handbag.update_attributes(params[:handbag])
        format.html { redirect_to(@handbag, :notice => 'Handbag was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @handbag.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /handbags/1
  # DELETE /handbags/1.xml
  def destroy
    @handbag = Handbag.find(params[:id])
    @handbag.destroy

    respond_to do |format|
      format.html { redirect_to(handbags_url) }
      format.xml  { head :ok }
    end
  end
end
