prompt --application/shared_components/user_interface/lovs/lov_employees_by_dept
begin
--   Manifest
--     LOV_EMPLOYEES_BY_DEPT
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.2'
,p_default_workspace_id=>37996666634006393559
,p_default_application_id=>23846
,p_default_id_offset=>32085861789612315164
,p_default_owner=>'WKSP_ENTERVIEWS'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(1021198201112324491)
,p_lov_name=>'LOV_EMPLOYEES_BY_DEPT'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'EMP_ID'
,p_display_column_name=>'FIRST_NAME'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15619628113173
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(1026492720321137325)
,p_query_column_name=>'SEQ_ID'
,p_heading=>'Seq Id'
,p_display_sequence=>10
,p_data_type=>'NUMBER'
,p_is_visible=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(1026493175764137325)
,p_query_column_name=>'EMP_ID'
,p_heading=>'Emp Id'
,p_display_sequence=>20
,p_data_type=>'NUMBER'
,p_is_visible=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(1026493516771137325)
,p_query_column_name=>'DEPARTMENT_ID'
,p_heading=>'Department Id'
,p_display_sequence=>30
,p_data_type=>'NUMBER'
,p_is_visible=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(1026493968250137325)
,p_query_column_name=>'FIRST_NAME'
,p_heading=>'First Name'
,p_display_sequence=>40
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(1026494320401137326)
,p_query_column_name=>'LAST_NAME'
,p_heading=>'Last Name'
,p_display_sequence=>50
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(1026494790665137326)
,p_query_column_name=>'EMAIL'
,p_heading=>'Email'
,p_display_sequence=>60
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(1026495205127137326)
,p_query_column_name=>'HIRE_DATE'
,p_heading=>'Hire Date'
,p_display_sequence=>70
,p_data_type=>'DATE'
,p_is_visible=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(1026495518798137326)
,p_query_column_name=>'CITY'
,p_heading=>'City'
,p_display_sequence=>80
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(1026495986240137327)
,p_query_column_name=>'COUNTRY'
,p_heading=>'Country'
,p_display_sequence=>90
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(1026496380720137327)
,p_query_column_name=>'JOB_ID'
,p_heading=>'Job Id'
,p_display_sequence=>100
,p_data_type=>'NUMBER'
,p_is_visible=>'N'
);
wwv_flow_imp.component_end;
end;
/
