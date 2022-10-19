class Result

  attr_reader :currency_code
  attr_reader :date
  attr_reader :update_at
  attr_reader :rates

  def initialize(data)
    @currency_code = data['base_code']
    @update_at = Time.at(data['time_last_update_unix']).utc
    @rates = data['rates']
  end
end