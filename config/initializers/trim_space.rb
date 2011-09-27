def trim_space
  attribute_names().each do |name|
    if self.send(name.to_sym).respond_to?(:strip!)
      self.send(name).strip!
    end
  end
end

