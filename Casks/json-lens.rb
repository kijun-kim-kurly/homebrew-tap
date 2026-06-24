cask "json-lens" do
  version "1.0.1"
  sha256 "c9e26831e0d8e0344df2248c68571b96b39f274cc0cd456a0401ccd1a4dd7178"

  url "https://github.com/kijun-kim-kurly/homebrew-tap/releases/download/v#{version}/JSON-Lens-#{version}-aarch64.dmg"
  name "JSON Lens"
  desc "Web API 응답(JSON/XML/YAML/form)을 JSON으로 보는 데스크톱 뷰어"
  homepage "https://github.com/kijun-kim-kurly/json-lens"

  depends_on arch: :arm64

  app "JSON Lens.app"

  caveats <<~EOS
    서명/공증되지 않은 사내 빌드라, 첫 실행 시 macOS Gatekeeper 경고가 뜹니다.
    다음 중 하나로 실행하세요:

      1) 첫 실행 시: 시스템 설정 → 개인정보 보호 및 보안 → "그래도 열기"

      2) 또는 터미널에서 격리 속성 제거 후 실행:
           xattr -dr com.apple.quarantine "/Applications/JSON Lens.app"
  EOS
end
