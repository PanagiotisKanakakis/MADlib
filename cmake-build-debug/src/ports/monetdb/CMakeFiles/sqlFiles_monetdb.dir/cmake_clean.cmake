file(REMOVE_RECURSE
  "CMakeFiles/sqlFiles_monetdb"
  "modules/sample/sample.sql_in"
  "modules/sample/test/sample.sql_in"
  "modules/array_ops/array_ops.sql_in"
  "modules/array_ops/test/array_ops.ic.sql_in"
  "modules/array_ops/test/array_ops.sql_in"
  "modules/sketch/sketch.sql_in"
  "modules/sketch/test/cm.sql_in"
  "modules/sketch/test/fm.sql_in"
  "modules/sketch/test/mfv.sql_in"
  "modules/sketch/test/support.sql_in"
  "modules/stemmer/porter_stemmer.sql_in"
  "modules/stemmer/test/porter_stemmer.ic.sql_in"
  "modules/stemmer/test/porter_stemmer.sql_in"
  "modules/svec/svec.sql_in"
  "modules/svec_util/test/gp_sfv_sort_order.sql_in"
  "modules/svec_util/test/svec_test.sql_in"
  "modules/svec_util/svec_util.sql_in"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/sqlFiles_monetdb.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
