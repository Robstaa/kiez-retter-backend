# frozen_string_literal: true

json.business do 
  json.business_id @business.id
  json.gmap_id @business.gmap_id
  json.owner do
    json.first_name @owner.first_name
    json.last_name @owner.last_name
    json.nick_name @owner.nick_name
    json.image attached_image_url(@owner.owner_image)
    json.paypal @owner.paypal_handle
  end
  json.message @business.personal_message
  json.thank_you @business.personal_thank_you
  json.business_type @business.business_type.slug
  json.favorite_place_image attached_image_url(@business.favorite_place_image)
  json.address do
    json.street_address @business.street_address
    json.postcode @business.postcode
    json.city @business.city
  end
  json.verified @business.verified
end
