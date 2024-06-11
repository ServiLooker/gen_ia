---
- dashboard: dp_pruebas_5
  title: DP_Pruebas_5
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description: ''
  preferred_slug: 4NB7BcZVj1r8W88biZZPZm
  elements:
  - title: Valor moneda por año
    name: Valor moneda por año
    model: demo_looker_genia
    explore: demo_tac
    type: looker_column
    fields: [demo_tac.Valor_moneda, demo_tac.ano]
    sorts: [demo_tac.Valor_moneda desc 0]
    limit: 5
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
    stacking: normal
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
      palette_id: jazz-diverging-0
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    show_null_points: true
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen:
      Ano: demo_tac.ano
    row: 0
    col: 0
    width: 13
    height: 5
  - title: Total por año
    name: Total por año
    model: demo_looker_genia
    explore: demo_tac
    type: looker_grid
    fields: [demo_tac.ano, demo_tac.total_ano]
    sorts: [demo_tac.total_ano desc 0]
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
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    show_null_points: true
    defaults_version: 1
    listen:
      Ano: demo_tac.ano
    row: 5
    col: 0
    width: 13
    height: 6
  - title: Variación por año
    name: Variación por año
    model: demo_looker_genia
    explore: demo_tac
    type: looker_area
    fields: [demo_tac.ano, demo_tac.variacion]
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      Ano: demo_tac.ano
    row: 5
    col: 13
    width: 11
    height: 6
  - title: Impuestos antes x año
    name: Impuestos antes x año
    model: demo_looker_genia
    explore: demo_tac
    type: looker_scatter
    fields: [demo_tac.Antes_impuestos, demo_tac.ano]
    sorts: [demo_tac.Antes_impuestos desc 0]
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
    show_null_points: true
    defaults_version: 1
    listen:
      Ano: demo_tac.ano
    row: 0
    col: 13
    width: 11
    height: 5
  filters:
  - name: Ano
    title: Ano
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_toggles
      display: inline
      options:
      - '1'
      - '2'
      - '3'
    model: demo_looker_genia
    explore: demo_tac
    listens_to_filters: []
    field: demo_tac.ano
