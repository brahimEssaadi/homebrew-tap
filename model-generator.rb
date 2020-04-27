# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class ModelGenerator < Formula
  desc "Popina model to struct"
  homepage "https://github.com/popina/model-generator"
  url "https://github.com/popina/model-generator.git", :branch => "feature/AddVerboseFlagAndVersion", :revision => "433d766f999add42d6859413f6447dda87422680"
  version "0.0.1"
  # sha256 ""
  head "https://github.com/popina/model-generator.git" , :branch => "feature/AddVerboseFlagAndVersion"
  depends_on :xcode => ["11.2.1", :build]
  def install
    system "make", "install", "prefix=#{prefix}", "VERSION=#{version}"

  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test modgen`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
