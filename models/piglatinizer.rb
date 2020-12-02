class PigLatinizer
    attr_accessor :string

    def piglatinize(text)
        array = text.split(" ")

        new_arr = array.map do |word|
            if word[0].match?(/[aAeEiIoOuU]/)
               word = word + 'way'
            else
                split = word.split(/[aeiou]/)
                base = word.slice(split[0].length, word.length + 1)
                word = base + split[0] + "ay"
            end
        end
        @string = new_arr.join(" ")
    end
end