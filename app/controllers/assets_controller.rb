class AssetsController < ApplicationController
  def index
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @contacts }
    end
  end
end