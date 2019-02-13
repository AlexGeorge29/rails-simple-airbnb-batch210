class FlatsController < ApplicationController
def index
  @flats = Flat.all
end

def show

end

def new
  @flat = Flat.new
end

def create
  @flat = Flat.new(flat_params)
  if @flat.save
    root_to flat_path(@flat)
  else
    render :new
end

def flat_params

end
end
