class SnippetsController < ApplicationController

  def welcome
    @num_ruby_snippets = Snippet.where(kind: "ruby").count
    @num_html_snippets = Snippet.where(kind: "html").count
    @num_css_snippets = Snippet.where(kind: "css").count
    @num_javascript_snippets = Snippet.where(kind: "javascript").count
  end


  def index
    @snippets = Snippet.where(kind: params[:kind])
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
