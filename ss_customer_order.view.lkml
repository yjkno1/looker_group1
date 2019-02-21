
view: ss_customer_order {
  # Or, you could make this view a derived table, like this:
  derived_table: {
    sql: SELECT
         cid as cid
         , MIN(SS_ORDER.`Order Date`) as min_purchase_at
       FROM SS_ORDER
       GROUP BY cid
       ;;
  }

  # Define your dimensions and measures here, like this:
  dimension: cid {
    type: string
    sql: ${TABLE}.cid ;;
    primary_key: yes
  }

  dimension_group: min_purchase_data_group {
    type: time
    timeframes: [date, week, month, year]
    sql: ${TABLE}.min_purchase_at ;;
  }

  measure: user_count {
    type: count_distinct
    sql: ${cid} ;;
  }
}
