Feature: Select picture for gallery
	In order to create a photo gallery
	Users should be able to select
	from available pictures

	Scenario: Select pictures for gallery	
		Given a ThumbnailedPicture "new_pic" with path "features/fixtures/tristan.jpeg"
		When I go to the cms login page
		And I fill in the following:
		| login | cmsadmin |
		| password | cmsadmin |
		And I press "LOGIN"
		And I go to the content library
		And I follow "Portlet"
		And I follow "add new content" within "#functions"
		And I follow "Photo Gallery Portlet"
	
