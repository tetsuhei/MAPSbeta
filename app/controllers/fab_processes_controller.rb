class FabProcessesController < ApplicationController
  # GET /fab_processes
  # GET /fab_processes.xml
  def index
    @fab_processes = FabProcess.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @fab_processes }
    end
  end

  # GET /fab_processes/1
  # GET /fab_processes/1.xml
  def show
    @fab_process = FabProcess.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @fab_process }
    end
  end

  # GET /fab_processes/new
  # GET /fab_processes/new.xml
  def new
    @fab_process = FabProcess.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @fab_process }
    end
  end

  # GET /fab_processes/1/edit
  def edit
    @fab_process = FabProcess.find(params[:id])
  end

  # POST /fab_processes
  # POST /fab_processes.xml
  def create
    @fab_process = FabProcess.new(params[:fab_process])

    respond_to do |format|
      if @fab_process.save
        format.html { redirect_to(@fab_process, :notice => 'Fab process was successfully created.') }
        format.xml  { render :xml => @fab_process, :status => :created, :location => @fab_process }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @fab_process.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /fab_processes/1
  # PUT /fab_processes/1.xml
  def update
    @fab_process = FabProcess.find(params[:id])

    respond_to do |format|
      if @fab_process.update_attributes(params[:fab_process])
        format.html { redirect_to(@fab_process, :notice => 'Fab process was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @fab_process.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /fab_processes/1
  # DELETE /fab_processes/1.xml
  def destroy
    @fab_process = FabProcess.find(params[:id])
    @fab_process.destroy

    respond_to do |format|
      format.html { redirect_to(fab_processes_url) }
      format.xml  { head :ok }
    end
  end
end
