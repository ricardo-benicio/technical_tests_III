# frozen_string_literal: true
require 'yaml'

module Problem
  class Person
    def solution(input)
      result = ""

      input.each do |hash|
        name = hash[:name][0, 11].ljust(11)
        cpf = hash[:cpf][0, 11].ljust(11)
        state = hash[:state][0, 11].ljust(11)
        value = hash[:value][0, 11].ljust(11)

        result += "#{name}#{cpf}#{state}#{value}\n"
      end

      result
    end
  end

  class Formatter
    def initialize(format_file)
      @format = YAML.load_file(format_file)
    end

    def format(input)
      result = ""

      input.each do |hash|
        formatted_hash = formatted_hash(hash)
        result += "#{formatted_hash}\n"
      end
      result
    end

    private

    def format_hash(hash)
      formatted_values = @format.map do |field, length|
        value = hash[field].to_s[0, length]
        value.ljust(length)
      end
      formatted_values.join
    end
  end
end
