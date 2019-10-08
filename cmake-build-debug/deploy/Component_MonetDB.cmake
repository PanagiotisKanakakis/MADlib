
    cpack_add_component_group(MonetDB
        DISPLAY_NAME "MonetDB Support"
        DESCRIPTION "MADlib support for MonetDB."
        PARENT_GROUP ports
    )
    cpack_add_component(MonetDB_any
        DISPLAY_NAME "All Versions"
        DESCRIPTION "MADlib files shared by all MonetDB versions."
        GROUP MonetDB
    )