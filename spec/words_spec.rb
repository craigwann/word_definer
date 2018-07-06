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


end
