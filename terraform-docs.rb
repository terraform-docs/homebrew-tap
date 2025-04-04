# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TerraformDocs < Formula
  desc "Generate documentation from Terraform modules in various output formats"
  homepage "https://github.com/terraform-docs/"
  version "0.20.0"

  on_macos do
    on_intel do
      url "https://github.com/terraform-docs/terraform-docs/releases/download/v0.20.0/terraform-docs-v0.20.0-darwin-amd64.tar.gz"
      sha256 "8c7ea42429d7f5e3dae3de32f3873fde0419332932549147f40916d3f613b8f7"

      def install
        bin.install "terraform-docs"
      end
    end
    on_arm do
      url "https://github.com/terraform-docs/terraform-docs/releases/download/v0.20.0/terraform-docs-v0.20.0-darwin-arm64.tar.gz"
      sha256 "8723013cfe0369c389f4e6cb6e3cfca1aebaefd67871e349e7547f2201564dad"

      def install
        bin.install "terraform-docs"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/terraform-docs/terraform-docs/releases/download/v0.20.0/terraform-docs-v0.20.0-linux-amd64.tar.gz"
        sha256 "34ae01772412bb11474e6718ea62113e38ff5964ee570a98c69fafe3a6dff286"

        def install
          bin.install "terraform-docs"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/terraform-docs/terraform-docs/releases/download/v0.20.0/terraform-docs-v0.20.0-linux-arm.tar.gz"
        sha256 "e7312d59357a83cb245ef73062189e0d4f89b7738cd62c51802592fbfae301c2"

        def install
          bin.install "terraform-docs"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/terraform-docs/terraform-docs/releases/download/v0.20.0/terraform-docs-v0.20.0-linux-arm64.tar.gz"
        sha256 "371b4ed983781d1efdd8f7de06264baac41b1d80927f7fd718c405a303d863a0"

        def install
          bin.install "terraform-docs"
        end
      end
    end
  end

  test do
    system "#{bin}/terraform-docs version"
  end
end
