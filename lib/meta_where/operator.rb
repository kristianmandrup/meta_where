module MetaWhere
  module Operator
    def self.symbol_operators
      [:eq => '[]', :not_eq => '^', :in => '+', :not_in => '-', :matches => '=~', :not_matches => '!~', :gt => '>', :gteq => '>=', :lt => '<', :lteq => '<=']
    end

    def self.compound_operators
      [:or => '|', :and => '&']
    end
    
    def self.all_operators   
      symbol_operators + compound_operators
    end
  end
end