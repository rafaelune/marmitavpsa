class Marmita < ActiveRecord::Base

	validates_presence_of :pessoa
	validates_presence_of :descricao

end
