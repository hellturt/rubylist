
jQuery ->
	$('#listing_subcategory_id').parent().hide()
	sub = $('#listing_subcategory_id').html()
	
	$('#listing_category_id').on "change", ->
		category = $('#listing_category_id :selected').text()
		options = $(sub).filter("optgroup[label='#{category}']").html()
		console.log(options)

		if options
			$('#listing_subcategory_id').html(options)
			$('#listing_subcategory_id').parent().show()
		else
			$('#listing_subcategory_id').fadeIn()

