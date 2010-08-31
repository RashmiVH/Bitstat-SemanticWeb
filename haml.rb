
#!/usr/bin/env ruby
require 'rubygems'
require 'sinatra'
require 'haml'
 
get '/' do
  haml :index
end
 

# This method uses member variables.
get '/hello/:name' do|name|
  @name = name
  haml :hello
end
 
# This method injects
# local variables
get '/goodbye/:name' do|name|
  haml :goodbye, :locals => { :name => name }
end
 
__END__
@@ layout
%html
  %head
    %title Haml Rockzzzzzzzzzz
  %body
    =yield
 
@@ index
#header
  %h1 Haml Rockzzzzzzzzzzz
#content
  %p
    using haml has never been so easy......rubyyyyyyyy
    bitstat........anmol........tarun........rashmi
 
@@ hello
%h1= "Hello #{@name}!"
 
@@ goodbye
%h1= "Goodbye #{name}!"
