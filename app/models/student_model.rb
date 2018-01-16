class StudentModel < ApplicationRecord
	validates :title, presence: { message: "Title required." }
	validates :mail, presence: { message: "Email Required." }
	validates :mobile, presence: { message: "Mobile Required." },
				length: { minimum: 10, maximum: 10 }
	validates :password, length: { minimum: 5 },
				presence: { message: "Password Required." }
end
