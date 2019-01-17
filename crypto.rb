require 'rubygems'
require 'nokogiri'
require 'open-uri'


def cours_crypto
	page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
	@price = []
	@name = []
	page.xpath('//a').each do |x|
		if x.to_s.include?('class="currency-name-container link-secondary"')
		#if x.to_s.include?('class="no wrap currency-name-container link-sec"')
			#if x.to_s.include?('class="td"')

			@name << x.text
  		elsif x.to_s.include?('class="price"')
			@price << x.text
		end
	end
	return @price, @name
end

p cours_crypto
hasho = Hash[@name.zip(@price)]
#puts hasho
