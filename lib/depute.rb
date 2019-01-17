require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'pry'



def deputes_list(first_name,last_name)
	page = Nokogiri::HTML(open("https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&pagnum=600"))

	page.xpath('//h2').each do |x|
		if x.to_s.include?('class="titre_normal"')
			 x.text.gsub('Mme ', '').gsub('M ', '').split[-2..1]
		end
	end
end


def deputes_email
	page = Nokogiri::HTML(open("https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&pagnum=600"))
	@deputes_emails = []
	page.xpath('//a').each do |x|
		if x.to_s.include?("@assemblee-nationale.fr") && x.text.to_s.include?('secretariat-blanchet') == false &&.gsub(bureau-m)

			#return "firs_name" first_name "last_name" last_name
