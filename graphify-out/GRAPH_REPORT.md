# Graph Report - DocTruyenApp  (2026-11-21)

## Corpus Check
- 63 files · ~32,564 words
- Verdict: corpus is large enough that graph structure adds value.
- Unclassified: 158 file(s) not represented in the graph (top: .smali 130, .zip 12, .xml 6)
- WARNING: 158 of 230 files seen (69%) have no supported extractor and are missing from this graph entirely. It may look complete while representing only part of the codebase.

## Summary
- 104 nodes · 49 edges · 56 communities (5 shown, 51 thin omitted)
- Extraction: 100% EXTRACTED · 0% INFERRED · 0% AMBIGUOUS
- Token cost: 0 input · 0 output

## Graph Freshness
- Built from commit: `51aa2b19`
- Run `git rev-parse HEAD` and compare to check if the graph is stale.
- Run `graphify update .` after code changes (no API cost).

## Community Hubs (Navigation)
- apktool.yml
- CHECKPOINT TIẾN ĐỘ DỰ ÁN: DocTruyenApp (com.doctruyen)
- Dự Án: Đọc Truyện (DocTruyen App)
- sdkInfo
- 🌟 Điểm Mới & Cải Tiến Nổi Bật Trong Bản v1.2.0
- app/assets/extensions/README.md
- PLAN.md
- apptruyenchu/src/genre.js
- apptruyenchu/src/home.js
- metruyenchu/src/genre.js
- metruyenchu/src/home.js
- decompiled/assets/extensions/README.md

## God Nodes (most connected - your core abstractions)
1. `🌟 Điểm Mới & Cải Tiến Nổi Bật Trong Bản v1.2.0` - 6 edges
2. `Dự Án: Đọc Truyện (DocTruyen App)` - 4 edges
3. `DocTruyen App v1.2.0 - Tái Cấu Trúc Giao Diện Chuẩn Native & Sticky Navigation` - 4 edges
4. `sdkInfo` - 3 edges
5. `versionInfo` - 3 edges
6. `resourcesInfo` - 3 edges
7. `CHECKPOINT TIẾN ĐỘ DỰ ÁN: DocTruyenApp (com.doctruyen)` - 3 edges
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

### Community 1 - "CHECKPOINT TIẾN ĐỘ DỰ ÁN: DocTruyenApp (com.doctruyen)"
Cohesion: 0.50
Nodes (3): 1. Công Việc Đã Hoàn Thành (Completed Tasks), 2. Thông Tin Bản Phát Hành & Tài Nguyên, CHECKPOINT TIẾN ĐỘ DỰ ÁN: DocTruyenApp (com.doctruyen)

### Community 2 - "Dự Án: Đọc Truyện (DocTruyen App)"
Cohesion: 0.40
Nodes (4): 1. Mục Tiêu Chính, 2. Cấu Trúc Thư Mục Dự Án, 3. Lịch Sử Phiên Bản & Mốc Phát Triển, Dự Án: Đọc Truyện (DocTruyen App)

### Community 3 - "sdkInfo"
Cohesion: 0.67
Nodes (3): sdkInfo, minSdkVersion, targetSdkVersion

### Community 4 - "🌟 Điểm Mới & Cải Tiến Nổi Bật Trong Bản v1.2.0"
Cohesion: 0.20
Nodes (9): 1. 📌 Thanh Điều Hướng Cố Định (Sticky Top Navigation), 2. ⚡ Triệt Tiêu Hoàn Toàn Hiện Tượng Nhảy Giật (Zero Layout Shift), 3. ⚖️ Cụm Nút Thao Tác Cân Đối 50:50 (Balanced Action Cards), 4. 🌐 Tái Thiết Kế Tab Khám Phá Web (Modern Web Hub), 5. 🎨 Chuẩn Hóa Toolbar Trình Duyệt Web (`WebBrowseActivity`), DocTruyen App v1.2.0 - Tái Cấu Trúc Giao Diện Chuẩn Native & Sticky Navigation, 📲 Hướng Dẫn Cài Đặt, 📦 Tệp Cài Đặt (Release Asset) (+1 more)

## Knowledge Gaps
- **51 thin communities (<3 nodes) omitted from report** — run `graphify query` to explore isolated nodes.

## Suggested Questions
_Questions this graph is uniquely positioned to answer:_

- **Why does `sdkInfo` connect `sdkInfo` to `apktool.yml`?**
  _High betweenness centrality (0.005) - this node is a cross-community bridge._