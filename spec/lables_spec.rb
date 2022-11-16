require 'spec_helper'

describe Label do
  before :each do
    @label = Label.new 'gift', 'yellow'
    @item = Item.new('red')
    @label.add_item(@item)
  end

  it 'The created instances equal Label instance' do
    @label.should be_an_instance_of Label
  end

  it 'The created intance should have a label title value of' do
    @label.title.should eql 'gift'
  end

  it 'The created intance should have a label color value of' do
    @label.color.should eql 'yellow'
  end

  it 'stores an item in its collection' do
    items = @label.items
    expect(items).to include @item
  end
end
