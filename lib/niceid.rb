module NiceId
  class Id
    VARS_NUM = %w{2 3 4 5 6 7 8 9}
    VARS_LET = %w{f j k m p s t v w x y z e}
    DEFAULT_SIZE = 3

    def initialize(how_many = DEFAULT_SIZE)
      @key = [].fill(0, how_many) { [VARS_NUM.sample,VARS_LET.sample] }
      @key = @key.flatten.join
      @key = @key.chop + calc(@key)
    end

    def to_s
      @key
    end

    private

    def correct?
      @key[-1..-1] == calc(@key)
    end

    def calc(key)
      @sum = key.chop.scan(/./).map{ |a| VARS_NUM.index(a)||VARS_LET.index(a)||0 }
      VARS_LET.at @sum.inject(:+) % VARS_LET.size
    end

  end
end



