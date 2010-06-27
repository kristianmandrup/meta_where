module MetaWhere
  module Operator
    def self.symbol_operators mode     
        symbol_map = [:eq => '[]', :not_eq => '^', :in => '+', :not_in => '-', :matches => '=~', :not_matches => '!~', :gt => '>', :gteq => '>=', :lt => '<', :lteq => '<=']
        if mode == :humanize            
          humanized_map = []
          symbol_map.each_pair do |k, v|
            humanized_map << {humanized_symbol(key) = v}
          end
          return humanized_map.flatten
        end
        symbol_map
      end
    end

    def self.compound_operators
      [:or => '|', :and => '&']
    end
    
    def self.all_operators mode   
      symbol_operators(mode) + compound_operators
    end   

    protected

    def self.humanized_symbol key
      symbol_operators_humanized[key] ? symbol_operators_humanized[key] : key
    end
    
    def self.symbol_operators_humanized
      [:eq => :equals, :not_eq => :does_not_equal, :not_matches => :does_not_match, :gt => :greater_than, :gteq => :greater_than_or_equal_to, , :lt => :less_than, :lteq => :less_than_or_equal_to]
  end
end