view: ss_order {
  #sql_table_name: Looker.SS_ORDER ;;

  derived_table: {
    sql:  select
          o.*,
          c.`Customer Name`,
          c.Segment,
          i.`Product Name`,
          i.Category,
          i.Manufacturer,
          i.`Sub-Category`,
          po.Region,
          po.City,
          po.State
          from SS_ORDER o
          left join SS_CUSTOMERS c on o.CID = c.CID
          left join SS_ITEMS i on o.PID = i.PID
          left join SS_POI po on o.`Postal Code` = po.`Postal Code`
          ;;
  }

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

  dimension: category {
    type: string
    sql: ${TABLE}.Category ;;
  }

  dimension: manufacturer {
    type: string
    sql: ${TABLE}.Manufacturer ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.`Product Name` ;;
  }

  dimension: subcategory {
    type: string
    sql: ${TABLE}.`Sub-Category` ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}.`Customer Name` ;;
  }

  dimension: segment {
    type: string
    sql: ${TABLE}.Segment ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.Region ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
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

  measure: profit_avg {
    type: average
    sql: ${profit} ;;
  }


  measure: sales_avg {
    type: average
    sql: ${sales} ;;
    drill_fields: [
      dirill_set*
    ]
  }

  set: dirill_set {
    fields: [
      customer_name,
      state,
      product_name,
      category,
      subcategory,
      manufacturer,
      sales,
      quantity,
      order_date
    ]
  }

  dimension: ship_order_date {
    type: number
    sql: DATEDIFF(${ship_date},${order_date});;
    html:
      {% if {{value}} <= 3 %}
    <p style="background-color:blue; color:white;">{{rendered_value}}</p>
    {% elsif {{value}} <= 4 %}
    <p style="background-color:orange; color:white;">{{rendered_value}}</p>
    {% else %}
    <p style="background-color:red; color:white;">{{rendered_value}}</p>
    {% endif %};;
  }

  measure: ship_order_date_avg {
    type: average
    sql: ${ship_order_date} ;;
    value_format: "0.00"
    html:
    {% if {{value}} <= 3 %}
    <p style="background-color:blue; color:white;">{{rendered_value}}</p>
    {% elsif {{value}} <= 4 %}
    <p style="background-color:orange; color:white;">{{rendered_value}}</p>
    {% else %}
    <p style="background-color:red; color:white;">{{rendered_value}}</p>
    {% endif %};;
  }

}
