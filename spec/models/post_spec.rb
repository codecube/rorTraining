require 'spec_helper'

describe Post do
  before(:each) do
    @post = Post.new :title => "title 1", :content=>"content"
  end

  it "it is valid with valid attribute" do
   @post.should be_valid
   #@post.valid.should == true é igual

  end

  it "is not valid without a title" do
    @post.title = nil
    @post.should_not be_valid
  end

    it "is not valid without content" do
    @post.content = nil
    @post.should_not be_valid
  end

end
