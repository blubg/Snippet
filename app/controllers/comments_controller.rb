class CommentsController < ApplicationController

  def create
    @snippet = Snippet.find(params[:snippet_id])
    comment = Comment.new(text: params[:comment][:text])
    comment.snippet = @snippet
    comment.save

    redirect_to snippet_path(@snippet)

  end
end
