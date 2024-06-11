---
- dashboard: vc_prueba2
  title: VC_Prueba2
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: XvGEl8cV0ej3U7KmeJOtIn
  elements:
  - title: PAIS/TOTAL
    name: PAIS/TOTAL
    model: demo_looker_genia
    explore: demo_tac
    type: looker_pie
    fields: [demo_tac.pais, demo_tac.total_ano]
    sorts: [demo_tac.total_ano desc 0]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    hidden_pivots: {}
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen: {}
    row: 2
    col: 0
    width: 7
    height: 5
  - title: Conteo registros/pais
    name: Conteo registros/pais
    model: demo_looker_genia
    explore: demo_tac
    type: looker_bar
    fields: [demo_tac.count, demo_tac.pais]
    sorts: [demo_tac.count desc 0]
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: jazz
      palette_id: jazz-categorical-0
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors: {}
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row: 7
    col: 0
    width: 12
    height: 4
  - title: Total_Ingresos_Tienda
    name: Total_Ingresos_Tienda
    model: demo_looker_genia
    explore: demo_tac
    type: looker_grid
    fields: [demo_tac.tienda, demo_tac.pais, demo_tac.Total_ingresos]
    sorts: [demo_tac.Total_ingresos desc 0]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
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
        palette:
          palette_id: 91395eb6-a542-0be3-7173-008a55fe9903
          collection_id: jazz
          custom_colors:
          - "#fffff8"
          - "#bf98a8"
          - "#b4ccd6"
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
    defaults_version: 1
    listen: {}
    row: 2
    col: 7
    width: 15
    height: 5
  - title: Variación
    name: Variación
    model: demo_looker_genia
    explore: demo_tac
    type: single_value
    fields: [demo_tac.variacion]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#9ff094"
    single_value_title: Variación
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row: 0
    col: 0
    width: 6
    height: 2
  - title: Utilidad_Neta
    name: Utilidad_Neta
    model: demo_looker_genia
    explore: demo_tac
    type: single_value
    fields: [demo_tac.Utilidad_neta]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#98ffa3"
    single_value_title: Utilidad Neta
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row: 0
    col: 8
    width: 6
    height: 2
  - title: Total Ingresos Colombia
    name: Total Ingresos Colombia
    model: demo_looker_genia
    explore: demo_tac
    type: single_value
    fields: [demo_tac.Total_ingresos]
    filters:
      paises.pais: Colombia
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#b4f08f"
    single_value_title: Total Ingresos Col
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row: 0
    col: 16
    width: 6
    height: 2
  - title: Variación Ingresos por Pais
    name: Variación Ingresos por Pais
    model: demo_looker_genia
    explore: demo_tac
    type: looker_grid
    fields: [demo_tac.pais, variacion_ingresos]
    filters:
      variacion_ingresos: ''
    sorts: [variacion_ingresos desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression:
      label: Variación Ingresos
      value_format:
      value_format_name:
      based_on: demo_tac.Total_ingresos
      _kind_hint: measure
      measure: variacion_ingresos
      type: sum
      _type_hint: number
      filters: {}
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
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
      variacion_ingresos:
        is_active: true
        palette:
          palette_id: dde33333-a451-77c2-5e28-f64f2045d5b4
          collection_id: jazz
          custom_colors:
          - "#fffff8"
          - "#b365bf"
          - "#d6a7c5"
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
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row: 7
    col: 12
    width: 10
    height: 4
  - title: Total Ingresos por Año
    name: Total Ingresos por Año
    model: demo_looker_genia
    explore: demo_tac
    type: looker_scatter
    fields: [demo_tac.ano, demo_tac.Total_ingresos]
    sorts: [demo_tac.Total_ingresos desc 0]
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
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    color_application:
      collection_id: jazz
      palette_id: jazz-categorical-0
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors: {}
    cluster_points: false
    quadrants_enabled: false
    quadrant_properties:
      '0':
        color: ''
        label: Quadrant 1
      '1':
        color: ''
        label: Quadrant 2
      '2':
        color: ''
        label: Quadrant 3
      '3':
        color: ''
        label: Quadrant 4
    custom_quadrant_point_x: 5
    custom_quadrant_point_y: 5
    custom_x_column: ''
    custom_y_column: ''
    custom_value_label_column: ''
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row: 11
    col: 0
    width: 22
    height: 7
