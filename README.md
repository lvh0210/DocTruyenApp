# Dá»± Ãn: Äá»c Truyá»‡n (DocTruyen App)
**Package Name:** `com.doctruyen`  
**Ná»n táº£ng:** Android Native + Web Reader Engine  
**Vá»‹ trÃ­:** `D:\VibeCode\DocTruyenApp` (Android: `/storage/emulated/0/VibeCode/DocTruyenApp`)

---

## 1. Má»¥c TiÃªu ChÃ­nh
1. **Kháº¯c phá»¥c triá»‡t Ä‘á»ƒ lá»—i EPUB 3.0:** Há»— trá»£ Ä‘áº§y Ä‘á»§ chuáº©n EPUB 2 (`toc.ncx`) vÃ  EPUB 3 (`nav.xhtml`), Ã¡p dá»¥ng cÆ¡ cháº¿ *Lazy Indexing Stream* giÃºp náº¡p tá»©c thÃ¬ cÃ¡c bá»™ truyá»‡n khá»•ng lá»“ (nhÆ° *Ta CÃ³ Má»™t ThÃ¢n Bá»‹ Äá»™ng Ká»¹* vá»›i hÆ¡n 2.054 chÆ°Æ¡ng, 16MB) trong **248 ms** mÃ  khÃ´ng gÃ¢y ngháº½n RAM / ANR.
2. **TÃ­ch há»£p sáºµn cÃ¡c nguá»“n truyá»‡n online phá»• biáº¿n:** TÆ°Æ¡ng thÃ­ch há»‡ thá»‘ng extension JavaScript, tÃ­ch há»£p sáºµn 6 nguá»“n: Truyá»‡n Full, Truyá»‡n CV, MÃª Truyá»‡n Chá»¯, TÃ ng ThÆ° Viá»‡n, Truyá»‡n YY, App Truyá»‡n Chá»¯.
3. **Cháº¿ Ä‘á»™ Ä‘á»c URL trá»±c tiáº¿p (Direct Web Reader Mode):** DÃ¡n link trang web truyá»‡n báº¥t ká»³ -> tá»± Ä‘á»™ng bÃ³c tÃ¡ch vÄƒn báº£n sáº¡ch (loáº¡i bá» quáº£ng cÃ¡o/menu), tá»± Ä‘á»™ng nháº­n diá»‡n liÃªn káº¿t "ChÆ°Æ¡ng sau" vÃ  náº¡p liÃªn tá»¥c.
4. **TrÃ¬nh phÃ¡t Audio TTS cháº¡y ngáº§m chuyÃªn nghiá»‡p:** Sá»­ dá»¥ng Android `MediaSession` / `WakeLock`, hiá»ƒn thá»‹ thanh Ä‘iá»u khiá»ƒn trÃªn mÃ n hÃ¬nh khÃ³a vÃ  há»— trá»£ nÃºt báº¥m tai nghe Bluetooth, phÃ¡t liÃªn tá»¥c khi táº¯t mÃ n hÃ¬nh, tÃ¹y chá»‰nh tá»‘c Ä‘á»™ Ä‘á»c tá»« 0.5x Ä‘áº¿n 3.0x.

---

## 2. Cáº¥u TrÃºc ThÆ° Má»¥c Dá»± Ãn
```text
/storage/emulated/0/VibeCode/DocTruyenApp/
â”œâ”€â”€ README.md                      # TÃ i liá»‡u tá»•ng quan dá»± Ã¡n
â”œâ”€â”€ CHECKPOINT.md                  # LÆ°u váº¿t tiáº¿n Ä‘á»™ ká»¹ thuáº­t
â”œâ”€â”€ build.sh                       # Script biÃªn dá»‹ch tá»± Ä‘á»™ng ra APK trÃªn Android (aapt + d8 + apksigner)
â”œâ”€â”€ app/
â”‚   â”œâ”€â”€ AndroidManifest.xml        # Khai bÃ¡o quyá»n, Service, Activity
â”‚   â”œâ”€â”€ res/                       # TÃ i nguyÃªn giao diá»‡n (Layout, Drawable, Values)
â”‚   â”œâ”€â”€ assets/                    # Assets web reader, fonts, style, plugins built-in
â”‚   â”‚   â”œâ”€â”€ reader/reader.html     # HTML5/CSS/JS reader engine (Readability, theme)
â”‚   â”‚   â””â”€â”€ extensions/            # 6 nguá»“n truyá»‡n online tÃ­ch há»£p sáºµn (JSON/JS)
â”‚   â””â”€â”€ src/com/doctruyen/
â”‚       â”œâ”€â”€ MainActivity.java      # MÃ n hÃ¬nh chÃ­nh (ThÆ° viá»‡n, Nguá»“n, Nháº­p Link)
â”‚       â”œâ”€â”€ reader/
â”‚       â”‚   â”œâ”€â”€ ReaderActivity.java# MÃ n hÃ¬nh Ä‘á»c truyá»‡n WebView Native Bridge
â”‚       â”‚   â”œâ”€â”€ epub/              # Bá»™ giáº£i mÃ£ EPUB 2 & EPUB 3 Lazy Stream
â”‚       â”‚   â””â”€â”€ web/               # Engine bÃ³c tÃ¡ch URL web truyá»‡n
â”‚       â”œâ”€â”€ tts/
â”‚       â”‚   â””â”€â”€ TtsPlaybackService.java # Service cháº¡y ngáº§m phÃ¡t Ã¢m thanh TTS
â”‚       â”œâ”€â”€ extension/
â”‚       â”‚   â””â”€â”€ ExtensionEngine.java    # Quáº£n lÃ½ nguá»“n truyá»‡n online
â”‚       â””â”€â”€ data/
â”‚           â””â”€â”€ AppDatabase.java   # LÆ°u trá»¯ SQLite tiáº¿n Ä‘á»™ Ä‘á»c, bookmark
â””â”€â”€ bin/                           # Chá»©a APK thÃ nh pháº©m com.doctruyen.apk
```

---

## 3. Lá»‹ch Sá»­ PhiÃªn Báº£n & Má»‘c PhÃ¡t Triá»ƒn

| PhiÃªn Báº£n | Äiá»ƒm Nháº¥n Cá»‘t LÃµi | Tráº¡ng ThÃ¡i |
|---|---|---|
| **v1.0 â€“ v1.1.0** | LÃµi giáº£i mÃ£ EPUB 2/3 Lazy Stream siÃªu tá»‘c, TXT reader, bÃ³c tÃ¡ch web trá»±c tiáº¿p, dá»‹ch vá»¥ phÃ¡t TTS ná»n chuáº©n MediaSession | HoÃ n thÃ nh |
| **v1.1.2 â€“ v1.1.5** | QuÃ©t Ä‘á»‡ quy thÆ° má»¥c `Download/`, cá»­ chá»‰ vuá»‘t chuyá»ƒn chÆ°Æ¡ng, Ä‘á»“ng bá»™ vá»‹ trÃ­ Ä‘á»c SQLite vÃ  quáº£n lÃ½ áº©n/xÃ³a truyá»‡n triá»‡t Ä‘á»ƒ | HoÃ n thÃ nh |
| **v1.1.8** | Tá»‘i Æ°u hÃ³a UI/UX toÃ n diá»‡n: OLED Pure Black `#000000`, thanh tiáº¿n Ä‘á»™ Ä‘á»c má»ng, bá»™ cháº·n quáº£ng cÃ¡o nÃ¢ng cao, tÄƒng tá»‘c pháº§n cá»©ng WebView | HoÃ n thÃ nh |
| **v1.1.9** | NÃºt `ðŸ  Menu` & phÃ­m Back thoÃ¡t tháº³ng vá» Menu; báº£ng mÃ u Deep Obsidian sang trá»ng; keystore kÃ½ sá»‘ cá»‘ Ä‘á»‹nh | HoÃ n thÃ nh |
| **v1.2.1** *(Hiá»‡n táº¡i)* | TÃ¡i cáº¥u trÃºc giao diá»‡n chuáº©n Native: Sticky Top Navigation, triá»‡t tiÃªu hoÃ n toÃ n Layout Shift, cá»¥m nÃºt 50:50 cÃ¢n Ä‘á»‘i, Toolbar web bo trÃ²n viÃªn thuá»‘c chuáº©n `dp` | ÄÃ£ phÃ¡t hÃ nh |
| **v1.3+** *(Äá» xuáº¥t)* | Äá»“ng bá»™ bookmark/tiáº¿n Ä‘á»™ Ä‘á»c Ä‘Ã¡m mÃ¢y (WebDAV / Drive), náº¡p truyá»‡n offline hÃ ng loáº¡t | Lá»™ trÃ¬nh tá»›i |

