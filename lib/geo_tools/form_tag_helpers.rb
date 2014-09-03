module GeoTools
  module FormTagHelpers
    # warning: using value needs work, as can not use same value for both fields
    def latitude_field_tag(method, value = nil, options = {})
      # TODO refactor big time into longitude and also less code
      degrees_options = options.delete(:degrees) || {}
      minutes_options = options.delete(:minutes) || {}
      hemisphere_options = options.delete(:hemisphere) || {}
      
      tab_index = options.delete(:tabindex_starting_from).to_i
      
      if tab_index
        degrees_options.merge!(:tabindex => tab_index)
        minutes_options.merge!(:tabindex => tab_index + 1)
        hemisphere_options.merge!(:tabindex => tab_index + 2)
      end
      
      minutes_options.merge!(options)
      degrees_options.merge!(options)
      
      text_field_tag("#{method}_degrees", value, degrees_options.merge(
        :id        => "#{method}_degrees",
        :name      => "#{method}_degrees",
        :maxlength => 2 )) +
      '&deg;'.html_safe +

      text_field_tag("#{method}_minutes", value, minutes_options.merge(
        :id        => "#{method}_minutes",
        :name      => "#{method}_minutes",
        :maxlength => 2 )) +
      '.' +

      # Hmm, we pass the options in the html_options position.
      # note: not passing on options
      select_tag("#{method}_hemisphere", options_for_select(['N','S']), hemisphere_options.merge(
        :id       => "#{method}_hemisphere",
        :name     => "#{method}_hemisphere" ))
    end

    def longitude_field_tag(method, value = nil, options = {})
      degrees_options = options.delete(:degrees) || {}
      minutes_options = options.delete(:minutes) || {}
      hemisphere_options = options.delete(:hemisphere) || {}
      
      tab_index = options.delete(:tabindex_starting_from).to_i
      
      if tab_index
        degrees_options.merge!(:tabindex => tab_index)
        minutes_options.merge!(:tabindex => tab_index + 1)
        hemisphere_options.merge!(:tabindex => tab_index + 2)
      end
      
      minutes_options.merge!(options)
      degrees_options.merge!(options)
      
      text_field_tag("#{method}_degrees", value, degrees_options.merge(
        :id        => "#{method}_degrees",
        :name      => "#{method}_degrees",
        :maxlength => 3 )) +
      '&deg;'.html_safe +

      text_field_tag("#{method}_minutes", value, minutes_options.merge(
        :id        => "#{method}_minutes",
        :name      => "#{method}_minutes",
        :maxlength => 2 )) +
      '.' +

      # Hmm, we pass the options in the html_options position.
      select_tag("#{method}_hemisphere", options_for_select(['E','W']), hemisphere_options.merge(
        :id       => "#{method}_hemisphere",
        :name     => "#{method}_hemisphere" ))
    end

    private

  end
end
