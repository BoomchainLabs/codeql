/**
 * @name Query Sink Counts
 * @description Lists the number of query sinks of each type found in the database. Query sinks are
 *              flow sinks that are used as possible locations for query results. Cryptographic
 *              operations are excluded.
 * @kind metric
 * @id rust/summary/query-sink-counts
 * @tags summary
 */

import rust
import codeql.rust.dataflow.DataFlow
import codeql.rust.Concepts
import Stats

from string kind, int num
where num = strictcount(QuerySink s | s.getSinkType() = kind)
select kind, num
