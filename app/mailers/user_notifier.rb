class UserNotifier < ApplicationMailer
   default :from => 'thall13-project-management.com'
           
  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_update_email(artifact)
    @artifact = artifact
    list = []
     @artifact.project.users.each do |apu|
        list << apu.email
    end
    mail( :to => list,
    :subject => 'There is an update in your user area.' )
  end

end
