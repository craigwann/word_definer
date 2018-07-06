class Word
  @@list = []
  attr_reader :id
  attr_accessor :word
  attr_accessor :definition

  def initialize(word, definition)
    @word = word
    @definition = definition
    @id = @@list.length + 1
  end

  def self.all()
    @@list
  end

  def self.find(id)
    item_id = id.to_i()
    @@list.each do |item|
      if item.id == item_id
        return item
      end
    end
  end

  def save()
      @@list.push(self)
  end

  def self.clear()
    @@list = []
  end
end
