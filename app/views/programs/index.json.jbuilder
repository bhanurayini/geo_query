json.array!(@programs) do |program|
  json.extract! program, :id, :name, :description, :website, :is_active, :is_deleted, :contact_name, :contact_email, :phone, :is_approved, :meeting_flag, :meeting_time, :wait_list, :safe_haven, :start_age, :end_age, :eligibility, :restrictions
  json.url program_url(program, format: :json)
end
