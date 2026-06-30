cask "video-lens" do
  version "1.1.0"
  sha256 "df23eea11b4404661915d51c4f2c25b86e1006a89f4b28aa90bd28368415691a"

  url "https://github.com/kijun-kim-kurly/homebrew-tap/releases/download/video-lens-v#{version}/Video-Lens-#{version}-aarch64.dmg"
  name "Video Lens"
  desc "동영상 메타데이터 확인·로컬 재생·썸네일 추출 데스크톱 도구 (오프라인)"
  homepage "https://github.com/kijun-kim-kurly/video-lens"

  depends_on arch: :arm64

  app "Video Lens.app"

  caveats <<~EOS
    서명/공증되지 않은 사내 빌드라, 첫 실행 시 macOS Gatekeeper 경고가 뜹니다.
    다음 중 하나로 실행하세요:

      1) 첫 실행 시: 시스템 설정 → 개인정보 보호 및 보안 → "그래도 열기"

      2) 또는 터미널에서 격리 속성 제거:
           xattr -dr com.apple.quarantine "/Applications/Video Lens.app"
  EOS
end
