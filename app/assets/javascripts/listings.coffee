
jQuery ->
	sub = $('#listing_subcategory_id').html()
	
	$('#listing_category_id').on "change", ->
		category = $('#listing_category_id :selected').text()
		options = $(sub).filter("optgroup[label='#{category}']").html()
		console.log(options)

		if options
			$('#listing_subcategory_id').html(options)
		else
			$('#listing_subcategory_id').hide()

