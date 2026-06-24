# homebrew-tap

[JSON Lens](https://github.com/kijun-kim-kurly/json-lens) 설치용 Homebrew tap (사내 배포).

## 설치

```bash
brew tap kijun-kim-kurly/tap
brew trust kijun-kim-kurly/tap        # Homebrew 6+ : 서드파티 tap의 cask 신뢰 (최초 1회)
brew install --cask json-lens
```

### 첫 실행 (Gatekeeper)
서명/공증 없는 사내 빌드라 첫 실행 시 "확인되지 않은 개발자" 경고가 뜹니다. 둘 중 하나:

- **시스템 설정 → 개인정보 보호 및 보안 → "그래도 열기"**, 또는
- 터미널에서 격리 속성 제거:
  ```bash
  xattr -dr com.apple.quarantine "/Applications/JSON Lens.app"
  ```

현재 **macOS Apple Silicon(arm64)** 전용입니다.

## 업데이트

```bash
brew update
brew upgrade --cask json-lens
```

## 제거

```bash
brew uninstall --cask json-lens
```
