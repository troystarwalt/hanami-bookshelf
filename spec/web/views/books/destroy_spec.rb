require 'spec_helper'
require_relative '../../../../apps/web/views/books/destroy'

describe Web::Views::Books::Destroy do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/books/destroy.html.erb') }
  let(:view)      { Web::Views::Books::Destroy.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    view.foo.must_equal exposures.fetch(:foo)
  end
end
