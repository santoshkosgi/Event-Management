Given /^I have articles titled (.+)$/ do |titles|
  titles.split(",").each do |title|
    Event.create!(:name=>title)
  end
end
