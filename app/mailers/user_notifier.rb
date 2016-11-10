class UserNotifier < ApplicationMailer
  default :from => 'do-not-reply@thall13-project-management.com'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_update_email(user)
    @user = @artifact.user
    mail( :to => @user.email,
    :subject => 'There is an update in your user area' )
  end
end
