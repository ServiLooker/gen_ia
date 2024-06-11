---
- dashboard: vc_prueba4
  title: VC_Prueba4
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: Dm3pRrtBhkz8BdomRLGVAo
  elements:
  - title: Presupuesto Por Pais
    name: Presupuesto Por Pais
    model: demo_looker_genia
    explore: demo_tac
    type: looker_column
    fields: [demo_tac.Valor_presupuesto, demo_tac.pais]
    sorts: [demo_tac.Valor_presupuesto desc 0]
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      demo_tac.Valor_presupuesto: "#84aee5"
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row: 3
    col: 10
    width: 11
    height: 7
  - title: Cont Col
    name: Cont Col
    model: demo_looker_genia
    explore: demo_tac
    type: single_value
    fields: [demo_tac.pais, demo_tac.count]
    filters:
      paises.pais: Colombia
    sorts: [demo_tac.count desc 0]
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
    custom_color: "#90bbf2"
    single_value_title: Conteo Registros Colombia
    hidden_pivots: {}
    defaults_version: 1
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    listen: {}
    row: 0
    col: 0
    width: 4
    height: 3
  - title: Count Ecuador
    name: Count Ecuador
    model: demo_looker_genia
    explore: demo_tac
    type: single_value
    fields: [demo_tac.pais, demo_tac.count]
    filters:
      paises.pais: Ecuador
    sorts: [demo_tac.count desc 0]
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
    custom_color: "#90bbf2"
    single_value_title: Conteo Registros Ecuador
    hidden_pivots: {}
    defaults_version: 1
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    listen: {}
    row: 0
    col: 4
    width: 4
    height: 3
  - title: Count Panama
    name: Count Panama
    model: demo_looker_genia
    explore: demo_tac
    type: single_value
    fields: [demo_tac.pais, demo_tac.count]
    filters:
      paises.pais: Panama
    sorts: [demo_tac.count desc 0]
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
    custom_color: "#90bbf2"
    single_value_title: Conteo Registros Panama
    hidden_pivots: {}
    defaults_version: 1
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    listen: {}
    row: 0
    col: 8
    width: 4
    height: 3
  - title: count paraguay
    name: count paraguay
    model: demo_looker_genia
    explore: demo_tac
    type: single_value
    fields: [demo_tac.pais, demo_tac.count]
    filters:
      paises.pais: Paraguay
    sorts: [demo_tac.count desc 0]
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
    custom_color: "#90bbf2"
    single_value_title: Conteo Registros Paraguay
    hidden_pivots: {}
    defaults_version: 1
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    listen: {}
    row: 0
    col: 12
    width: 5
    height: 3
  - title: count peru
    name: count peru
    model: demo_looker_genia
    explore: demo_tac
    type: single_value
    fields: [demo_tac.pais, demo_tac.count]
    filters:
      paises.pais: Peru
    sorts: [demo_tac.count desc 0]
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
    custom_color: "#90bbf2"
    single_value_title: Conteo Registros Peru
    hidden_pivots: {}
    defaults_version: 1
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    listen: {}
    row: 0
    col: 17
    width: 4
    height: 3
  - title: Mapa-Ingresos por Pais
    name: Mapa-Ingresos por Pais
    model: demo_looker_genia
    explore: demo_tac
    type: looker_google_map
    fields: [demo_tac.Total_ingresos, demo_tac.pais, paises.ubicacion]
    sorts: [demo_tac.Total_ingresos desc 0]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    map_plot_mode: automagic_heatmap
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: dark
    map_position: fit_data
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
    hidden_pivots: {}
    defaults_version: 0
    listen: {}
    row: 3
    col: 0
    width: 10
    height: 7
  - title: Top 10 Utilidad
    name: Top 10 Utilidad
    model: demo_looker_genia
    explore: demo_tac
    type: looker_grid
    fields: [demo_tac.ano, demo_tac.pais, demo_tac.Utilidad_neta]
    sorts: [demo_tac.Utilidad_neta desc 0]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: gray
    limit_displayed_rows: true
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
      demo_tac.Utilidad_neta:
        is_active: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
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
    show_null_points: true
    interpolation: linear
    value_labels: legend
    label_type: labPer
    listen: {}
    row: 10
    col: 0
    width: 21
    height: 6
