class HomesController < ApplicationController

	def index
		session[:conversations] ||= []

		@models = Model.all.where.not(id: current_model)
		@conversations = Conversation.includes(:recipient, :messages)
                                 .find(session[:conversations])
    end
end
