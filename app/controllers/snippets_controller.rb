class SnippetsController < ApplicationController

  def index
    @snippet=Snippet.new
  end

  def show
    @snippet=Snippet.find params[:id]
  end

  def new
    @snippet=Snippet.new
  end

  def create
    snippet_params = params.require(:snippet).permit(:kind, :title, :work)
    @snippet = Snippet.new(snippet_params)

      if @snippet.save
        redirect_to snippet_path(@snippet)
      else
        render :new
      end
  end

  def edit
    @snippet = Snippet.find (params[:id])
  end

  def update
    @snippet = Snippet.find(params[:id])
    @snippet.update(snippet_params)
    redirect_to tables_path
  end

  def destroy
    @snippet = Snippet.find(params[:id])
    @snippet.destroy
    redirect_to tables_path
  end


end
