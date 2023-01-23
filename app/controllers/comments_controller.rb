class CommentsController < ApplicationController

  def create
    @job = Job.find(params[:job_id])
    @comment = @job.comments.build(comment_params)
    if @comment.save
      flash[:notice] = "Comentario salvo com sucesso" 
    else
      flash[:alert] = "Houve um erro ao salvar."
    end
    redirect_back_or_to @job
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_back_or_to @comment.job, notice: "Comentario apagado com sucesso."
  end

  private
  def comment_params
    params.require(:comment).permit(:name, :body)
  end
end