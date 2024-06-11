---
- dashboard: dp_pruebas_4
  title: DP_Pruebas_4
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: RYBA3MLZkNH8mHDi19U8wp
  elements:
  - title: Rubro x tienda
    name: Rubro x tienda
    model: demo_looker_genia
    explore: demo_tac
    type: looker_grid
    fields: [demo_tac.Orden_rubro, demo_tac.tienda]
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    show_null_points: true
    listen: {}
    row: 0
    col: 0
    width: 12
    height: 5
  - title: Utilidad neta vs ingresos x tienda
    name: Utilidad neta vs ingresos x tienda
    model: demo_looker_genia
    explore: demo_tac
    type: looker_donut_multiples
    fields: [demo_tac.tienda, demo_tac.Utilidad_neta, demo_tac.Total_ingresos]
    sorts: [demo_tac.Utilidad_neta desc 0]
    limit: 3
    column_limit: 50
    show_value_labels: true
    font_size: 12
    defaults_version: 1
    row: 10
    col: 0
    width: 12
    height: 6
  - title: Conteo por tienda
    name: Conteo por tienda
    model: demo_looker_genia
    explore: demo_tac
    type: looker_column
    fields: [demo_tac.tienda, demo_tac.count]
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
    defaults_version: 1
    row: 5
    col: 0
    width: 24
    height: 5
  - title: Presupuesto por tienda
    name: Presupuesto por tienda
    model: demo_looker_genia
    explore: demo_tac
    type: looker_grid
    fields: [demo_tac.tienda, demo_tac.Valor_presupuesto]
    sorts: [demo_tac.Valor_presupuesto desc 0]
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    row: 0
    col: 12
    width: 12
    height: 5
  - title: Utilidad neta actual vs año pasado
    name: Utilidad neta actual vs año pasado
    model: demo_looker_genia
    explore: demo_tac
    type: looker_line
    fields: [demo_tac.tienda, demo_tac.Utilidad_neta, demo_tac.Utilidad_neta_anio_anterior]
    sorts: [demo_tac.Utilidad_neta desc 0]
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
    defaults_version: 1
    row: 10
    col: 12
    width: 12
    height: 6
