RUBY_ENGINE == 'opal' ?
  (require 'notice-block/extension') :
  (require_relative 'notice-block/extension')

Extensions.register do
  block BoilerplateAdmonitionBlock
  block ReviewAdmonitionBlock
  block GuidanceAdmonitionBlock
  block InitialAdmonitionBlock
  block USBAdmonitionBlock
  block DiscussionAdmonitionBlock
  docinfo_processor BoilerplateAdmonitionBlockDocinfo
  docinfo_processor ReviewAdmonitionBlockDocinfo
  docinfo_processor GuidanceAdmonitionBlockDocinfo
  docinfo_processor InitialAdmonitionBlockDocinfo
  docinfo_processor USBAdmonitionBlockDocinfo
  docinfo_processor DiscussionAdmonitionBlockDocinfo
end