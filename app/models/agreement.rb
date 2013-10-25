class Agreement
	include Mongoid::Document

	#fields to include what is in the agreement
	field :agreement_date, type: String
	field :agreement_time_length, type: String
	field :agreement_goals, type: String
	
	field :agreement_deal, type: String

	belongs_to :mentor
	belongs_to :learner

end