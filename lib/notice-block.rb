RUBY_ENGINE == 'opal' ?
  (require 'notice-block/extension') :
  (require_relative 'notice-block/extension')

Extensions.register do
  block BoilerplateAdmonitionBlock
  block ReviewAdmonitionBlock
  block GuidanceAdmonitionBlock
  block Initial1AdmonitionBlock
  block Initial2AdmonitionBlock
  block Initial3AdmonitionBlock
  block Initial4AdmonitionBlock
  block Initial5AdmonitionBlock
  block USB1AdmonitionBlock
  block USB2AdmonitionBlock
  block DiscussionAdmonitionBlock
  docinfo_processor BoilerplateAdmonitionBlockDocinfo
  docinfo_processor ReviewAdmonitionBlockDocinfo
  docinfo_processor GuidanceAdmonitionBlockDocinfo
  docinfo_processor Initial1AdmonitionBlockDocinfo
  docinfo_processor Initial2AdmonitionBlockDocinfo
  docinfo_processor Initial3AdmonitionBlockDocinfo
  docinfo_processor Initial4AdmonitionBlockDocinfo
  docinfo_processor Initial5AdmonitionBlockDocinfo
  docinfo_processor USB1AdmonitionBlockDocinfo
  docinfo_processor USB2AdmonitionBlockDocinfo
  docinfo_processor DiscussionAdmonitionBlockDocinfo
end