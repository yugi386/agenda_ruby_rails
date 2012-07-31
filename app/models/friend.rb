class Friend < ActiveRecord::Base
	validates_presence_of  :name, :message => ": O nome deve ser preenchido!"
end
