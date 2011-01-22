Given /^I have a post$/ do
  @post = Post.create
end

Given /^my post has title "([^"]*)"$/ do |title|

  @post = Post.new :title => title

end

Given /^my post has content "([^"]*)"$/ do |content|
  @post.content =  content
  @post.save
end

Given /^my post has author with name "([^"]*)"$/ do |name|
  
  @post.author = User.create(:name => name)
  @post.save
end

