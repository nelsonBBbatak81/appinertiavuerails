class GuestsController < ApplicationController 

    def index 
        render inertia: 'Home'
    end 

    def about
        render inertia: 'About'
    end 

    def login
        render inertia: 'Login'
    end 

    def register 
        render inertia: 'Register'
    end
end