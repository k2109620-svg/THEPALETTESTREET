class Users::SessionsController < Devise::SessionsController
  def create
    self.resource = warden.authenticate(auth_options)

    # ログイン失敗（メール or パスワードが違う）
    return super unless resource

    # 管理者チェック
    unless resource.admin?
      sign_out resource
      flash[:alert] = "管理者のみログインできます"
      redirect_to new_user_session_path and return
    end

    # 管理者なら通常ログイン
    super
  end
end

