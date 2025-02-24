# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Llma < Formula
  desc "LLMariner transforms your GPU clusters into a powerhouse for generative AI workloads."
  homepage "https://llmariner.ai"
  version "1.20.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/llmariner/llmariner/releases/download/v1.20.0/llmariner_Darwin_x86_64.tar.gz"
      sha256 "ae2cef9c9eb53bca443237513c92d8672bafe1972c7ad5a4940d3dffeb9ad776"

      def install
        bin.install "llma"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/llmariner/llmariner/releases/download/v1.20.0/llmariner_Darwin_arm64.tar.gz"
      sha256 "ad36d0d0b61184f948e5ce583b84ad61da4f43daa85cf4c31a4a4ba9e08bd06a"

      def install
        bin.install "llma"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/llmariner/llmariner/releases/download/v1.20.0/llmariner_Linux_x86_64.tar.gz"
        sha256 "ea66652f2c5bd0fc6588f848e208a148815ace975bfe71637313a60b7afbcf92"

        def install
          bin.install "llma"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/llmariner/llmariner/releases/download/v1.20.0/llmariner_Linux_arm64.tar.gz"
        sha256 "295dbbd897b21ab94c1b7763d514155094076dccd9d74c50b40c6cc07bc564f8"

        def install
          bin.install "llma"
        end
      end
    end
  end
end
