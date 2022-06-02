class SearchController < ApplicationController

  def index
    @serch_text = params[:q]
  end

  def search
    q = params[:q]
     @result_search = Formulario.search(q)
      
   end
end
