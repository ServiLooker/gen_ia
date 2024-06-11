---
- dashboard: vc_prueba5
  title: VC_Prueba5
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: p9KM30mvbKOpJDIui4iGGM
  elements:
  - title: VC_Prueba5
    name: VC_Prueba5
    model: demo_looker_genia
    explore: demo_tac
    type: looker_google_map
    fields: [paises.ubicacion, demo_tac.pais, demo_tac.Utilidad_neta]
    sorts: [percent_of_demo_tac_utilidad_neta desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - args:
      - demo_tac.Utilidad_neta
      calculation_type: percent_of_column_sum
      category: table_calculation
      based_on: demo_tac.Utilidad_neta
      label: Percent of Demo Tac Utilidad Neta
      source_field: demo_tac.Utilidad_neta
      table_calculation: percent_of_demo_tac_utilidad_neta
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: pixels
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: value
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    hidden_pivots: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 0
    listen: {}
    row: 0
    col: 0
    width: 12
    height: 11
  - title: variación/país
    name: variación/país
    model: demo_looker_genia
    explore: demo_tac
    type: looker_scatter
    fields: [demo_tac.variacion, demo_tac.Total_ingresos, demo_tac.pais]
    sorts: [demo_tac.variacion desc 0]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    ordering: none
    show_null_labels: false
    show_dropoff: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_pivots: {}
    defaults_version: 1
    value_labels: legend
    label_type: labPer
    interpolation: linear
    listen: {}
    row: 11
    col: 0
    width: 12
    height: 5
  - title: promedio-col
    name: promedio-col
    model: demo_looker_genia
    explore: demo_tac
    type: single_value
    fields: [promedio_col]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression:
      label: Promedio Col
      value_format:
      value_format_name: percent_0
      based_on: demo_tac.average_ano
      _kind_hint: measure
      measure: promedio_col
      type: average
      _type_hint: number
      filters:
        paises.pais: Colombia
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#e66e4c"
    single_value_title: Promedio Colombia
    value_format: ''
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#E6B0AA",
        font_color: !!null '', color_application: {collection_id: jazz, palette_id: jazz-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    listen: {}
    row: 3
    col: 17
    width: 5
    height: 3
  - title: promedio-ecuador
    name: promedio-ecuador
    model: demo_looker_genia
    explore: demo_tac
    type: single_value
    fields: [promedio_ecuador]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression:
      label: Promedio Ecuador
      value_format:
      value_format_name: percent_0
      based_on: demo_tac.average_ano
      _kind_hint: measure
      measure: promedio_ecuador
      type: average
      _type_hint: number
      filters:
        paises.pais: Ecuador
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#1cd5e6"
    single_value_title: Promedio Ecuador
    value_format: ''
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#E6B0AA",
        font_color: !!null '', color_application: {collection_id: jazz, palette_id: jazz-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    listen: {}
    row: 3
    col: 12
    width: 5
    height: 3
  - title: Propocion-Panama
    name: Propocion-Panama
    model: demo_looker_genia
    explore: demo_tac
    type: single_value
    fields: [promedio_panama]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression:
      label: Promedio Panama
      value_format:
      value_format_name: percent_0
      based_on: demo_tac.average_ano
      _kind_hint: measure
      measure: promedio_panama
      type: average
      _type_hint: number
      filters:
        paises.pais: Panama
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#e631a1"
    single_value_title: Promedio Panama
    value_format: ''
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#E6B0AA",
        font_color: !!null '', color_application: {collection_id: jazz, palette_id: jazz-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    listen: {}
    row: 6
    col: 15
    width: 5
    height: 4
  - title: proporcion Paraguay
    name: proporcion Paraguay
    model: demo_looker_genia
    explore: demo_tac
    type: single_value
    fields: [promedio_paraguay]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression:
      label: Promedio Paraguay
      value_format:
      value_format_name: percent_0
      based_on: demo_tac.average_ano
      _kind_hint: measure
      measure: promedio_paraguay
      type: average
      _type_hint: number
      filters:
        paises.pais: Paraguay
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#76e698"
    single_value_title: Promedio Paraguay
    value_format: ''
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#E6B0AA",
        font_color: !!null '', color_application: {collection_id: jazz, palette_id: jazz-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    listen: {}
    row: 0
    col: 17
    width: 5
    height: 3
  - title: proporcion Peru
    name: proporcion Peru
    model: demo_looker_genia
    explore: demo_tac
    type: single_value
    fields: [promedio_peru]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression:
      label: Promedio Peru
      value_format:
      value_format_name: percent_0
      based_on: demo_tac.average_ano
      _kind_hint: measure
      measure: promedio_peru
      type: average
      _type_hint: number
      filters:
        paises.pais: Peru
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#e6a951"
    single_value_title: Promedio Peru
    value_format: ''
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#E6B0AA",
        font_color: !!null '', color_application: {collection_id: jazz, palette_id: jazz-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    listen: {}
    row: 0
    col: 12
    width: 5
    height: 3
  - title: Agrupación/ingreasos por pais
    name: Agrupación/ingreasos por pais
    model: demo_looker_genia
    explore: demo_tac
    type: looker_grid
    fields: [demo_tac.agrupacion, demo_tac.Total_ingresos, demo_tac.pais]
    sorts: [demo_tac.agrupacion desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      demo_tac.Total_ingresos:
        is_active: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    header_font_color: "#F5EEF8"
    header_background_color: "#382bf2"
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#E6B0AA",
        font_color: !!null '', color_application: {collection_id: jazz, palette_id: jazz-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    custom_color_enabled: true
    custom_color: "#9ccce5"
    show_single_value_title: true
    single_value_title: Total Ingresos
    value_format: ''
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
    hidden_pivots: {}
    value_labels: legend
    label_type: labPer
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen: {}
    row: 10
    col: 12
    width: 11
    height: 6
