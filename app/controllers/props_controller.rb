class PropsController < ApplicationController
  before_action :set_prop, only: [:show, :edit, :update, :destroy]
  # GET /props
  # GET /props.json
  def index
    @props = Prop.all
  end

  # GET /props/1
  # GET /props/1.json
  def show
  end

  # GET /props/new
  def new
    dummy_id=999_999_999_999
    @prop = Prop.new(id: dummy_id)
    2.times {@prop.nears << Near.new(prop_id: @prop.id)}
  end

  # GET /props/1/edit
  def edit
  end

  # POST /props
  # POST /props.json
  def create
    @prop = Prop.new(prop_params)

    respond_to do |format|
      if @prop.save
        format.html { redirect_to @prop, notice: t('props.msg_notice_create_success') }
        format.json { render :show, status: :created, location: @prop }
      else
        format.html { render :new }
        format.json { render json: @prop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /props/1
  # PATCH/PUT /props/1.json
  def update
    respond_to do |format|
      if @prop.update(prop_params)
        format.html { redirect_to @prop, notice: t('props.msg_notice_update_success') }
        format.json { render :show, status: :ok, location: @prop }
      else
        format.html { render :edit }
        format.json { render json: @prop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /props/1
  # DELETE /props/1.json
  def destroy
    @prop.destroy
    respond_to do |format|
      format.html { redirect_to props_url, notice: t('props.msg_notice_destroy_success') }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prop
      @prop = Prop.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prop_params
      params.require(:prop).permit(:name, :rent, :address, :age, :remarks,
                                   nears_attributes: [:prop_id, :line_name, :station_name, :minutes_foot, :id])
    end
end
