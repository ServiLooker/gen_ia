---
- dashboard: dp_pruebas_2
  title: DP_Pruebas_2
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: gF05xzgPdCNfU74snGAN2S
  elements:
  - title: Ingresos totales x año
    name: Ingresos totales x año
    model: demo_looker_genia
    explore: demo_tac
    type: looker_donut_multiples
    fields: [demo_tac.ano, demo_tac.Total_ingresos, demo_tac.total_ano]
    sorts: [demo_tac.Total_ingresos desc 0]
    limit: 3
    column_limit: 50
    show_value_labels: false
    font_size: 12
    color_application:
      collection_id: jazz
      palette_id: jazz-diverging-0
      options:
        steps: 5
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
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    value_labels: legend
    label_type: labPer
    listen: {}
    row: 0
    col: 0
    width: 12
    height: 6
  - title: Total ingresos x Utilidad neta
    name: Total ingresos x Utilidad neta
    model: demo_looker_genia
    explore: demo_tac
    type: looker_donut_multiples
    fields: [demo_tac.Total_ingresos, demo_tac.Utilidad_neta, demo_tac.ano]
    sorts: [demo_tac.Total_ingresos desc 0]
    limit: 3
    column_limit: 50
    show_value_labels: true
    font_size: 12
    color_application:
      collection_id: jazz
      palette_id: jazz-diverging-0
      options:
        steps: 5
    defaults_version: 1
    listen: {}
    row: 0
    col: 12
    width: 12
    height: 6
  - title: Presupuesto por país
    name: Presupuesto por país
    model: demo_looker_genia
    explore: demo_tac
    type: looker_grid
    fields: [paises.pais, demo_tac.Valor_presupuesto]
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
    table_theme: transparent
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
      demo_tac.Valor_presupuesto:
        is_active: true
        palette:
          palette_id: jazz-diverging-0
          collection_id: jazz
    series_text_format:
      paises.pais: {}
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
    row: 8
    col: 0
    width: 12
    height: 4
  - title: Untitled
    name: Untitled
    model: demo_looker_genia
    explore: demo_tac
    type: single_value
    fields: [demo_tac.average_ano]
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
    single_value_title: Promedio año
    defaults_version: 1
    row: 6
    col: 0
    width: 12
    height: 2
  - title: Presupuesto x tipo de sociedad
    name: Presupuesto x tipo de sociedad
    model: demo_looker_genia
    explore: demo_tac
    type: looker_grid
    fields: [demo_tac.Valor_presupuesto, demo_tac.tipo_de_sociedad]
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
      demo_tac.Valor_presupuesto:
        is_active: true
        palette:
          palette_id: jazz-diverging-0
          collection_id: jazz
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
    row: 8
    col: 12
    width: 12
    height: 4
  - title: Untitled
    name: Untitled (2)
    model: demo_looker_genia
    explore: demo_tac
    type: single_value
    fields: [demo_tac.Utilidad_neta_anio_anterior]
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
    single_value_title: Utilidad Neta
    defaults_version: 1
    row: 6
    col: 12
    width: 12
    height: 2
