# frozen_string_literal: true

module Api
  module V1
    class LocationsController < ApplicationController
      before_action :set_location, only: [:show, :update, :destroy]

      # GET /locations
      def index
        @locations = Location.all

        render(json: @locations)
      end

      # GET /locations/1
      def show
        render(json: @location)
      end

      # POST /locations
      def create
        @location = Location.new(location_params)

        if @location.save
          render(json: @location, status: :created, location: @location)
        else
          render(json: @location.errors, status: :unprocessable_content)
        end
      end

      # PATCH/PUT /locations/1
      def update
        if @location.update(location_params)
          render(json: @location)
        else
          render(json: @location.errors, status: :unprocessable_content)
        end
      end

      # DELETE /locations/1
      def destroy
        @location.destroy!
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_location
        @location = Location.find(params.expect(:id))
      end

      # Only allow a list of trusted parameters through.
      def location_params
        params.expect(location: [:name, :address, :city, :state, :zip, :country, :nodes])
      end
    end
  end
end
