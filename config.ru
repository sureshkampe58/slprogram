require 'rack'
require 'rack/static'

# Serve static files (e.g., HTML, CSS, JS)
use Rack::Static, 
    urls: ["/"], 
    root: "public", 
    index: "index.html"

# Load your CGI script
map "/cgi-bin/average.rb" do
  require_relative "public/cgi-bin/average"
  run CGIApp.new
end

run Rack::Cascade.new([])

