json.array!(@organizations) do |organization|
  json.extract! organization, :id, :ein, :name, :purpose, :address, :mailing_address, :city, :state, :zipcode, :website, :email, :email_visible_flag, :phone, :is_approved, :is_deleted, :is_active, :is_draft
  json.url organization_url(organization, format: :json)
end
