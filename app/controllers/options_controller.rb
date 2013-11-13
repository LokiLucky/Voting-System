class OptionsController < ApplicationController
  before_action :set_option, only: [:show, :edit, :update, :destroy]

  # GET /options
  def index
    @options = Option.all
  end

  # GET /options/1
  def show
  end

  # GET /options/new
  def new
    @option = Option.new
  end

  # GET /options/1/edit
  def edit
  end

  # POST /options
  def create
   @poll=Poll.find(params[:poll_id]) 
   @option=@poll.options.create(option_params)
   redirect_to poll_path(@poll)
  end

  # PATCH/PUT /options/1
  def update
    if @option.update(option_params)
      redirect_to @option, notice: 'Option was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /options/1
  def destroy
    @option.destroy
    redirect_to options_url, notice: 'Option was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_option
      @option = Option.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def option_params
      params.require(:option).permit(:name, :poll_id)
    end
end
