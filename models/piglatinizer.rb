class PigLatinizer

    attr_accessor :text

    def initialize(text=nil)
        @text = text
    end

    def piglatinize(text)
        text.split(" ").collect do |word|
            cut = word.slice!(/\A[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]*/)
            word = word + cut
            if word[-1] =~ /[aeiouAEIOU]/ || word[-2, 2] == "il" || word[-2, 2] == "on" || cut == ""
                word = word + "way"
            else
                word = word + "ay"
            end
        end.join(" ")
    end
end