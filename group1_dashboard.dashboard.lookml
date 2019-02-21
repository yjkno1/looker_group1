- dashboard: group1_dashboard
  title: 1조 대시보드
  layout: newspaper
  elements:
  - name: 매출 순익
    title: 매출 순익
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
      ss_order.profit_sum: column
    limit_displayed_rows: false
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: ss_order.profit_sum
        name: profit
        axisId: ss_order.profit_sum
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      type: linear
    - label:
      orientation: right
      series:
      - id: ss_order.sales_sum
        name: sales
        axisId: ss_order.sales_sum
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      type: linear
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
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
    row: 0
    col: 0
    width: 8
    height: 6
  - name: 판매 TOP 10
    title: 판매 TOP 10
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
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: none
    series_colors: {}
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
    row: 0
    col: 8
    width: 8
    height: 6
  - name: 지역별 카운트
    title: 지역별 카운트
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
    row: 6
    col: 0
    width: 16
    height: 6
