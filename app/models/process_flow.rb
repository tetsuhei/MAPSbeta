class ProcessFlow < ActiveRecord::Base
	has_many :process_steps, :dependent => :destroy
end
