require 'nokogiri'
require 'open-uri'
require 'pry'
require_relative './course.rb'

class Scraper
  
  def get_page
    doc = Nokogiri::HTML(open("http://learn-co-curriculum.github.io/site-for-scraping/courses"))
    doc.css(".post").each do |post|
      course = Course.new
  end
  
  #def print_courses
   # if course.title && course.title != ""
   #     puts "Title: #{course.title}"
    #    puts "  Schedule: #{course.schedule}"
     #   puts "  Description: #{course.description}"
      #end
    #end
  #end
  
end

Scraper.new.get_page


