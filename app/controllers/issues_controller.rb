class IssuesController < ApplicationController
  before_action :set_issue, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: :index

  # GET /issues
  # GET /issues.json
  def index
    @issues = Issue.all
  end

  # GET /issues/1
  # GET /issues/1.json
  def show
  end

  # GET /issues/new
  def new
    item_number = params[:issue][:item_id]
    @item = Item.find_by("id = ?",item_number)
    check_dates
    check_stock_quantity
    @issue = Issue.new
  end

  # POST /issues
  # POST /issues.json
  def create
    @issue = Issue.new(issue_params)

    respond_to do |format|
      if @issue.save
        format.html { redirect_to @issue, notice: 'Issue was successfully created.' }
        format.json { render :show, status: :created, location: @issue }
      else
        format.html { render :new }
        format.json { render json: @issue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /issues/1
  # DELETE /issues/1.json
  def destroy
    @issue.destroy
    respond_to do |format|
      format.html { redirect_to issues_url, notice: 'Issue was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_issue
      @issue = Issue.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def issue_params
      params.require(:issue).permit(:employee_id, :item_id, :quantity, :issue_date, :return_date)
    end

    def check_stock_quantity
     
      item = Item.find(params[:issue][:item_id])     
      issues = Issue.where("item_id = ?",item.id)
      
      quantity_alloted = issues.stock_quantity_available(params[:issue_date],params[:return_date],item.id)
      
      @quantity_left = item.quantity - quantity_alloted 

      if @quantity_left < 0
        @quantity_left = 0
      end
    
    end

    def check_dates
      if Date.today > params[:issue_date].to_date
        flash[:dates_errors] = @item.errors.add(:issue_date, "issue_date should be greater or equal to today's date") 
        redirect_to root_path   
      elsif params[:issue_date].to_date >= params[:return_date].to_date
        flash[:dates_errors] = @item.errors.add(:issue_date, "issue_date should be lesser than return Date")
        redirect_to root_path 
      end
    end
end
