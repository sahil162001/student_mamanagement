class AccountCreationJob < ApplicationJob
  queue_as :default

  def perform(student)
    byebug
    SendAccountCreationMailMailer.add_new_student(student).deliver_now
  end
end
