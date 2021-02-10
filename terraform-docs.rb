# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TerraformDocs < Formula
  desc "Generate documentation from Terraform modules in various output formats"
  homepage "https://github.com/terraform-docs/"
  version "0.11.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/terraform-docs/terraform-docs/releases/download/v0.11.0/terraform-docs-v0.11.0-darwin-amd64.tar.gz"
    sha256 "b8c43c3fdc2bc56e0047a99e629bcb719a08c6a41dbdfe2e7690a749852ab43b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/terraform-docs/terraform-docs/releases/download/v0.11.0/terraform-docs-v0.11.0-linux-amd64.tar.gz"
    sha256 "6b4dd0857675f1c6cf99a84f35d3524d7c2e871d0312cea8a611ef9a2597ae15"
  end

  def install
    bin.install "terraform-docs"
  end

  test do
    system "#{bin}/terraform-docs version"
  end
end
