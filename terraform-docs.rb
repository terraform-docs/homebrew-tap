# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TerraformDocs < Formula
  desc "Generate documentation from Terraform modules in various output formats"
  homepage "https://github.com/terraform-docs/"
  version "0.14.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/terraform-docs/terraform-docs/releases/download/v0.14.0/terraform-docs-v0.14.0-darwin-amd64.tar.gz"
      sha256 "34590df4063f445906658e9fe5ce1181abac4a986afa84c25ec864c080b582c5"
    end
    if Hardware::CPU.arm?
      url "https://github.com/terraform-docs/terraform-docs/releases/download/v0.14.0/terraform-docs-v0.14.0-darwin-arm64.tar.gz"
      sha256 "e00191d2a273c5927ea5eb7677bed328c71d14c97dc0327de2ce12cafcdfdbca"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/terraform-docs/terraform-docs/releases/download/v0.14.0/terraform-docs-v0.14.0-linux-amd64.tar.gz"
      sha256 "c23b677937561b70d917ac33bbd46e29812177060cde7d37d4c253469a6cf84b"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/terraform-docs/terraform-docs/releases/download/v0.14.0/terraform-docs-v0.14.0-linux-arm.tar.gz"
      sha256 "c11347b9e86ca9983c5c11e7ca0df48ede907b199762717dbe4d9078fb63e915"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/terraform-docs/terraform-docs/releases/download/v0.14.0/terraform-docs-v0.14.0-linux-arm64.tar.gz"
      sha256 "9a8b48372cab5e925fad7f37c0ddd50c3f8d9814208026bcddd103e49d91730d"
    end
  end

  def install
    bin.install "terraform-docs"
  end

  test do
    system "#{bin}/terraform-docs version"
  end
end
