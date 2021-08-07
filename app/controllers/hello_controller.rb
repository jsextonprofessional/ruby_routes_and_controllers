class HelloController < ApplicationController

    def index
        puts 'were at index'
    end

    def hello
        render 'hello'
    end
    
    def say
        unless params[:name]
            render text: "Saying Hello!"
        else
            if params[:name] == "michael"
                redirect_to "/say/hello/joe"
            else
                render text: "SAYING HELLO #{params[:name]}!"
            end
        end
    end
    
    def times
        session[:count] ||= 0
        render text: "YOU HAVE VISITED THIS URL #{session[:count] += 1} time(s)"
    end
    
    def restart
    reset_session
    render text: "SESSION DESTROYED"
    end
end
