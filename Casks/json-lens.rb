cask "json-lens" do
  version "1.0.2"
  sha256 "b68d2202bfffd1909c1cadea3e6c8304953aeef8f9e423f0a348d416eab6fde3"

  url "https://github.com/kijun-kim-kurly/homebrew-tap/releases/download/v#{version}/JSON-Lens-#{version}-aarch64.dmg"
  name "JSON Lens"
  desc "Web API 응답(JSON/XML/YAML/form)을 JSON으로 보는 데스크톱 뷰어"
  homepage "https://github.com/kijun-kim-kurly/json-lens"

  depends_on arch: :arm64

  app "JSON Lens.app"

  # 서명/공증 없는 사내 빌드 — 설치 직후 격리 속성 제거(매번 "손상" 경고 방지)
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/JSON Lens.app"]
  end

  caveats <<~EOS
    서명/공증되지 않은 사내 빌드입니다. 설치 시 격리 속성을 자동 제거하므로
    바로 실행되지만, 혹시 "손상" 경고가 보이면 아래를 실행하세요:

      xattr -dr com.apple.quarantine "/Applications/JSON Lens.app"
  EOS
end
