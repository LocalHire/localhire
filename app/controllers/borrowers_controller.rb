class BorrowersController < ApplicationController
    before_action :set_borrower, only: [:show, :edit, :update, :destroy]
  
    # GET /lenders
    # GET /lenders.json
    def index
      @borrowers = Borrower.all
    end
  
    # GET /lenders/1
    # GET /lenders/1.json
    def show
    end
  
    # GET /lenders/new
    def new
      @borrower = Borrower.new
    end
  
    # GET /lenders/1/edit
    def edit
    end
  
    # POST /lenders
    # POST /lenders.json
    def create
      @borrower = Borrower.new(borrower_params)
  
      respond_to do |format|
        if @borrower.save
          format.html { redirect_to @borrower, notice: 'Borrower was successfully created.' }
          format.json { render :show, status: :created, location: @borrower }
        else
          format.html { render :new }
          format.json { render json: @borrower.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # PATCH/PUT /lenders/1
    # PATCH/PUT /lenders/1.json
    def update
      respond_to do |format|
        if @borrower.update(borrower_params)
          format.html { redirect_to @borrower, notice: 'Borrower was successfully updated.' }
          format.json { render :show, status: :ok, location: @borrower }
        else
          format.html { render :edit }
          format.json { render json: @borrower.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE /lenders/1
    # DELETE /lenders/1.json
    def destroy
      @borrower.destroy
      respond_to do |format|
        format.html { redirect_to borrower_url, notice: 'Borrower was successfully destroyed.' }
        format.json { head :no_content }
      end
    end
  
    
  
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_borrower
        @borrower = Borrower.find(params[:id])
      end
  
      # Never trust parameters from the scary internet, only allow the white list through.
      def borrower_params
        params.require(:borrower).permit(:phone, :user_id)
      end
  end
  