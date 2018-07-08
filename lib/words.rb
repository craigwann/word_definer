class Word
  @@list_word = []
  @@list_definition = []
  attr_reader :id
  attr_accessor :word
  attr_accessor :definition
  attr_accessor :def_array

  def initialize(attributes)
    @word = attributes.fetch(:word)
    @definition = definition
    @def_array = []
    @id = @@list_word.length + 1
  end

  def self.all()
    @@list_word
  end

  def self.find(id)
    item_id = id.to_i()
    @@list_word.each do |item|
      if item.id == item_id
        return item
      end
    end
  end


  def save()
      @@list_word.push(self)
  end

  def save_def(definition)
     if definition.to_s.length > 0
       @def_array.push(definition)
     end
  end

  def self.clear()
    @@list_word = []
  end
end
