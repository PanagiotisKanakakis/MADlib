
    cpack_add_component_group(Greenplum
        DISPLAY_NAME "Greenplum Support"
        DESCRIPTION "MADlib support for Greenplum."
        PARENT_GROUP ports
    )
    cpack_add_component(Greenplum_any
        DISPLAY_NAME "All Versions"
        DESCRIPTION "MADlib files shared by all Greenplum versions."
        GROUP Greenplum
    )