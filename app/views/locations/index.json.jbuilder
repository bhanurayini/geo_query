json.array!(@locations) do |location|
  json.extract! location, :id, :name, :physical_address, :mailing_address, :city, :state, :zip, :major_intersections, :address_status, :website, :contact_name, :contact_email, :phone, :service_hours, :service_hours_notes, :hours, :other_eligibility, :case_management, :case_management_services, :donation_flag, :volunteer_flag, :volunteer_activity, :is_active, :is_deleted, :is_approved, :start_age, :end_age
  json.url location_url(location, format: :json)
end
