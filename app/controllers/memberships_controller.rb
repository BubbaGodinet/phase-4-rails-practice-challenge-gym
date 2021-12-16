class MembershipsController < ApplicationController

    def index 
        members = Membership.all
        render json: members
    end

    def create
        newMembership = Membership.create!(mem_params)
        render json: newMembership
    end

    def mem_params
        params.permit(:gym_id, :client_id, :charge)
    end
end
