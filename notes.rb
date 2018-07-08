
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
