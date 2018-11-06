class ItemsController < ApplicationController

  before_action :set_item, only: [:show, :edit, :update, :destroy]
  # before_action :availability, only: [:show]

  # GET /items
  # GET /items.json
  def index
    @items = Item.all
    # if user_signed_in?
    #   LocalhireMailer.with(user: current_user).new_booking.deliver_now
    # end
  end

  # GET /items/1
  # GET /items/1.json
  def show
    # @items.views += 1
    # @item.save
  end

  # GET /items/new
  def new
    authenticate_user!
    @item = Item.new
    #trying this new method below, if not working, uncomment the above instead:
    # @item = current_user.items.build
  end

  # GET /items/1/edit
  def edit
    authorize @item

    @availability = []

    if @item.per_hour_availability == '1'
      @availability << [:price_per_hour, :max_hours_per_hire]
    end

    if @item.per_day_availability == '1'
      @availability << [:price_per_day, :max_days_per_hire]
    end

    if @item.per_week_availability == '1'
      @availability << [:price_per_week, :max_weeks_per_hire]
    end
  end

  # POST /items
  # POST /items.json
  def create
    @item = Item.new(item_params)
    @item.lender_id = current_user.lender.id
    @item.user_id = current_user.id
   
    
    # redirect_to item_path(@item)
    
    respond_to do |format|
      if @item.save

        format.html { redirect_to item_path(@item), notice: 'Item was successfully created.' }
        # format.html { redirect_to @item, notice: 'Item was successfully created.' }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
    
  end

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to @item, notice: 'Item was successfully updated.' }
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    authorize @item
    @item.destroy
    respond_to do |format|
      format.html { redirect_to items_url, notice: 'Item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  #Add and remove items to /from bookings
  #for current_user
  # def booking
  #   type = params[:type]

  #   if type == "add"
  #     current_user.booking_additions << @item
  #     redirect_to booking_index_path, notice: "#{@item.name} was added to your bookings"
  #   elsif type == "remove"
  #     current_user.booking_additions.delete(@item)
  #     redirect_to root_path, notice: "#{@item.name} was removed from your bookings"
  #   else 
  #     #type is missing, nothing should happen
  #     redirect_to item_path(@item), notice: "Looks like nothing happened.  Try again!"
  #   end
  # end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params

      params.require(:item).permit(:name, :description, :instructions, 
        :price_per_hour, :price_per_day, :price_per_week, 
        :max_hours_per_hire, :max_days_per_hire, :max_weeks_per_hire,
        :per_hour_availability, :per_day_availability, :per_week_availability, 
        :user_id, :lender_id, :views, 
        :street, :suburb, :city, :state, :postcode, :latitude, :longitude, 
        images: [])
        #i removed :borrower - it currently breaks the system

    end
end
