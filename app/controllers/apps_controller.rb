class AppsController < ApplicationController
  before_action :set_app, only: [:show, :edit, :update, :destroy]

  # GET /apps
  # GET /apps.json
  def index
    @apps = current_user.apps
  end

  # GET /apps/1
  # GET /apps/1.json
  def show
    @campaigns = @app.campaigns
  end

  # GET /apps/new

  def new
    @app = App.new
  end

  # GET /apps/1/edit
  def edit
  end

  # POST /apps
  # POST /apps.json
  def create
    @user = current_user
    @app = @user.apps.new(app_params)

    #@app = App.new(app_params)
    #p @app.inspect

    respond_to do |format|
      if @app.save
        @app.create_activity key: 'app.add', owner: current_user
        format.html { redirect_to @app, notice: 'Приложение добавлено.' }
        format.json { render :show, status: :created, location: @app }
      else
        format.html { render :new }
        format.json { render json: @app.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apps/1
  # PATCH/PUT /apps/1.json
  def update
    respond_to do |format|
      if @app.update(app_params)
        format.html { redirect_to @app, notice: 'Приложение обновлено.' }
        format.json { render :show, status: :ok, location: @app }
      else
        format.html { render :edit }
        format.json { render json: @app.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apps/1
  # DELETE /apps/1.json
  def destroy
    @app.destroy
    respond_to do |format|
      format.html { redirect_to apps_url, notice: 'Приложение удалено.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_app
      @app = App.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def app_params
      params.require(:app).permit(:name, :description, :platform_id, {category_ids: []})
    end
end
