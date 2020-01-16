## Challenge 1

```sh
# 1. Create your own namespace, which is named by your staff id.
hbase(main):001:0> create_namespace '1050391'
0 row(s) in 0.2430 seconds

# 2. Create a table 'tb' belonging to the above namespace, with column family 'cf'.
hbase(main):002:0> create '1050391:tb', 'cf'
0 row(s) in 1.2670 seconds

=> Hbase::Table - 1050391:tb

# 3. Alter the max VERSIONS to 3 of column family 'cf' in this table.
hbase(main):003:0> alter '1050391:tb', {'NAME' => 'cf', 'VERSIONS' => 3}
Updating all regions with the new schema...
1/1 regions updated.
Done.
0 row(s) in 2.0700 seconds

# 4. Add another column family 'cf2' in this table with property KEEP_DELETED_CELLS is 'TRUE' and VERSIONS is 5.
hbase(main):008:0> alter '1050391:tb', {NAME=>'cf2', KEEP_DELETED_CELLS=>'TRUE', VERSIONS=>5}
Updating all regions with the new schema...
1/1 regions updated.
Done.
0 row(s) in 1.9230 seconds

# 5. Describe the table to display all column family's description.
hbase(main):007:0> desc '1050391:tb'
Table 1050391:tb is ENABLED
1050391:tb
COLUMN FAMILIES DESCRIPTION
{NAME => 'cf', BLOOMFILTER => 'ROW', VERSIONS => '3', IN_MEMORY => 'false', KEEP_DELETED_CELLS => 'FALSE', DATA_BLOCK_ENCODING => 'NONE', TTL => 'FOREVER'
, COMPRESSION => 'NONE', MIN_VERSIONS => '0', BLOCKCACHE => 'true', BLOCKSIZE => '65536', REPLICATION_SCOPE => '0'}
1 row(s) in 0.0270 seconds
```
