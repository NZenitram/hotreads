require 'rails_helper'

describe 'when I visit index' do
  it 'has links' do

    links = Faraday.get('http://localhost:3000/api/v1/links')
    link = JSON.parse(links.body, symbolize_names: true).first[:url]

    visit '/'

    expect(page).to have_content(link)
  end
end
