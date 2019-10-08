
    cpack_add_component_group(PostgreSQL
        DISPLAY_NAME "PostgreSQL Support"
        DESCRIPTION "MADlib support for PostgreSQL."
        PARENT_GROUP ports
    )
    cpack_add_component(PostgreSQL_any
        DISPLAY_NAME "All Versions"
        DESCRIPTION "MADlib files shared by all PostgreSQL versions."
        GROUP PostgreSQL
    )
    cpack_add_component(postgresql_10
        DISPLAY_NAME "10"
        DESCRIPTION "MADlib files specific to PostgreSQL 10."
        GROUP PostgreSQL
    )