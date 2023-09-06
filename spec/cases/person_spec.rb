# frozen_string_literal: true

require "spec_helper"
require "cases/person"

RSpec.describe Problem do
  context "#solução" do
    it "format correctly a single element of the array" do
      input = [{ name: "Maria Neusa de Aparecida",
                 cpf: "97905796671",
                 state: 'Sao Paulo',
                 value: "1234" }]

      expected_out = "Maria Neusa97905796671Sao Paulo  1234       \n"

      expect(Problem::Person.new.solution(input)).to eq(expected_out)
    end

    it "format correctly various elements of the array" do
      input = [{ 
                 name: "Maria Neusa de Aparecida",
                 cpf: "97905796671", 
                 state: 'Sao Paulo',
                 value: "1234"
               },
               {
                 name: "Ricardo Fontes",
                 cpf: "44010762900",
                 state: "Rio Grande do Sul",
                 value: "567"
               }]

      expected_out = "Maria Neusa97905796671Sao Paulo  1234       \nRicardo Fon44010762900Rio Grande 567        \n"

      expect(Problem::Person.new.solution(input)).to eq(expected_out)
    end
  end
end
