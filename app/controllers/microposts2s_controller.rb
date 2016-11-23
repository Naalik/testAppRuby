class Microposts2sController < ApplicationController
  before_action :set_microposts2, only: [:show, :edit, :update, :destroy]

  # GET /microposts2s
  # GET /microposts2s.json
  def index
    @microposts2s = Microposts2.all
  end

  # GET /microposts2s/1
  # GET /microposts2s/1.json
  def show
  end

  # GET /microposts2s/new
  def new
    @microposts2 = Microposts2.new
  end

  # GET /microposts2s/1/edit
  def edit
  end

  # POST /microposts2s
  # POST /microposts2s.json
  def create
    @microposts2 = Microposts2.new(microposts2_params)

    respond_to do |format|
      if @microposts2.save
        format.html { redirect_to @microposts2, notice: 'Microposts2 was successfully created.' }
        format.json { render :show, status: :created, location: @microposts2 }
      else
        format.html { render :new }
        format.json { render json: @microposts2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /microposts2s/1
  # PATCH/PUT /microposts2s/1.json
  def update
    respond_to do |format|
      if @microposts2.update(microposts2_params)
        format.html { redirect_to @microposts2, notice: 'Microposts2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @microposts2 }
      else
        format.html { render :edit }
        format.json { render json: @microposts2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /microposts2s/1
  # DELETE /microposts2s/1.json
  def destroy
    @microposts2.destroy
    respond_to do |format|
      format.html { redirect_to microposts2s_url, notice: 'Microposts2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_microposts2
      @microposts2 = Microposts2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def microposts2_params
      params.require(:microposts2).permit(:message, :user_id)
    end
end
