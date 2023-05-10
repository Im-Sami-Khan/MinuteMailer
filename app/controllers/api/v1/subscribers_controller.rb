class Api::V1::SubscribersController < ApplicationController
  before_action :set_subscriber, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token, only: %i[ create update destroy ]

  # GET /subscribers or /subscribers.json
  def index
    @subscribers = Subscriber.all
    respond_to do |format|
      format.html
      format.json { render json: @subscribers }
    end
  end

  # GET /subscribers/1 or /subscribers/1.json
  def show
    respond_to do |format|
      format.html
      format.json { render json: @subscriber }
    end
  end

  # GET /subscribers/new
  def new
    @subscriber = Subscriber.new
  end

  # GET /subscribers/1/edit
  def edit
  end

  # POST /subscribers or /subscribers.json
  def create
    @subscriber = Subscriber.new(subscriber_params)

    respond_to do |format|
      if @subscriber.save
        format.html { redirect_to subscriber_url(@subscriber), notice: "Subscriber was successfully created." }
        format.json { render json: @subscriber }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @subscriber.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subscribers/1 or /subscribers/1.json
  def update
    respond_to do |format|
      if @subscriber.change_status
        format.html { redirect_to subscribers_url, notice: "Subscriber status is successfully changed." }
        format.json { render json: @subscriber }
      else
        format.html { redirect_to subscribers_url, notice: "Subscriber not updated." }
        format.json { render json: @subscriber.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subscribers/1 or /subscribers/1.json
  def destroy
    @subscriber.destroy

    respond_to do |format|
      format.html { redirect_to subscribers_url, notice: "Subscriber was successfully destroyed." }
      format.json { render json: @subscriber }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subscriber
      @subscriber = Subscriber.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def subscriber_params
      params.require(:subscriber).permit(:email, :name)
    end
end
