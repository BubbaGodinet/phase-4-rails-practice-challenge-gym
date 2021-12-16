class ApplicationController < ActionController::API
    def current_user
        Client.find_by(name: "Bernie Schiller")
    end
end
