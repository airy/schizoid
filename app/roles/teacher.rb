require "schizo"

module Teacher
  extend Schizo::Role

  extended do
    attr :students
    @students = []
  end
end
