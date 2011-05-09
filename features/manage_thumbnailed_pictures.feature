Feature: Thumbnailed Pictures
	In order to create a photo gallery
	Users should be able to upload
	a picture and place into a Connectable

	Scenario: Upload Picture	
		When I go to the cms login page
		And I fill in the following:
		| login | cmsadmin |
		| password | cmsadmin |
		And I press "LOGIN"
		And I go to the content library
		And I follow "LB Photo Gallery"
		And I follow "add new content" within "#functions"
		And I fill in the following:
		| Name		  | late at night                     |
		| Description | picture	 of myself at twenty four |
		| Tags	      | tristan                           |	
		| Path		  | \tristan.jpeg                     |
		And I select "/system" from options ".selectbox-wrapper li" for dropdown ".selectbox"
		And I attach the file "/features/fixtures/tristan.jpeg" to "File" within ".fields.file_fields"
		And I then save and publish
		Then a ThumbnailedImage with name "late at night" should exist
