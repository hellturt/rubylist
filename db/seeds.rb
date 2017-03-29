# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


computer_category = Category.where(name: 'Computers').first_or_create(name: 'Computers')
Subcategory.where(name: 'Hardware', category_id: computer_category.id).first_or_create(name: 'Hardware', category_id: computer_category.id)
Subcategory.where(name: 'Software', category_id: computer_category.id).first_or_create(name: 'Software', category_id: computer_category.id)
Subcategory.where(name: 'Technical Support', category_id: computer_category.id).first_or_create(name: 'Technical Support', category_id: computer_category.id)
Subcategory.where(name: 'Casing and Mods', category_id: computer_category.id).first_or_create(name: 'Casing and Mods', category_id: computer_category.id)


interest_category = Category.where(name: 'Special Interest').first_or_create(name: 'Special Interest')
Subcategory.where(name: 'Codemasters', category_id: interest_category.id).first_or_create(name: 'Codemasters', category_id: interest_category.id)
Subcategory.where(name: 'Arts & Design', category_id: interest_category.id).first_or_create(name: 'Arts & Design', category_id: interest_category.id)
Subcategory.where(name: 'Blogmasters & Webmasters', category_id: interest_category.id).first_or_create(name: 'Blogmasters & Webmasters', category_id: interest_category.id)
Subcategory.where(name: 'Musicians', category_id: interest_category.id).first_or_create(name: 'Musicians', category_id: interest_category.id)
Subcategory.where(name: 'Apple Bytes', category_id: interest_category.id).first_or_create(name: 'Apple Bytes', category_id: interest_category.id)


life_category = Category.where(name: 'Lifestyle').first_or_create(name: 'Lifestyle')
Subcategory.where(name: 'Kopitiam', category_id: life_category.id).first_or_create(name: 'Kopitiam', category_id: life_category.id)
Subcategory.where(name: 'Travel & Living', category_id: life_category.id).first_or_create(name: 'Travel & Living', category_id: life_category.id)
Subcategory.where(name: 'Cupids Corner', category_id: life_category.id).first_or_create(name: 'Cupids Corner', category_id: life_category.id)


classified_category = Category.where(name: 'Classified').first_or_create(name: 'Classified')
Subcategory.where(name: 'Job Enlistment', category_id: classified_category.id).first_or_create(name: 'Job Enlistment', category_id: classified_category.id)
Subcategory.where(name: 'Events & Gathering', category_id: classified_category.id).first_or_create(name: 'Events & Gathering', category_id: classified_category.id)
Subcategory.where(name: 'Properties', category_id: classified_category.id).first_or_create(name: 'Properties', category_id: classified_category.id)
