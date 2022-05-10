class SearchController < ApplicationController

  def index
    @msg = ""

    @page_title = "Busca - #{site_name}"
    logo
  end

  def search
    @msg = ""

    q = params[:q]

    order = {}

    conditional = {}

    order[:date_publish] = "desc"

    conditional[:status] = true

    content_builder = ContentBuilder
    .search(q, operator: "and", where: conditional, order: order)

    formulario = Formularios.search(q, order: order)
 
    array_search = []

    albums.each do |n|
      array_search << {
        name: n.name,
        email: n.email,
        phone: n.phone  
      }
    end

    @result_search_size = array_search.size

    @result_search = Kaminari.paginate_array(
      array_search, total_count: @result_search_size
    ).page(params[:page])

    @page_title = "Busca - #{site_name}"
    logo
  end
end
