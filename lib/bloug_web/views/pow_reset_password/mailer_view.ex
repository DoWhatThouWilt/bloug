defmodule BlougWeb.PowResetPassword.MailerView do
  use BlougWeb, :mailer_view

  def subject(:reset_password, _assigns), do: "Reset password link"
end
