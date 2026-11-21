# Graph Report - DocTruyenApp  (2026-11-21)

## Corpus Check
- 62 files · ~32,997 words
- Verdict: corpus is large enough that graph structure adds value.
- Unclassified: 168 file(s) not represented in the graph (top: .smali 129, .zip 12, .xml 11)
- WARNING: 168 of 239 files seen (70%) have no supported extractor and are missing from this graph entirely. It may look complete while representing only part of the codebase.

## Summary
- 95 nodes · 41 edges · 56 communities (5 shown, 51 thin omitted)
- Extraction: 100% EXTRACTED · 0% INFERRED · 0% AMBIGUOUS
- Token cost: 0 input · 0 output

## Community Hubs (Navigation)
- apktool.yml
- CHECKPOINT TIẾN ĐỘ DỰ ÁN: DocTruyenApp (com.doctruyen)
- Dự Án: Đọc Truyện (DocTruyen App)
- sdkInfo
- versionInfo
- app/assets/extensions/README.md
- PLAN.md
- apptruyenchu/src/genre.js
- apptruyenchu/src/home.js
- metruyenchu/src/genre.js
- metruyenchu/src/home.js
- decompiled/assets/extensions/README.md

## God Nodes (most connected - your core abstractions)
1. `CHECKPOINT TIẾN ĐỘ DỰ ÁN: DocTruyenApp (com.doctruyen)` - 4 edges
2. `Dự Án: Đọc Truyện (DocTruyen App)` - 4 edges
3. `sdkInfo` - 3 edges
4. `versionInfo` - 3 edges
5. `resourcesInfo` - 3 edges
6. `usesFramework` - 2 edges
7. `version` - 1 edges
8. `apkFileName` - 1 edges
9. `ids` - 1 edges
10. `minSdkVersion` - 1 edges

## Surprising Connections (you probably didn't know these)
- None detected - all connections are within the same source files.

## Import Cycles
- None detected.

## Communities (56 total, 51 thin omitted)

### Community 0 - "apktool.yml"
Cohesion: 0.22
Nodes (8): apkFileName, doNotCompress, resourcesInfo, keepRawValues, packageId, usesFramework, ids, version

### Community 1 - "CHECKPOINT TIẾN ĐỘ DỰ ÁN: DocTruyenApp (com.doctruyen)"
Cohesion: 0.40
Nodes (4): 1. Công Việc Đã Hoàn Thành Trong Lượt Này, 2. Kế Hoạch Thực Thi Cho Phiên Tiếp Theo, 3. Danh Sách Tệp & Đường Dẫn Trọng Tâm, CHECKPOINT TIẾN ĐỘ DỰ ÁN: DocTruyenApp (com.doctruyen)

### Community 2 - "Dự Án: Đọc Truyện (DocTruyen App)"
Cohesion: 0.40
Nodes (4): 1. Mục Tiêu Chính, 2. Cấu Trúc Thư Mục Dự Án, 3. Lộ Trình Triển Khai (Milestones), Dự Án: Đọc Truyện (DocTruyen App)

### Community 3 - "sdkInfo"
Cohesion: 0.67
Nodes (3): sdkInfo, minSdkVersion, targetSdkVersion

### Community 4 - "versionInfo"
Cohesion: 0.67
Nodes (3): versionInfo, versionCode, versionName

## Knowledge Gaps
- **51 thin communities (<3 nodes) omitted from report** — run `graphify query` to explore isolated nodes.

## Suggested Questions
_Questions this graph is uniquely positioned to answer:_

- **Why does `sdkInfo` connect `sdkInfo` to `apktool.yml`?**
  _High betweenness centrality (0.006) - this node is a cross-community bridge._
- **Why does `versionInfo` connect `versionInfo` to `apktool.yml`?**
  _High betweenness centrality (0.006) - this node is a cross-community bridge._