class FabProcess < ActiveRecord::Base
	#Order for the listing
	default_scope :order => 'category'
	
	has_many :process_steps
	
	before_destroy :ensure_not_referenced_by_any_process_step
	
	# Validations
	validates :name, :category, :presence => true
	validates :name, :uniqueness => true
	
	# ensure that there are no process steps referencing this fab_process
    def ensure_not_referenced_by_any_process_step
      if process_steps.count.zero?
        return true
      else
        errors.add(:base, 'Process steps present')
        return false
      end
    end
end
