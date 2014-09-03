module GeoTools
  module FormHelpers
    def latitude_field(method, options = {}, html_options = {})
      text_field("#{method}_degrees", options.merge(
        :id        => "#{@object_name}_#{method}_degrees",
        :name      => "#{@object_name}[#{method}_degrees]",
        :size     => 3,
        :maxlength => 2 )) +
      '&deg;'.html_safe +

      text_field("#{method}_minutes", options.merge(
        :id        => "#{@object_name}_#{method}_minutes",
        :name      => "#{@object_name}[#{method}_minutes]",
        :size     => 3,
        :maxlength => 2 )) +
      '.' +

      # Hmm, we pass the options in the html_options position.
      select("#{method}_hemisphere", %w( N S ), {}, options.merge(
        :id       => "#{@object_name}_#{method}_hemisphere",
        :name     => "#{@object_name}[#{method}_hemisphere]" ))
    end

    def longitude_field(method, options = {}, html_options = {})
      text_field("#{method}_degrees", options.merge(
        :id        => "#{@object_name}_#{method}_degrees",
        :name      => "#{@object_name}[#{method}_degrees]",
        :size     => 3,
        :maxlength => 3 )) +
      '&deg;'.html_safe +

      text_field("#{method}_minutes", options.merge(
        :id        => "#{@object_name}_#{method}_minutes",
        :name      => "#{@object_name}[#{method}_minutes]",
        :size     => 3,
        :maxlength => 2 )) +
      '.' +
      # Hmm, we pass the options in the html_options position.
      select("#{method}_hemisphere", %w( E W ), {}, options.merge(
        :id       => "#{@object_name}_#{method}_hemisphere",
        :name     => "#{@object_name}[#{method}_hemisphere]" ))
    end

    private

  end
end
