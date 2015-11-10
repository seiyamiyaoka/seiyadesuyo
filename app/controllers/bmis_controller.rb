class BmisController < ApplicationController
  def new
    @bmi = Bmi.create(params_bmi)
  end
  
  private
  def params_bmi
    params.require(:bmi).permit(:height,:weight)
end
end
