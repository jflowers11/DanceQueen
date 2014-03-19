class ClassTimesController < ApplicationController
  before_action :set_class_time, only: [:show, :edit, :update, :destroy]
  
  
  # GET /class_times
  # GET /class_times.json
  def index
    @class_times = ClassTime.all
  end

  # GET /class_times/1
  # GET /class_times/1.json
  def show
  end

  # GET /class_times/new
  def new
    @class_time = ClassTime.new
  end

  # GET /class_times/1/edit
  def edit
  end

  # POST /class_times
  # POST /class_times.json
  def create
    @class_time = ClassTime.new(class_time_params)
    @class_time.user_id = @current_user.id   #the user who is currently signed in for this class
                                            #displays their id

    respond_to do |format|
      if @class_time.save
        format.html { redirect_to @class_time, notice: 'Class time was successfully created.' }
        format.json { render action: 'show', status: :created, location: @class_time }
      else
        format.html { render action: 'new' }
        format.json { render json: @class_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /class_times/1
  # PATCH/PUT /class_times/1.json
  def update
    respond_to do |format|
      if @class_time.update(class_time_params)
        format.html { redirect_to @class_time, notice: 'Class time was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @class_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /class_times/1
  # DELETE /class_times/1.json
  def destroy
    @class_time.destroy
    respond_to do |format|
      format.html { redirect_to class_times_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_class_time
      @class_time = ClassTime.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def class_time_params
      params.require(:class_time).permit(:user_id, :class_id, :time)
    end
end
