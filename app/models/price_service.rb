class PriceServise

  def self.fetch_prices(ticker)
    stocks_found = client.search keywords: "MSFT"
    stocks_found.output # Return the hash retrieved
  end

  def self.client
    @client ||= Alphavantage::Client.new(
      key: Rails.application.credentials.dig(:alphavantage ,:key)
    )
  end
end
