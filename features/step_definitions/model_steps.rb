Then /^a (\w+) with (\w+) "([^"]*)" should exist$/ do |model_name, attribute_name, attribute_value|
	sql_finder = "find_by_" + attribute_name
	model_name.constantize.send(sql_finder, attribute_value).should_not be_nil
end

Given /^a ThumbnailedPicture "([^"]*)" with path "([^"]*)"$/ do |name, file_path|
  
end


