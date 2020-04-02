class ArticlesController < ApplicationController
  before_action :set_company, only: [:index]

  def index
    all_articles = Article.article_list(@users.ids).published
    render json: all_articles
  end

  private

  def set_company
    @company = Company.find(company_params[:company_id])
    @users = User.user_list(@company.id) if @company.present?
  end

  ## 指定した要素以外のパラメータを受け付けない
  def company_params
    params.permit(
      :company_id
    )
  end
end
