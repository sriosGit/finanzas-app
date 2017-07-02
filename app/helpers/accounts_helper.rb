module AccountsHelper
    
    def get_future_value
      @account = Account.find(params[:id])
      amount = @account.amount
      type = @account.rate_type;
      
      if type = "simple"
        return @account.amount + @account.amount(@account.rate * @account.time/@account.period) 
      elsif type = "compuesto"
        
      elsif type = "efectivo"
      
      end
      
    end
    
end
