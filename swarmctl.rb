# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Swarmctl < Formula
  desc "A k8s service swarm"
  homepage "https://github.com/h0tbird/k-swarm"
  version "0.3.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/h0tbird/k-swarm/releases/download/v0.3.3/swarmctl_0.3.3_darwin_amd64.tar.gz"
      sha256 "578b17a25a9c1b4ed42fba07113dd89edda02a09a30798f45280094f75f22484"

      def install
        bin.install "swarmctl"
      end
    end
    on_arm do
      url "https://github.com/h0tbird/k-swarm/releases/download/v0.3.3/swarmctl_0.3.3_darwin_arm64.tar.gz"
      sha256 "278ce48e45df0f6155c010c9a7601cc217685c5401b5091e6ab5677dccb44ebb"

      def install
        bin.install "swarmctl"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/h0tbird/k-swarm/releases/download/v0.3.3/swarmctl_0.3.3_linux_amd64.tar.gz"
        sha256 "275daded198b1308d4a4586977115bf503157383dd046ffec2c79cc4edd756c6"

        def install
          bin.install "swarmctl"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/h0tbird/k-swarm/releases/download/v0.3.3/swarmctl_0.3.3_linux_arm64.tar.gz"
        sha256 "96918bee9d5720ff19343b8c46a6213bc63298dfa66b9c87cfffa46d48cd11b4"

        def install
          bin.install "swarmctl"
        end
      end
    end
  end

  test do
    system "#{bin}/swarmctl -v"
  end
end
