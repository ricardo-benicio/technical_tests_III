# frozen_string_literal: true

class Person
  def solution(input)
    result = ""

    input.each do |hash|
      name = hash[:name][0, 11].ljust(11)
      cpf = hash[:cpf][0, 11].ljust(11)
      state = hash[:state][0, 11].ljust(11)
      value = hash[:value][0, 11].ljust(11)

      result += "#{name}#{cpf}#{state}#{value}           \n"
    end

    result
  end
end
