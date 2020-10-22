class AwsTextsController < ApplicationController
  def index
    @aws_texts = AwsText.order(:id)
  end

  def show
    @aws_text = AwsText.find(params[:id])
  end
  
end