require 'sinatra'
require 'rabl'
require 'active_support/core_ext'
require 'active_support/inflector'

Rabl.register!

class Person
  attr_reader :name, :email
  def initialize
    @name = "The Mayor Of Rabl-town"
    @email = "mr_mayor@example.com"
  end
end

get "/" do
  @person = Person.new
  rabl :person, :format => "json"
end
