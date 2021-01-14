require_relative "../support/env"

Given('the {string} navigates to the Login page') do |string|
 visit "/en"
end

When('the {string} click on the Login button') do |string|
  click_button 'Log in'
end

Then('the require message is displayed for {string}') do |string|
  expect(page).to have_content 'This field is required.'
end

When('the {string} enters username and password') do |string|
  fill_in 'user_email', with: 'dev_admin@monetrack.com'
  fill_in 'user_password', with: 'linh1999'
  click_button 'Log in'
end

Then('the successful login message is displayed for {string}') do |string|
  expect(page).to have_content 'ログインしました。'
end

When('the {string} enters incorrect username and password') do |string|
  click_link('Admin Admin')
  click_link 'ログアウト'
  fill_in 'user_email', with: 'dev_admin@mosnetrack.com'
  fill_in 'user_password', with: 'linh1s999'
  click_button 'ログイン'
end

Then('the fail login message is displayed for {string}') do |string|
  expect(page).to have_content 'Eメールまたは、パスワードが正しくありません。'
end
