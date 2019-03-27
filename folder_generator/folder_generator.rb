#!/usr/bin/env ruby

require 'JSON'
require 'pry'
require 'faraday'

key = ''
cohort = ARGV[0]
url = "http://turing-rooster.herokuapp.com/api/v1/cohorts/#{cohort}?key=#{key}"

def sanitize_name(student)
  student.gsub!("(", "")
  student.gsub!(")", "")
  student.gsub!("'", "")
  student
end

response = JSON.parse(Faraday.get(url).body, symbolize_names: true)
students = response[:data].map do |student_data|
  student_data[:attributes][:name].downcase.split(" ").join("_")
end

students.each do |student|
  puts "Making directory for #{student}"
  puts "mkdir #{sanitize_name(student)}"
  system("mkdir #{sanitize_name(student)}")
end



