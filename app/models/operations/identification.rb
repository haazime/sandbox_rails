module Operations
  Identification = Struct.new(:feature_options) do
    def required_fields
      feature_options
        .reduce([]) { |a,e| a += e.required_fields }
        .uniq
    end
  end
end
