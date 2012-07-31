# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

require 'idea'
class ::Idea
  def post_to_twitter
    #no-op
  end
end

Idea.destroy_all

Idea.create([
             {:text => "An iPhone app that shaves your legs."},
             {:text => "A pill that gives you jetlag so you can get used to it."},
             {:text => "Dogs should come with free cats."},
             {:text => "Create Justin Bieber bobble head dolls - call them 'Biebblers'."},
             {:text => "Don't give live demos."},
             {:text => "An Android iOS emulator."}
            ])
