class BodiesController < ApplicationController

  def inde
    bodies = Body.order(create_at: :desc)
    render json: bodies
  end

  def create
    body = Body.new(body_params)
    if body.save
      render json: body
    else
      render json: body.errors
    end
  end

  def update
    body = Body.find(params[:id])
    if body.update(body_params)
      render json: body
    else
      render json: body.errors
    end
  end

  def destroy
    body = Body.find(params[:id])
    body.destroy!
    render json: body
  end

  private

  def body_params
    params.require(:body).permit(:weight)
  end
end
