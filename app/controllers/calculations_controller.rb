class CalculationsController < ApplicationController
  def instructions
  end

  def sqr
    @num = params[:number].to_f
    @square = @num**2
  end

  def sqrt
    @num = params[:number].to_f
    @square_root = (@num**(0.5)).round(2)
  end

  def pmt
    @apr = params[:apr].to_f
    @years = params[:mths].to_i/12
    @principal = params[:principal].to_f

    @monthly_payment =(((@apr/1200)*@principal)/(1-(1+@apr/1200)**(-1*@years*12))).round(2)
  end
end
