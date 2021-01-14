class GooglePage
  include Capybara::DSL

  def search input
    visit "/"
    fill_in "q", with: input
    find('.gNO89b').click
  end

end
