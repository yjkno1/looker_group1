- dashboard: group1_dashboard
  title: 1조 대시보드
  layout: newspaper
  elements:
  - title: 지역별 카운트
    name: 지역별 카운트
    model: group_1
    explore: ss_poi
    type: looker_geo_coordinates
    fields:
    - ss_poi.postal_code
    - ss_order.count
    sorts:
    - ss_order.count desc
    limit: 500
    query_timezone: Asia/Seoul
    map: usa
    map_projection: ''
    show_view_names: true
    point_color: "#ff6600"
    map_color: skyblue
    point_radius: 5
    map_plot_mode: points
    heatmap_gridlines: true
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: custom
    map_latitude: 36.77409249464195
    map_longitude: -98.39355468750001
    map_zoom: 4
    map_scale_indicator: metric
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    series_types: {}
    listen: {}
    row: 12
    col: 0
    width: 13
    height: 8
  - title: 주별 매출 추이
    name: 주별 매출 추이
    model: group_1
    explore: ss_all
    type: looker_bar
    fields:
    - ss_poi.state
    - ss_order.sales_avg
    - ss_order.profit_avg
    sorts:
    - ss_poi.state
    limit: 500
    query_timezone: Asia/Seoul
    stacking: ''
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
        __FILE: group_1/group1_dashboard.dashboard.lookml
        __LINE_NUM: 69
    show_value_labels: false
    label_density: 25
    label_color: []
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: circle
    series_colors:
      ss_order.sales_sum: "#3EB0D5"
      ss_order.profit_sum: "#B32F37"
    series_labels:
      ss_order.profit_sum: 순이익
      ss_order.sales_sum: 매출
      ss_order.sales_avg: 평균 매출액
      ss_order.profit_avg: 평균 순 매출액
    series_types: {}
    limit_displayed_rows: false
    y_axes:
    - label:
      orientation: top
      series:
      - id: ss_order.sales_avg
        name: 평균 매출액
        axisId: ss_order.sales_avg
        __FILE: group_1/group1_dashboard.dashboard.lookml
        __LINE_NUM: 94
      showLabels: true
      showValues: true
      valueFormat: ''
      unpinAxis: false
      tickDensity: default
      type: linear
      __FILE: group_1/group1_dashboard.dashboard.lookml
      __LINE_NUM: 91
    - label: ''
      orientation: bottom
      series:
      - id: ss_order.profit_avg
        name: 평균 순 매출액
        axisId: ss_order.profit_avg
        __FILE: group_1/group1_dashboard.dashboard.lookml
        __LINE_NUM: 110
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      type: linear
      __FILE: group_1/group1_dashboard.dashboard.lookml
      __LINE_NUM: 107
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    x_axis_label: ''
    show_x_axis_ticks: true
    x_axis_datetime_label: ''
    x_axis_scale: auto
    y_axis_scale_mode: linear
    label_value_format: "#,##0"
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen: {}
    row: 0
    col: 16
    width: 8
    height: 12
  - title: 매출 순익
    name: 매출 순익
    model: group_1
    explore: ss_order
    type: looker_line
    fields:
    - ss_order.order_month
    - ss_order.profit_sum
    - ss_order.sales_sum
    filters:
      ss_order.order_year: 3 years
      ss_order.profit_sum: NOT NULL
    sorts:
    - ss_order.order_month desc
    limit: 500
    query_timezone: Asia/Seoul
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    hide_legend: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: circle_outline
    series_labels:
      ss_order.profit_sum: profit
      ss_order.sales_sum: sales
    series_types:
      ss_order.sales_sum: column
    limit_displayed_rows: false
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: ss_order.sales_sum
        name: sales
        axisId: ss_order.sales_sum
        __FILE: group_1/group1_dashboard.dashboard.lookml
        __LINE_NUM: 186
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      type: linear
      __FILE: group_1/group1_dashboard.dashboard.lookml
      __LINE_NUM: 183
    - label:
      orientation: right
      series:
      - id: ss_order.profit_sum
        name: profit
        axisId: ss_order.profit_sum
        __FILE: group_1/group1_dashboard.dashboard.lookml
        __LINE_NUM: 201
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      type: linear
      __FILE: group_1/group1_dashboard.dashboard.lookml
      __LINE_NUM: 198
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: 주문 월
    show_x_axis_ticks: true
    x_axis_datetime_label: "%Y년%m월"
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    reference_lines: []
    swap_axes: false
    show_null_points: false
    interpolation: linear
    discontinuous_nulls: false
    listen: {}
    row: 6
    col: 0
    width: 16
    height: 6
  - title: 판매 TOP 10
    name: 판매 TOP 10
    model: group_1
    explore: ss_items
    type: looker_bar
    fields:
    - ss_items.product_name
    - ss_order.count
    sorts:
    - ss_order.count desc
    limit: 10
    query_timezone: Asia/Seoul
    stacking: ''
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: ccba75a3-58c7-4b9c-a931-4ffc59e79cba
      options:
        steps: 5
        __FILE: group_1/group1_dashboard.dashboard.lookml
        __LINE_NUM: 254
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_colors: {}
    series_labels:
      ss_order.count: 판매 건수
    series_types: {}
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen: {}
    row: 0
    col: 8
    width: 8
    height: 6
  - title: 평균 구매 금액
    name: 평균 구매 금액
    model: group_1
    explore: ss_all
    type: single_value
    fields:
    - ss_order.sales_avg
    limit: 500
    query_timezone: Asia/Seoul
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
        __FILE: group_1/group1_dashboard.dashboard.lookml
        __LINE_NUM: 304
    custom_color_enabled: true
    custom_color: ''
    show_single_value_title: true
    single_value_title: 평균 구매 금액
    value_format: "$#,##0.00"
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    label_color: []
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: circle
    series_colors:
      ss_order.sales_sum: "#3EB0D5"
      ss_order.profit_sum: "#B32F37"
    series_labels:
      ss_order.profit_sum: 순이익
      ss_order.sales_sum: 매출
      ss_order.sales_avg: 평균 매출액
      ss_order.profit_avg: 평균 순 매출액
    series_types: {}
    limit_displayed_rows: false
    y_axes:
    - label:
      orientation: top
      series:
      - id: ss_order.sales_avg
        name: 평균 매출액
        axisId: ss_order.sales_avg
        __FILE: group_1/group1_dashboard.dashboard.lookml
        __LINE_NUM: 339
      showLabels: true
      showValues: true
      valueFormat: ''
      unpinAxis: false
      tickDensity: default
      type: linear
      __FILE: group_1/group1_dashboard.dashboard.lookml
      __LINE_NUM: 336
    - label: ''
      orientation: bottom
      series:
      - id: ss_order.profit_avg
        name: 평균 순 매출액
        axisId: ss_order.profit_avg
        __FILE: group_1/group1_dashboard.dashboard.lookml
        __LINE_NUM: 355
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      type: linear
      __FILE: group_1/group1_dashboard.dashboard.lookml
      __LINE_NUM: 352
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    x_axis_label: ''
    show_x_axis_ticks: true
    x_axis_datetime_label: ''
    x_axis_scale: auto
    y_axis_scale_mode: linear
    label_value_format: "#,##0"
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen: {}
    row: 0
    col: 0
    width: 8
    height: 6
  - title: 구매 상위 Top10 유저
    name: 구매 상위 Top10 유저
    model: group_1
    explore: ss_all
    type: looker_column
    fields:
    - ss_order.sales_sum
    - ss_customers.customer_name
    - ss_order.order_year
    pivots:
    - ss_order.order_year
    fill_fields:
    - ss_order.order_year
    sorts:
    - ss_order.order_year 0
    - ss_order.sales_sum desc 0
    limit: 10
    query_timezone: Asia/Seoul
    stacking: normal
    show_value_labels: false
    label_density: 25
    font_size: 11px
    legend_position: center
    hide_legend: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_types: {}
    limit_displayed_rows: false
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hidden_series: []
    y_axes:
    - label: 총 구매 액
      orientation: left
      series:
      - id: 2014 - ss_order.sales_sum
        name: '2014'
        axisId: 2014 - ss_order.sales_sum
        __FILE: group_1/group1_dashboard.dashboard.lookml
        __LINE_NUM: 432
      - id: 2015 - ss_order.sales_sum
        name: '2015'
        axisId: 2015 - ss_order.sales_sum
        __FILE: group_1/group1_dashboard.dashboard.lookml
        __LINE_NUM: 437
      - id: 2016 - ss_order.sales_sum
        name: '2016'
        axisId: 2016 - ss_order.sales_sum
        __FILE: group_1/group1_dashboard.dashboard.lookml
        __LINE_NUM: 442
      - id: 2017 - ss_order.sales_sum
        name: '2017'
        axisId: 2017 - ss_order.sales_sum
        __FILE: group_1/group1_dashboard.dashboard.lookml
        __LINE_NUM: 447
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: group_1/group1_dashboard.dashboard.lookml
      __LINE_NUM: 429
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: 구매 사용자 순위
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    column_group_spacing_ratio: 0.7
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#222222"
    listen: {}
    row: 20
    col: 0
    width: 13
    height: 8
  - title: 월별 신규유저 증감 추이
    name: 월별 신규유저 증감 추이
    model: group_1
    explore: ss_customers
    type: looker_line
    fields:
    - ss_customer_order.user_count
    - ss_customer_order.min_purchase_data_group_month
    fill_fields:
    - ss_customer_order.min_purchase_data_group_month
    sorts:
    - ss_customer_order.min_purchase_data_group_month desc
    limit: 500
    query_timezone: Asia/Seoul
    series_types: {}
    listen: {}
    row: 20
    col: 13
    width: 11
    height: 8
  - title: TOP10 카테고리 매출 비율
    name: TOP10 카테고리 매출 비율
    model: group_1
    explore: ss_all
    type: looker_pie
    fields:
    - ss_items.subcategory
    - ss_order.sales_sum
    sorts:
    - ss_order.sales_sum desc
    - ss_items.subcategory
    limit: 10
    query_timezone: Asia/Seoul
    value_labels: labels
    label_type: labPer
    color_range:
    - "#3EB0D5"
    - "#B1399E"
    - "#C2DD67"
    - "#592EC2"
    - "#4276BE"
    - "#72D16D"
    - "#FFD95F"
    - "#B32F37"
    - "#9174F0"
    - "#E57947"
    - "#75E2E2"
    - "#FBB555"
    show_value_labels: true
    font_size: 12
    charts_across:
    series_types: {}
    listen: {}
    row: 36
    col: 13
    width: 11
    height: 8
  - title: 카테고리별 매출 구성 비율
    name: 카테고리별 매출 구성 비율
    model: group_1
    explore: ss_all
    type: Sunburst
    fields:
    - ss_order.category
    - ss_order.subcategory
    - ss_order.sales_sum
    - ss_order.manufacturer
    sorts:
    - ss_order.sales_sum desc
    limit: 500
    query_timezone: Asia/Seoul
    series_types: {}
    listen: {}
    row: 28
    col: 0
    width: 13
    height: 8
  - title: 연도별 지역/카테고리 매출 추이
    name: 연도별 지역/카테고리 매출 추이
    model: group_1
    explore: ss_all
    type: Sankey
    fields:
    - ss_order.order_year
    - ss_order.region
    - ss_order.category
    - ss_order.sales_sum
    sorts:
    - ss_order.order_year desc
    limit: 500
    query_timezone: Asia/Seoul
    series_types: {}
    listen: {}
    row: 28
    col: 13
    width: 11
    height: 8
  - title: 연도/카테고리/제조사 별 매출 추이
    name: 연도/카테고리/제조사 별 매출 추이
    model: group_1
    explore: ss_all
    type: Subtotal
    fields:
    - ss_order.order_year
    - ss_order.category
    - ss_order.manufacturer
    - ss_order.count
    - ss_order.sales_sum
    sorts:
    - ss_order.order_year desc
    limit: 500
    dynamic_fields:
    - table_calculation: goal
      label: goal
      expression: '100000'
      value_format:
      value_format_name:
      _kind_hint: dimension
      _type_hint: number
    query_timezone: Asia/Seoul
    showComparison: false
    minValue: 0
    maxValue: 1000
    circleThickness: 0.05
    circleFillGap: 0.05
    circleColor: "#178BCA"
    waveHeight: 0.05
    waveCount: 1
    waveRiseTime: 1000
    waveAnimateTime: 1800
    waveRise: true
    waveHeightScaling: true
    waveAnimate: true
    waveColor: "#64518A"
    waveOffset: 0
    textVertPosition: 0.5
    textSize: 1
    valueCountUp: true
    displayPercent: true
    textColor: "#000000"
    waveTextColor: "#FFFFFF"
    series_types: {}
    listen: {}
    row: 44
    col: 0
    width: 24
    height: 9
  - title: 지역별 구매카테고리 비율
    name: 지역별 구매카테고리 비율
    model: group_1
    explore: ss_all
    type: looker_donut_multiples
    fields:
    - ss_order.region
    - ss_order.sales_sum
    - ss_order.category
    pivots:
    - ss_order.category
    sorts:
    - ss_order.sales_sum desc 0
    - ss_order.region
    - ss_order.category
    limit: 10
    query_timezone: Asia/Seoul
    value_labels: labels
    label_type: labPer
    color_range:
    - "#3EB0D5"
    - "#B1399E"
    - "#C2DD67"
    - "#592EC2"
    - "#4276BE"
    - "#72D16D"
    - "#FFD95F"
    - "#B32F37"
    - "#9174F0"
    - "#E57947"
    - "#75E2E2"
    - "#FBB555"
    show_value_labels: true
    font_size: 12
    charts_across:
    series_types: {}
    listen: {}
    row: 36
    col: 0
    width: 13
    height: 8
  - title: 지역별 1인당 평균 구매액
    name: 지역별 1인당 평균 구매액
    model: group_1
    explore: ss_all
    type: looker_map
    fields:
    - ss_poi.approx_location
    - ss_order.average_spend_per_user
    - ss_order.category
    - ss_order.state
    sorts:
    - ss_order.average_spend_per_user desc
    - ss_order.category
    limit: 500
    query_timezone: Asia/Seoul
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: custom
    map_latitude: 40.04443758460859
    map_longitude: -93.25195312500001
    map_zoom: 4
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: pixels
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: true
    show_legend: true
    quantize_map_value_colors: true
    reverse_map_value_colors: false
    series_types: {}
    listen: {}
    row: 12
    col: 13
    width: 11
    height: 8
