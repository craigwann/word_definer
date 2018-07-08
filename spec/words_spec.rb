require('rspec')
require('words')

describe("Item") do
  describe(".all") do
    it("1-@@list is empty/clear at first") do
      Word.clear()
      expect(Word.all()).to(eq([]))
    end
  end
  describe("#save") do
    it("2-pass word to new Word ") do
      item = Word.new({:word => 'hello'})
      expect(item.word).to(eq("hello"))
    end
  end
  describe("#save") do
    it("3-passes definition to new Word instance ") do
      item = Word.new({:word => 'hello'})
      item.save_def("basic greeting")
      expect(item.def_array[0]).to(eq("basic greeting"))
    end
  end


end
