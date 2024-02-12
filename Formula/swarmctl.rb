# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "../lib/custom_download_strategy"
class Swarmctl < Formula
  desc "A k8s service swarm"
  homepage "https://github.com/octoroot/k-swarm"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/octoroot/k-swarm/releases/download/v0.1.0/swarmctl_0.1.0_darwin_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "74cfc9430efc0bbf9fbe6b03c911ba010aae504580abc3ded26a7dfc722d6365"

      def install
        bin.install "swarmctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/octoroot/k-swarm/releases/download/v0.1.0/swarmctl_0.1.0_darwin_amd64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "a1545ec9aab32b8dd93a6b715d379972ebc33516eceabc9d1f6d1821edd872b9"

      def install
        bin.install "swarmctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/octoroot/k-swarm/releases/download/v0.1.0/swarmctl_0.1.0_linux_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "7fb8ff37f2d0711e624af6480a728fba1e9fb6eea07ac9f6e470ca0e963b707d"

      def install
        bin.install "swarmctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/octoroot/k-swarm/releases/download/v0.1.0/swarmctl_0.1.0_linux_amd64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "83e84a0f7d4226d746fe92d1e4734e69e92ab51882457ef496f00867ad142165"

      def install
        bin.install "swarmctl"
      end
    end
  end

  test do
    system "#{bin}/swarmctl -v"
  end
end
