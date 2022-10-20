class ExchangeController < ApplicationController

  CACHE_DEFAULTS = { expires_in: 24.hours, force: false }

  def rates_for
    currency_code = params[:id]
    response = Request.get("latest/#{currency_code}", CACHE_DEFAULTS)
    render json: response
  end
end
