class DogsController < ApplicationController

    def index 
        @dogs = Dog.all 
    end 
    
    def new 
        @dog = Dog.new 
    end 
    
    def show
        @dog = Dog.find(params[:id])
    end 
    
    def create 
        @dog = Dog.create(params_path(@dog))
    end 
    
    private

    def params_path
        params.require(:dog).permit(:name, :age, :breed)
    end 

end
