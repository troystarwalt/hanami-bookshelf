require 'spec_helper'
require_relative '../../../../apps/web/controllers/books/destroy'

describe Web::Controllers::Books::Destroy do
  let(:action) { Web::Controllers::Books::Create.new }
  let(:params) { Hash[book: { title: '1984', author: 'George Orwell'}]}

  	before do
		BookRepository.clear
	end

  it 'deletes the latest book' do
  		action.call(params)
  end

end