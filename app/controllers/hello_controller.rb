class HelloController < ApplicationController

    def index
        puts 'were at index'
    end
    def hello
        render 'hello'
    end
    def say
        render 'say'
    end
    def joe
        render 'joe'
    end
    def michael
        redirect_to '/say/hello/joe'
    end
    def times
        session[:counter]
        render 'times'
    end
end
