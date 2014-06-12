class HunsController < ApplicationController
before_filter :authenticate, :except => [ :index, :show ]

  before_action :set_hun, only: [:show, :edit, :update, :destroy]
  # GET /huns
  # GET /huns.json
  def index
    @huns = Hun.all
  end

  # GET /huns/1
  # GET /huns/1.json
  def show
  end

  # GET /huns/new
  def new
    @hun = Hun.new
  end

  # GET /huns/1/edit
  def edit
  end

  # POST /huns
  # POST /huns.json
  def create
    @hun = Hun.new(hun_params)

    respond_to do |format|
      if @hun.save
        format.html { redirect_to @hun, notice: 'Hun was successfully created.' }
        format.json { render :show, status: :created, location: @hun }
      else
        format.html { render :new }
        format.json { render json: @hun.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /huns/1
  # PATCH/PUT /huns/1.json
  def update
    respond_to do |format|
      if @hun.update(hun_params)
        format.html { redirect_to @hun, notice: 'Hun was successfully updated.' }
        format.json { render :show, status: :ok, location: @hun }
      else
        format.html { render :edit }
        format.json { render json: @hun.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /huns/1
  # DELETE /huns/1.json
  def destroy
    @hun.destroy
    respond_to do |format|
      format.html { redirect_to huns_url, notice: 'Hun was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hun
      @hun = Hun.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hun_params
      params.require(:hun).permit(:name)
    end
private
def authenticate
     authenticate_or_request_with_http_basic do |name, password|
      name == "admin" && password == "secret"
   end
end
end
