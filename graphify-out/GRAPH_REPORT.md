# Graph Report - DocTruyenApp  (2026-11-21)

## Corpus Check
- 63 files · ~31,843 words
- Verdict: corpus is large enough that graph structure adds value.
- Unclassified: 164 file(s) not represented in the graph (top: .smali 132, .zip 12, .xml 6)
- WARNING: 164 of 236 files seen (69%) have no supported extractor and are missing from this graph entirely. It may look complete while representing only part of the codebase.

## Summary
- 97 nodes · 42 edges · 56 communities (4 shown, 52 thin omitted)
- Extraction: 100% EXTRACTED · 0% INFERRED · 0% AMBIGUOUS
- Token cost: 0 input · 0 output

## Graph Freshness
- Built from commit: `b6943bdc`
- Run `git rev-parse HEAD` and compare to check if the graph is stale.
- Run `graphify update .` after code changes (no API cost).

## Community Hubs (Navigation)
- apktool.yml
- CHECKPOINT: DocTruyenApp
- DÃ¡Â»Â± ÃƒÂn: Ã„ÂÃ¡Â»Âc TruyÃ¡Â»â€¡n (DocTruyen App)
- sdkInfo
- DocTruyen App v1.2.2 - Khắc Phục Dứt Điểm Lỗi Crash & Ổn Định Tuyệt Đối
- app/assets/extensions/README.md
- PLAN.md
- apptruyenchu/src/genre.js
- apptruyenchu/src/home.js
- metruyenchu/src/genre.js
- metruyenchu/src/home.js
- decompiled/assets/extensions/README.md

## God Nodes (most connected - your core abstractions)
1. `DÃ¡Â»Â± ÃƒÂn: Ã„ÂÃ¡Â»Âc TruyÃ¡Â»â€¡n (DocTruyen App)` - 4 edges
2. `sdkInfo` - 3 edges
3. `versionInfo` - 3 edges
4. `resourcesInfo` - 3 edges
5. `DocTruyen App v1.2.2 - Khắc Phục Dứt Điểm Lỗi Crash & Ổn Định Tuyệt Đối` - 3 edges
6. `usesFramework` - 2 edges
7. `CHECKPOINT: DocTruyenApp` - 2 edges
8. `version` - 1 edges
9. `apkFileName` - 1 edges
10. `ids` - 1 edges

## Surprising Connections (you probably didn't know these)
- None detected - all connections are within the same source files.

## Import Cycles
- None detected.

## Communities (56 total, 52 thin omitted)

### Community 0 - "apktool.yml"
Cohesion: 0.17
Nodes (11): apkFileName, doNotCompress, resourcesInfo, keepRawValues, packageId, usesFramework, ids, version (+3 more)

### Community 2 - "DÃ¡Â»Â± ÃƒÂn: Ã„ÂÃ¡Â»Âc TruyÃ¡Â»â€¡n (DocTruyen App)"
Cohesion: 0.40
Nodes (4): 1. MÃ¡Â»Â¥c TiÃƒÂªu ChÃƒÂ­nh, 2. CÃ¡ÂºÂ¥u TrÃƒÂºc ThÃ†Â° MÃ¡Â»Â¥c DÃ¡Â»Â± ÃƒÂn, 3. LÃ¡Â»â€¹ch SÃ¡Â»Â­ PhiÃƒÂªn BÃ¡ÂºÂ£n & MÃ¡Â»â€˜c PhÃƒÂ¡t TriÃ¡Â»Æ’n, DÃ¡Â»Â± ÃƒÂn: Ã„ÂÃ¡Â»Âc TruyÃ¡Â»â€¡n (DocTruyen App)

### Community 3 - "sdkInfo"
Cohesion: 0.67
Nodes (3): sdkInfo, minSdkVersion, targetSdkVersion

### Community 4 - "DocTruyen App v1.2.2 - Khắc Phục Dứt Điểm Lỗi Crash & Ổn Định Tuyệt Đối"
Cohesion: 0.50
Nodes (3): 🛠️ Chi Tiết Sửa Lỗi Trong Bản v1.2.2, DocTruyen App v1.2.2 - Khắc Phục Dứt Điểm Lỗi Crash & Ổn Định Tuyệt Đối, 📦 Tệp Cài Đặt (Release Asset)

## Knowledge Gaps
- **52 thin communities (<3 nodes) omitted from report** — run `graphify query` to explore isolated nodes.

## Suggested Questions
_Questions this graph is uniquely positioned to answer:_

- **Why does `sdkInfo` connect `sdkInfo` to `apktool.yml`?**
  _High betweenness centrality (0.005) - this node is a cross-community bridge._