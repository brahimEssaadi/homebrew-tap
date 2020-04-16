# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class ModelGenerator < Formula
  desc "Popina model to struct"
  homepage "https://github.com/popina/model-generator"
  url "https://github.com/popina/model-generator.git", :branch => "feature/DataModelPathAsParameter", :revision => "433d766f999add42d6859413f6447dda87422680"
  version "1.0.0"
  # sha256 ""
  head "https://github.com/popina/model-generator.git" , :branch => "feature/DataModelPathAsParameter"
  depends_on :xcode => ["11.2.1", :build]
  def install
    system "make", "install", "prefix=#{prefix}"
    # File.symlink("#{prefix}/model-generator", "/usr/local/sbin/model-generator")
    system "echo","\'export PATH=\"#{prefix}:$PATH\"\'",">> ~/.bash_profile"
    print("If model-generator command not found please execute the command below to export path")

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
