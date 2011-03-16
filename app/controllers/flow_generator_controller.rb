class FlowGeneratorController < ApplicationController
  def index
  		@fab_processes = FabProcess.all
  end

end
