class UserMailer < ActionMailer::Base

default :from => "replymenot@sprout-technology.com"

def welcome(user,task)
  @greeting="#{user.name} ,You have been assigned a new task #{task.name} "
  mail :to =>user.email ,
      :subject =>"You have a new message in Project Management System"
end

end
