class ProcessStep < ActiveRecord::Base
	belongs_to :fab_process
	belongs_to :process_flow
end
