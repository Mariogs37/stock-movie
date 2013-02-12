class StockController < ApplicationController

  def stock
  end

  def stock_result
  end

  def get_quote
      @ticker = params[:ticker]
      @price = YahooFinance::get_quotes(YahooFinance::StandardQuote, @ticker)[@ticker].lastTrade
      render 'stock_result'
  end

end