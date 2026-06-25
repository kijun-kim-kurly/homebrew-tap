cask "json-lens" do
  version "1.0.2"
  sha256 "b68d2202bfffd1909c1cadea3e6c8304953aeef8f9e423f0a348d416eab6fde3"

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
