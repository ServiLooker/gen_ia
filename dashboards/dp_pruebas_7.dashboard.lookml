- dashboard: dp_pruebas_7
  title: DP_Pruebas_7_modelado
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: IxImiVfZbw2AHc9HkfmJOx
  elements:
  - title: Utilidad Neta y utilidad del año anterior por país
    name: Utilidad Neta y utilidad del año anterior por país
    model: demo_looker_genia
    explore: demo_tac
    type: looker_column
    fields: [demo_tac.pais, demo_tac.Utilidad_neta, demo_tac.Utilidad_neta_anio_anterior]
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: true
    series_types:
      demo_tac.Utilidad_neta_anio_anterior: line
    series_colors:
      demo_tac.Utilidad_neta_anio_anterior: "#7e09f2"
      demo_tac.Utilidad_neta: "#E8DAEF"
    advanced_vis_config: |-
      {
        chart: {},
             plotOptions: {
              series: {
                  dashStyle: 'dash'
              }
             },
        series: [{
          name: 'Utilidad Neta'
        }]
      }
    defaults_version: 1
    listen: {}
    row: 7
    col: 0
    width: 18
    height: 6
  - title: Stacked graphic
    name: Stacked graphic
    model: demo_looker_genia
    explore: demo_tac
    type: looker_column
    fields: [demo_tac.Valor_presupuesto, demo_tac.Valor_moneda_anio_anterior, demo_tac.Valor_moneda,
      demo_tac.mes, demo_tac.pais]
    pivots: [demo_tac.pais]
    sorts: [demo_tac.pais, demo_tac.Valor_presupuesto desc 0]
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
    stacking: normal
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
      palette_id: jazz-diverging-0
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row: 13
    col: 0
    width: 13
    height: 6
  - title: Valor presupuesto
    name: Valor presupuesto
    model: demo_looker_genia
    explore: demo_tac
    type: looker_column
    fields: [demo_tac.mes, demo_tac.Valor_presupuesto, demo_tac.Utilidad_neta, demo_tac.Valor_moneda]
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
    series_types:
      demo_tac.Valor_moneda: line
      demo_tac.Utilidad_neta: line
    series_colors:
      demo_tac.Valor_presupuesto: "#8eff48"
      demo_tac.Utilidad_neta: "#ff1313"
    advanced_vis_config: |-
      {
        chart: {},
         plotOptions: {
              series: {
                  dashStyle: 'dash'
              }
          },
        series: [{
          name: 'Total Ano'
        }]
      }
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row: 0
    col: 0
    width: 24
    height: 7
  - title: Utilidad Neta
    name: Utilidad Neta
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
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: jazz
      palette_id: jazz-diverging-0
      options:
        steps: 5
    single_value_title: Utilidad Neta
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#E8DAEF",
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
    plot_size_by_field: false
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    series_colors:
      demo_tac.Valor_presupuesto: "#8eff48"
      demo_tac.Utilidad_neta: "#ff1313"
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    advanced_vis_config: |-
      {
        chart: {},
         plotOptions: {
              series: {
                  dashStyle: 'dash'
              }
          },
        series: [{
          name: 'Total Ano'
        }]
      }
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row: 7
    col: 18
    width: 6
    height: 3
  - title: Utilidad Año Anterior
    name: Utilidad Año Anterior
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
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: jazz
      palette_id: jazz-diverging-0
      options:
        steps: 5
    single_value_title: Utilidad Neta Año anterior
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#E8DAEF",
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
    plot_size_by_field: false
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    series_colors:
      demo_tac.Valor_presupuesto: "#8eff48"
      demo_tac.Utilidad_neta: "#ff1313"
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    advanced_vis_config: |-
      {
        chart: {},
         plotOptions: {
              series: {
                  dashStyle: 'dash'
              }
          },
        series: [{
          name: 'Total Ano'
        }]
      }
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row: 13
    col: 16
    width: 6
    height: 3
  - title: Valor moneda vs total año
    name: Valor moneda vs total año
    model: demo_looker_genia
    explore: demo_tac
    type: looker_scatter
    fields: [demo_tac.pais, demo_tac.Valor_moneda, demo_tac.total_ano]
    sorts: [demo_tac.Valor_moneda desc 0]
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
    x_axis_zoom: true
    y_axis_zoom: true
    series_types:
      demo_tac.Valor_moneda: line
    series_colors:
      demo_tac.Valor_moneda: "#2929e6"
      demo_tac.total_ano: "#fa646d"
    series_point_styles:
      demo_tac.Valor_moneda: square
      demo_tac.total_ano: diamond
    cluster_points: false
    quadrants_enabled: true
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen: {}
    row: 16
    col: 13
    width: 11
    height: 6
