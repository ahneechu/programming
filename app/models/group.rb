class Group
	include Mongoid::Document

	field :name, type: String 
	field :description, type: String 

	has_and_belongs_to_many :gusers, class_name: "User", inverse:
	embeds_many :point

end