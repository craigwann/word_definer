require('rspec')
require('words')

describe("Item") do
  describe(".all and .clear") do
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
  describe("#save_def") do
    it("3-passes definition to new Word instance ") do
      item = Word.new({:word => 'hello'})
      item.save_def("basic greeting")
      expect(item.def_array[0]).to(eq("basic greeting"))
    end
  end
  describe(".find") do
      it("4-finds an item based on its id") do
        item = Word.new({:word => 'hello'})
        item.save_def("basic greeting")
        item.save()
        item2 = Word.new({:word => 'cat'})
        item.save_def("four legged mammal")
        item2.save()
        expect(Word.find(1)).to(eq(item))
        expect(Word.find(2)).to(eq(item2))
      end
    end
    describe("#definition") do
      it("5-returns definition array") do
        Word.clear()
        item = Word.new({:word => 'dog'})
        item.save_def("canine")
        item.save_def("four legged mammal")
        item.save()
        expect(item.def_array()).to(eq(["canine", "four legged mammal"]))
        end
      end

end
