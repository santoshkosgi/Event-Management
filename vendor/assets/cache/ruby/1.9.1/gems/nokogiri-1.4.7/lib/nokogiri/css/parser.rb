#
# DO NOT MODIFY!!!!
# This file is automatically generated by Racc 1.4.6
# from Racc grammer file "".
#

require 'racc/parser.rb'


require 'nokogiri/css/parser_extras'
module Nokogiri
  module CSS
    class Parser < Racc::Parser
##### State transition tables begin ###

racc_action_table = [
    12,    21,    46,    47,    20,    45,    22,    12,    65,     9,
    78,    20,    76,    22,    12,    42,     9,    85,    20,    13,
    90,    89,    11,     9,    14,     7,    13,    10,    15,    11,
    81,    14,     7,    13,    10,    15,    11,    20,    14,     7,
    12,    10,    15,    77,    20,    11,    80,    79,    20,     9,
    84,    15,    20,     9,    79,    11,    20,    82,     7,    13,
    20,    15,    11,    26,    14,     7,    11,    10,    15,     7,
    11,    10,    15,     7,    11,    26,    15,     7,    11,    12,
    15,     7,    86,    20,    15,    58,    88,    20,    39,    83,
    41,    12,    46,    50,    82,    49,    46,    50,    13,    49,
    53,    11,   -23,    14,     7,    11,    91,    15,     7,    38,
    13,    15,    73,    74,    93,    14,    37,    73,    74,    46,
    50,    26,    49,    69,    70,    71,    96,    72,    69,    70,
    71,    68,    72,    30,    31,    33,    68,    46,    50,    97,
    49,   nil,   nil,    32,   nil,    35,    34 ]

racc_action_check = [
     0,     1,    12,    12,     0,    12,    51,    36,    38,     0,
    44,    36,    41,     1,    22,    12,    36,    51,    22,     0,
    67,    67,     0,    22,     0,     0,    36,     0,     0,    36,
    46,    36,    36,    22,    36,    36,    22,    62,    22,    22,
    14,    22,    22,    43,    14,     4,    45,    45,    26,    14,
    48,     4,    18,    26,    49,    62,    17,    50,    62,    14,
     3,    62,    14,    24,    14,    14,    26,    14,    14,    26,
    18,    26,    26,    18,    17,     3,    18,    17,     3,    11,
    17,     3,    61,    16,     3,    21,    66,    19,    11,    47,
    11,    15,    13,    13,    47,    13,    82,    82,    11,    82,
    15,    16,     9,    11,    16,    19,    75,    16,    19,     8,
    15,    19,    39,    39,    80,    15,     7,    40,    40,    81,
    81,     5,    81,    39,    39,    39,    83,    39,    40,    40,
    40,    39,    40,     6,     6,     6,    40,    79,    79,    93,
    79,   nil,   nil,     6,   nil,     6,     6 ]

racc_action_pointer = [
    -2,     1,   nil,    54,    21,   100,   126,   105,    81,    74,
   nil,    77,    -8,    82,    38,    89,    77,    50,    46,    81,
   nil,    85,    12,   nil,    42,   nil,    42,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,     5,   nil,    -3,   109,
   114,   -13,   nil,    20,   -13,    35,    18,    82,    27,    42,
    45,    -6,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,    59,    31,   nil,   nil,   nil,    61,    10,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,    81,   nil,   nil,   nil,   127,
   107,   109,    86,   113,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   126,   nil,   nil,   nil,   nil ]

racc_action_default = [
   -24,   -69,    -2,   -45,   -12,   -16,   -18,   -69,   -69,   -21,
   -22,   -69,   -69,   -69,   -24,   -69,   -50,   -51,   -52,   -53,
   -54,   -69,   -24,    -9,   -44,   -11,   -24,   -13,   -14,   -15,
    -3,    -4,    -5,    -6,    -7,    -8,   -24,   -19,   -69,   -57,
   -57,   -69,   -28,   -69,   -69,   -36,   -37,   -38,   -69,   -36,
   -38,   -69,   -42,   -43,   -46,   -47,   -48,   -49,    98,    -1,
   -10,   -69,   -66,   -68,   -17,   -20,   -69,   -69,   -58,   -59,
   -60,   -61,   -62,   -63,   -64,   -69,   -27,   -29,   -30,   -69,
   -41,   -69,   -69,   -69,   -31,   -32,   -65,   -67,   -25,   -55,
   -56,   -26,   -33,   -69,   -34,   -35,   -40,   -39 ]

racc_goto_table = [
    43,    48,    24,    25,    40,    29,    59,     1,    52,    66,
    75,    23,    27,    28,    62,    54,    55,    56,    57,    36,
    64,    51,    44,    61,    60,    63,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,    87,   nil,   nil,   nil,   nil,   nil,    92,   nil,    94,
    95 ]

racc_goto_check = [
    15,    15,     7,     8,     9,     8,     2,     1,     9,    14,
    14,     6,    10,    11,     5,     7,     7,     7,     7,     3,
     2,     1,    16,    19,     8,     7,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,     7,   nil,   nil,   nil,   nil,   nil,    15,   nil,    15,
    15 ]

racc_goto_pointer = [
   nil,     7,   -16,    13,   nil,   -12,     8,    -1,     0,    -7,
     8,     9,   nil,   nil,   -30,   -12,    10,   nil,   nil,    -3 ]

racc_goto_default = [
   nil,   nil,     2,   nil,     6,     3,   nil,     5,   nil,     4,
    19,    18,    17,     8,   nil,   nil,   nil,    16,    67,   nil ]

racc_reduce_table = [
  0, 0, :racc_error,
  3, 32, :_reduce_1,
  1, 32, :_reduce_2,
  1, 34, :_reduce_3,
  1, 34, :_reduce_4,
  1, 34, :_reduce_5,
  1, 34, :_reduce_6,
  1, 34, :_reduce_7,
  1, 34, :_reduce_8,
  2, 35, :_reduce_9,
  3, 35, :_reduce_10,
  2, 35, :_reduce_11,
  1, 35, :_reduce_none,
  2, 35, :_reduce_13,
  2, 35, :_reduce_14,
  2, 35, :_reduce_15,
  1, 35, :_reduce_16,
  3, 33, :_reduce_17,
  1, 33, :_reduce_none,
  2, 43, :_reduce_19,
  3, 36, :_reduce_20,
  1, 36, :_reduce_21,
  1, 36, :_reduce_22,
  1, 44, :_reduce_23,
  0, 44, :_reduce_none,
  4, 42, :_reduce_25,
  4, 42, :_reduce_26,
  3, 42, :_reduce_27,
  2, 40, :_reduce_28,
  3, 40, :_reduce_29,
  3, 40, :_reduce_30,
  3, 40, :_reduce_31,
  3, 40, :_reduce_32,
  3, 46, :_reduce_33,
  3, 46, :_reduce_34,
  3, 46, :_reduce_35,
  1, 46, :_reduce_none,
  1, 46, :_reduce_none,
  1, 46, :_reduce_38,
  4, 47, :_reduce_39,
  3, 47, :_reduce_40,
  2, 47, :_reduce_41,
  2, 41, :_reduce_42,
  2, 41, :_reduce_43,
  1, 37, :_reduce_none,
  0, 37, :_reduce_none,
  2, 38, :_reduce_46,
  2, 38, :_reduce_47,
  2, 38, :_reduce_48,
  2, 38, :_reduce_49,
  1, 38, :_reduce_none,
  1, 38, :_reduce_none,
  1, 38, :_reduce_none,
  1, 38, :_reduce_none,
  1, 48, :_reduce_54,
  2, 45, :_reduce_55,
  2, 45, :_reduce_56,
  0, 45, :_reduce_none,
  1, 49, :_reduce_58,
  1, 49, :_reduce_59,
  1, 49, :_reduce_60,
  1, 49, :_reduce_61,
  1, 49, :_reduce_62,
  1, 49, :_reduce_63,
  1, 49, :_reduce_64,
  3, 39, :_reduce_65,
  1, 50, :_reduce_none,
  2, 50, :_reduce_none,
  1, 50, :_reduce_none ]

racc_reduce_n = 69

racc_shift_n = 98

racc_token_table = {
  false => 0,
  :error => 1,
  :FUNCTION => 2,
  :INCLUDES => 3,
  :DASHMATCH => 4,
  :LBRACE => 5,
  :HASH => 6,
  :PLUS => 7,
  :GREATER => 8,
  :S => 9,
  :STRING => 10,
  :IDENT => 11,
  :COMMA => 12,
  :NUMBER => 13,
  :PREFIXMATCH => 14,
  :SUFFIXMATCH => 15,
  :SUBSTRINGMATCH => 16,
  :TILDE => 17,
  :NOT_EQUAL => 18,
  :SLASH => 19,
  :DOUBLESLASH => 20,
  :NOT => 21,
  :EQUAL => 22,
  :RPAREN => 23,
  :LSQUARE => 24,
  :RSQUARE => 25,
  :HAS => 26,
  "." => 27,
  "|" => 28,
  "*" => 29,
  ":" => 30 }

racc_nt_base = 31

racc_use_result_var = true

Racc_arg = [
  racc_action_table,
  racc_action_check,
  racc_action_default,
  racc_action_pointer,
  racc_goto_table,
  racc_goto_check,
  racc_goto_default,
  racc_goto_pointer,
  racc_nt_base,
  racc_reduce_table,
  racc_token_table,
  racc_shift_n,
  racc_reduce_n,
  racc_use_result_var ]

Racc_token_to_s_table = [
  "$end",
  "error",
  "FUNCTION",
  "INCLUDES",
  "DASHMATCH",
  "LBRACE",
  "HASH",
  "PLUS",
  "GREATER",
  "S",
  "STRING",
  "IDENT",
  "COMMA",
  "NUMBER",
  "PREFIXMATCH",
  "SUFFIXMATCH",
  "SUBSTRINGMATCH",
  "TILDE",
  "NOT_EQUAL",
  "SLASH",
  "DOUBLESLASH",
  "NOT",
  "EQUAL",
  "RPAREN",
  "LSQUARE",
  "RSQUARE",
  "HAS",
  "\".\"",
  "\"|\"",
  "\"*\"",
  "\":\"",
  "$start",
  "selector",
  "simple_selector_1toN",
  "combinator",
  "simple_selector",
  "element_name",
  "hcap_0toN",
  "hcap_1toN",
  "negation",
  "function",
  "pseudo",
  "attrib",
  "class",
  "namespace",
  "attrib_val_0or1",
  "expr",
  "an_plus_b",
  "attribute_id",
  "eql_incl_dash",
  "negation_arg" ]

Racc_debug_parser = false

##### State transition tables end #####

# reduce 0 omitted

def _reduce_1(val, _values, result)
        result = [val.first, val.last].flatten
      
    result
end

def _reduce_2(val, _values, result)
 result = val.flatten 
    result
end

def _reduce_3(val, _values, result)
 result = :DIRECT_ADJACENT_SELECTOR 
    result
end

def _reduce_4(val, _values, result)
 result = :CHILD_SELECTOR 
    result
end

def _reduce_5(val, _values, result)
 result = :PRECEDING_SELECTOR 
    result
end

def _reduce_6(val, _values, result)
 result = :DESCENDANT_SELECTOR 
    result
end

def _reduce_7(val, _values, result)
 result = :DESCENDANT_SELECTOR 
    result
end

def _reduce_8(val, _values, result)
 result = :CHILD_SELECTOR 
    result
end

def _reduce_9(val, _values, result)
        result =  if val[1].nil?
                    val.first
                  else
                    Node.new(:CONDITIONAL_SELECTOR, [val.first, val[1]])
                  end
      
    result
end

def _reduce_10(val, _values, result)
        result = Node.new(:CONDITIONAL_SELECTOR,
          [
            val.first,
            Node.new(:COMBINATOR, [val[1], val.last])
          ]
        )
      
    result
end

def _reduce_11(val, _values, result)
        result = Node.new(:CONDITIONAL_SELECTOR, val)
      
    result
end

# reduce 12 omitted

def _reduce_13(val, _values, result)
        result = Node.new(:CONDITIONAL_SELECTOR, val)
      
    result
end

def _reduce_14(val, _values, result)
        result = Node.new(:CONDITIONAL_SELECTOR, val)
      
    result
end

def _reduce_15(val, _values, result)
        result = Node.new(:CONDITIONAL_SELECTOR,
          [
            Node.new(:ELEMENT_NAME, ['*']),
            Node.new(:COMBINATOR, val)
          ]
        )
      
    result
end

def _reduce_16(val, _values, result)
        result = Node.new(:CONDITIONAL_SELECTOR,
          [Node.new(:ELEMENT_NAME, ['*']), val.first]
        )
      
    result
end

def _reduce_17(val, _values, result)
        result = Node.new(val[1], [val.first, val.last])
      
    result
end

# reduce 18 omitted

def _reduce_19(val, _values, result)
 result = Node.new(:CLASS_CONDITION, [val[1]]) 
    result
end

def _reduce_20(val, _values, result)
        result = Node.new(:ELEMENT_NAME,
          [[val.first, val.last].compact.join(':')]
        )
      
    result
end

def _reduce_21(val, _values, result)
        name = @namespaces.key?('xmlns') ? "xmlns:#{val.first}" : val.first
        result = Node.new(:ELEMENT_NAME, [name])
      
    result
end

def _reduce_22(val, _values, result)
 result = Node.new(:ELEMENT_NAME, val) 
    result
end

def _reduce_23(val, _values, result)
 result = val[0] 
    result
end

# reduce 24 omitted

def _reduce_25(val, _values, result)
        result = Node.new(:ATTRIBUTE_CONDITION,
          [Node.new(:ELEMENT_NAME, [val[1]])] + (val[2] || [])
        )
      
    result
end

def _reduce_26(val, _values, result)
        result = Node.new(:ATTRIBUTE_CONDITION,
          [val[1]] + (val[2] || [])
        )
      
    result
end

def _reduce_27(val, _values, result)
        # Non standard, but hpricot supports it.
        result = Node.new(:PSEUDO_CLASS,
          [Node.new(:FUNCTION, ['nth-child(', val[1]])]
        )
      
    result
end

def _reduce_28(val, _values, result)
        result = Node.new(:FUNCTION, [val.first.strip])
      
    result
end

def _reduce_29(val, _values, result)
        result = Node.new(:FUNCTION, [val.first.strip, val[1]].flatten)
      
    result
end

def _reduce_30(val, _values, result)
        result = Node.new(:FUNCTION, [val.first.strip, val[1]].flatten)
      
    result
end

def _reduce_31(val, _values, result)
        result = Node.new(:FUNCTION, [val.first.strip, val[1]].flatten)
      
    result
end

def _reduce_32(val, _values, result)
        result = Node.new(:FUNCTION, [val.first.strip, val[1]].flatten)
      
    result
end

def _reduce_33(val, _values, result)
 result = [val.first, val.last] 
    result
end

def _reduce_34(val, _values, result)
 result = [val.first, val.last] 
    result
end

def _reduce_35(val, _values, result)
 result = [val.first, val.last] 
    result
end

# reduce 36 omitted

# reduce 37 omitted

def _reduce_38(val, _values, result)
        if val[0] == 'even'
          val = ["2","n","+","0"]
          result = Node.new(:AN_PLUS_B, val)
        elsif val[0] == 'odd'
          val = ["2","n","+","1"]
          result = Node.new(:AN_PLUS_B, val)
        else
          # This is not CSS standard.  It allows us to support this:
          # assert_xpath("//a[foo(., @href)]", @parser.parse('a:foo(@href)'))
          # assert_xpath("//a[foo(., @a, b)]", @parser.parse('a:foo(@a, b)'))
          # assert_xpath("//a[foo(., a, 10)]", @parser.parse('a:foo(a, 10)'))
          result = val
        end
      
    result
end

def _reduce_39(val, _values, result)
        if val[1] == 'n'
          result = Node.new(:AN_PLUS_B, val)
        else
          raise Racc::ParseError, "parse error on IDENT '#{val[1]}'"
        end
      
    result
end

def _reduce_40(val, _values, result)
               # n+3, -n+3
        if val[0] == 'n'
          val.unshift("1")
          result = Node.new(:AN_PLUS_B, val)
        elsif val[0] == '-n'
          val[0] = 'n'
          val.unshift("-1")
          result = Node.new(:AN_PLUS_B, val)
        else
          raise Racc::ParseError, "parse error on IDENT '#{val[1]}'"
        end
      
    result
end

def _reduce_41(val, _values, result)
        if val[1] == 'n'
          val << "+"
          val << "0"
          result = Node.new(:AN_PLUS_B, val)
        else
          raise Racc::ParseError, "parse error on IDENT '#{val[1]}'"
        end
      
    result
end

def _reduce_42(val, _values, result)
        result = Node.new(:PSEUDO_CLASS, [val[1]])
      
    result
end

def _reduce_43(val, _values, result)
 result = Node.new(:PSEUDO_CLASS, [val[1]]) 
    result
end

# reduce 44 omitted

# reduce 45 omitted

def _reduce_46(val, _values, result)
        result = Node.new(:COMBINATOR, val)
      
    result
end

def _reduce_47(val, _values, result)
        result = Node.new(:COMBINATOR, val)
      
    result
end

def _reduce_48(val, _values, result)
        result = Node.new(:COMBINATOR, val)
      
    result
end

def _reduce_49(val, _values, result)
        result = Node.new(:COMBINATOR, val)
      
    result
end

# reduce 50 omitted

# reduce 51 omitted

# reduce 52 omitted

# reduce 53 omitted

def _reduce_54(val, _values, result)
 result = Node.new(:ID, val) 
    result
end

def _reduce_55(val, _values, result)
 result = [val.first, val[1]] 
    result
end

def _reduce_56(val, _values, result)
 result = [val.first, val[1]] 
    result
end

# reduce 57 omitted

def _reduce_58(val, _values, result)
 result = :equal 
    result
end

def _reduce_59(val, _values, result)
 result = :prefix_match 
    result
end

def _reduce_60(val, _values, result)
 result = :suffix_match 
    result
end

def _reduce_61(val, _values, result)
 result = :substring_match 
    result
end

def _reduce_62(val, _values, result)
 result = :not_equal 
    result
end

def _reduce_63(val, _values, result)
 result = :includes 
    result
end

def _reduce_64(val, _values, result)
 result = :dash_match 
    result
end

def _reduce_65(val, _values, result)
        result = Node.new(:NOT, [val[1]])
      
    result
end

# reduce 66 omitted

# reduce 67 omitted

# reduce 68 omitted

def _reduce_none(val, _values, result)
  val[0]
end

    end   # class Parser
    end   # module CSS
  end   # module Nokogiri
