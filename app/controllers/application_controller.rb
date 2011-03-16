class ApplicationController < ActionController::Base
  protect_from_forgery
  
  private

    def current_process_flow 
      ProcessFlow.find(session[:process_flow_id])
    rescue ActiveRecord::RecordNotFound
      process_flow = ProcessFlow.create
      session[:process_flow_id] = process_flow.id
      process_flow
    end  
end
