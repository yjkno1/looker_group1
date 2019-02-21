view: ss_customers {
  sql_table_name: Looker.SS_CUSTOMERS ;;

  dimension: cid {
    type: string
    sql: ${TABLE}.CID ;;
    primary_key: yes
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}.`Customer Name` ;;
  }

  dimension: segment {
    type: string
    sql: ${TABLE}.Segment ;;
  }

  measure: count {
    type: count
    drill_fields: [customer_name]
  }
}
