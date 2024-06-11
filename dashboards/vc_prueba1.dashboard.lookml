---
- dashboard: vc_prueba1
  title: VC_Prueba1
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: DVgqTwSIHF4N2dmjAxmCOW
  elements:
  - title: VC_Prueba1
    name: VC_Prueba1
    model: tac_project
    explore: demo_tac
    type: looker_scatter
    fields: [paises.pais, demo_tac.Total_ingresos]
    filters: {}
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    color_application:
      collection_id: jazz
      palette_id: jazz-diverging-0
      options:
        steps: 5
    size_by_field: ''
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
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
    interpolation: linear
    hidden_pivots: {}
    listen:
      Pais: paises.pais
    row: 2
    col: 0
    width: 21
    height: 6
  - title: UNeta
    name: UNeta
    model: tac_project
    explore: demo_tac
    type: single_value
    fields: [demo_tac.Utilidad_neta]
    filters:
      paises.pais: ''
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
    color_application:
      collection_id: jazz
      palette_id: jazz-categorical-0
      options:
        steps: 5
    custom_color: "#e66156"
    single_value_title: Utilidad Neta
    conditional_formatting: [{type: equal to, value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: jazz, palette_id: jazz-diverging-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
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
    size_by_field: ''
    plot_size_by_field: false
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    series_colors: {}
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
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
    interpolation: linear
    hidden_pivots: {}
    listen: {}
    row: 0
    col: 0
    width: 5
    height: 2
  - title: UtilidadNeta / Centro
    name: UtilidadNeta / Centro
    model: tac_project
    explore: demo_tac
    type: looker_scatter
    fields: [demo_tac.centro, demo_tac.Utilidad_neta]
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
    show_null_points: true
    color_application:
      collection_id: jazz
      palette_id: jazz-diverging-0
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors: {}
    series_labels: {}
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    interpolation: linear
    value_labels: legend
    label_type: labPer
    hidden_fields: []
    hidden_points_if_no: []
    listen: {}
    row: 8
    col: 13
    width: 8
    height: 6
  - title: Variación/mes
    name: Variación/mes
    model: tac_project
    explore: demo_tac
    type: looker_column
    fields: [demo_tac.variacion, demo_tac.mes]
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
    color_application:
      collection_id: jazz
      palette_id: jazz-diverging-0
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors: {}
    show_null_points: true
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
    row: 8
    col: 0
    width: 13
    height: 6
  - title: Total Ingresos/Pais-Mes
    name: Total Ingresos/Pais-Mes
    model: tac_project
    explore: demo_tac
    type: looker_grid
    fields: [demo_tac.mes, demo_tac.Total_ingresos, demo_tac.pais]
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
    table_theme: gray
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
          palette_id: a55594a7-7bd0-f910-4d15-4327a3c9492a
          collection_id: jazz
          custom_colors:
          - "#e60e16"
          - "#fa7254"
          - "#ff4061"
          - "#d67152"
          - "#bfb13f"
    header_background_color: "#E6B0AA"
    conditional_formatting: [{type: equal to, value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: jazz, palette_id: jazz-diverging-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
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
    row: 14
    col: 0
    width: 21
    height: 4
  - title: Total Ingresos
    name: Total Ingresos
    model: tac_project
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
    custom_color: "#ff3930"
    single_value_title: Total Ingresos
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row: 0
    col: 7
    width: 5
    height: 2
  - title: UtilidadNeta
    name: UtilidadNeta
    model: tac_project
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
    custom_color: "#ff3d25"
    single_value_title: Utilidad Neta Anio Ant
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row: 0
    col: 14
    width: 6
    height: 2
  filters:
  - name: Pais
    title: Pais
    type: field_filter
    default_value: "-EMPTY"
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: tac_project
    explore: demo_tac
    listens_to_filters: []
    field: paises.pais
