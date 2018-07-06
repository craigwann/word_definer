require('rspec')
require('words')

describe("Item") do
  describe(".all") do
    it("is empty at first") do
      expect(Word.all()).to(eq([]))
    end
  end
  describe("#save") do
    it("saves a word/definition to the list of words") do
      item = Word.new("hello", "basic greeting")
      item.save()
      expect(Word.all()).to(eq([item]))
    end
  end
  describe(".clear") do
  it("clears all items from the list") do
    item = Word.new("hello", "basic greeting")
    item.save()
    Word.clear()
    expect(Word.all()).to(eq([]))
    end
  end
  describe(".find") do
      it("finds an item based on its id") do
        item = Word.new("dog", "four legged mammal")
        item.save()
        item2 = Word.new("hello", "basic greeting")
        item2.save()
        expect(Word.find(1)).to(eq(item))
        expect(Word.find(2)).to(eq(item2))
      end
    end

end
