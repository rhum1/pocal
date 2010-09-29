class AppointmentKindsController < ApplicationController
  # GET /appointment_kinds
  # GET /appointment_kinds.xml
  def index
    @appointment_kinds = AppointmentKind.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @appointment_kinds }
    end
  end

  # GET /appointment_kinds/1
  # GET /appointment_kinds/1.xml
  def show
    @appointment_kind = AppointmentKind.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @appointment_kind }
    end
  end

  # GET /appointment_kinds/new
  # GET /appointment_kinds/new.xml
  def new
    @appointment_kind = AppointmentKind.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @appointment_kind }
    end
  end

  # GET /appointment_kinds/1/edit
  def edit
    @appointment_kind = AppointmentKind.find(params[:id])
  end

  # POST /appointment_kinds
  # POST /appointment_kinds.xml
  def create
    @appointment_kind = AppointmentKind.new(params[:appointment_kind])

    respond_to do |format|
      if @appointment_kind.save
        format.html { redirect_to(@appointment_kind, :notice => 'AppointmentKind was successfully created.') }
        format.xml  { render :xml => @appointment_kind, :status => :created, :location => @appointment_kind }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @appointment_kind.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /appointment_kinds/1
  # PUT /appointment_kinds/1.xml
  def update
    @appointment_kind = AppointmentKind.find(params[:id])

    respond_to do |format|
      if @appointment_kind.update_attributes(params[:appointment_kind])
        format.html { redirect_to(@appointment_kind, :notice => 'AppointmentKind was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @appointment_kind.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /appointment_kinds/1
  # DELETE /appointment_kinds/1.xml
  def destroy
    @appointment_kind = AppointmentKind.find(params[:id])
    @appointment_kind.destroy

    respond_to do |format|
      format.html { redirect_to(appointment_kinds_url) }
      format.xml  { head :ok }
    end
  end
end
