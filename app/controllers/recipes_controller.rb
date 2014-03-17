class RecipesController < ApplicationController

def index
  @recipes = Recipe.all
end

def new
  @recipe = Recipe.new
end

def create
  @recipe = Recipe.new
end

end