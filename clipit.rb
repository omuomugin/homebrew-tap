# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Clipit < Formula
  desc ""
  homepage ""
  version "0.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/omuomugin/clipit/releases/download/v0.0.2/clipit_Darwin_arm64.tar.gz"
      sha256 "f4d6d656216fef6306846554d00dc953736ab8aa3339716f93b011347dee1976"

      def install
        bin.install "clipit"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/omuomugin/clipit/releases/download/v0.0.2/clipit_Darwin_x86_64.tar.gz"
      sha256 "d9ae96fc6170a1b00219c2a08b07a66e1116720d24f830f217b5815d71426396"

      def install
        bin.install "clipit"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/omuomugin/clipit/releases/download/v0.0.2/clipit_Linux_x86_64.tar.gz"
      sha256 "bd6cf3234cfc6e02286a629e698b73a85322d690aa2d292c56d74f5d491c7ac0"

      def install
        bin.install "clipit"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/omuomugin/clipit/releases/download/v0.0.2/clipit_Linux_arm64.tar.gz"
      sha256 "6e43589002b647cd17fa48f7716d8e112aa25f1ad96b4f613090b03a468fef1c"

      def install
        bin.install "clipit"
      end
    end
  end
end
