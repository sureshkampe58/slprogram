#!/usr/bin/ruby

require 'cgi'

cgi = CGI.new

# Retrieve values from the form
num1 = cgi['num1'].to_f
num2 = cgi['num2'].to_f
num3 = cgi['num3'].to_f

# Calculate average
average = (num1 + num2 + num3) / 3

# Generate output
puts "Content-type: text/html\n\n"
puts "<!DOCTYPE html>"
puts "<html>"
puts "<head><title>Average Result</title></head>"
puts "<body>"
puts "<h2>Calculated Average</h2>"
puts "<p>The average of #{num1}, #{num2}, and #{num3} is <strong>#{average.round(2)}</strong></p>"
puts "<br><a href='/index.html'>Go Back</a>"
puts "</body></html>"
