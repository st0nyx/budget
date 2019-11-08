class ExpensesController < ApplicationController
  before_action :set_expense, only: [:show, :edit, :update, :destroy]

  # GET /expenses
  # GET /expenses.json
  def index
    @expenses = Expense.all.order(date: :desc)

    #Retrives all messages and divides into two groups todays messages and other messages
    #
    # @grouped_messages = @expenses.group_by{ |t| t.created_at.to_date == DateTime.now.to_date }


    @grouped_expenses = Expense.group_by_month(:date).sum(:amount)  #{ |t| t.created_at.to_date == DateTime.now.to_date }

    # if @grouped_expenses[false].present?
    #   #Create month wise groups of messages
    #   @month_wise_sorted_alerts  = @grouped_expenses[false].group_by{ |t| t.created_at.month}
    # end



    respond_to do |format|
      format.html
    end
  end








  # GET /expenses/1
  # GET /expenses/1.json
  def show
  end

  # GET /expenses/new
  def new
    @expense = Expense.new
  end

  # GET /expenses/1/edit
  def edit
  end

  # POST /expenses
  # POST /expenses.json
  def create
    @expense = Expense.new(expense_params)

    respond_to do |format|
      if @expense.save
        format.html { redirect_to @expense, notice: 'Expense was successfully created.' }
        format.json { render :show, status: :created, location: @expense }
      else
        format.html { render :new }
        format.json { render json: @expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /expenses/1
  # PATCH/PUT /expenses/1.json
  def update
    respond_to do |format|
      if @expense.update(expense_params)
        format.html { redirect_to @expense, notice: 'Expense was successfully updated.' }
        format.json { render :show, status: :ok, location: @expense }
      else
        format.html { render :edit }
        format.json { render json: @expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /expenses/1
  # DELETE /expenses/1.json
  def destroy
    @expense.destroy
    respond_to do |format|
      format.html { redirect_to expenses_url, notice: 'Expense was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expense
      @expense = Expense.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def expense_params
      params.require(:expense).permit(:date, :amount, :amount_cents, :description, :expense_type, :kind_id, :store_id,
                                      kinds_attributes: [:id, :name],
                                      stores_attributes: [:id, :name])
    end
end