class Item
  def self.show
    puts "Class method show invoked"
  end  
end

puts Item.show


class Planet
  @@planets_count = 0
    
  def initialize(name)
    @name = name
    @@planets_count += 1
  end
  
  def self.planets_count
    @@planets_count
  end  
end

Planet.new("earth"); Planet.new("uranus"); Planet.new("mars") 

puts Planet.planets_count


class Foo
  @foo_count = 0
  
  def self.increment_counter
    @foo_count += 1
  end
  
  def self.current_count
    @foo_count
  end  
end

class Bar < Foo
  @foo_count = 100
end

Foo.increment_counter
Bar.increment_counter
p Foo.current_count
p Bar.current_count

class Item
    attr_reader :item_name, :qty
    def initialize(item_name, qty)
        @item_name = item_name
        @qty = qty
    end
    def to_s
        "Item (#{@item_name}, #{@qty})"
    end
    def ==(other_item)
        self.item_name == other_item.item_name && self.qty == other_item.qty
    end
end

items = [Item.new("abcd", 1), Item.new("abcd", 1), Item.new("abcd", 1)]
p items.uniq
