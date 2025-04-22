prompt --application/shared_components/navigation/lists/list_totalemployees
begin
--   Manifest
--     LIST: List_totalemployees
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.2'
,p_default_workspace_id=>37996666634006393559
,p_default_application_id=>23846
,p_default_id_offset=>32085861789612315164
,p_default_owner=>'WKSP_ENTERVIEWS'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(24782735699983812)
,p_name=>'List_totalemployees'
,p_list_type=>'SQL_QUERY'
,p_list_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)  as count_total,',
'    ''Total Employees'' as A01,',
'count(*) as A02,',
'null as A03',
'from employees;'))
,p_list_status=>'PUBLIC'
,p_version_scn=>15619377893032
);
wwv_flow_imp.component_end;
end;
/
