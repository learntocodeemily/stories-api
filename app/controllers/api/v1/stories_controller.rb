class Api::V1::StoriesController < Api::V1::BaseController
  skip_before_action :verify_authenticity_token, only: :create

  def index
    @stories = Story.all
    render json: @stories
  end

  def show
    @story = Story.find(params[:id])
  end

  def create

  end

  def update

  end
end
