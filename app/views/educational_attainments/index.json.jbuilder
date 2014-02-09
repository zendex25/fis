json.array!(@educational_attainments) do |educational_attainment|
  json.extract! educational_attainment, :id, :faculty_id, :school_name_elemetary, :school_location_elementary, :school_yearfrom_elementary, :school_yearto_elementary, :school_degrees_elementary, :school_honors_elementary, :school_name_intermediate, :school_location_intermediate, :school_yearfrom_intermediate, :school_yearto_intermediate, :school_degrees_intermediate, :school_honors_intermediate, :school_name_secondary, :school_location_secondary, :school_yearfrom_secondary, :school_yearto_secondary, :school_degrees_secondary, :school_honors_secondary, :school_name_collegiate, :school_location_collegiate, :school_yearfrom_collegiate, :school_yearto_collegiate, :school_degrees_collegiate, :school_honors_collegiate, :school_name_graduate, :school_location_graduate, :school_yearfrom_graduate, :school_yearto_graduate, :school_degrees_graduate, :school_honors_graduate, :school_name_doctoral, :school_location_doctoral, :school_yearfrom_doctoral, :school_yearto_doctoral, :school_degrees_doctoral, :school_honors_doctoral, :college_major, :college_minor, :special_studies, :present_studies
  json.url educational_attainment_url(educational_attainment, format: :json)
end
