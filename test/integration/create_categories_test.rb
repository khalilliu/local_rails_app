require 'test_helper'

class CreateCategoriesTest < ActionDispatch::IntegrationTest

	test "get new category form and create category"  do
		get new_category_path
		assert_template "categories/new"
		assert_difference "Categories.count", 1 do
			post_via_redirect categories_path, category: {name:'sport'}
		end
	end

end