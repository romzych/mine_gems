require_relative '../lib/multiples'

describe "the is_multiple_of_3_or_5? method" do
    it "should return TRUE when an integer is a multiple of 3 or 5" do
      expect(is_multiple_of_3_or_5?(3)).to eq(true)
      expect(is_multiple_of_3_or_5?(5)).to eq(true)
      expect(is_multiple_of_3_or_5?(51)).to eq(true)
      expect(is_multiple_of_3_or_5?(45)).to eq(true)
    end
  
    it "should return FALSE when an integer is NOT a multiple of 3 or 5" do
      # je te laisse écrire ces tests-là
      expect(is_multiple_of_3_or_5?(2)).to eq(false)
      expect(is_multiple_of_3_or_5?(7)).to eq(false)
      expect(is_multiple_of_3_or_5?(11)).to eq(false)
      expect(is_multiple_of_3_or_5?(23)).to eq(false)
    end
end

describe "the sum_of_3_or_5_multiples method" do
    it "sould return the result of the sum of the mutiple of 3 and 5" do
        expect(sum_of_3_or_5_multiples(10)).to eq(23)
        expect(sum_of_3_or_5_multiples(11)).to eq(33)
        expect(sum_of_3_or_5_multiples(12)).to eq(33)
        expect(sum_of_3_or_5_multiples(13)).to eq(45)
    end
    it "should return :Yo !... if input is string float or neg" do
        expect(sum_of_3_or_5_multiples("bonjour")).to eq("Yo ! Je ne prends que les entiers naturels. TG")
        expect(sum_of_3_or_5_multiples(10.3)).to eq("Yo ! Je ne prends que les entiers naturels. TG")
        expect(sum_of_3_or_5_multiples(-16)).to eq("Yo ! Je ne prends que les entiers naturels. TG")
    end
end