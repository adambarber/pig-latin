require_relative './pig_latin'
describe PigLatin do
  it "should translate words that start with a consonant" do
    PigLatin.translate('hello').should eq 'ellohay'
    PigLatin.translate('world').should eq 'orldway'
  end

  it "should translate words that start with a vowel" do
    PigLatin.translate('apples').should eq 'applesay'
  end

  it "should capitalize the pig latin when the english is capitalized" do
    PigLatin.translate('Hello').should eq 'Ellohay'
  end

  it "should translate phrases containing multiple words" do
    PigLatin.translate('eat apples').should eq 'eatay applesay'
  end

  it "should translate sentences and retain the original punctuation" do
    PigLatin.translate('hello... world?!').should eq 'ellohay... orldway?!'
  end
end