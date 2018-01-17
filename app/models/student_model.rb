class StudentModel < ApplicationRecord
	validates :title, presence: { message: "Title required." }
	
	validates :mail, presence: { message: "Email Required." }, confirmation: { case_sensitive: false }

	validates :mobile, presence: { message: "Mobile Required." },
				length: { minimum: 10, maximum: 10 }

	validates :password, length: { minimum: 5 }, confirmation: true,
				presence: { message: "Password Required." }

	validates :password_confirmation, presence: true
end