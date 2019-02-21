view: ss_order {
  sql_table_name: Looker.SS_ORDER ;;

  dimension: cid {
    type: string
    sql: ${TABLE}.CID ;;
  }

  dimension: discount {
    type: number
    sql: ${TABLE}.Discount ;;
  }

  dimension: idx {
    primary_key: yes
    type: number
    sql: ${TABLE}.idx ;;
  }

  dimension_group: order {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.`Order Date` ;;
  }

  dimension: order_id {
    type: string
    sql: ${TABLE}.`Order ID` ;;
  }

  dimension: pid {
    type: string
    sql: ${TABLE}.PID ;;
  }

  dimension: postal_code {
    type: zipcode
    sql: ${TABLE}.`Postal Code` ;;
  }

  dimension: profit {
    type: number
    sql: ${TABLE}.Profit ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.Quantity ;;
  }

  dimension: sales {
    type: number
    sql: ${TABLE}.Sales ;;
  }

  dimension_group: ship {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.`Ship Date` ;;
  }

  dimension: ship_mode {
    type: string
    sql: ${TABLE}.`Ship Mode` ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: sales_sum {
    type: sum
    sql: ${sales} ;;
  }

  measure: profit_sum {
    type: sum
    sql: ${profit} ;;
  }
}
