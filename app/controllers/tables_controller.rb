class TablesController < ApplicationController

  def index
    @snippets = Snippet.all
    @snippets = @snippets.search(params[:q])
    @total_snippets = @snippets.length
    @snippets = @snippets.page(params[:page]).per(10)
  end

end
