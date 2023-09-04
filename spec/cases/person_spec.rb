# frozen_string_literal: true

require "spec_helper"
require "cases/person"

RSpec.describe Person do
  context "#solução" do
    it "format correctly a single element of the array" do
      input = [{ name: "Maria Neusa de Aparecida",
                 cpf: "97905796671",
                 state: "Sao Paulo",
                 value: "1234" }]

      expected_out = "Maria Neusa97905796671Sao Paulo1234           \n"

      expect(Person.new.solution(input)).to eq(expected_out)
    end

    it "format correctly various elements of the array" do
      input = [{ 
                 name: "Maria Neusa de Aparecida",
                 cpf: "97905796671", 
                 state: "Sao Paulo", 
                 value: "1234"
               },
               {
                 name: "Ricardo Fontes",
                 cpf: "44010762900",
                 state: "Rio Grande do Sul",
                 value: "567"
               }]

      expected_out = "Maria Neusa97905796671Sao Paulo1234           \nRicardo Font44010762900Rio Grande567"

      expect(Person.new.solution(input)).to eq(expected_out)
    end
  end
end
