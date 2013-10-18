class Blog < ActiveRecord::Base
	validates :naslov, :opis, :presence => {:message => "mora biti izpolnjen!"}
end
