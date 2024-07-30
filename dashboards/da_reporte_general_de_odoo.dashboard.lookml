- dashboard: da_reporte_general_de_odoo
  title: 1. Reporte General de Odoo
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description: ''
  refresh: 8 days
  preferred_slug: 3l3LuIQG58Zlf8GbKYpyhA
  elements:
  - title: Reporte de Odoo Servicios Profesionales
    name: Reporte de Odoo Servicios Profesionales
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: single_value
    fields: [tbl_tiempos.total_proyectos]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e
      palette_id: be92eae7-de25-46ae-8e4f-21cb0b69a1f3
    single_value_title: Proyectos
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#462C9D",
        font_color: !!null '', color_application: {collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e,
          palette_id: 2229f400-11a4-4b0d-b224-abe608161947}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: 'null', value: !!null '',
        background_color: "#462C9D", font_color: !!null '', color_application: {collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e,
          palette_id: dc65924d-47ce-45e6-a469-9977cbc6bd0e}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    listen:
      Pais: tbl_tiempos.pais
      Asignado: tbl_tiempos.asignado
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
    row: 2
    col: 0
    width: 3
    height: 3
  - title: New Tile
    name: New Tile
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: single_value
    fields: [tbl_tiempos.total_proyectos]
    filters:
      tbl_tiempos.agrupacion_ot: ORDENES DE TRABAJO INTERNAS
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e
      palette_id: be92eae7-de25-46ae-8e4f-21cb0b69a1f3
    single_value_title: Proyectos Internos
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#462C9D",
        font_color: !!null '', color_application: {collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e,
          palette_id: 2229f400-11a4-4b0d-b224-abe608161947}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: 'null', value: !!null '',
        background_color: "#462C9D", font_color: !!null '', color_application: {collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e,
          palette_id: dc65924d-47ce-45e6-a469-9977cbc6bd0e}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    listen:
      Pais: tbl_tiempos.pais
      Asignado: tbl_tiempos.asignado
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
    row: 5
    col: 0
    width: 3
    height: 3
  - title: Estado de Proyectos
    name: Estado de Proyectos
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: looker_pie
    fields: [tbl_tiempos.total_proyectos, tbl_tiempos.estado]
    sorts: [tbl_tiempos.total_proyectos desc 0]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    inner_radius: 50
    color_application:
      collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e
      palette_id: be92eae7-de25-46ae-8e4f-21cb0b69a1f3
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: Proyectos
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#462C9D",
        font_color: !!null '', color_application: {collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e,
          palette_id: 2229f400-11a4-4b0d-b224-abe608161947}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: 'null', value: !!null '',
        background_color: "#462C9D", font_color: !!null '', color_application: {collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e,
          palette_id: dc65924d-47ce-45e6-a469-9977cbc6bd0e}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
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
    listen:
      Pais: tbl_tiempos.pais
      Asignado: tbl_tiempos.asignado
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
    row: 2
    col: 3
    width: 6
    height: 6
  - title: Proyectos iniciados por mes
    name: Proyectos iniciados por mes
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: looker_area
    fields: [tbl_tiempos.total_proyectos, tbl_tiempos.fecha_inicio_year, tbl_tiempos.fecha_inicio_month_name]
    pivots: [tbl_tiempos.fecha_inicio_year]
    fill_fields: [tbl_tiempos.fecha_inicio_year, tbl_tiempos.fecha_inicio_month_name]
    filters:
      tbl_tiempos.fecha_inicio_date: 2 years
    sorts: [tbl_tiempos.fecha_inicio_year desc, tbl_tiempos.fecha_inicio_month_name]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
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
    show_null_points: false
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e
      palette_id: be92eae7-de25-46ae-8e4f-21cb0b69a1f3
    y_axes: [{label: '', orientation: left, series: [{axisId: tbl_tiempos.total_proyectos,
            id: 2023 - tbl_tiempos.total_proyectos, name: '2023'}, {axisId: tbl_tiempos.total_proyectos,
            id: 2024 - tbl_tiempos.total_proyectos, name: '2024'}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    value_labels: legend
    label_type: labPer
    inner_radius: 50
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: Proyectos
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#462C9D",
        font_color: !!null '', color_application: {collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e,
          palette_id: 2229f400-11a4-4b0d-b224-abe608161947}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: 'null', value: !!null '',
        background_color: "#462C9D", font_color: !!null '', color_application: {collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e,
          palette_id: dc65924d-47ce-45e6-a469-9977cbc6bd0e}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    ordering: none
    show_null_labels: false
    hidden_pivots: {}
    listen:
      Pais: tbl_tiempos.pais
      Asignado: tbl_tiempos.asignado
    row: 8
    col: 0
    width: 17
    height: 5
  - title: Proyectos por Persona
    name: Proyectos por Persona
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: looker_column
    fields: [tbl_tiempos.asignado2, tbl_tiempos.total_proyectos, tbl_tiempos.estado]
    pivots: [tbl_tiempos.estado]
    filters: {}
    sorts: [tbl_tiempos.estado, tbl_tiempos.total_proyectos desc 0]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: right
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e
      palette_id: be92eae7-de25-46ae-8e4f-21cb0b69a1f3
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: tbl_tiempos.total_proyectos,
            id: tbl_tiempos.total_proyectos, name: Total Proyectos}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: tbl_tiempos.total_horas,
            id: tbl_tiempos.total_horas, name: Total Horas}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    hide_legend: false
    series_labels: {}
    defaults_version: 1
    hidden_pivots: {}
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
    truncate_column_names: false
    hidden_fields: []
    hidden_points_if_no: []
    listen:
      Pais: tbl_tiempos.pais
      Asignado: tbl_tiempos.asignado
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
    row: 18
    col: 0
    width: 14
    height: 8
  - title: Proyectos por País
    name: Proyectos por País
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: looker_pie
    fields: [tbl_tiempos.total_proyectos, tbl_tiempos.pais]
    sorts: [tbl_tiempos.total_proyectos desc]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    color_application:
      collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e
      palette_id: be92eae7-de25-46ae-8e4f-21cb0b69a1f3
      options:
        steps: 5
    isStepped: true
    labelOverlap: false
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: tbl_tiempos.total_proyectos,
            id: tbl_tiempos.total_proyectos, name: Total Proyectos}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      tbl_tiempos.total_proyectos: "#8643B1"
    series_labels: {}
    hidden_fields: []
    hidden_points_if_no: []
    color_range: ["#E6B0AA", "#FADBD8", "#F5EEF8", "#E8DAEF", "#D4E6F1", "#D6EAF8",
      "#D1F2EB", "#D0ECE7", "#D4EFDF", "#FCF3CF", "#FDEBD0", "#FAE5D3"]
    defaults_version: 1
    hidden_pivots: {}
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
    truncate_column_names: false
    show_null_points: true
    listen:
      Pais: tbl_tiempos.pais
      Asignado: tbl_tiempos.asignado
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
    row: 8
    col: 17
    width: 7
    height: 6
  - title: Participación del equipo
    name: Participación del equipo
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: looker_grid
    fields: [tbl_tiempos.agrupacion_ot, tbl_tiempos.total_horas, tbl_tiempos.fecha_llenado_horas_month_name]
    pivots: [tbl_tiempos.fecha_llenado_horas_month_name]
    filters:
      tbl_tiempos.total_horas: NOT NULL
    sorts: [tbl_tiempos.fecha_llenado_horas_month_name, tbl_tiempos.total_horas desc
        0]
    limit: 500
    column_limit: 50
    total: true
    row_total: right
    dynamic_fields:
    - category: table_calculation
      label: "%"
      value_format:
      value_format_name: percent_2
      calculation_type: percent_of_column_sum
      table_calculation: table_calculation
      args:
      - tbl_tiempos.total_horas
      _kind_hint: measure
      _type_hint: number
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
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e
      palette_id: be92eae7-de25-46ae-8e4f-21cb0b69a1f3
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels: {}
    series_cell_visualizations:
      tbl_tiempos.total_horas:
        is_active: true
        palette:
          palette_id: b20fe57d-cb13-420f-815b-60e907a43148
          collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
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
    y_axes: [{label: '', orientation: left, series: [{axisId: tbl_tiempos.total_proyectos,
            id: tbl_tiempos.total_proyectos, name: Total Proyectos}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: tbl_tiempos.total_horas,
            id: tbl_tiempos.total_horas, name: Total Horas}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    defaults_version: 1
    hidden_pivots: {}
    truncate_column_names: false
    hidden_fields: []
    hidden_points_if_no: []
    listen:
      Pais: tbl_tiempos.pais
      Asignado: tbl_tiempos.asignado
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
    row: 2
    col: 9
    width: 15
    height: 6
  - title: Detalle de proyectos
    name: Detalle de proyectos
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: looker_grid
    fields: [tbl_tiempos.nombre_proyecto, tbl_tiempos.comercial, tbl_tiempos.pm, tbl_tiempos.fecha_inicio_date,
      tbl_tiempos.fecha_estimada_cierre_date, tbl_tiempos.fecha_cierre_date, tbl_tiempos.orden_retrasada,
      tbl_tiempos.total_horas_por_proyecto, tbl_tiempos.horas_planeadas]
    filters:
      tbl_tiempos.agrupacion_ot: ORDENES DE TRABAJO,ORDENES DE TRABAJO INTERNAS
    sorts: [tbl_tiempos.total_horas_por_proyecto desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: if(${tbl_tiempos.horas_planeadas}>0,${tbl_tiempos.horas_planeadas}-${tbl_tiempos.total_horas_por_proyecto},0)
      label: Diferencia de horas
      value_format:
      value_format_name: decimal_1
      _kind_hint: measure
      table_calculation: diferencia_de_horas
      _type_hint: number
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e
      palette_id: be92eae7-de25-46ae-8e4f-21cb0b69a1f3
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels: {}
    series_column_widths:
      tbl_tiempos.nombre_proyecto: 278
    series_cell_visualizations:
      tbl_tiempos.total_horas:
        is_active: true
        palette:
          palette_id: b20fe57d-cb13-420f-815b-60e907a43148
          collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e
    conditional_formatting: [{type: less than, value: 0, background_color: "#FF6666",
        font_color: !!null '', color_application: {collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e,
          palette_id: dc65924d-47ce-45e6-a469-9977cbc6bd0e, options: {steps: 5}},
        bold: false, italic: false, strikethrough: false, fields: [diferencia_de_horas]},
      {type: between, value: [0, 10], background_color: "#FFD700", font_color: !!null '',
        color_application: {collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e, palette_id: dc65924d-47ce-45e6-a469-9977cbc6bd0e},
        bold: false, italic: false, strikethrough: false, fields: [diferencia_de_horas]}]
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
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
    y_axes: [{label: '', orientation: left, series: [{axisId: tbl_tiempos.total_proyectos,
            id: tbl_tiempos.total_proyectos, name: Total Proyectos}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: tbl_tiempos.total_horas,
            id: tbl_tiempos.total_horas, name: Total Horas}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    defaults_version: 1
    hidden_pivots: {}
    truncate_column_names: false
    hidden_fields: []
    hidden_points_if_no: []
    listen:
      Pais: tbl_tiempos.pais
      Asignado: tbl_tiempos.asignado
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
    row: 26
    col: 0
    width: 24
    height: 9
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <div style="border-bottom: solid 1px #462C9D; border-radius: 5px;">
          <nav style="display: flex; justify-content: space-between; font-size: 18px; padding: 5px 10px 0 10px; height: 60px">
              <a style="flex: 1; padding: 5px; border-top: solid 1px #462C9D; border-left: solid 1px #462C9D; border-right: solid 1px #462C9D; border-radius: 10px 10px 0 0; float: left; line-height: 40px; font-weight: bold; background-color: #462C9D; text-align: center; color: #FFF;" href="#"> Reporte General </a>

              <a style="flex: 1; padding: 5px; float: left; line-height: 40px; text-align: center; background-color: #E6E6FA; font-weight: bold; color: #462C9D; border-radius: 20px 20px 0 0;" href="101"> Reporte de Equipo </a>

              <a style="flex: 1; padding: 5px; float: left; line-height: 40px; text-align: center; background-color: #E6E6FA; font-weight: bold; color: #462C9D; border-radius: 20px 20px 0 0;" href="104">Balance de Cargas de Trabajo</a>
              <a style="flex: 1; padding: 5px; float: left; line-height: 40px; text-align: center; background-color: #E6E6FA; font-weight: bold; color: #462C9D; border-radius: 20px 20px 0 0;" href="105">Informe por Persona</a>
          </nav>
      </div>
    row: 0
    col: 0
    width: 24
    height: 2
  - title: Horas por persona
    name: Horas por persona
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: looker_bar
    fields: [tbl_tiempos.total_horas, tbl_tiempos.asignado]
    filters: {}
    sorts: [tbl_tiempos.total_horas desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      label: "%"
      value_format:
      value_format_name: percent_1
      calculation_type: percent_of_row
      table_calculation: table_calculation
      args:
      - tbl_tiempos.total_horas
      _kind_hint: measure
      _type_hint: number
      is_disabled: true
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: right
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e
      palette_id: be92eae7-de25-46ae-8e4f-21cb0b69a1f3
      options:
        steps: 5
    y_axes: [{label: '', orientation: bottom, series: [{axisId: tbl_tiempos.total_horas,
            id: tbl_tiempos.total_horas, name: Total Horas}], showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    hide_legend: false
    series_labels: {}
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: white
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_pivots: {}
    transpose: false
    truncate_text: true
    size_to_fit: true
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    hidden_fields: []
    hidden_points_if_no: []
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    listen:
      Asignado: tbl_tiempos.asignado
      Pais: tbl_tiempos.pais
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
    row: 18
    col: 14
    width: 10
    height: 8
  - title: Proyectos Finalizados por mes
    name: Proyectos Finalizados por mes
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: looker_area
    fields: [tbl_tiempos.total_proyectos, tbl_tiempos.fecha_cierre_month_name, tbl_tiempos.fecha_cierre_year]
    pivots: [tbl_tiempos.fecha_cierre_year]
    fill_fields: [tbl_tiempos.fecha_cierre_month_name, tbl_tiempos.fecha_cierre_year]
    filters:
      tbl_tiempos.fecha_cierre_year: 2 years
      tbl_tiempos.estado: Terminado
    sorts: [tbl_tiempos.fecha_cierre_year desc, tbl_tiempos.fecha_cierre_month_name]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
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
    show_null_points: false
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e
      palette_id: be92eae7-de25-46ae-8e4f-21cb0b69a1f3
    y_axes: [{label: '', orientation: left, series: [{axisId: tbl_tiempos.total_proyectos,
            id: 2023 - tbl_tiempos.total_proyectos, name: '2023'}, {axisId: tbl_tiempos.total_proyectos,
            id: 2024 - tbl_tiempos.total_proyectos, name: '2024'}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    value_labels: legend
    label_type: labPer
    inner_radius: 50
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: Proyectos
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#462C9D",
        font_color: !!null '', color_application: {collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e,
          palette_id: 2229f400-11a4-4b0d-b224-abe608161947}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: 'null', value: !!null '',
        background_color: "#462C9D", font_color: !!null '', color_application: {collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e,
          palette_id: dc65924d-47ce-45e6-a469-9977cbc6bd0e}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    ordering: none
    show_null_labels: false
    hidden_pivots: {}
    listen:
      Pais: tbl_tiempos.pais
      Asignado: tbl_tiempos.asignado
    row: 13
    col: 0
    width: 17
    height: 5
  - title: Proyectos Facturables
    name: Proyectos Facturables
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: looker_bar
    fields: [tbl_tiempos.total_proyectos, tbl_tiempos.billable]
    pivots: [tbl_tiempos.billable]
    fill_fields: [tbl_tiempos.billable]
    sorts: [tbl_tiempos.billable]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
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
      collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e
      palette_id: be92eae7-de25-46ae-8e4f-21cb0b69a1f3
      options:
        steps: 5
    y_axes: [{label: '', orientation: bottom, series: [{axisId: tbl_tiempos.total_proyectos,
            id: tbl_tiempos.total_proyectos, name: Total Proyectos}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      tbl_tiempos.total_proyectos: "#8643B1"
    series_labels: {}
    value_labels: legend
    label_type: labPer
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    isStepped: true
    labelOverlap: false
    hidden_fields: []
    hidden_points_if_no: []
    color_range: ["#E6B0AA", "#FADBD8", "#F5EEF8", "#E8DAEF", "#D4E6F1", "#D6EAF8",
      "#D1F2EB", "#D0ECE7", "#D4EFDF", "#FCF3CF", "#FDEBD0", "#FAE5D3"]
    defaults_version: 1
    hidden_pivots: {}
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
    truncate_column_names: false
    show_null_points: true
    listen:
      Pais: tbl_tiempos.pais
      Asignado: tbl_tiempos.asignado
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
    row: 14
    col: 17
    width: 7
    height: 4
  filters:
  - name: Fecha Llenado Horas Date
    title: Fecha Llenado Horas Date
    type: field_filter
    default_value: last quarter
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: sp_odoo_genia
    explore: tbl_tiempos
    listens_to_filters: []
    field: tbl_tiempos.fecha_llenado_horas_date
  - name: Pais
    title: Pais
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: sp_odoo_genia
    explore: tbl_tiempos
    listens_to_filters: []
    field: tbl_tiempos.pais
  - name: Asignado
    title: Asignado
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: sp_odoo_genia
    explore: tbl_tiempos
    listens_to_filters: []
    field: tbl_tiempos.asignado
