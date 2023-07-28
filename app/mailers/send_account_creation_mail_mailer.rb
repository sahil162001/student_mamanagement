class SendAccountCreationMailMailer < ApplicationMailer
  def add_new_student (student)
    # byebug
    @add_student = student
    mail(to:@add_student.email,subject: "Your Data Has Been Successfully Added to Our Records")
  end
end
