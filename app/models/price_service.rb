class PriceService
  def self.fetch_prices(ticker)
    stocks_found = client.search(keywords: ticker)
  end

  def self.client
    @client ||= Alphavantage::Client.new(
      key: Rails.application.credentials.dig(:alphavantage, :key)
    )
  end
end
