require_relative "../pages/google"

When("I search for {string}") do |string|
  @page = GooglePage.new
  @page.search(string)
end

Then("I should see {string}") do |string|
  page.should have_content(string)
end

Then("I should NOT see {string}") do |string|
  page.should_not have_content(string)
end
