require 'spec_helper'

describe "Static pages" do
 let(:base_title) {"Ruby on Rails Tutorial Sample App" } 
describe "Home Page" do  

 it "should have the h1 'Sample App'" do
    visit '/static_pages/home'
    page.should have_selector('h1', :text =>'Sample App')
  end

 it "should have the base title" do 
    visit '/static_pages/home' 
    page.should have_selector('title', 
			:text => "Ruby on Rails Tutorial Sample App")
end
 it "should not have a custom page title" do  
    visit '/static_pages/home'  
      page.should_not have_selector('title', :text => '|Home')

 end
end
describe "Help Page" do
  it "should have the content 'Help'" do 
    visit '/static_pages/help'  
    page.should have_selector('h1', :text =>'Help') 
  end
  it "should have the right title"  do
    visit '/static_pages/help'
    page.should have_selector('title', 
                        :text => "#{base_title} | Help")
 end


end

describe "About Page" do 
  it "should have the content 'About Us'" do 
     visit '/static_pages/about'
     page.should have_selector('h1', :text =>'About Us') 
  end 
 it "should have the right title" do
    visit '/static_pages/about'
    page.should have_selector('title', 
                        :text => "#{base_title} | About Us")
 end
end  

describe "Contact" do
  it "should have the right title" do 
      visit '/static_pages/contact'
      page.should have_selector('title',
                        :text => "#{base_title} | Contact")

  end
end 


end
#  describe "GET /static_pages" do
#    it "works! (now write some real specs)" do
#      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
#      get static_pages_index_path
#      response.status.should be(200)
#    end
#  end
# end
