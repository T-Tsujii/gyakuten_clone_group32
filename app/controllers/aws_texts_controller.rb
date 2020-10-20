class AwsTextsController < ApplicationController
  def index
    # サーバ処理負担を減らすために必要なデータのみ選択して取得
    @aws_texts = AwsText.select(:id, :title)
  end
  
end