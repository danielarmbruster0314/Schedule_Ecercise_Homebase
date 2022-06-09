class Employee < ApplicationRecord
    has_many :shifts

    def name 
        "#{self.first_name} #{self.last_name}"
    end 
end
