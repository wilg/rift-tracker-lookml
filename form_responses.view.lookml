- view: form_responses
  view_label: ""
  fields:

  # Array of responses
  - dimension: response
    sql: ${TABLE}.response
    
  - dimension: timestamp
    sql: ${response}[1]
    
  - dimension: confirmation_email_time
    sql: ${response}[2]
    description: "What is your confirmation email time (hours:minutes), RELATIVE to the official start of preorders (January 6, 4pm UTC)?"
    
  - dimension: preorder_time
    sql: ${response}[3]
    description: (Optional) What is your preorder_time value?,
    
  - dimension: delivery_location
    description: Delivery state/province (for US/Canada) or country
    sql: ${response}[4]

  - dimension: shipping_month_given
    sql: ${response}[5]
    
  - dimension: order_processed_date
    sql: ${response}[6]
    description: "Date when you received an email saying \"Your order has been processed and your Rift is almost on its way\" (right before shipping). Leave blank if not received yet"

  - dimension: preorder_date
    sql: ${response}[7]
    description: "If answered \"later\" above: what is your preorder date?"

  - dimension: delivery_date
    sql: ${response}[8]
    description: "Delivery date - actual, or as estimated by the shipping company. Leave blank if not known yet"

  - dimension: tracking_number_received_date
    description: "Date when you received the tracking number. Leave blank if not received yet"
    sql: ${response}[9]
    
  - dimension: kickstarter_backer_number
    sql: ${response}[9]
    description: |
      If answered "I'm a kickstarter backer" above: what is your approximate kickstarter backer number?
  
  - dimension: comments
    sql: ${response}[10]
  
  - dimension: reddit_username
    sql: ${response}[11]
    
  - dimension: order_number
    sql: ${response}[12]

# Timestamp,
# Delivery state/province (for US/Canada) or country,
# What month were you given for your shipping?,
# "Date when you received an email saying ""Your order has been processed and your Rift is almost on its way"" (right before shipping). Leave blank if not received yet",
# "If answered ""later"" above: what is your preorder date?",
# "Delivery date - actual,
#       or as estimated by the shipping company. Leave blank if not known yet",
#       Date when you received the tracking number. Leave blank if not received yet,
# "If answered ""I'm a kickstarter backer"" above: what is your approximate kickstarter backer number?",
# Comment,
# Reddit username,
# (Optional) What is your order number?

#   - dimension_group: created
#     type: time
#     timeframes: [time, date, week, month]
#     sql: ${TABLE}.created_at

#   - dimension: index
#     type: number
#     sql: ${TABLE}.index

#   - dimension_group: updated
#     type: time
#     timeframes: [time, date, week, month]
#     sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id]

