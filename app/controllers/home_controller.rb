# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    render json: {
      status: "ok"
    }
  end

  def ping
    render json: {
      latest_fetch_coin_price_at: CoinMarketChart.order(timestamp: :desc).first&.timestamp
    }
  end
end
