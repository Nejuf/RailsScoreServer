class HighscoresController < ApplicationController

  after_filter :set_access_control_headers, only: [:index, :create]

  def index
  	@highscores = Highscore.order(score: :desc).limit(100);
  	#TODO pagination to show more results
  	respond_to do |f|
  		f.html
  		f.xml { render xml: @highscores }
  		f.json { render json: @highscores }
  	end
  end

  def create
  	@highscore = Highscore.new(highscore_params)

    if @highscore.save
      render json: @highscore
    else
  		render json: { errors: @highscore.errors.full_messages }, status: 422
  	end
  end

  private
  def highscore_params
  	params.permit(:name, :score, :ip)
  end

  def set_access_control_headers
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Request-Method'] = 'POST, GET, OPTIONS, HEAD'
    headers['Access-Control-Allow-Headers'] = 'X-AUTH-TOKEN, X-API-VERSION, X-Requested-With, Content-Type, Accept, Origin'
    headers['Access-Control-Max-Age'] = "1728000"
  end
end
