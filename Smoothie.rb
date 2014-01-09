smoothie_ingredients = {
  'flax seeds' => '1 tbsp',
  'chia seeds' => '1 tbsp',
  'coconut flakes' => '1 tbsp',
  'spirulina' => '1 tsp',
  'pumpkin seeds' => '1 tbsp',
  'oatmeal' => '1/4 cup',
  'coco powder' => '1 tbsp',
  'peanut butter' => '1 tbsp',
  'almonds' => '1/4 cup',
  'walnuts' => '1/4 cup',
  'spinach' => '1/4 cup',
  'greek yogurt' => '1/4 cup',
  'nutrional yeast' => '1 tbsp',
  'brussel sprouts' => '1/4 cup',
  'asparagus' => '1/4 cup',
  'kale' => '1/4 cup',
  'brocoli rabe' => '1/4 cup',
  'blue berries' => '1/4 cup',
  'chopped banana' => '1/2 cup',
  'straw berries' => '1/4 cup',
  'mango' => '1/4 cup',
  'hemp milk' => '1 cup'
}

class Blender

  def initialize(smoothie_ingredients)
    @smoothie_ingredients = smoothie_ingredients
  end

  def options(smoothie_ingredients)
    on = "yes"
    puts "Type yes for blender on"

    input = gets.chomp

    until input.include?(on)
      restart = options(smoothie_ingredients)
    end
    blend(smoothie_ingredients)
  end

  def blend(smoothie_ingredients)
    off = "off"
    arr = smoothie_ingredients.keys.join.delete(" ").split("").shuffle
    arr2 = arr.join
    puts "Type off to turn blender off or any key to blend again"
    input = gets.chomp
    until input.include?(off)
      puts "Blended"
      restart = blend(smoothie_ingredients)
    end
    puts arr2


  end
end

  bld = Blender.new(smoothie_ingredients)
  bld.options(smoothie_ingredients)



