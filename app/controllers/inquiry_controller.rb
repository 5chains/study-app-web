class InquiryController < ApplicationController
  def index
  	@inquiry = Inquiry.new
  	render:action =>'index'
  end

  def confirm
  	@inquiry = Inquiry.new(params[:inquiry])
  	if @inquiry.valid?
  		render:action =>'confirm'
  	else
  		render:action =>'index'
  	end
  end
  def thanks
  	@inquiry = Inquiry.new(params[:inquiry])
  	InquiryMailer.recived_email(@inquiry).deliver
  	render:action => 'thanks'
  end

  def inquiry_params
  	params.require(:params).permit(:inquiry)
  end

end
