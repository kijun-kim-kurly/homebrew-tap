# homebrew-tap

[JSON Lens](https://github.com/kijun-kim-kurly/json-lens) 설치용 Homebrew tap (사내 배포).

## 설치

```bash
brew tap kijun-kim-kurly/tap
brew install --cask --no-quarantine json-lens
```

> `--no-quarantine`: 서명/공증 없는 사내 빌드라, 이 옵션이 없으면 첫 실행 시 macOS Gatekeeper 경고가 뜹니다. (대신 "시스템 설정 → 개인정보 보호 및 보안 → 그래도 열기"로도 실행 가능)

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
