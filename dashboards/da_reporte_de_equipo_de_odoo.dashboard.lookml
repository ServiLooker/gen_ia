- dashboard: da_reporte_de_equipo_de_odoo
  title: 2. Reporte de equipo de Odoo
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  refresh: 8 days
  preferred_slug: lIT7RKvLcW8Qt3WGMleS5U
  elements:
  - title: New Tile
    name: New Tile
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: single_value
    fields: [tbl_tiempos.asignado3]
    filters:
      tbl_tiempos.asignado: ANA YAZMIN ROZO
    sorts: [tbl_tiempos.asignado3]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    listen:
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
    row: 31
    col: 0
    width: 4
    height: 5
  - title: Dedicación de esfuerzos
    name: Dedicación de esfuerzos
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: looker_grid
    fields: [tbl_tiempos.agrupacion_ot, tbl_tiempos.total_horas, tbl_tiempos.fecha_llenado_horas_month]
    pivots: [tbl_tiempos.fecha_llenado_horas_month]
    fill_fields: [tbl_tiempos.fecha_llenado_horas_month]
    filters:
      tbl_tiempos.asignado: ANA YAZMIN ROZO
    sorts: [tbl_tiempos.fecha_llenado_horas_month, tbl_tiempos.total_horas desc 0]
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
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
    row: 31
    col: 12
    width: 12
    height: 7
  - title: New Tile
    name: New Tile (2)
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: single_value
    fields: [tbl_tiempos.dias_trabajados]
    filters:
      tbl_tiempos.asignado: ANA YAZMIN ROZO
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
    single_value_title: Días Trabajados
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#683AAE",
        font_color: !!null '', color_application: {collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e,
          palette_id: 2229f400-11a4-4b0d-b224-abe608161947}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: 'null', value: !!null '',
        background_color: "#683AAE", font_color: !!null '', color_application: {collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e,
          palette_id: dc65924d-47ce-45e6-a469-9977cbc6bd0e}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
    row: 31
    col: 8
    width: 4
    height: 2
  - title: "\U0001f393\U0001f4dc Objetivos"
    name: "\U0001f393\U0001f4dc Objetivos"
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: looker_grid
    fields: [progreso_metas.categoria, progreso_metas.metas, progreso_metas.average_avances]
    pivots: [progreso_metas.categoria]
    filters:
      tbl_tiempos.asignado: ANA YAZMIN ROZO
    sorts: [progreso_metas.categoria, progreso_metas.average_avances desc 0]
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
    color_application:
      collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e
      palette_id: be92eae7-de25-46ae-8e4f-21cb0b69a1f3
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      progreso_metas.average_avances:
        is_active: true
    truncate_column_names: false
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
    row: 33
    col: 4
    width: 8
    height: 5
  - title: New Tile (Copy)
    name: New Tile (Copy)
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: single_value
    fields: [tbl_tiempos.total_proyectos]
    filters:
      tbl_tiempos.asignado: ANA YAZMIN ROZO
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
    hidden_pivots: {}
    listen:
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
    row: 31
    col: 4
    width: 4
    height: 2
  - title: New Tile (Copy 2)
    name: New Tile (Copy 2)
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: single_value
    fields: [tbl_tiempos.promedio_horas_por_proyecto]
    filters:
      tbl_tiempos.asignado: ANA YAZMIN ROZO
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
    single_value_title: Promedio de horas por día
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#8643B1",
        font_color: !!null '', color_application: {collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e,
          palette_id: 2229f400-11a4-4b0d-b224-abe608161947}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: 'null', value: !!null '',
        background_color: "#C762AD", font_color: !!null '', color_application: {collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e,
          palette_id: dc65924d-47ce-45e6-a469-9977cbc6bd0e}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
    row: 36
    col: 0
    width: 4
    height: 2
  - title: New Tile (Copy 4)
    name: New Tile (Copy 4)
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: single_value
    fields: [tbl_tiempos.promedio_horas_por_proyecto]
    filters:
      tbl_tiempos.asignado: CRISTIAN CAMILO SOCHA RAMIREZ
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
    single_value_title: Promedio de horas por día
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#8643B1",
        font_color: !!null '', color_application: {collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e,
          palette_id: 2229f400-11a4-4b0d-b224-abe608161947}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: 'null', value: !!null '',
        background_color: "#C762AD", font_color: !!null '', color_application: {collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e,
          palette_id: dc65924d-47ce-45e6-a469-9977cbc6bd0e}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
    row: 45
    col: 0
    width: 4
    height: 2
  - title: New Tile (Copy 3)
    name: New Tile (Copy 3)
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: single_value
    fields: [tbl_tiempos.asignado3]
    filters:
      tbl_tiempos.asignado: CRISTIAN CAMILO SOCHA RAMIREZ
    sorts: [tbl_tiempos.asignado3]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    listen:
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
    row: 40
    col: 0
    width: 4
    height: 5
  - title: "\U0001f393\U0001f4dc Objetivos"
    name: "\U0001f393\U0001f4dc Objetivos (2)"
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: looker_grid
    fields: [progreso_metas.categoria, progreso_metas.metas, progreso_metas.average_avances,
      progreso_metas.observaciones]
    pivots: [progreso_metas.categoria]
    filters:
      tbl_tiempos.asignado: CRISTIAN CAMILO SOCHA RAMIREZ
    sorts: [progreso_metas.categoria, progreso_metas.average_avances desc 0]
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
    truncate_column_names: false
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
    row: 42
    col: 4
    width: 8
    height: 5
  - title: New Tile (Copy 6)
    name: New Tile (Copy 6)
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: single_value
    fields: [tbl_tiempos.dias_trabajados]
    filters:
      tbl_tiempos.asignado: CRISTIAN CAMILO SOCHA RAMIREZ
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
    single_value_title: Días Trabajados
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#683AAE",
        font_color: !!null '', color_application: {collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e,
          palette_id: 2229f400-11a4-4b0d-b224-abe608161947}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: 'null', value: !!null '',
        background_color: "#683AAE", font_color: !!null '', color_application: {collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e,
          palette_id: dc65924d-47ce-45e6-a469-9977cbc6bd0e}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
    row: 40
    col: 8
    width: 4
    height: 2
  - title: Dedicación de esfuerzos
    name: Dedicación de esfuerzos (2)
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: looker_grid
    fields: [tbl_tiempos.agrupacion_ot, tbl_tiempos.total_horas, tbl_tiempos.fecha_llenado_horas_month]
    pivots: [tbl_tiempos.fecha_llenado_horas_month]
    fill_fields: [tbl_tiempos.fecha_llenado_horas_month]
    filters:
      tbl_tiempos.asignado: CRISTIAN CAMILO SOCHA RAMIREZ
    sorts: [tbl_tiempos.fecha_llenado_horas_month, tbl_tiempos.total_horas desc 0]
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
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
    row: 40
    col: 12
    width: 12
    height: 7
  - title: New Tile (Copy 5)
    name: New Tile (Copy 5)
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: single_value
    fields: [tbl_tiempos.total_proyectos]
    filters:
      tbl_tiempos.asignado: CRISTIAN CAMILO SOCHA RAMIREZ
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
    hidden_pivots: {}
    listen:
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
    row: 40
    col: 4
    width: 4
    height: 2
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <div style="border-bottom: solid 1px #462C9D; border-radius: 5px;">
          <nav style="display: flex; justify-content: space-between; font-size: 18px; padding: 5px 10px 0 10px; height: 60px">
              <a style="flex: 1; padding: 5px; float: left; line-height: 40px; text-align: center; background-color: #E6E6FA; font-weight: bold; color: #462C9D; border-radius: 20px 20px 0 0;" href="100"> Reporte General </a>
              <a style="flex: 1; padding: 5px; border-top: solid 1px #462C9D; border-left: solid 1px #462C9D; border-right: solid 1px #462C9D; border-radius: 10px 10px 0 0; float: left; line-height: 40px; font-weight: bold; background-color: #462C9D; text-align: center; color: #FFF;" href="101"> Reporte de Equipo </a>

              <a style="flex: 1; padding: 5px; float: left; line-height: 40px; text-align: center; background-color: #E6E6FA; font-weight: bold; color: #462C9D; border-radius: 20px 20px 0 0;" href="104">Balance de Cargas de Trabajo</a>
      <a style="flex: 1; padding: 5px; float: left; line-height: 40px; text-align: center; background-color: #E6E6FA; font-weight: bold; color: #462C9D; border-radius: 20px 20px 0 0;" href="104">Informe por Persona</a>
          </nav>
      </div>
    row: 0
    col: 0
    width: 24
    height: 2
  - title: New Tile (Copy 9)
    name: New Tile (Copy 9)
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: single_value
    fields: [tbl_tiempos.total_proyectos]
    filters:
      tbl_tiempos.asignado: TAFUR ZAPATA LUIS FABIO
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
    hidden_pivots: {}
    listen:
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
    row: 4
    col: 4
    width: 4
    height: 2
  - title: New Tile (Copy 7)
    name: New Tile (Copy 7)
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: single_value
    fields: [tbl_tiempos.asignado3]
    filters:
      tbl_tiempos.asignado: TAFUR ZAPATA LUIS FABIO
    sorts: [tbl_tiempos.asignado3]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    listen:
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
    row: 4
    col: 0
    width: 4
    height: 5
  - title: New Tile (Copy 8)
    name: New Tile (Copy 8)
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: single_value
    fields: [tbl_tiempos.promedio_horas_por_proyecto]
    filters:
      tbl_tiempos.asignado: TAFUR ZAPATA LUIS FABIO
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
    single_value_title: Promedio de horas por día
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#8643B1",
        font_color: !!null '', color_application: {collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e,
          palette_id: 2229f400-11a4-4b0d-b224-abe608161947}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: 'null', value: !!null '',
        background_color: "#C762AD", font_color: !!null '', color_application: {collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e,
          palette_id: dc65924d-47ce-45e6-a469-9977cbc6bd0e}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
    row: 9
    col: 0
    width: 4
    height: 2
  - title: "\U0001f393\U0001f4dc Objetivos"
    name: "\U0001f393\U0001f4dc Objetivos (3)"
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: looker_grid
    fields: [progreso_metas.categoria, progreso_metas.metas, progreso_metas.average_avances,
      progreso_metas.observaciones]
    pivots: [progreso_metas.categoria]
    filters:
      tbl_tiempos.asignado: TAFUR ZAPATA LUIS FABIO
    sorts: [progreso_metas.categoria, progreso_metas.average_avances desc 0]
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
    truncate_column_names: false
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
    row: 6
    col: 4
    width: 8
    height: 5
  - title: New Tile (Copy 10)
    name: New Tile (Copy 10)
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: single_value
    fields: [tbl_tiempos.dias_trabajados]
    filters:
      tbl_tiempos.asignado: TAFUR ZAPATA LUIS FABIO
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
    single_value_title: Días Trabajados
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#683AAE",
        font_color: !!null '', color_application: {collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e,
          palette_id: 2229f400-11a4-4b0d-b224-abe608161947}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: 'null', value: !!null '',
        background_color: "#683AAE", font_color: !!null '', color_application: {collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e,
          palette_id: dc65924d-47ce-45e6-a469-9977cbc6bd0e}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
    row: 4
    col: 8
    width: 4
    height: 2
  - title: Dedicación de esfuerzos
    name: Dedicación de esfuerzos (3)
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: looker_grid
    fields: [tbl_tiempos.agrupacion_ot, tbl_tiempos.total_horas, tbl_tiempos.fecha_llenado_horas_month]
    pivots: [tbl_tiempos.fecha_llenado_horas_month]
    fill_fields: [tbl_tiempos.fecha_llenado_horas_month]
    filters:
      tbl_tiempos.asignado: TAFUR ZAPATA LUIS FABIO
    sorts: [tbl_tiempos.fecha_llenado_horas_month, tbl_tiempos.total_horas desc 0]
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
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
    row: 4
    col: 12
    width: 12
    height: 7
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '<p style="color: blue; font-weight: bold; text-align: center; font-size:
      24px;">YAZMIN ROZO</p>

      '
    row: 29
    col: 0
    width: 24
    height: 2
  - name: " (3)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '<p style="color: blue; font-weight: bold; text-align: center; font-size:
      24px;">CRISTIAN CAMILO SOCHA</p>

      '
    row: 38
    col: 0
    width: 24
    height: 2
  - name: " (4)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '<p style="color: blue; font-weight: bold; text-align: center; font-size:
      24px;">FABIO TAFUR</p>

      '
    row: 2
    col: 0
    width: 24
    height: 2
  - name: " (5)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '<p style="color: blue; font-weight: bold; text-align: center; font-size:
      24px;">ALEXANDER TORRES</p>

      '
    row: 11
    col: 0
    width: 24
    height: 2
  - title: New Tile (Copy 11)
    name: New Tile (Copy 11)
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: single_value
    fields: [tbl_tiempos.asignado3]
    filters:
      tbl_tiempos.asignado: JAIRO ALEXANDER TORRES ALVAREZ
    sorts: [tbl_tiempos.asignado3]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    listen:
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
    row: 13
    col: 0
    width: 4
    height: 5
  - title: New Tile (Copy 13)
    name: New Tile (Copy 13)
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: single_value
    fields: [tbl_tiempos.total_proyectos]
    filters:
      tbl_tiempos.asignado: JAIRO ALEXANDER TORRES ALVAREZ
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
    hidden_pivots: {}
    listen:
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
    row: 13
    col: 4
    width: 4
    height: 2
  - title: "\U0001f393\U0001f4dc Objetivos"
    name: "\U0001f393\U0001f4dc Objetivos (4)"
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: looker_grid
    fields: [progreso_metas.categoria, progreso_metas.metas, progreso_metas.average_avances]
    pivots: [progreso_metas.categoria]
    filters:
      tbl_tiempos.asignado: JAIRO ALEXANDER TORRES ALVAREZ
    sorts: [progreso_metas.categoria, progreso_metas.average_avances desc 0]
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
    truncate_column_names: false
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
    row: 15
    col: 4
    width: 8
    height: 5
  - title: New Tile (Copy 12)
    name: New Tile (Copy 12)
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: single_value
    fields: [tbl_tiempos.promedio_horas_por_proyecto]
    filters:
      tbl_tiempos.asignado: JAIRO ALEXANDER TORRES ALVAREZ
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
    single_value_title: Promedio de horas por día
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#8643B1",
        font_color: !!null '', color_application: {collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e,
          palette_id: 2229f400-11a4-4b0d-b224-abe608161947}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: 'null', value: !!null '',
        background_color: "#C762AD", font_color: !!null '', color_application: {collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e,
          palette_id: dc65924d-47ce-45e6-a469-9977cbc6bd0e}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
    row: 18
    col: 0
    width: 4
    height: 2
  - title: New Tile (Copy 14)
    name: New Tile (Copy 14)
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: single_value
    fields: [tbl_tiempos.dias_trabajados]
    filters:
      tbl_tiempos.asignado: JAIRO ALEXANDER TORRES ALVAREZ
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
    single_value_title: Días Trabajados
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#683AAE",
        font_color: !!null '', color_application: {collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e,
          palette_id: 2229f400-11a4-4b0d-b224-abe608161947}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: 'null', value: !!null '',
        background_color: "#683AAE", font_color: !!null '', color_application: {collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e,
          palette_id: dc65924d-47ce-45e6-a469-9977cbc6bd0e}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
    row: 13
    col: 8
    width: 4
    height: 2
  - title: Dedicación de esfuerzos
    name: Dedicación de esfuerzos (4)
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: looker_grid
    fields: [tbl_tiempos.agrupacion_ot, tbl_tiempos.total_horas, tbl_tiempos.fecha_llenado_horas_month]
    pivots: [tbl_tiempos.fecha_llenado_horas_month]
    fill_fields: [tbl_tiempos.fecha_llenado_horas_month]
    filters:
      tbl_tiempos.asignado: JAIRO ALEXANDER TORRES ALVAREZ
    sorts: [tbl_tiempos.fecha_llenado_horas_month, tbl_tiempos.total_horas desc 0]
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
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
    row: 13
    col: 12
    width: 12
    height: 7
  - name: " (6)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '<p style="color: blue; font-weight: bold; text-align: center; font-size:
      24px;">HENRY ATEHORTUA</p>

      '
    row: 20
    col: 0
    width: 24
    height: 2
  - title: New Tile (Copy 16)
    name: New Tile (Copy 16)
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: single_value
    fields: [tbl_tiempos.promedio_horas_por_proyecto]
    filters:
      tbl_tiempos.asignado: ATEHORTUA JARAMILLO JHON HENRY
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
    single_value_title: Promedio de horas por día
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#8643B1",
        font_color: !!null '', color_application: {collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e,
          palette_id: 2229f400-11a4-4b0d-b224-abe608161947}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: 'null', value: !!null '',
        background_color: "#C762AD", font_color: !!null '', color_application: {collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e,
          palette_id: dc65924d-47ce-45e6-a469-9977cbc6bd0e}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
    row: 27
    col: 0
    width: 4
    height: 2
  - title: New Tile (Copy 15)
    name: New Tile (Copy 15)
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: single_value
    fields: [tbl_tiempos.asignado3]
    filters:
      tbl_tiempos.asignado: ATEHORTUA JARAMILLO JHON HENRY
    sorts: [tbl_tiempos.asignado3]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    listen:
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
    row: 22
    col: 0
    width: 4
    height: 5
  - title: New Tile (Copy 18)
    name: New Tile (Copy 18)
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: single_value
    fields: [tbl_tiempos.dias_trabajados]
    filters:
      tbl_tiempos.asignado: ATEHORTUA JARAMILLO JHON HENRY
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
    single_value_title: Días Trabajados
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#683AAE",
        font_color: !!null '', color_application: {collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e,
          palette_id: 2229f400-11a4-4b0d-b224-abe608161947}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: 'null', value: !!null '',
        background_color: "#683AAE", font_color: !!null '', color_application: {collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e,
          palette_id: dc65924d-47ce-45e6-a469-9977cbc6bd0e}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
    row: 22
    col: 8
    width: 4
    height: 2
  - title: New Tile (Copy 17)
    name: New Tile (Copy 17)
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: single_value
    fields: [tbl_tiempos.total_proyectos]
    filters:
      tbl_tiempos.asignado: ATEHORTUA JARAMILLO JHON HENRY
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
    hidden_pivots: {}
    listen:
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
    row: 22
    col: 4
    width: 4
    height: 2
  - title: "\U0001f393\U0001f4dc Objetivos"
    name: "\U0001f393\U0001f4dc Objetivos (5)"
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: looker_grid
    fields: [progreso_metas.categoria, progreso_metas.metas, progreso_metas.average_avances,
      progreso_metas.observaciones]
    pivots: [progreso_metas.categoria]
    filters:
      tbl_tiempos.asignado: ATEHORTUA JARAMILLO JHON HENRY
    sorts: [progreso_metas.categoria, progreso_metas.average_avances desc 0]
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
    color_application:
      collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e
      palette_id: be92eae7-de25-46ae-8e4f-21cb0b69a1f3
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      progreso_metas.average_avances:
        is_active: true
    truncate_column_names: false
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
    row: 24
    col: 4
    width: 8
    height: 5
  - title: Dedicación de esfuerzos
    name: Dedicación de esfuerzos (5)
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: looker_grid
    fields: [tbl_tiempos.agrupacion_ot, tbl_tiempos.total_horas, tbl_tiempos.fecha_llenado_horas_month]
    pivots: [tbl_tiempos.fecha_llenado_horas_month]
    fill_fields: [tbl_tiempos.fecha_llenado_horas_month]
    filters:
      tbl_tiempos.asignado: ATEHORTUA JARAMILLO JHON HENRY
    sorts: [tbl_tiempos.fecha_llenado_horas_month, tbl_tiempos.total_horas desc 0]
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
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
    row: 22
    col: 12
    width: 12
    height: 7
  - name: " (7)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '<p style="color: blue; font-weight: bold; text-align: center; font-size:
      24px;">HECTOR GONZALES</p>

      '
    row: 47
    col: 0
    width: 24
    height: 2
  - title: New Tile (Copy 19)
    name: New Tile (Copy 19)
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: single_value
    fields: [tbl_tiempos.asignado3]
    filters:
      tbl_tiempos.asignado: GONZALEZ LOPEZ HECTOR EDUARDO
    sorts: [tbl_tiempos.asignado3]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    listen:
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
    row: 49
    col: 0
    width: 4
    height: 5
  - title: New Tile (Copy 20)
    name: New Tile (Copy 20)
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: single_value
    fields: [tbl_tiempos.promedio_horas_por_proyecto]
    filters:
      tbl_tiempos.asignado: GONZALEZ LOPEZ HECTOR EDUARDO
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
    single_value_title: Promedio de horas por día
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#8643B1",
        font_color: !!null '', color_application: {collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e,
          palette_id: 2229f400-11a4-4b0d-b224-abe608161947}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: 'null', value: !!null '',
        background_color: "#C762AD", font_color: !!null '', color_application: {collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e,
          palette_id: dc65924d-47ce-45e6-a469-9977cbc6bd0e}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
    row: 54
    col: 0
    width: 4
    height: 2
  - title: New Tile (Copy 21)
    name: New Tile (Copy 21)
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: single_value
    fields: [tbl_tiempos.total_proyectos]
    filters:
      tbl_tiempos.asignado: GONZALEZ LOPEZ HECTOR EDUARDO
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
    hidden_pivots: {}
    listen:
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
    row: 49
    col: 4
    width: 4
    height: 2
  - title: New Tile (Copy 22)
    name: New Tile (Copy 22)
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: single_value
    fields: [tbl_tiempos.dias_trabajados]
    filters:
      tbl_tiempos.asignado: GONZALEZ LOPEZ HECTOR EDUARDO
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
    single_value_title: Días Trabajados
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#683AAE",
        font_color: !!null '', color_application: {collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e,
          palette_id: 2229f400-11a4-4b0d-b224-abe608161947}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: 'null', value: !!null '',
        background_color: "#683AAE", font_color: !!null '', color_application: {collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e,
          palette_id: dc65924d-47ce-45e6-a469-9977cbc6bd0e}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
    row: 49
    col: 8
    width: 4
    height: 2
  - title: Dedicación de esfuerzos
    name: Dedicación de esfuerzos (6)
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: looker_grid
    fields: [tbl_tiempos.agrupacion_ot, tbl_tiempos.total_horas, tbl_tiempos.fecha_llenado_horas_month]
    pivots: [tbl_tiempos.fecha_llenado_horas_month]
    fill_fields: [tbl_tiempos.fecha_llenado_horas_month]
    filters:
      tbl_tiempos.asignado: GONZALEZ LOPEZ HECTOR EDUARDO
    sorts: [tbl_tiempos.fecha_llenado_horas_month, tbl_tiempos.total_horas desc 0]
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
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
    row: 49
    col: 12
    width: 12
    height: 7
  - title: "\U0001f393\U0001f4dc Objetivos"
    name: "\U0001f393\U0001f4dc Objetivos (6)"
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: looker_grid
    fields: [progreso_metas.categoria, progreso_metas.metas, progreso_metas.average_avances,
      progreso_metas.observaciones]
    pivots: [progreso_metas.categoria]
    filters:
      tbl_tiempos.asignado: GONZALEZ LOPEZ HECTOR EDUARDO
    sorts: [progreso_metas.categoria, progreso_metas.average_avances desc 0]
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
    truncate_column_names: false
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
    row: 51
    col: 4
    width: 8
    height: 5
  - name: " (8)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '<p style="color: blue; font-weight: bold; text-align: center; font-size:
      24px;">TATIANA QUINA</p>

      '
    row: 56
    col: 0
    width: 24
    height: 2
  - title: New Tile (Copy 23)
    name: New Tile (Copy 23)
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: single_value
    fields: [tbl_tiempos.asignado3]
    filters:
      tbl_tiempos.asignado: QUINA PULIDO LEIDY TATIANA
    sorts: [tbl_tiempos.asignado3]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    listen:
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
    row: 58
    col: 0
    width: 4
    height: 5
  - title: New Tile (Copy 24)
    name: New Tile (Copy 24)
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: single_value
    fields: [tbl_tiempos.promedio_horas_por_proyecto]
    filters:
      tbl_tiempos.asignado: QUINA PULIDO LEIDY TATIANA
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
    single_value_title: Promedio de horas por día
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#8643B1",
        font_color: !!null '', color_application: {collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e,
          palette_id: 2229f400-11a4-4b0d-b224-abe608161947}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: 'null', value: !!null '',
        background_color: "#C762AD", font_color: !!null '', color_application: {collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e,
          palette_id: dc65924d-47ce-45e6-a469-9977cbc6bd0e}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
    row: 63
    col: 0
    width: 4
    height: 2
  - title: New Tile (Copy 25)
    name: New Tile (Copy 25)
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: single_value
    fields: [tbl_tiempos.total_proyectos]
    filters:
      tbl_tiempos.asignado: QUINA PULIDO LEIDY TATIANA
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
    hidden_pivots: {}
    listen:
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
    row: 58
    col: 4
    width: 4
    height: 2
  - title: New Tile (Copy 26)
    name: New Tile (Copy 26)
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: single_value
    fields: [tbl_tiempos.dias_trabajados]
    filters:
      tbl_tiempos.asignado: QUINA PULIDO LEIDY TATIANA
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
    single_value_title: Días Trabajados
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#683AAE",
        font_color: !!null '', color_application: {collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e,
          palette_id: 2229f400-11a4-4b0d-b224-abe608161947}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: 'null', value: !!null '',
        background_color: "#683AAE", font_color: !!null '', color_application: {collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e,
          palette_id: dc65924d-47ce-45e6-a469-9977cbc6bd0e}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
    row: 58
    col: 8
    width: 4
    height: 2
  - title: "\U0001f393\U0001f4dc Objetivos"
    name: "\U0001f393\U0001f4dc Objetivos (7)"
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: looker_grid
    fields: [progreso_metas.categoria, progreso_metas.metas, progreso_metas.average_avances,
      progreso_metas.observaciones]
    pivots: [progreso_metas.categoria]
    filters:
      tbl_tiempos.asignado: QUINA PULIDO LEIDY TATIANA
    sorts: [progreso_metas.categoria, progreso_metas.average_avances desc 0]
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
    truncate_column_names: false
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
    row: 60
    col: 4
    width: 8
    height: 5
  - title: Dedicación de esfuerzos
    name: Dedicación de esfuerzos (7)
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: looker_grid
    fields: [tbl_tiempos.agrupacion_ot, tbl_tiempos.total_horas, tbl_tiempos.fecha_llenado_horas_month]
    pivots: [tbl_tiempos.fecha_llenado_horas_month]
    fill_fields: [tbl_tiempos.fecha_llenado_horas_month]
    filters:
      tbl_tiempos.asignado: QUINA PULIDO LEIDY TATIANA
    sorts: [tbl_tiempos.fecha_llenado_horas_month, tbl_tiempos.total_horas desc 0]
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
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
    row: 58
    col: 12
    width: 12
    height: 7
  - name: " (9)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '<p style="color: blue; font-weight: bold; text-align: center; font-size:
      24px;">VIVIANA CAÑAS</p>

      '
    row: 65
    col: 0
    width: 24
    height: 2
  - title: New Tile (Copy 27)
    name: New Tile (Copy 27)
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: single_value
    fields: [tbl_tiempos.asignado3]
    filters:
      tbl_tiempos.asignado: EVELYN VIVIANA CAÑAS LEON
    sorts: [tbl_tiempos.asignado3]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    listen:
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
    row: 67
    col: 0
    width: 4
    height: 5
  - title: New Tile (Copy 28)
    name: New Tile (Copy 28)
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: single_value
    fields: [tbl_tiempos.total_proyectos]
    filters:
      tbl_tiempos.asignado: EVELYN VIVIANA CAÑAS LEON
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
    hidden_pivots: {}
    listen:
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
    row: 67
    col: 4
    width: 4
    height: 2
  - title: New Tile (Copy 29)
    name: New Tile (Copy 29)
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: single_value
    fields: [tbl_tiempos.dias_trabajados]
    filters:
      tbl_tiempos.asignado: EVELYN VIVIANA CAÑAS LEON
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
    single_value_title: Días Trabajados
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#683AAE",
        font_color: !!null '', color_application: {collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e,
          palette_id: 2229f400-11a4-4b0d-b224-abe608161947}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: 'null', value: !!null '',
        background_color: "#683AAE", font_color: !!null '', color_application: {collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e,
          palette_id: dc65924d-47ce-45e6-a469-9977cbc6bd0e}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
    row: 67
    col: 8
    width: 4
    height: 2
  - title: "\U0001f393\U0001f4dc Objetivos"
    name: "\U0001f393\U0001f4dc Objetivos (8)"
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: looker_grid
    fields: [progreso_metas.categoria, progreso_metas.metas, progreso_metas.average_avances,
      progreso_metas.observaciones]
    pivots: [progreso_metas.categoria]
    filters:
      tbl_tiempos.asignado: EVELYN VIVIANA CAÑAS LEON
    sorts: [progreso_metas.categoria, progreso_metas.average_avances desc 0]
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
    truncate_column_names: false
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
    row: 69
    col: 4
    width: 8
    height: 5
  - title: Dedicación de esfuerzos
    name: Dedicación de esfuerzos (8)
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: looker_grid
    fields: [tbl_tiempos.agrupacion_ot, tbl_tiempos.total_horas, tbl_tiempos.fecha_llenado_horas_month]
    pivots: [tbl_tiempos.fecha_llenado_horas_month]
    fill_fields: [tbl_tiempos.fecha_llenado_horas_month]
    filters:
      tbl_tiempos.asignado: EVELYN VIVIANA CAÑAS LEON
    sorts: [tbl_tiempos.fecha_llenado_horas_month, tbl_tiempos.total_horas desc 0]
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
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
    row: 67
    col: 12
    width: 12
    height: 7
  - title: New Tile (Copy 30)
    name: New Tile (Copy 30)
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: single_value
    fields: [tbl_tiempos.promedio_horas_por_proyecto]
    filters:
      tbl_tiempos.asignado: EVELYN VIVIANA CAÑAS LEON
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
    single_value_title: Promedio de horas por día
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#8643B1",
        font_color: !!null '', color_application: {collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e,
          palette_id: 2229f400-11a4-4b0d-b224-abe608161947}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: 'null', value: !!null '',
        background_color: "#C762AD", font_color: !!null '', color_application: {collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e,
          palette_id: dc65924d-47ce-45e6-a469-9977cbc6bd0e}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
    row: 72
    col: 0
    width: 4
    height: 2
  - name: " (10)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '<p style="color: blue; font-weight: bold; text-align: center; font-size:
      24px;">CRISTHIAN ARGAEZ</p>

      '
    row: 74
    col: 0
    width: 24
    height: 2
  - title: Dedicación de esfuerzos
    name: Dedicación de esfuerzos (9)
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: looker_grid
    fields: [tbl_tiempos.agrupacion_ot, tbl_tiempos.total_horas, tbl_tiempos.fecha_llenado_horas_month]
    pivots: [tbl_tiempos.fecha_llenado_horas_month]
    fill_fields: [tbl_tiempos.fecha_llenado_horas_month]
    filters:
      tbl_tiempos.asignado: CRISTHIAN FRANCCESCO ARGAEZ MURCIA
    sorts: [tbl_tiempos.fecha_llenado_horas_month, tbl_tiempos.total_horas desc 0]
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
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
    row: 76
    col: 12
    width: 12
    height: 7
  - title: New Tile (Copy 32)
    name: New Tile (Copy 32)
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: single_value
    fields: [tbl_tiempos.total_proyectos]
    filters:
      tbl_tiempos.asignado: CRISTHIAN FRANCCESCO ARGAEZ MURCIA
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
    hidden_pivots: {}
    listen:
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
    row: 76
    col: 4
    width: 4
    height: 2
  - title: New Tile (Copy 31)
    name: New Tile (Copy 31)
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: single_value
    fields: [tbl_tiempos.asignado3]
    filters:
      tbl_tiempos.asignado: CRISTHIAN FRANCCESCO ARGAEZ MURCIA
    sorts: [tbl_tiempos.asignado3]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    listen:
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
    row: 76
    col: 0
    width: 4
    height: 5
  - title: New Tile (Copy 33)
    name: New Tile (Copy 33)
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: single_value
    fields: [tbl_tiempos.dias_trabajados]
    filters:
      tbl_tiempos.asignado: CRISTHIAN FRANCCESCO ARGAEZ MURCIA
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
    single_value_title: Días Trabajados
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#683AAE",
        font_color: !!null '', color_application: {collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e,
          palette_id: 2229f400-11a4-4b0d-b224-abe608161947}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: 'null', value: !!null '',
        background_color: "#683AAE", font_color: !!null '', color_application: {collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e,
          palette_id: dc65924d-47ce-45e6-a469-9977cbc6bd0e}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
    row: 76
    col: 8
    width: 4
    height: 2
  - title: New Tile (Copy 34)
    name: New Tile (Copy 34)
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: single_value
    fields: [tbl_tiempos.promedio_horas_por_proyecto]
    filters:
      tbl_tiempos.asignado: CRISTHIAN FRANCCESCO ARGAEZ MURCIA
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
    single_value_title: Promedio de horas por día
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#8643B1",
        font_color: !!null '', color_application: {collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e,
          palette_id: 2229f400-11a4-4b0d-b224-abe608161947}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: 'null', value: !!null '',
        background_color: "#C762AD", font_color: !!null '', color_application: {collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e,
          palette_id: dc65924d-47ce-45e6-a469-9977cbc6bd0e}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
    row: 81
    col: 0
    width: 4
    height: 2
  - title: "\U0001f393\U0001f4dc Objetivos"
    name: "\U0001f393\U0001f4dc Objetivos (9)"
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: looker_grid
    fields: [progreso_metas.categoria, progreso_metas.metas, progreso_metas.average_avances,
      progreso_metas.observaciones]
    pivots: [progreso_metas.categoria]
    filters:
      tbl_tiempos.asignado: CRISTHIAN FRANCCESCO ARGAEZ MURCIA
    sorts: [progreso_metas.categoria, progreso_metas.average_avances desc 0]
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
    truncate_column_names: false
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
    row: 78
    col: 4
    width: 8
    height: 5
  - name: " (11)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '<p style="color: blue; font-weight: bold; text-align: center; font-size:
      24px;">DIEGO PARRA</p>

      '
    row: 83
    col: 0
    width: 24
    height: 2
  - title: New Tile (Copy 35)
    name: New Tile (Copy 35)
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: single_value
    fields: [tbl_tiempos.asignado3]
    filters:
      tbl_tiempos.asignado: DIEGO PARRA FLOREZ
    sorts: [tbl_tiempos.asignado3]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    listen:
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
    row: 85
    col: 0
    width: 4
    height: 5
  - title: New Tile (Copy 36)
    name: New Tile (Copy 36)
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: single_value
    fields: [tbl_tiempos.total_proyectos]
    filters:
      tbl_tiempos.asignado: DIEGO PARRA FLOREZ
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
    hidden_pivots: {}
    listen:
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
    row: 85
    col: 4
    width: 4
    height: 2
  - title: New Tile (Copy 37)
    name: New Tile (Copy 37)
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: single_value
    fields: [tbl_tiempos.dias_trabajados]
    filters:
      tbl_tiempos.asignado: DIEGO PARRA FLOREZ
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
    single_value_title: Días Trabajados
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#683AAE",
        font_color: !!null '', color_application: {collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e,
          palette_id: 2229f400-11a4-4b0d-b224-abe608161947}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: 'null', value: !!null '',
        background_color: "#683AAE", font_color: !!null '', color_application: {collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e,
          palette_id: dc65924d-47ce-45e6-a469-9977cbc6bd0e}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
    row: 85
    col: 8
    width: 4
    height: 2
  - title: Dedicación de esfuerzos
    name: Dedicación de esfuerzos (10)
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: looker_grid
    fields: [tbl_tiempos.agrupacion_ot, tbl_tiempos.total_horas, tbl_tiempos.fecha_llenado_horas_month]
    pivots: [tbl_tiempos.fecha_llenado_horas_month]
    fill_fields: [tbl_tiempos.fecha_llenado_horas_month]
    filters:
      tbl_tiempos.asignado: DIEGO PARRA FLOREZ
    sorts: [tbl_tiempos.fecha_llenado_horas_month, tbl_tiempos.total_horas desc 0]
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
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
    row: 85
    col: 12
    width: 12
    height: 7
  - title: "\U0001f393\U0001f4dc Objetivos"
    name: "\U0001f393\U0001f4dc Objetivos (10)"
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: looker_grid
    fields: [progreso_metas.categoria, progreso_metas.metas, progreso_metas.average_avances,
      progreso_metas.observaciones]
    pivots: [progreso_metas.categoria]
    filters:
      tbl_tiempos.asignado: DIEGO PARRA FLOREZ
    sorts: [progreso_metas.categoria, progreso_metas.average_avances desc 0]
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
    truncate_column_names: false
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
    row: 87
    col: 4
    width: 8
    height: 5
  - title: New Tile (Copy 38)
    name: New Tile (Copy 38)
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: single_value
    fields: [tbl_tiempos.promedio_horas_por_proyecto]
    filters:
      tbl_tiempos.asignado: DIEGO PARRA FLOREZ
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
    single_value_title: Promedio de horas por día
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#8643B1",
        font_color: !!null '', color_application: {collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e,
          palette_id: 2229f400-11a4-4b0d-b224-abe608161947}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: 'null', value: !!null '',
        background_color: "#C762AD", font_color: !!null '', color_application: {collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e,
          palette_id: dc65924d-47ce-45e6-a469-9977cbc6bd0e}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
    row: 90
    col: 0
    width: 4
    height: 2
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
