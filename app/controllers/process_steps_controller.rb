class ProcessStepsController < ApplicationController
  # GET /process_steps
  # GET /process_steps.xml
  def index
    @process_steps = ProcessStep.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @process_steps }
    end
  end

  # GET /process_steps/1
  # GET /process_steps/1.xml
  def show
    @process_step = ProcessStep.find(params[:id])
	@process_steps_count = ProcessStep.count
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @process_step }
    end
  end

  # GET /process_steps/new
  # GET /process_steps/new.xml
  def new
    @process_step = ProcessStep.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @process_step }
    end
  end

  # GET /process_steps/1/edit
  def edit
    @process_step = ProcessStep.find(params[:id])
  end

  # POST /process_steps
  # POST /process_steps.xml
  def create
  	@process_flow = current_process_flow
  	fab_process = FabProcess.find(params[:fab_process_id])
  	@process_step = @process_flow.process_steps.build(:fab_process => fab_process)
  
    respond_to do |format|
      if @process_step.save
        format.html { redirect_to(@process_step.process_flow) }
        format.xml  { render :xml => @process_step, :status => :created, :location => @process_step }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @process_step.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /process_steps/1
  # PUT /process_steps/1.xml
  def update
    @process_step = ProcessStep.find(params[:id])

    respond_to do |format|
      if @process_step.update_attributes(params[:process_step])
        format.html { redirect_to(@process_step, :notice => 'Process step was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @process_step.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /process_steps/1
  # DELETE /process_steps/1.xml
  def destroy
    @process_step = ProcessStep.find(params[:id])
    @process_step.destroy

    respond_to do |format|
      format.html { redirect_to(process_steps_url) }
      format.xml  { head :ok }
    end
  end
end
