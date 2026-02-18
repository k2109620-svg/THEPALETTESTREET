class LivesController < ApplicationController
  def index
    @lives = Life.order(date: :asc)
  end

  def show
    @live = Life.find(params[:id])
  end
  def new
    @live = Life.new
  end

  def create
    @live = Life.new(live_params)
    if @live.save
      redirect_to lives_path, notice: "ライブ情報を登録しました"
    else
      render :new
    end
  end

  private

  def live_params
    params.require(:life).permit(:title, :date, :place, :description)
  end

  def require_admin!
    redirect_to root_path, alert: "権限がありません" unless current_user&.admin?
  end
end
