module NiceId
  class Id
    VARS_NUM = %w{2 3 4 5 6 7 8 9}
    VARS_LET = %w{f j k m p s t v w x y z}

    attr_accessor :key

    def initialize(how_many = 3)
      @key = ''
      @summ = 0
      how_many.times do
        a = rand VARS_NUM.size
        b = rand VARS_LET.size
        @key<<VARS_NUM[a]+VARS_LET[b]
      end
      @key=@key.chop << calc
    end
    def to_s
      @key
    end
    def correct?
      @key[-1..-1] == calc
    end
    private
    def calc
      @sum = @key.chop.scan(/./).map{|a| VARS_NUM.index(a)||VARS_LET.index(a)||0 }
      VARS_LET.at @sum.inject(:+) % VARS_LET.size
    end
  end
end



