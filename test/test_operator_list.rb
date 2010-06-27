require 'helper'

class TestRelations < Test::Unit::TestCase
  context "Without any model" do

    should "display metawhere available symbol operators" do
      results = MetaWhere::Operator.symbol_operators
      assert_equal true, results.keys.size > 5
      assert_equal '>', results[:gt]           
    end
    
    should "display humanized symbol operators" do
      results = MetaWhere::Operator.symbol_operators :humanize
      assert_equal true, results.keys.size > 5
      assert_equal '>', results[:greater_than]     
    end
    
    should "display compound operators" do
      results = MetaWhere::Operator.compound_operators
      assert_equal true, results.keys.size > 1
      assert_equal '&', results[:and]     
    end
    
    should "display all operators" do
      results = MetaWhere::Operator.all_operators
      assert_equal true, results.keys.size > 5
      assert_equal '&', results[:and]     
      assert_equal '>', results[:gt]
    end  
    
    should "display all operators humanized" do
      results = MetaWhere::Operator.all_operators :humanize
      assert_equal true, results.keys.size > 5
      assert_equal '&', results[:and]     
      assert_equal '>', results[:greater_than]
    end          

    should "humanize :eq into :equals" do
      result = MetaWhere::Operator.humanize_symbol :eq
      assert_equal :equals, result
    end          

    should "unhumanize :equals into :eq" do
      result = MetaWhere::Operator.unhumanize_symbol :equals
      assert_equal :eq, result
    end          
    
  end # context
end
