cask "video-lens" do
  version "1.1.0"
  sha256 "df23eea11b4404661915d51c4f2c25b86e1006a89f4b28aa90bd28368415691a"

  url "https://github.com/kijun-kim-kurly/homebrew-tap/releases/download/video-lens-v#{version}/Video-Lens-#{version}-aarch64.dmg"
  name "Video Lens"
  desc "동영상 메타데이터 확인·로컬 재생·썸네일 추출 데스크톱 도구 (오프라인)"
  homepage "https://github.com/kijun-kim-kurly/video-lens"

  depends_on arch: :arm64

  app "Video Lens.app"

  # 서명/공증 없는 사내 빌드 — 설치 직후 격리 속성 제거(매번 "손상" 경고 방지)
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Video Lens.app"]
  end

  caveats <<~EOS
    서명/공증되지 않은 사내 빌드입니다. 설치 시 격리 속성을 자동 제거하므로
    바로 실행되지만, 혹시 "손상" 경고가 보이면 아래를 실행하세요:

      xattr -dr com.apple.quarantine "/Applications/Video Lens.app"
  EOS
end
