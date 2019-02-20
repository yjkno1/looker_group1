view: ss_items {
  sql_table_name: Looker.SS_ITEMS ;;

  dimension: category {
    type: string
    sql: ${TABLE}.Category ;;
  }

  dimension: manufacturer {
    type: string
    sql: ${TABLE}.Manufacturer ;;
  }

  dimension: pid {
    type: string
    sql: ${TABLE}.PID ;;
    primary_key: yes
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.`Product Name` ;;
  }

  dimension: subcategory {
    type: string
    sql: ${TABLE}.`Sub-Category` ;;
  }

  measure: count {
    type: count
    drill_fields: [product_name]
  }
}
