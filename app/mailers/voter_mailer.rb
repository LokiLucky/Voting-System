class VoterMailer < ActionMailer::Base
  default from: "dontreply@foo.com"
  def approval_email(voter)
  	@voter = voter
  	mail(to: @voter.email, subject:"welcome to chaguo lako")
  end
end

