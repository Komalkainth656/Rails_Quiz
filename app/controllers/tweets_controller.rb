class TweetsController < ApplicationController
    before_action :find_tweet, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!, except: [:index, :show]

    def index
      @tweets = Tweet.all
    end
   
    def new
      @tweet = Tweet.new
    end
   
    def create
      @tweet = Tweet.new(tweet_params)
      if @tweet.save
        redirect_to tweets_path, notice: "Tweet Created"
      else
        render :new
      end
    end
   
    def show
    end
   
    def edit
    end
   
    def update
      if @tweet.update tweet_params
        redirect_to @tweet, notice: "Tweet Updated"
    else
        render :edit
      end
    end
     
  def destroy
    @tweet.destroy
    redirect_to tweets_path, notice: "Tweet Deleted"
  end
   
    private
   
    def find_tweet
      @tweet = Tweet.find params[:id]
    end
   
    def tweet_params
        params.require(:tweet).permit(:twitter, :tweet)
      end
     

  end

  
  #The Rails controller is the logical center of your application. It coordinates the interaction between the user, the views, and the model. The controller is also a home to a number of important ancillary services. It is responsible for routing external requests to internal actions.