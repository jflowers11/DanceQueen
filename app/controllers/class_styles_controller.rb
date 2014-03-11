class ClassStylesController < ApplicationController
  before_action :set_class_style, only: [:show, :edit, :update, :destroy]

  # GET /class_styles
  # GET /class_styles.json
  def index
    @class_styles = ClassStyle.all
  end

  # GET /class_styles/1
  # GET /class_styles/1.json
  def show
  end

  # GET /class_styles/new
  def new
    @class_style = ClassStyle.new
  end

  # GET /class_styles/1/edit
  def edit
  end

  # POST /class_styles
  # POST /class_styles.json
  def create
    @class_style = ClassStyle.new(class_style_params)

    respond_to do |format|
      if @class_style.save
        format.html { redirect_to @class_style, notice: 'Class style was successfully created.' }
        format.json { render action: 'show', status: :created, location: @class_style }
      else
        format.html { render action: 'new' }
        format.json { render json: @class_style.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /class_styles/1
  # PATCH/PUT /class_styles/1.json
  def update
    respond_to do |format|
      if @class_style.update(class_style_params)
        format.html { redirect_to @class_style, notice: 'Class style was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @class_style.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /class_styles/1
  # DELETE /class_styles/1.json
  def destroy
    @class_style.destroy
    respond_to do |format|
      format.html { redirect_to class_styles_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_class_style
      @class_style = ClassStyle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def class_style_params
      params.require(:class_style).permit(:user_id, :latin, :partner, :freestyle)
    end
end
