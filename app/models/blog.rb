class Blog < ActiveRecord::Base
	validates :naslov, :opis, :presence => {:message => "Polji morata biti izpopolnjeni"}
end
