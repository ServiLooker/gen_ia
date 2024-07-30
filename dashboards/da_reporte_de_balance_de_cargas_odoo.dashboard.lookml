- dashboard: da_reporte_de_balance_de_cargas_odoo
  title: 3. Reporte de balance de cargas Odoo
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description: ''
  preferred_slug: 65qugzEW4Z3uke68KNuFFb
  elements:
  - title: New Tile
    name: New Tile
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: table
    fields: [tbl_tiempos.asignado2]
    filters: {}
    sorts: [tbl_tiempos.asignado2]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: transparent
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_labels:
      tbl_tiempos.asignado2: Asignado
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
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
    title_hidden: true
    listen:
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
      Pais: tbl_tiempos.pais
    row: 2
    col: 0
    width: 2
    height: 16
  - title: Horas trabajadas por mes
    name: Horas trabajadas por mes
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: looker_column
    fields: [tbl_tiempos.total_horas, tbl_tiempos.asignado, tbl_tiempos.fecha_llenado_horas_month]
    pivots: [tbl_tiempos.asignado]
    fill_fields: [tbl_tiempos.fecha_llenado_horas_month]
    filters: {}
    sorts: [tbl_tiempos.asignado, tbl_tiempos.total_horas desc 0]
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
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors: {}
    reference_lines: [{reference_type: line, range_start: max, range_end: min, margin_top: deviation,
        margin_value: mean, margin_bottom: deviation, label_position: right, color: "#2228e6",
        line_value: '160'}]
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    minimum_column_width: 75
    series_cell_visualizations:
      tbl_tiempos.total_horas:
        is_active: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_pivots: {}
    hide_totals: false
    hide_row_totals: false
    listen:
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
      Pais: tbl_tiempos.pais
    row: 2
    col: 2
    width: 14
    height: 16
  - title: Horas de trabajo por Segmentación
    name: Horas de trabajo por Segmentación
    model: sp_odoo_genia
    explore: tbl_tiempos
    type: looker_bar
    fields: [tbl_tiempos.total_horas, tbl_tiempos.asignado, tbl_tiempos.agrupacion_ot]
    pivots: [tbl_tiempos.asignado]
    filters: {}
    sorts: [tbl_tiempos.asignado, tbl_tiempos.total_horas desc 0]
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
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors: {}
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Fecha Llenado Horas Date: tbl_tiempos.fecha_llenado_horas_date
      Pais: tbl_tiempos.pais
    row: 2
    col: 16
    width: 8
    height: 16
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <div style="border-bottom: solid 1px #462C9D; border-radius: 5px;">
          <nav style="display: flex; justify-content: space-between; font-size: 18px; padding: 5px 10px 0 10px; height: 60px">

             <a style="flex: 1; padding: 5px; float: left; line-height: 40px; text-align: center; background-color: #E6E6FA; font-weight: bold; color: #462C9D; border-radius: 20px 20px 0 0;" href="100"> Reporte General </a>

              <a style="flex: 1; padding: 5px; float: left; line-height: 40px; text-align: center; background-color: #E6E6FA; font-weight: bold; color: #462C9D; border-radius: 20px 20px 0 0;" href="101"> Reporte de Equipo </a>

              <a style="flex: 1; padding: 5px; border-top: solid 1px #462C9D; border-left: solid 1px #462C9D; border-right: solid 1px #462C9D; border-radius: 10px 10px 0 0; float: left; line-height: 40px; font-weight: bold; background-color: #462C9D; text-align: center; color: #FFF;" href="#">Balance de Cargas de Trabajo</a>
      <a style="flex: 1; padding: 5px; float: left; line-height: 40px; text-align: center; background-color: #E6E6FA; font-weight: bold; color: #462C9D; border-radius: 20px 20px 0 0;" href="105">Informe por personas</a>
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
