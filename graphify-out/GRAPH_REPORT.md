# Graph Report - DocTruyenApp  (2026-11-21)

## Corpus Check
- 63 files · ~32,289 words
- Verdict: corpus is large enough that graph structure adds value.
- Unclassified: 162 file(s) not represented in the graph (top: .smali 132, .zip 12, .xml 6)
- WARNING: 162 of 234 files seen (69%) have no supported extractor and are missing from this graph entirely. It may look complete while representing only part of the codebase.

## Summary
- 101 nodes · 46 edges · 56 communities (5 shown, 51 thin omitted)
- Extraction: 100% EXTRACTED · 0% INFERRED · 0% AMBIGUOUS
- Token cost: 0 input · 0 output

## Graph Freshness
- Built from commit: `d379383e`
- Run `git rev-parse HEAD` and compare to check if the graph is stale.
- Run `graphify update .` after code changes (no API cost).

## Community Hubs (Navigation)
- apktool.yml
- CHECKPOINT: DocTruyenApp
- Dá»± Ãn: Äá»c Truyá»‡n (DocTruyen App)
- sdkInfo
- 🌟 Điểm Mới & Cải Tiến Nổi Bật Trong Bản v1.2.1
- app/assets/extensions/README.md
- PLAN.md
- apptruyenchu/src/genre.js
- apptruyenchu/src/home.js
- metruyenchu/src/genre.js
- metruyenchu/src/home.js
- decompiled/assets/extensions/README.md

## God Nodes (most connected - your core abstractions)
1. `Dá»± Ãn: Äá»c Truyá»‡n (DocTruyen App)` - 4 edges
2. `🌟 Điểm Mới & Cải Tiến Nổi Bật Trong Bản v1.2.1` - 4 edges
3. `sdkInfo` - 3 edges
4. `versionInfo` - 3 edges
5. `resourcesInfo` - 3 edges
6. `CHECKPOINT: DocTruyenApp` - 3 edges
7. `DocTruyen App v1.2.1 - Khắc Phục Triệt Để Crash, Nút Thoát Menu Trực Quan & Giao Diện Hiện Đại` - 3 edges
8. `usesFramework` - 2 edges
9. `version` - 1 edges
10. `apkFileName` - 1 edges

## Surprising Connections (you probably didn't know these)
- None detected - all connections are within the same source files.

## Import Cycles
- None detected.

## Communities (56 total, 51 thin omitted)

### Community 0 - "apktool.yml"
Cohesion: 0.17
Nodes (11): apkFileName, doNotCompress, resourcesInfo, keepRawValues, packageId, usesFramework, ids, version (+3 more)

### Community 1 - "CHECKPOINT: DocTruyenApp"
Cohesion: 0.50
Nodes (3): CHECKPOINT: DocTruyenApp, Các Cải Tiến Đã Hoàn Thành Trong v1.2.1, Trạng Thái Dự Án (Cập nhật 21/11/2026)

### Community 2 - "Dá»± Ãn: Äá»c Truyá»‡n (DocTruyen App)"
Cohesion: 0.40
Nodes (4): 1. Má»¥c TiÃªu ChÃ­nh, 2. Cáº¥u TrÃºc ThÆ° Má»¥c Dá»± Ãn, 3. Lá»‹ch Sá»­ PhiÃªn Báº£n & Má»‘c PhÃ¡t Triá»ƒn, Dá»± Ãn: Äá»c Truyá»‡n (DocTruyen App)

### Community 3 - "sdkInfo"
Cohesion: 0.67
Nodes (3): sdkInfo, minSdkVersion, targetSdkVersion

### Community 4 - "🌟 Điểm Mới & Cải Tiến Nổi Bật Trong Bản v1.2.1"
Cohesion: 0.29
Nodes (6): 1. 🛡️ Khắc Phục Triệt Để Lỗi Crash Khi Mở App & Mở Web, 2. 🏠 Giải Quyết Vấn Đề Thoát Menu Khi Đang Đọc Truyện (Smart Exit System), 3. 🎨 Giao Diện Capsule Pills Hiện Đại (Không Còn Thô Cứng), DocTruyen App v1.2.1 - Khắc Phục Triệt Để Crash, Nút Thoát Menu Trực Quan & Giao Diện Hiện Đại, 📦 Tệp Cài Đặt (Release Asset), 🌟 Điểm Mới & Cải Tiến Nổi Bật Trong Bản v1.2.1

## Knowledge Gaps
- **51 thin communities (<3 nodes) omitted from report** — run `graphify query` to explore isolated nodes.

## Suggested Questions
_Questions this graph is uniquely positioned to answer:_

- **Why does `sdkInfo` connect `sdkInfo` to `apktool.yml`?**
  _High betweenness centrality (0.005) - this node is a cross-community bridge._