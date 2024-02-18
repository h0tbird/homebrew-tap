# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "../lib/custom_download_strategy"
class Swarmctl < Formula
  desc "A k8s service swarm"
  homepage "https://github.com/octoroot/k-swarm"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/octoroot/k-swarm/releases/download/v0.2.0/swarmctl_0.2.0_darwin_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "9179933aaea09c7caa9dcb884bbd700bdd8d3212c3a30795df92d569fc715944"

      def install
        bin.install "swarmctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/octoroot/k-swarm/releases/download/v0.2.0/swarmctl_0.2.0_darwin_amd64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "f0ac2ae5a06a9207eb3b3315daf137bcd8d689445a05fbc963b3de88cff8147d"

      def install
        bin.install "swarmctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/octoroot/k-swarm/releases/download/v0.2.0/swarmctl_0.2.0_linux_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "1f2d72c846a69af69f5b4c98166ed21646ba3c5cad6e9912db3c93bf07d68fe1"

      def install
        bin.install "swarmctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/octoroot/k-swarm/releases/download/v0.2.0/swarmctl_0.2.0_linux_amd64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "288bdc37f757bedb39f29dcad89afbe801c9f020dbb57083b3d649b67315e709"

      def install
        bin.install "swarmctl"
      end
    end
  end

  test do
    system "#{bin}/swarmctl -v"
  end
end
