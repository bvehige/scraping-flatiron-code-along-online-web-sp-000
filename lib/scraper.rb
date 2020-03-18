require 'nokogiri'
require 'open-uri'
require 'pry'
require_relative './course.rb'

class Scraper
  
  def get_page
    doc = Nokogiri::HTML(open("http://learn-co-curriculum.github.io/site-for-scraping/courses"))
    #doc.css(".post").each do |post|
     #course.title = post.css("h2").text 
      #course.schedule = post.css(".date").text 
      #course.description = post.css("p").text
    #end
  end
  
  def print_courses
   if course.title && course.title != ""
        puts "Title: #{course.title}"
        puts "  Schedule: #{course.schedule}"
        puts "  Description: #{course.description}"
      end
    end
  
end

Scraper.new.get_page


