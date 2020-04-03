class ArticlesController < ApplicationController
  before_action :set_users, only: [:index]

  def index
    all_articles = Article.article_list(@users.ids).published
    render json: all_articles
  end

  private

  def set_users
    @users = User.employee(company_id: request_params[:company_id])
  end

  ## 指定した要素以外のパラメータを受け付けない
  def request_params
    params.permit(
      :company_id
    )
  end
end
