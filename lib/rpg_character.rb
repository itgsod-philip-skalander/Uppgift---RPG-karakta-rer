def create_character(first_name:, last_name:, klass:, hitpoints:, weapon:)
    character={first_name: first_name, last_name: last_name, klass: klass, hitpoints: hitpoints, weapon: weapon}
    return character
end

def describe_character(character:)
    if character[:hitpoints] >= 100
     return "#{character[:first_name]} #{character[:last_name]} the #{character[:klass]} wields a #{character[:weapon]}\n #{character[:first_name]} appears quite healthy"

    elsif character[:hitpoints] >= 75
     return "#{character[:first_name]} #{character[:last_name]} the #{character[:klass]} wields a #{character[:weapon]}\n #{character[:first_name]} appears lightly wounded"

    elsif character[:hitpoints] >= 50
      return "#{character[:first_name]} #{character[:last_name]} the #{character[:klass]} wields a #{character[:weapon]}\n #{character[:first_name]} appears moderately wounded"

    elsif character[:hitpoints] >= 25
      return "#{character[:first_name]} #{character[:last_name]} the #{character[:klass]} wields a #{character[:weapon]}\n #{character[:first_name]} appears badly wounded"

    elsif character[:hitpoints] > 0
      return "#{character[:first_name]} #{character[:last_name]} the #{character[:klass]} wields a #{character[:weapon]}\n #{character[:first_name]} appears close to death"

    else
      return "#{character[:first_name]} #{character[:last_name]} the #{character[:klass]} is dead.\n Beside the corpse lies a #{character[:weapon]}"

    end
end

def hit_character(character:, damage:)
  character[:hitpoints] = character[:hitpoints] - damage
  return character
end

arthas = create_character(first_name: 'Arthas', last_name: 'Menethil', klass: 'Death Knight', hitpoints: 100, weapon: 'Frostmourne')
p hit_character(character: arthas, damage: 10)
p hit_character(character: arthas, damage: 10)
p hit_character(character: arthas, damage: 10)
p hit_character(character: arthas, damage: 10)
p hit_character(character: arthas, damage: 10)
p hit_character(character: arthas, damage: 10)
p hit_character(character: arthas, damage: 10)
p hit_character(character: arthas, damage: 10)
p describe_character(arthas)
