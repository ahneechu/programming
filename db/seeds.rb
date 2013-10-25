# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Skill.destroy_all
Category.destroy_all


c = Category.create(category_name: 'Business Skills')
	

c.skills.create(skill_name: 'Negotiations')
c.skills.create(skill_name: 'leadership development')
c.skills.create(skill_name: 'business finance')


# {category: 'Life Skills', course: 'Sewing'},
# 	{category: 'Academic Skills', course: 'Math'}
# 	])