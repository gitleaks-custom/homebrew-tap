# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "../custom_download_strategy"
class Gitleaks < Formula
  desc "Gitlekas by UCMP"
  homepage "https://github.com/heechankim-gitleaks/gitleaks"
  version "8.18.0-lgu1.12"
  license "mit"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/heechankim-gitleaks/gitleaks/releases/download/v8.18.0-lgu1.12/gitleaks_Darwin_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "12126e2c8d59aa446a2488ad112104f165eee4e45a473c4eba87e5885547e17c"

      def install
        bin.install "gitleaks"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/heechankim-gitleaks/gitleaks/releases/download/v8.18.0-lgu1.12/gitleaks_Darwin_x86_64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "267368a8bff347a67d56db18f82826acfcc325e6dbaeb74345ee06bc1879e029"

      def install
        bin.install "gitleaks"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/heechankim-gitleaks/gitleaks/releases/download/v8.18.0-lgu1.12/gitleaks_Linux_armv6.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "2e6ab3d21346673aae9a44f1724689c3292b1587438c087aa5f907a350fe7b3b"

      def install
        bin.install "gitleaks"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/heechankim-gitleaks/gitleaks/releases/download/v8.18.0-lgu1.12/gitleaks_Linux_x86_64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "0a93de9a05c340623b87d65bf0676bb7c00cf54a14e1f478c4de705aec355be0"

      def install
        bin.install "gitleaks"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/heechankim-gitleaks/gitleaks/releases/download/v8.18.0-lgu1.12/gitleaks_Linux_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "28bac45c4fcd22e2cf673d4ce752dfe4d01beb72423e6e213ecdcf20c3dc0900"

      def install
        bin.install "gitleaks"
      end
    end
  end
end
