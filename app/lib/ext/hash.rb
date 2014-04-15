class Hash

  def test
    puts "test result"
  end


  def self.keys_to_camel_case(value)
    case value
      when Array
        value.map { |v| self.keys_to_camel_case(v) }
      # or `value.map(&method(:convert_hash_keys))`
      when Hash
        Hash[value.map { |k, v| [k.to_s.camelcase(first_letter = :lower), self.keys_to_camel_case(v)] }]
      else
        value
    end
  end

  def self.keys_to_underscore_sym(value)
    case value
      when Array
        value.map { |v| self.keys_to_underscore_sym(v) }
      when Hash
        Hash[value.map { |k, v| [k.to_s.underscore.to_sym, self.keys_to_underscore_sym(v)] }]
      else
        value
    end
  end

  def self.keys_to_underscore(value)
    case value
      when Array
        value.map { |v| self.keys_to_underscore(v) }
      when Hash
        Hash[value.map { |k, v| [k.to_s.underscore, self.keys_to_underscore(v)] }]
      else
        value
    end
  end

end