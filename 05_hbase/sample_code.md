## Challenge 1
#### 1. Create your own namespace, which is named by your staff id.
```sh
hbase(main):001:0> create_namespace '1050391'
0 row(s) in 0.2430 seconds
```
#### 2. Create a table 'tb' belonging to the above namespace, with column family 'cf'.
```sh
hbase(main):002:0> create '1050391:tb', 'cf'
0 row(s) in 1.2670 seconds

=> Hbase::Table - 1050391:tb
```
#### 3. Alter the max VERSIONS to 3 of column family 'cf' in this table.
```sh
hbase(main):003:0> alter '1050391:tb', {'NAME' => 'cf', 'VERSIONS' => 3}
Updating all regions with the new schema...
1/1 regions updated.
Done.
0 row(s) in 2.0700 seconds
```
#### 4. Add another column family 'cf2' in this table with property KEEP_DELETED_CELLS is 'TRUE' and VERSIONS is 5.
```sh
hbase(main):008:0> alter '1050391:tb', {NAME=>'cf2', KEEP_DELETED_CELLS=>'TRUE', VERSIONS=>5}
Updating all regions with the new schema...
1/1 regions updated.
Done.
0 row(s) in 1.9230 seconds
```
#### 5. Describe the table to display all column family's description.
```sh
hbase(main):007:0> desc '1050391:tb'
Table 1050391:tb is ENABLED
1050391:tb
COLUMN FAMILIES DESCRIPTION
{NAME => 'cf', BLOOMFILTER => 'ROW', VERSIONS => '3', IN_MEMORY => 'false', KEEP_DELETED_CELLS => 'FALSE', DATA_BLOCK_ENCODING => 'NONE', TTL => 'FOREVER'
, COMPRESSION => 'NONE', MIN_VERSIONS => '0', BLOCKCACHE => 'true', BLOCKSIZE => '65536', REPLICATION_SCOPE => '0'}
1 row(s) in 0.0270 seconds
```

## Challenge 2
#### 1. put data tag101, tag102, tag103 into table ${id}:tb with rowkey is 'user-id', column is 'cf:tags', then use command get to display the result, including old data.
```sh

```
#### 2. put data tag104 into table ${id}:tb and column 'cf:tags', then use command get to display the result
```sh

```
#### 3. remove row 'user-id', then use scan command with/without RAW property is true to fetch the results
```sh

```
#### 4. flush and compact hbase table, then scan again
```sh
```

#### 5. do step1-4 again in column family cf2 again to observe the difference
```sh
```

## Challenge 3
#### 1. fetch 5 rows and only take column 'cf:tags' and 'cf:age' value information
```sh
scan'ts:tags',{COLUMNS=>['cf:tags','cf:age'],LIMIT=>5}
```
#### 2. find people whose row-id start with "M"
```sh
scan 'ts:tags', {FILTER=>"PrefixFilter('M')"}
```
#### 3. find people (rows) that column "cf:tags" contains tag "Taishin"
```sh
scan'ts:tags',{COLUMN=>['cf:tags'],FILTER=>"ValueFilter(=,'substring:Taishin')"}
```
#### 4. find people whose age is less than "40"
```sh
scan'ts:tag',{FILTER=>"ValueFilter(=,'binary:40')"}
```
#### 5. find people whose age is "50" and gender is "male"
```sh
scan'ts:tags',{FILTER=>"SingleColumnValueFilter('cf','age',=,'binary:50')ANDSingleColumnValueFilter('cf','gender',=, 'binary:male')"}
```
