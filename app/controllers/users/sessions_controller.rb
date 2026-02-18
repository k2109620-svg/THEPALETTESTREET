class Users::SessionsController < Devise::SessionsController
  respond_to :html
  def create
    self.resource = warden.authenticate(auth_options)
    # ログイン失敗
    return super unless resource
    # 管理者チェック
    unless resource.admin?
      # ここで sign_out は使わない（Turbo が嫌う）
      reset_session

      flash[:alert] = "管理者のみログインできます"

      respond_to do |format|
        format.html { render :new, status: :unauthorized }
      end

      return
    end

    # 管理者なら通常ログイン
    super  end
end
