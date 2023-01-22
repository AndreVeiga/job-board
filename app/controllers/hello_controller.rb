class HelloController < ApplicationController
  attr_accessor :name

  def world
    @name = "Pedro"
  end
end
