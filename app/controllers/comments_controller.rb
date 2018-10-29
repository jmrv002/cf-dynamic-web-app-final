class CommentsController < ApplicationController
  def create
    @comment = Comment.new(product_params)

    @comment.save

    redirect_to @comment.product 
  end   

  private
    def product_params
      params.require(:comment).permit(:product_id, :text)
    end
end
