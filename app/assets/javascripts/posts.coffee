$(document).on "turbolinks:load", ->
	populateHiddenFields = (position) ->
		$("#post_latitude").attr("value", position.coords.latitude)
		$("#post_longitude").attr("value", position.coords.longitude)

	if $("#new_post") != null
		geocoding = navigator.geolocation
		geocoding.getCurrentPosition(populateHiddenFields)

return