# 🧩 Semantic Versioning (SemVer)

Semantic Versioning helps communicate **what changed** between releases.  
It uses the format:

```
MAJOR.MINOR.PATCH
```

---

## 🔢 Version Meaning

| Part | Description | Example |
|------|--------------|----------|
| MAJOR | Incompatible API changes | 2.0.0 |
| MINOR | New feature, backwards compatible | 1.1.0 |
| PATCH | Bug fixes, backwards compatible | 1.0.1 |

---

## 🧪 Examples

### 🟢 Patch Increment
**Before:** `1.2.3`  
**Change:** Fixed small UI bug.  
➡️ **After:** `1.2.4`

### 🔵 Minor Increment
**Before:** `1.2.3`  
**Change:** Added optional parameter to a method.  
➡️ **After:** `1.3.0`

### 🔴 Major Increment
**Before:** `1.3.0`  
**Change:** Changed API signature (breaking change).  
➡️ **After:** `2.0.0`

---

## 🧰 Real-world Example (Flutter)

The Flutter `video_player` package:  
- `2.8.1` → Added subtitle support *(MINOR)*  
- `3.0.0` → Changed controller API *(MAJOR)*  

---

## 🧮 Quick Table

| Situation | Version Change | Example |
|------------|----------------|----------|
| Fix typo or small bug | PATCH | 1.0.1 |
| Add new feature | MINOR | 1.1.0 |
| Change or remove API | MAJOR | 2.0.0 |

---

## 🏷 Tagging Releases

```bash
git tag -a v1.0.0 -m "Initial release"
git push origin v1.0.0
```

---

## 🧾 Example Changelog

```markdown
## [1.1.0] - 2025-10-14
### Added
- Dark mode toggle
### Fixed
- Crash when logging out
```

---

## 📚 References
- [semver.org](https://semver.org)
- [keepachangelog.com](https://keepachangelog.com/en/1.1.0/)
- [Flutter pub.dev example](https://pub.dev/packages/video_player/changelog)
