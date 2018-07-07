describe(".clear") do
it("3-clears all items from the list") do
  item = Word.new("hello", "basic greeting")
  item.save()
  Word.clear()
  expect(Word.all()).to(eq([]))
  end
end
describe(".find") do
    it("4-finds an item based on its id") do
      item = Word.new("dog", "four legged mammal")
      item.save()
      item2 = Word.new("hello", "basic greeting")
      item2.save()
      expect(Word.find(1)).to(eq(item))
      expect(Word.find(2)).to(eq(item2))
    end
  end

  describe("#id") do
    it("5-increments an id by 1 each time a new item is added") do
      Word.clear()
      item = Word.new("dog", "four legged mammal")
      item.save()
      item2 = Word.new("hello", "basic greeting")
      item2.save()
      expect(item.id()).to(eq(1))
      expect(item2.id()).to(eq(2))
      end
    end

    describe("#definition") do
      it("6-returns definition array") do
        Word.clear()
        item = Word.new("dog", ["canine", "four legged mammal"])
        item.save()
        expect(item.definition()).to(eq(["canine", "four legged mammal"]))
        end
      end

    describe("#definition") do
      it("7-returns definition array") do
        Word.clear()
        item = Word.new("dog", "canine")
        item.save()
        item.save_def()
        item.definition = "four legged mammal"
        item.save_def()
        expect(item.def_array()).to(eq(["canine", "four legged mammal"]))
        end
      end
    describe("#definition") do
      it("8-returns definition array") do
        Word.clear()
        item = Word.new("dog", "canine")
        item.save()
        item.save_def()
        item.definition = "four legged mammal"
        item.save_def()
        item.definition = "not a cat"
        item.save_def()
        expect(item.def_array()).to(eq(["canine", "four legged mammal", "not a cat"]))
        end
      end



      <form action="/word/:word" method="post">
        <input type="text" name="add_definition">
        <button type="submit" name="add_definition_btn" value="<%=@current_word.word%>" class="btn btn-primary">Add Definition</button>
      </form>