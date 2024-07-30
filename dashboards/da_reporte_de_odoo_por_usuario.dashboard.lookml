- dashboard: da_reporte_de_odoo_por_usuario
  title: 4. Reporte de Odoo por usuario
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description: ''
  refresh: 8 days
  filters_bar_collapsed: true
  preferred_slug: J1Tr0AwxeyPB3qklQQ0nN5
  elements:
  - title: Horas trabajadas por mes (Copy)
    name: Horas trabajadas por mes (Copy)
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: single_value
    fields: [tbl_tiempos.asignado3]
    filters: {}
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
    defaults_version: 1
    listen:
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
      Pais: tbl_tiempos.pais
      Asignado: tbl_tiempos.asignado
    row: 2
    col: 0
    width: 4
    height: 5
  - title: Promedio de horas trabajadas por día
    name: Promedio de horas trabajadas por día
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: looker_column
    fields: [tbl_tiempos.dias_trabajados, tbl_tiempos.total_horas, tbl_tiempos.fecha_llenado_horas_day_of_week]
    filters:
      tbl_tiempos.fecha_llenado_horas_day_of_week: "-"
    sorts: [tbl_tiempos.fecha_llenado_horas_day_of_week]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${tbl_tiempos.total_horas}/${tbl_tiempos.dias_trabajados}"
      label: Promedio de horas
      value_format:
      value_format_name: decimal_2
      _kind_hint: measure
      table_calculation: promedio_de_horas
      _type_hint: number
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
    color_application:
      collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e
      palette_id: be92eae7-de25-46ae-8e4f-21cb0b69a1f3
    y_axes: [{label: '', orientation: left, series: [{axisId: promedio_de_horas, id: promedio_de_horas,
            name: Promedio de horas}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      promedio_de_horas: "#8643B1"
    column_spacing_ratio: 0.5
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Promedio de horas
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#8643B1",
        font_color: !!null '', color_application: {collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e,
          palette_id: 2229f400-11a4-4b0d-b224-abe608161947}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: 'null', value: !!null '',
        background_color: "#8643B1", font_color: !!null '', color_application: {collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e,
          palette_id: dc65924d-47ce-45e6-a469-9977cbc6bd0e}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    defaults_version: 1
    hidden_fields: [tbl_tiempos.dias_trabajados, tbl_tiempos.total_horas]
    listen:
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
      Pais: tbl_tiempos.pais
      Asignado: tbl_tiempos.asignado
    row: 4
    col: 4
    width: 7
    height: 5
  - title: Horas trabajadas por mes (Copy 2)
    name: Horas trabajadas por mes (Copy 2)
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: single_value
    fields: [tbl_tiempos.total_proyectos]
    filters: {}
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
    single_value_title: Total Proyectos
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#462C9D",
        font_color: !!null '', color_application: {collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e,
          palette_id: 2229f400-11a4-4b0d-b224-abe608161947}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: 'null', value: !!null '',
        background_color: "#462C9D", font_color: !!null '', color_application: {collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e,
          palette_id: dc65924d-47ce-45e6-a469-9977cbc6bd0e}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    defaults_version: 1
    listen:
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
      Pais: tbl_tiempos.pais
      Asignado: tbl_tiempos.asignado
    row: 2
    col: 16
    width: 4
    height: 2
  - title: Horas trabajadas por mes (Copy 0)
    name: Horas trabajadas por mes (Copy 0)
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: single_value
    fields: [tbl_tiempos.dias_trabajados, tbl_tiempos.total_horas]
    filters: {}
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${tbl_tiempos.total_horas}/${tbl_tiempos.dias_trabajados}"
      label: Promedio de horas
      value_format:
      value_format_name: decimal_2
      _kind_hint: measure
      table_calculation: promedio_de_horas
      _type_hint: number
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
    single_value_title: Promedio de horas
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#8643B1",
        font_color: !!null '', color_application: {collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e,
          palette_id: 2229f400-11a4-4b0d-b224-abe608161947}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: 'null', value: !!null '',
        background_color: "#8643B1", font_color: !!null '', color_application: {collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e,
          palette_id: dc65924d-47ce-45e6-a469-9977cbc6bd0e}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    defaults_version: 1
    hidden_fields: [tbl_tiempos.dias_trabajados, tbl_tiempos.total_horas]
    listen:
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
      Pais: tbl_tiempos.pais
      Asignado: tbl_tiempos.asignado
    row: 2
    col: 20
    width: 4
    height: 2
  - title: Horas ejecutadas por mes
    name: Horas ejecutadas por mes
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: looker_area
    fields: [tbl_tiempos.total_horas, tbl_tiempos.fecha_llenado_horas_date]
    filters:
      tbl_tiempos.total_horas: not 0
    sorts: [tbl_tiempos.fecha_llenado_horas_date]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${tbl_tiempos.total_horas}/${tbl_tiempos.dias_trabajados}"
      label: Promedio de horas
      value_format:
      value_format_name: decimal_2
      _kind_hint: measure
      table_calculation: promedio_de_horas
      _type_hint: number
      is_disabled: true
    - category: table_calculation
      expression: running_total(${tbl_tiempos.total_horas})
      label: horas acumuladas
      value_format:
      value_format_name: decimal_1
      _kind_hint: measure
      table_calculation: horas_acumuladas
      _type_hint: number
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
    show_null_points: true
    interpolation: monotone
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e
      palette_id: be92eae7-de25-46ae-8e4f-21cb0b69a1f3
    y_axes: [{label: '', orientation: left, series: [{axisId: promedio_de_horas, id: promedio_de_horas,
            name: Promedio de horas}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    reference_lines: [{reference_type: line, range_start: max, range_end: min, margin_top: deviation,
        margin_value: mean, margin_bottom: deviation, label_position: right, color: "#000000",
        line_value: '160'}]
    trend_lines: []
    ordering: none
    show_null_labels: false
    column_spacing_ratio: 0.5
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Promedio de horas
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#8643B1",
        font_color: !!null '', color_application: {collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e,
          palette_id: 2229f400-11a4-4b0d-b224-abe608161947}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: 'null', value: !!null '',
        background_color: "#8643B1", font_color: !!null '', color_application: {collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e,
          palette_id: dc65924d-47ce-45e6-a469-9977cbc6bd0e}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    defaults_version: 1
    hidden_fields:
    hidden_pivots: {}
    listen:
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
      Pais: tbl_tiempos.pais
      Asignado: tbl_tiempos.asignado
    row: 4
    col: 11
    width: 13
    height: 5
  - title: Proyectos por País
    name: Proyectos por País
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: looker_pie
    fields: [tbl_tiempos.total_proyectos, tbl_tiempos.pais]
    filters: {}
    sorts: [tbl_tiempos.total_proyectos desc 0]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    inner_radius: 50
    color_application:
      collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e
      palette_id: be92eae7-de25-46ae-8e4f-21cb0b69a1f3
      options:
        steps: 5
    series_colors: {}
    hidden_pivots: {}
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
      Pais: tbl_tiempos.pais
      Asignado: tbl_tiempos.asignado
    row: 9
    col: 4
    width: 7
    height: 5
  - title: Detalle de proyectos
    name: Detalle de proyectos
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: looker_grid
    fields: [tbl_tiempos.total_horas, tbl_tiempos.nombre_proyecto, tbl_tiempos.pais,
      tbl_tiempos.pm, tbl_tiempos.comercial, tbl_tiempos.horas_planeadas]
    sorts: [tbl_tiempos.total_horas desc 0]
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
      tbl_tiempos.total_horas:
        is_active: true
        palette:
          palette_id: b20fe57d-cb13-420f-815b-60e907a43148
          collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e
    header_font_color: "#FFF"
    header_background_color: "#462C9D"
    truncate_column_names: false
    defaults_version: 1
    listen:
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
      Pais: tbl_tiempos.pais
      Asignado: tbl_tiempos.asignado
    row: 9
    col: 11
    width: 13
    height: 5
  - title: Horas trabajadas por mes (Copy 3)
    name: Horas trabajadas por mes (Copy 3)
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: single_value
    fields: [tbl_tiempos.total_horas_OT, tbl_tiempos.total_horas]
    filters: {}
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e
      palette_id: be92eae7-de25-46ae-8e4f-21cb0b69a1f3
    custom_color: "#170658"
    single_value_title: OT
    comparison_label: Horas
    conditional_formatting: []
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
      Pais: tbl_tiempos.pais
      Asignado: tbl_tiempos.asignado
    row: 2
    col: 12
    width: 4
    height: 2
  - title: Horas trabajadas por mes (Copy 4)
    name: Horas trabajadas por mes (Copy 4)
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: single_value
    fields: [tbl_tiempos.asignado]
    filters: {}
    sorts: [tbl_tiempos.asignado]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: concat("REPORTE INFORMATIVO DE ",${tbl_tiempos.asignado} )
      label: Nombre reporte
      value_format:
      value_format_name:
      _kind_hint: dimension
      table_calculation: nombre_reporte
      _type_hint: string
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e
      palette_id: be92eae7-de25-46ae-8e4f-21cb0b69a1f3
    custom_color: "#683AAE"
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    defaults_version: 1
    hidden_fields: [tbl_tiempos.asignado]
    listen:
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
      Pais: tbl_tiempos.pais
      Asignado: tbl_tiempos.asignado
    row: 2
    col: 4
    width: 8
    height: 2
  - title: Metas
    name: Metas
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: looker_bar
    fields: [progreso_metas.metas, progreso_metas.average_avances]
    filters: {}
    sorts: [progreso_metas.average_avances desc 0]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: true
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
    color_application:
      collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e
      palette_id: be92eae7-de25-46ae-8e4f-21cb0b69a1f3
      options:
        steps: 5
    y_axes: [{label: '', orientation: bottom, series: [{axisId: progreso_metas.total_avances,
            id: progreso_metas.total_avances, name: Total Avances}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      progreso_metas.total_avances: "#170658"
      progreso_metas.average_avances: "#FFB690"
    reference_lines: [{reference_type: line, range_start: max, range_end: min, margin_top: deviation,
        margin_value: mean, margin_bottom: deviation, label_position: right, color: "#000000",
        line_value: '100'}]
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
      Pais: tbl_tiempos.pais
      Asignado: tbl_tiempos.asignado
    row: 7
    col: 0
    width: 4
    height: 7
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <div style="border-bottom: solid 1px #462C9D; border-radius: 5px;">
          <nav style="display: flex; justify-content: space-between; font-size: 18px; padding: 5px 10px 0 10px; height: 60px">

             <a style="flex: 1; padding: 5px; float: left; line-height: 40px; text-align: center; background-color: #E6E6FA; font-weight: bold; color: #462C9D; border-radius: 20px 20px 0 0;" href="100"> Reporte General </a>

              <a style="flex: 1; padding: 5px; float: left; line-height: 40px; text-align: center; background-color: #E6E6FA; font-weight: bold; color: #462C9D; border-radius: 20px 20px 0 0;" href="101"> Reporte de Equipo </a>

              <a style="flex: 1; padding: 5px; float: left; line-height: 40px; text-align: center; background-color: #E6E6FA; font-weight: bold; color: #462C9D; border-radius: 20px 20px 0 0;" href="104">Balance de Cargas de Trabajo</a>
      <a style="flex: 1; padding: 5px; border-top: solid 1px #462C9D; border-left: solid 1px #462C9D; border-right: solid 1px #462C9D; border-radius: 10px 10px 0 0; float: left; line-height: 40px; font-weight: bold; background-color: #462C9D; text-align: center; color: #FFF;" href="#">Informe por personas</a>
          </nav>
      </div>
    row: 0
    col: 0
    width: 24
    height: 2
  filters:
  - name: Fecha Llenado Horas Date
    title: Fecha Llenado Horas Date
    type: field_filter
    default_value: this month
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
  - name: Asignado
    title: Asignado
    type: field_filter
    default_value: ANA YAZMIN ROZO
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: sp_odoo_genia
    explore: tbl_tiempos
    listens_to_filters: []
    field: tbl_tiempos.asignado
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
