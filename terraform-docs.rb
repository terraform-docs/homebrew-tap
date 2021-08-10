# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TerraformDocs < Formula
  desc "Generate documentation from Terraform modules in various output formats"
  homepage "https://github.com/terraform-docs/"
  version "0.15.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/terraform-docs/terraform-docs/releases/download/v0.15.0/terraform-docs-v0.15.0-darwin-amd64.tar.gz"
      sha256 "03f0b0bc090241b499e104eca0bb7c3ea8bf32d37ca63a660c4b4c8bf14551ee"
    end
    if Hardware::CPU.arm?
      url "https://github.com/terraform-docs/terraform-docs/releases/download/v0.15.0/terraform-docs-v0.15.0-darwin-arm64.tar.gz"
      sha256 "f41abf12ceff6b0c57879d0289cec250cad413b202a1b486a90bf40aba8f7201"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/terraform-docs/terraform-docs/releases/download/v0.15.0/terraform-docs-v0.15.0-linux-amd64.tar.gz"
      sha256 "e0b399d9dc2eb97853a7e12f1ae678e7160cae4c811646ce70169a8d611f6cf9"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/terraform-docs/terraform-docs/releases/download/v0.15.0/terraform-docs-v0.15.0-linux-arm.tar.gz"
      sha256 "f265d3fcffb465995de9907334a757a6fef88ba142464de64bfda127e4eae4b6"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/terraform-docs/terraform-docs/releases/download/v0.15.0/terraform-docs-v0.15.0-linux-arm64.tar.gz"
      sha256 "0f6df022e772101108d0eb906abc6979be98385d7f75576ef91544e602bb845e"
    end
  end

  def install
    bin.install "terraform-docs"
  end

  test do
    system "#{bin}/terraform-docs version"
  end
end
