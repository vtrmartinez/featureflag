
Given(/^that I access a path "([^"]*)"$/) do |path|
  @uri = 'http://production.hummingbird-api.appspot.com' + path
end

When(/^I send the request with correct parameters$/) do
  @url = @uri + '?appVersion=12.3.100&platform=ANDROID'
  @response = HTTParty.get(@url)
end

When(/^I send the request with incorrect parameters$/) do
  @url = @uri + '?platform=ANDROID'
  @response = HTTParty.get(@url)
end

When(/^I send the post request with correct parameters$/) do
  @url = @uri + '?appVersion=12.3.100&platform=ANDROID&enabled=TRUE&name=TesteQA'
  @response = HTTParty.post(@url)
end

When(/^I send the post request with incorrect parameters$/) do
  @url = @uri + '?appVersion=12.3.100&platform=ANDROID&enabled=TRUE&'
  @response = HTTParty.post(@url)
end

Then(/^I see status code two hundred$/) do
  expect(@response.code).to eq 200
end

Then(/^I see status code four hundred$/) do
  expect(@response.code).to eq 400
end
