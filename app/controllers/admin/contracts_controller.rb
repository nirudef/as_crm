class Admin::ContractsController < Admin::AdminController
  def new
  end

  def create
    @contract = Contract.new(contract_params)
    @contract[:student_id] = params[:student_id]
    if Contract.last == nil
      @contract[:number] = 1
    else
      @contract[:number] = Contract.last.number.to_i + 1
    end
    if @contract.save
      redirect_to admin_users_path
    else
      redirect_to admin_users_path
    end
  end

  def show
    @contract = Contract.find(params[:id])
    @template = Template.first
    respond_to do |format|
      format.html
      format.pdf do
        pdf = Admin::ContractPdf.new(@contract, @template)
        send_data pdf.render, filename: 'contract.pdf', type: 'application/pdf'
      end
    end
  end

  private
  def contract_params
    params.permit(:student_id, :date, :number)
  end
end
