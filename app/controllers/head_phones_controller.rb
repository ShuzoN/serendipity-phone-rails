class HeadPhonesController < ApplicationController
  before_action :set_head_phone, only: [:show, :edit, :update, :destroy]

  # GET /head_phones
  # GET /head_phones.json
  def index
    @head_phones = HeadPhone.all
  end

  # GET /head_phones/1
  # GET /head_phones/1.json
  def show
  end

  # GET /head_phones/new
  def new
    @head_phone = HeadPhone.new
  end

  # GET /head_phones/1/edit
  def edit
  end

  # POST /head_phones
  # POST /head_phones.json
  def create
    @head_phone = HeadPhone.new(head_phone_params)

    respond_to do |format|
      if @head_phone.save
        format.html { redirect_to @head_phone, notice: 'Head phone was successfully created.' }
        format.json { render :show, status: :created, location: @head_phone }
      else
        format.html { render :new }
        format.json { render json: @head_phone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /head_phones/1
  # PATCH/PUT /head_phones/1.json
  def update
    respond_to do |format|
      if @head_phone.update(head_phone_params)
        format.html { redirect_to @head_phone, notice: 'Head phone was successfully updated.' }
        format.json { render :show, status: :ok, location: @head_phone }
      else
        format.html { render :edit }
        format.json { render json: @head_phone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /head_phones/1
  # DELETE /head_phones/1.json
  def destroy
    @head_phone.destroy
    respond_to do |format|
      format.html { redirect_to head_phones_url, notice: 'Head phone was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_head_phone
      @head_phone = HeadPhone.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def head_phone_params
      params.require(:head_phone).permit(:name, :tendency, :price)
    end
end
