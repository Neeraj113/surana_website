class Report < ApplicationRecord
	validates_uniqueness_of :report_code
end
