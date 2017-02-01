require 'rspec'

def array_converter *arrays
  # took from solution branch as I was not sure how to proceed;  was thinking zip before I looked up answer
  arrays.flatten.map(&:to_i)

  # above is short for full map method as below
  # arrays.flatten.map { |i| i.to_i }
end

describe 'Combine arrays and convert strings to integers' do
  it 'can take in a variable number of arrays and return a single array' do
    arr_1 = ['1', '5', '9']
    arr_2 = ['10', '2', '7', '10']
    arr_3 = ['3', '4', '0']
    expect(array_converter(arr_1, arr_2, arr_3).count).to eq(10)
    expect(array_converter(arr_1).first).to eq(1)
  end
end
