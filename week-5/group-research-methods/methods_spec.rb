
require_relative "my_solution"


# PERSON 5: SPLIT DATA
describe 'PERSON 5: my_array_splitting_method' do
  let(:i_want_pets) { ["I", "want", 3, "pets", "but", "only", "have", 2 ] }

  it "successfully splits elements of an array into two separate arrays based on whether the element is an integer" do
    expect(my_array_splitting_method(i_want_pets)).to eq [[3,2], ["I", "want","pets", "but", "only", "have"]]
  end

  it "operates non-destructively" do
     expect(my_array_splitting_method(i_want_pets).object_id).to_not eq(i_want_pets.object_id)
  end

end

describe 'PERSON 5: my_hash_splitting_method' do
  let(:my_family_pets_ages) {{"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0, "Ditto" => 3}}

  it "splits a hash into nested arrays based on the age of the pet's age" do
    expect(my_hash_splitting_method(my_family_pets_ages, 5)).to eq ([[["Hoobie", 3], ["Bogart", 4], ["Poly", 4], ["Annabelle", 0], ["Ditto", 3]], [["Evi", 6], ["George", 12]]])
  end

  it "operates non-destructively" do
     expect(my_hash_splitting_method(my_family_pets_ages, 5).object_id).to_not eq(my_family_pets_ages.object_id)
  end

end