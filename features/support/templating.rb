class Object
  def lookup(dotted_path)
    result = self
    dotted_path.split('.').each do |dot_part|
      dot_part.split('[').each do |part|
        if part.include?(']')
          index = part.to_i
          result = result[index]
        else
          case result
          when Hash
            result = result[part.to_sym] rescue result[part]
          else
            result = result.send(part)
          end
        end
      end
    end

    result
  end
end

class String
  def snakecase
    gsub(/([A-Z]+)([A-Z][a-z])/, '\1_\2').
      gsub(/([a-z\d])([A-Z])/, '\1_\2').
      tr('-', '_').
      gsub(/\W+/, '_').
      gsub(/_+$/, '').
      gsub(/\s/, '_').
      gsub(/__+/, '_').
      downcase
  end

  def templated(data)
    self.gsub(/{{ ?([^} ]+) ?}}/) do
      data.lookup($1).to_s
    end
  end
end
