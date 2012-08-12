# encoding: UTF-8

class Marmita < ActiveRecord::Base

	validates_presence_of :pessoa
	validates_presence_of :descricao
	validates_presence_of :restaurante

	RESTAURANTES = ['Tô Frito', 'Adyanna Grill']

end
