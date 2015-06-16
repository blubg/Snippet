class TablesController < ApplicationController



  def index
    @snippets = Snippet.all
    @snippets = Snippet.search(params[:search])
    @snippets = Snippet.page(params[:page]).per(10)
  end



end
