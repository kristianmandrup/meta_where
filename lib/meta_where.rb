require 'arel'

module MetaWhere
  METHOD_ALIASES = {
    'ne' => :not_eq,
    'like' => :matches,
    'nlike' => :not_matches,
    'lte' => :lteq,
    'gte' => :gteq,
    'nin' => :not_in
  }

  def self.operator_overload!
    require 'core_ext/symbol_operators'
  end
end

require 'active_record'
require 'meta_where/column'
require 'meta_where/condition'
require 'meta_where/compound'
require 'core_ext/symbol'
require 'core_ext/hash'
require 'meta_where/operator_list'
require 'meta_where/builder'
require 'meta_where/relation'
require 'meta_where/join_dependency'
ActiveRecord::Relation.send(:include, MetaWhere::Relation)
ActiveRecord::Associations::ClassMethods::JoinDependency.send(:include, MetaWhere::JoinDependency)