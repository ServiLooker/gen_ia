---
- dashboard: vc_prueba3
  title: VC_Prueba3
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: kMRkz3MI0vSBPKdb4ZKJ9h
  elements:
  - title: VC_Prueba3
    name: VC_Prueba3
    model: demo_looker_genia
    explore: demo_tac
    type: single_value
    fields: [demo_tac.email, demo_tac.count]
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
    custom_color: "#756df7"
    single_value_title: Total Cant Correos
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
    row: 0
    col: 0
    width: 5
    height: 2
  - title: Total Ingresos Por Sociedad
    name: Total Ingresos Por Sociedad
    model: demo_looker_genia
    explore: demo_tac
    type: looker_column
    fields: [demo_tac.Total_ingresos, demo_tac.tipo_de_sociedad]
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
    color_application:
      collection_id: jazz
      custom:
        id: 0d849d4e-55ff-5ddf-dd44-830ab3833676
        label: Custom
        type: discrete
        colors:
        - "#E6B0AA"
        - "#FADBD8"
        - "#F5EEF8"
        - "#E8DAEF"
        - "#D4E6F1"
        - "#9e86f7"
        - "#D1F2EB"
        - "#D0ECE7"
        - "#D4EFDF"
        - "#FCF3CF"
        - "#FDEBD0"
        - "#FAE5D3"
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      demo_tac.Total_ingresos: "#9e86f7"
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row: 2
    col: 0
    width: 8
    height: 6
  - title: Utilidad Neta Mes
    name: Utilidad Neta Mes
    model: demo_looker_genia
    explore: demo_tac
    type: looker_column
    fields: [demo_tac.Utilidad_neta, demo_tac.pais, demo_tac.mes]
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
    point_style: circle
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
    series_colors:
      demo_tac.Utilidad_neta: "#7690f7"
    hidden_pivots: {}
    defaults_version: 1
    show_null_points: true
    interpolation: linear
    value_labels: legend
    label_type: labPer
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    listen: {}
    row: 2
    col: 8
    width: 8
    height: 6
  - title: Antes de impuestos
    name: Antes de impuestos
    model: demo_looker_genia
    explore: demo_tac
    type: looker_column
    fields: [demo_tac.Antes_impuestos, demo_tac.pais, demo_tac.interval]
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      demo_tac.Antes_impuestos: "#8b8ce6"
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row: 2
    col: 16
    width: 8
    height: 6
  - title: usd Total
    name: usd Total
    model: demo_looker_genia
    explore: demo_tac
    type: single_value
    fields: [total_usd]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression:
      label: Total USD
      value_format:
      value_format_name:
      based_on: demo_tac.valor_real_usd
      _kind_hint: measure
      measure: total_usd
      type: sum
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#ab63ff"
    single_value_title: USD TOTAL
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
    row: 0
    col: 5
    width: 5
    height: 2
  - title: Total Año-Tienda
    name: Total Año-Tienda
    model: demo_looker_genia
    explore: demo_tac
    type: looker_column
    fields: [demo_tac.total_ano, demo_tac.tienda]
    sorts: [demo_tac.total_ano desc 0]
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
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      demo_tac.total_ano: "#977ff7"
    hidden_pivots: {}
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    listen: {}
    row: 8
    col: 13
    width: 8
    height: 6
  - title: Conteo Datos Agrupación
    name: Conteo Datos Agrupación
    model: demo_looker_genia
    explore: demo_tac
    type: looker_column
    fields: [demo_tac.count, demo_tac.agrupacion]
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
    point_style: circle
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
      demo_tac.total_ano: "#977ff7"
      demo_tac.count: "#b584e6"
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row: 8
    col: 4
    width: 8
    height: 6
  - title: Total Ingresos
    name: Total Ingresos
    model: demo_looker_genia
    explore: demo_tac
    type: single_value
    fields: [demo_tac.Total_ingresos]
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
    custom_color: "#bb8fff"
    single_value_title: Total Ingresos
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row: 0
    col: 10
    width: 6
    height: 2
  - title: Utilidad Neta Total
    name: Utilidad Neta Total
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
    custom_color: "#c79cff"
    single_value_title: Utilidad Neta
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row: 0
    col: 16
    width: 6
    height: 2
