class CommentsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    puts @article
    @comment = @article.comments.create(comment_params)
    redirect_to article_path(@article)
  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
  end
end
