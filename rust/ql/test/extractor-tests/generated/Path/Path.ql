// generated by codegen, do not edit
import codeql.rust.elements
import TestUtils

from Path x, string hasQualifier, string hasSegment
where
  toBeTested(x) and
  not x.isUnknown() and
  (if x.hasQualifier() then hasQualifier = "yes" else hasQualifier = "no") and
  if x.hasSegment() then hasSegment = "yes" else hasSegment = "no"
select x, "hasQualifier:", hasQualifier, "hasSegment:", hasSegment
