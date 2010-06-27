module MetaWhere
  module Operator
    def self.symbol_operators(mode = nil)
      symbol_map = {:eq => '[]', :not_eq => '^', :in => '+', :not_in => '-', :matches => '=~', :not_matches => '!~', :gt => '>', :gteq => '>=', :lt => '<', :lteq => '<='}
      if mode == :humanize            
        humanized_map = {}
        symbol_map.each_pair do |k, v|
          humanized_map.merge!(humanize_symbol(k) => v)
        end
        return humanized_map
      end
      symbol_map
    end

    def self.compound_operators
      {:or => '|', :and => '&'}
    end
    
    def self.all_operators(mode = nil)   
      all = symbol_operators(mode).merge(compound_operators)
    end   

    def self.symbol_operators_humanized
      {:eq => :equals, :not_eq => :does_not_equal, :not_matches => :does_not_match, :gt => :greater_than, :gteq => :greater_than_or_equal_to, :lt => :less_than, :lteq => :less_than_or_equal_to}
    end

    def self.humanize_symbol key
      symbol_operators_humanized[key] ? symbol_operators_humanized[key] : key
    end

    def self.unhumanize_symbol key
      symbol_operators_humanized.each_pair do |k, v| 
        return k if v == key
      end
    end
    
  end
end