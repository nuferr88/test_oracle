prompt --application/pages/page_00002
begin
--   Manifest
--     PAGE: 00002
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.2'
,p_default_workspace_id=>37996666634006393559
,p_default_application_id=>23846
,p_default_id_offset=>32085861789612315164
,p_default_owner=>'WKSP_ENTERVIEWS'
);
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>'manage employee'
,p_alias=>'MANAGE-EMPLOYEE'
,p_step_title=>'manage employee'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'27'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21526636989941349)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(38423306524441367568)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21776794025944237)
,p_plug_name=>'Dashboards'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21776945917944239)
,p_plug_name=>'Number of employees per department'
,p_parent_plug_id=>wwv_flow_imp.id(21776794025944237)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(21777020579944240)
,p_region_id=>wwv_flow_imp.id(21776945917944239)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(21777152793944241)
,p_chart_id=>wwv_flow_imp.id(21777020579944240)
,p_seq=>10
,p_name=>'Number of employees per department'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select departments.name,',
'    count(employees.id) as count_employees',
'from employees',
'join departments',
'on employees.department_id = departments.id',
'group by departments.name',
'order by departments.name asc'))
,p_items_value_column_name=>'COUNT_EMPLOYEES'
,p_items_label_column_name=>'NAME'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(21777211303944242)
,p_chart_id=>wwv_flow_imp.id(21777020579944240)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(21777344428944243)
,p_chart_id=>wwv_flow_imp.id(21777020579944240)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21777757772944247)
,p_plug_name=>'Count employees'
,p_title=>'Count employees'
,p_parent_plug_id=>wwv_flow_imp.id(21776794025944237)
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*) as count_emp',
'from employees;'))
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$BADGE'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'LABEL', 'Total employees',
  'LABEL_DISPLAY', 'Y',
  'SHAPE', 't-Badge--circle',
  'SIZE', 't-Badge--lg',
  'STYLE', 't-Badge--subtle',
  'VALUE', 'COUNT_EMP')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(21777856486944248)
,p_name=>'COUNT_EMP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COUNT_EMP'
,p_data_type=>'NUMBER'
,p_display_sequence=>10
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21777947700944249)
,p_plug_name=>'Assign employee'
,p_parent_plug_id=>wwv_flow_imp.id(21776794025944237)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21778048036944250)
,p_plug_name=>'Department'
,p_region_name=>'DEPARTMENT_P2'
,p_parent_plug_id=>wwv_flow_imp.id(21777947700944249)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select n001 as ID,',
'    c001 as name,',
'    n002 as cost_center',
'from APEX_COLLECTIONS',
'where collection_name = ''COL_DEPARTMENTS'''))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(457628270908822084)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(457628381759822085)
,p_name=>'NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(457628434355822086)
,p_name=>'COST_CENTER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COST_CENTER'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Cost Center'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>50
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(458244998745566558)
,p_name=>'APEX$ROW_ACTION'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(458245033355566559)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(21778139712944251)
,p_internal_uid=>32107639929325259415
,p_is_editable=>true
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'let $             = apex.jQuery,',
'toolbarData   = $.apex.interactiveGrid.copyDefaultToolbar(),',
'toolbarGroup  = toolbarData.toolbarFind("actions3");',
'toolbarGroup.controls.push({',
'type: "BUTTON",',
'id: "delete_selected_static",',
'label: "Delete",',
'icon: "fa fa-remove",',
'iconBeforeLabel: true,',
'iconOnly: false,',
'hot: false,',
'disabled: false,',
'action: "remove_action"',
'});',
'config.initActions = function(act_remove){',
'act_remove.add({',
'name: "remove_action",',
'action: function()  ',
'{',
'    var deptId = apex.item(''P2_DEPT_ID'').getValue();',
'    apex.server.process(''Remove_Department'', ',
'    {',
'        x01: deptId,',
'    }, ',
'    {',
'        type:''GET'',',
'        dataType:''json'',',
'        success: function(json) ',
'        {',
'            if (json.hasOwnProperty("success") && json.success == true ) {',
'                apex.message.showPageSuccess( "Department removed!" );',
'            }',
'            else {',
'            apex.message.alert("Department could not be removed!");',
'            }',
'        }',
'    }).always( function() {',
'        apex.region("DEPARTMENT_P2").refresh();',
'        apex.region("EMPLOYEES_P2").refresh();',
'    });',
'}',
'})',
'}',
'config.toolbarData = toolbarData;',
'return config;',
'}'))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(453029742789468019)
,p_interactive_grid_id=>wwv_flow_imp.id(21778139712944251)
,p_static_id=>'325388916'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(453029931851468019)
,p_report_id=>wwv_flow_imp.id(453029742789468019)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(458050222338830415)
,p_view_id=>wwv_flow_imp.id(453029931851468019)
,p_display_seq=>69
,p_column_id=>wwv_flow_imp.id(457628270908822084)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(458051243863830417)
,p_view_id=>wwv_flow_imp.id(453029931851468019)
,p_display_seq=>70
,p_column_id=>wwv_flow_imp.id(457628381759822085)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(458052145917830419)
,p_view_id=>wwv_flow_imp.id(453029931851468019)
,p_display_seq=>71
,p_column_id=>wwv_flow_imp.id(457628434355822086)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(473736478560103374)
,p_view_id=>wwv_flow_imp.id(453029931851468019)
,p_display_seq=>72
,p_column_id=>wwv_flow_imp.id(458244998745566558)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21778517251944255)
,p_plug_name=>'Employees'
,p_region_name=>'EMPLOYEES_P2'
,p_parent_plug_id=>wwv_flow_imp.id(21777947700944249)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    seq_id,',
'    n001 as emp_id,',
'    n002 as department_id,',
'    n003 as job_id,',
'    c001 as first_name,',
'    c002 as last_name,',
'    c003 as email,',
'    c004 as city,',
'    c005 as country,',
'    d001 as hire_date',
'from APEX_COLLECTIONS',
'where collection_name = ''COL_EMPLOYEES'''))
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_imp.id(21778048036944250)
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(458243056334566539)
,p_name=>'DEPARTMENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEPARTMENT_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Department Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(38424338198838368370)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_parent_column_id=>wwv_flow_imp.id(457628270908822084)
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(458243138213566540)
,p_name=>'JOB_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'JOB_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Job'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(38424341266257368374)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(458243276758566541)
,p_name=>'FIRST_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FIRST_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'First Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(458243349613566542)
,p_name=>'LAST_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Last Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(458243463109566543)
,p_name=>'EMAIL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMAIL'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Email'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(458243605483566544)
,p_name=>'CITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CITY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'City'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(458243645032566545)
,p_name=>'COUNTRY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COUNTRY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Country'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(458243806393566546)
,p_name=>'HIRE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'HIRE_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Hire Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(458245300565566561)
,p_name=>'APEX$ROW_ACTION'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(458245406327566562)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(557653487234173742)
,p_name=>'EMP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(557655150322173759)
,p_name=>'SEQ_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SEQ_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(21778674457944256)
,p_internal_uid=>32107640464070259420
,p_is_editable=>true
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'let $             = apex.jQuery,',
'toolbarData   = $.apex.interactiveGrid.copyDefaultToolbar(),',
'toolbarGroup  = toolbarData.toolbarFind("actions3");',
'',
'toolbarGroup.controls.push(',
'{',
'type: "BUTTON",',
'id: "add_selected_static",',
'label: "Add",',
'icon: "fa fa-plus",',
'iconBeforeLabel: true,',
'iconOnly: false,',
'hot: false,',
'disabled: false,',
'action: "add_action"',
'},',
'{',
'type: "BUTTON",',
'id: "delete_selected_static",',
'label: "Delete",',
'icon: "fa fa-remove",',
'iconBeforeLabel: true,',
'iconOnly: false,',
'hot: false,',
'disabled: false,',
'action: "remove_action"',
'});',
'config.initActions = function(actions){',
'actions.add({',
'name: "remove_action",',
'action: function()  ',
'{',
'apex.message.confirm(''Are you sure you wish to delete the selected Employee?'', function(okPressed)',
'{',
'    if(okPressed){',
'',
'        var employeeId = apex.item(''P2_EMPLOYEE_ID'').getValue();',
'                    apex.server.process(''Remove_Employee'', {',
'                        x01: employeeId',
'                    }, {type:''GET'',',
'                        dataType: ''json'',',
'                        success: function( json) {',
'                            if ( json.hasOwnProperty("success") && json.success == true ) {',
'                                apex.message.showPageSuccess( "Employ removed!" );',
'                            }',
'                            else {',
'                            apex.message.alert("Employ could not be removed!");',
'                            }',
'                        }',
'                    }).always( function() {',
'                        apex.region("EMPLOYEES_P2").refresh();',
'                    });',
'        }',
'})',
'}',
'})',
'actions.add({',
'name: "add_action",',
'action: function()  ',
'{',
'    apex.theme.openRegion(''ADD_EMPLOYEE_P2'');',
'}',
'})',
'}',
'config.toolbarData = toolbarData;',
'return config;',
'}'))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(453304567373742176)
,p_interactive_grid_id=>wwv_flow_imp.id(21778674457944256)
,p_static_id=>'325391664'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(453304740577742176)
,p_report_id=>wwv_flow_imp.id(453304567373742176)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(459127973835845493)
,p_view_id=>wwv_flow_imp.id(453304740577742176)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(458243056334566539)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(459128854422845495)
,p_view_id=>wwv_flow_imp.id(453304740577742176)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(458243138213566540)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(459129806505845498)
,p_view_id=>wwv_flow_imp.id(453304740577742176)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(458243276758566541)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(459130699468845500)
,p_view_id=>wwv_flow_imp.id(453304740577742176)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(458243349613566542)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(459131538219845502)
,p_view_id=>wwv_flow_imp.id(453304740577742176)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(458243463109566543)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(459132687386845505)
,p_view_id=>wwv_flow_imp.id(453304740577742176)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(458243605483566544)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(459133705216845507)
,p_view_id=>wwv_flow_imp.id(453304740577742176)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(458243645032566545)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(459134547647845509)
,p_view_id=>wwv_flow_imp.id(453304740577742176)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(458243806393566546)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(473737877141103378)
,p_view_id=>wwv_flow_imp.id(453304740577742176)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(458245300565566561)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(559303249913229092)
,p_view_id=>wwv_flow_imp.id(453304740577742176)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(557653487234173742)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1026837618318144244)
,p_view_id=>wwv_flow_imp.id(453304740577742176)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(557655150322173759)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(458245751780566566)
,p_plug_name=>'Add Employee'
,p_region_name=>'ADD_EMPLOYEE_P2'
,p_parent_plug_id=>wwv_flow_imp.id(21777947700944249)
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(458245878368566567)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(458245751780566566)
,p_button_name=>'CLOSE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(458246117083566570)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(458245751780566566)
,p_button_name=>'OK'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Ok'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(557654006637173747)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(21777947700944249)
,p_button_name=>'COMMIT_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Commit Changes'
,p_button_position=>'CREATE'
,p_button_execute_validations=>'N'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(458246329979566572)
,p_name=>'P2_ID'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(458245751780566566)
,p_prompt=>'Employee'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_EMPLOYEES_BY_DEPT'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    seq_id,',
'    n001 as emp_id,',
'    n002 as department_id,',
'    n003 as job_id,',
'    c001 as first_name,',
'    c002 as last_name,',
'    c003 as email,',
'    c004 as city,',
'    c005 as country,',
'    d001 as hire_date',
'from APEX_COLLECTIONS',
'where collection_name = ''COL_EMPLOYEES''',
'and n002 = :P2_DEPT_ID',
'order by c001 asc;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'additional_outputs', 'SEQ_ID:P2_SEQ_ID,FIRST_NAME:P2_FIRST_NAME,LAST_NAME:P2_LAST_NAME,EMAIL:P2_EMAIL,HIRE_DATE:P2_HIRE_DATE,CITY:P2_CITY,COUNTRY:P2_COUNTRY,JOB_ID:P2_JOB_ID',
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(458246457634566573)
,p_name=>'P2_DEPARTMENT_ID'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(458245751780566566)
,p_item_default=>'P2_DEPT_ID'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(458246607639566574)
,p_name=>'P2_JOB_ID'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(458245751780566566)
,p_prompt=>'Job'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'JOBS.NAME'
,p_cHeight=>1
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(458246692720566575)
,p_name=>'P2_FIRST_NAME'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(458245751780566566)
,p_prompt=>'First Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(458246770336566576)
,p_name=>'P2_LAST_NAME'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(458245751780566566)
,p_prompt=>'Last Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(458246839277566577)
,p_name=>'P2_EMAIL'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(458245751780566566)
,p_prompt=>'Email'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'EMAIL',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(458246938794566578)
,p_name=>'P2_CITY'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(458245751780566566)
,p_prompt=>'City'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(458247068976566579)
,p_name=>'P2_COUNTRY'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(458245751780566566)
,p_prompt=>'Country'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(458247154131566580)
,p_name=>'P2_HIRE_DATE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(458245751780566566)
,p_prompt=>'Hire Date'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(458247441065566583)
,p_name=>'P2_DEPT_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(21776794025944237)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(557653560443173743)
,p_name=>'P2_EMPLOYEE_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(21776794025944237)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(557654850101173756)
,p_name=>'P2_SEQ_ID'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(458245751780566566)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(458244455866566553)
,p_name=>'Disable delete button when no rows selected in dept'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(21778048036944250)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'apex.region("DEPARTMENT_P2").widget().interactiveGrid("getViews","grid").getSelectedRecords().length <= 0 || apex.region("DEPARTMENT_P2").widget().interactiveGrid("getViews","grid").getSelectedRecords().length > 1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(458244546479566554)
,p_event_id=>wwv_flow_imp.id(458244455866566553)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'#DEPARTMENT_P2_ig_toolbar_delete_selected_static'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(557654397624173751)
,p_event_id=>wwv_flow_imp.id(458244455866566553)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'#EMPLOYEES_P2_ig_toolbar_add_selected_static'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(557654036222173748)
,p_event_id=>wwv_flow_imp.id(458244455866566553)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'#EMPLOYEES_P2_ig_toolbar_add_selected_static'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(557654215769173750)
,p_event_id=>wwv_flow_imp.id(458244455866566553)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'#EMPLOYEES_P2_ig_toolbar_delete_selected_static'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(458244702283566555)
,p_event_id=>wwv_flow_imp.id(458244455866566553)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'#DEPARTMENT_P2_ig_toolbar_delete_selected_static'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(557654185667173749)
,p_event_id=>wwv_flow_imp.id(458244455866566553)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'#EMPLOYEES_P2_ig_toolbar_delete_selected_static'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(458245953364566568)
,p_name=>'Close Region'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(458245878368566567)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(557654999106173757)
,p_event_id=>wwv_flow_imp.id(458245953364566568)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(458246058854566569)
,p_event_id=>wwv_flow_imp.id(458245953364566568)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(458245751780566566)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(458247215946566581)
,p_name=>'P2_DEPT_ID in session'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(21778048036944250)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(458247553519566584)
,p_event_id=>wwv_flow_imp.id(458247215946566581)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var i,   get_dept,',
'model = this.data.model;',
'',
'for ( i = 0; i < this.data.selectedRecords.length; i++ ) {',
'    ',
'    get_dept = model.getValue( this.data.selectedRecords[i], "ID");',
'    ',
'}',
'',
'apex.item("P2_DEPT_ID").setValue(get_dept);',
'apex.item("P2_DEPARTMENT_ID").setValue(get_dept);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(458247397294566582)
,p_event_id=>wwv_flow_imp.id(458247215946566581)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P2_DEPT_ID,P2_DEPARTMENT_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(557653694809173744)
,p_name=>'P2_EMPLOYEE_ID in session'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(21778517251944255)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(557653739784173745)
,p_event_id=>wwv_flow_imp.id(557653694809173744)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var i,   get_emp,',
'model = this.data.model;',
'',
'for ( i = 0; i < this.data.selectedRecords.length; i++ ) {',
'    ',
'    get_emp = model.getValue( this.data.selectedRecords[i], "EMP_ID");',
'    ',
'}',
'',
'apex.item("P2_EMPLOYEE_ID").setValue(get_emp);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(557653849338173746)
,p_event_id=>wwv_flow_imp.id(557653694809173744)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P2_EMPLOYEE_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(458247662417566585)
,p_name=>'Update record into collection'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(458246117083566570)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(458247751468566586)
,p_event_id=>wwv_flow_imp.id(458247662417566585)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.UPDATE_MEMBER',
'(',
'    p_collection_name => ''COL_EMPLOYEES'',',
'    p_seq             => ''1'',',
'    p_n001            => :P2_ID,',
'    p_n002            => :P2_DEPARTMENT_ID,',
'    p_n003            => :P2_JOB_ID,',
'    p_c001            => :P2_FIRST_NAME,',
'    p_c002            => :P2_LAST_NAME,',
'    p_c003            => :P2_EMAIL,',
'    p_c004            => :P2_CITY,',
'    p_c005            => :P2_COUNTRY,',
'    p_d001            => :P2_HIRE_DATE',
');'))
,p_attribute_02=>'P2_SEQ_ID,P2_ID,P2_DEPARTMENT_ID,P2_FIRST_NAME,P2_LAST_NAME,P2_EMAIL,P2_HIRE_DATE,P2_CITY,P2_COUNTRY,P2_JOB_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(557653282117173740)
,p_event_id=>wwv_flow_imp.id(458247662417566585)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(21778517251944255)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(557655020813173758)
,p_event_id=>wwv_flow_imp.id(458247662417566585)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(557653375296173741)
,p_event_id=>wwv_flow_imp.id(458247662417566585)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(458245751780566566)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(557654431183173752)
,p_name=>'Disable button Delete when no row selected in employees'
,p_event_sequence=>60
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(21778517251944255)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'apex.region("EMPLOYEES_P2").widget().interactiveGrid("getViews","grid").getSelectedRecords().length <= 0 || apex.region("EMPLOYEES_P2").widget().interactiveGrid("getViews","grid").getSelectedRecords().length > 1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(557654537046173753)
,p_event_id=>wwv_flow_imp.id(557654431183173752)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'#EMPLOYEES_P2_ig_toolbar_delete_selected_static'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(557654641776173754)
,p_event_id=>wwv_flow_imp.id(557654431183173752)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'#EMPLOYEES_P2_ig_toolbar_delete_selected_static'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(21779897956944268)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add data to collections'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    cursor c_departments',
'    is',
'        select ',
'            id,',
'            name,',
'            cost_center',
'        from departments;',
'    ',
'    cursor c_employees',
'    is',
'        select ',
'            ID,',
'            DEPARTMENT_ID,',
'            JOB_ID,',
'            FIRST_NAME,',
'            LAST_NAME,',
'            EMAIL,',
'            HIRE_DATE,',
'            CITY,',
'            COUNTRY',
'        from employees;',
'begin',
'',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(',
'        p_collection_name => ''COL_DEPARTMENTS'');',
'',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(',
'        p_collection_name => ''COL_EMPLOYEES'');',
'',
'    for departments in c_departments loop',
'',
'        APEX_COLLECTION.ADD_MEMBER',
'        (',
'            p_collection_name => ''COL_DEPARTMENTS'',',
'            p_n001            => departments.id,',
'            p_n002            => departments.cost_center,',
'            p_c001            => departments.name',
'        );',
'    ',
'    end loop;',
'',
'    for employees in c_employees loop',
'',
'        APEX_COLLECTION.ADD_MEMBER',
'        (',
'            p_collection_name => ''COL_EMPLOYEES'',',
'            p_n001            => employees.id,',
'            p_n002            => employees.department_id,',
'            p_n003            => employees.job_id,',
'            p_c001            => employees.first_name,',
'            p_c002            => employees.last_name,',
'            p_c003            => employees.email,',
'            p_c004            => employees.city,',
'            p_c005            => employees.country,',
'            p_d001            => employees.hire_date',
'        );',
'',
'    end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>32107641687569259432
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(458245467020566563)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Employees to table'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'   MERGE INTO employees e',
'   USING (select ',
'            n001 as emp_id,',
'            n002 as department_id,',
'            n003 as job_id,',
'            c001 as first_name,',
'            c002 as last_name,',
'            c003 as email,',
'            c004 as city,',
'            c005 as country,',
'            d001 as hire_date',
'        from APEX_COLLECTIONS',
'        where collection_name = ''COL_EMPLOYEES'') ace',
'   ON (e.id = ace.emp_id)',
'   WHEN MATCHED THEN ',
'    UPDATE SET e.department_id = ace.department_id,',
'               e.job_id = ace.job_id,',
'               e.first_name = ace.first_name,',
'               e.last_name = ace.last_name,',
'               e.email = ace.email,',
'               e.city = ace.city,',
'               e.country = ace.country,',
'               e.hire_date = ace.hire_date;',
'   /*DELETE WHERE e.id not in (select col_emp.n001 from APEX_COLLECTIONS col_emp where col_emp.collection_name = ''COL_EMPLOYEES'');*/',
'',
'   delete from employees e',
'   where e.id not in (select col_emp.n001 from APEX_COLLECTIONS col_emp where col_emp.collection_name = ''COL_EMPLOYEES'');',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(557654006637173747)
,p_internal_uid=>32544107256632881727
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(458245120677566560)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Department to table'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'   update employees',
'   set department_id = null',
'   WHERE department_id not in(select col_dept.n001 from apex_collections col_dept where col_dept.collection_name = ''COL_DEPARTMENTS'');',
'',
'   MERGE INTO departments d',
'   USING (select ',
'        n001 as ID,',
'        c001 as NAME,',
'        n002 as cost_center',
'    from APEX_COLLECTIONS',
'    where collection_name = ''COL_DEPARTMENTS'') acd',
'   ON (d.id = acd.ID)',
'   WHEN MATCHED THEN ',
'    UPDATE SET d.name = acd.NAME,',
'               d.cost_center = acd.cost_center;',
'               ',
'    ',
'   DELETE departments d',
'   WHERE d.ID not in(select col_dept.n001 from apex_collections col_dept where col_dept.collection_name = ''COL_DEPARTMENTS'');',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(557654006637173747)
,p_internal_uid=>32544106910289881724
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(458245536941566564)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Remove_Department'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    cursor c_departments',
'    is',
'        select ',
'            seq_id,',
'            n001 as dept_id',
'        from apex_collections',
'        where collection_name = ''COL_DEPARTMENTS''',
'        and n001 = apex_application.g_x01;',
'    ',
'    cursor c_employees(in_dep_id in number)',
'    is',
'       select ',
'            seq_id',
'        from apex_collections',
'        where collection_name = ''COL_EMPLOYEES''',
'        and n001 = in_dep_id;',
'begin',
'    APEX_DEBUG.ENABLE(apex_debug.c_log_level_info);',
'',
'    apex_json.open_object;',
'',
'    for employees in c_employees(apex_application.g_x01) loop',
'',
'        APEX_DEBUG.message(p_message => ''employees.seq_id ''||employees.seq_id);',
'',
'        APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE',
'        (',
'            p_collection_name => ''COL_EMPLOYEES'',',
'            p_seq             => employees.seq_id,',
'            p_attr_number     => 2,',
'            p_number_value    => null',
'        );',
'',
'    end loop;',
'',
'    for departments in c_departments loop',
'',
'        APEX_DEBUG.message(p_message => ''departments.seq_id ''||departments.seq_id);',
'',
'        APEX_COLLECTION.DELETE_MEMBER',
'        (',
'            p_collection_name => ''COL_DEPARTMENTS'',',
'            p_seq             => departments.seq_id',
'        );',
'        ',
'    end loop;',
'',
'    apex_json.write(''success'', true);',
'    apex_json.close_object;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'      apex_json.free_output;',
'      apex_json.open_object;',
'      apex_json.write(''success'', false);',
'      apex_json.write(''result'' , sqlerrm );',
'      apex_json.close_object; ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>32544107326553881728
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(458245638532566565)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Remove_Employee'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    ',
'    cursor c_employees',
'    is',
'       select ',
'            seq_id',
'        from apex_collections',
'        where collection_name = ''COL_EMPLOYEES''',
'        and n001 = apex_application.g_x01;',
'begin',
'    apex_json.open_object;',
'    ',
'    for employees in c_employees loop',
'',
'        APEX_COLLECTION.DELETE_MEMBER',
'        (',
'            p_collection_name => ''COL_EMPLOYEES'',',
'            p_seq             => employees.seq_id',
'        );',
'',
'    end loop;',
'    ',
'    apex_json.write(''success'', true);',
'    apex_json.close_object;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'      apex_json.free_output;',
'      apex_json.open_object;',
'      apex_json.write(''success'', false);',
'      apex_json.write(''result'' , sqlerrm );',
'      apex_json.close_object;   ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>32544107428144881729
);
wwv_flow_imp.component_end;
end;
/
