require 'asciidoctor/extensions'

include Asciidoctor

# An extension that introduces a custom admonition type, complete
# with a custom icon.
#
# Usage
#
#   [QUESTION]
#   ====
#   What's the main tool for selecting colors?
#   ====
#
# or
#
#   [QUESTION]
#   What's the main tool for selecting colors?
#
class BoilerplateAdmonitionBlock < Extensions::BlockProcessor
  use_dsl
  named :BOILERPLATE
  on_contexts :example, :paragraph

  def process parent, reader, attrs
    attrs['name'] = 'boilerplate'
    attrs['caption'] = 'Boilerplate'
    create_block parent, :admonition, reader.lines, attrs, content_model: :compound
  end
end

class ReviewAdmonitionBlock < Extensions::BlockProcessor
  use_dsl
  named :REVIEW
  on_contexts :example, :paragraph

  def process parent, reader, attrs
    attrs['name'] = 'review'
    attrs['caption'] = 'Review'
    create_block parent, :admonition, reader.lines, attrs, content_model: :compound
  end
end

class GuidanceAdmonitionBlock < Extensions::BlockProcessor
  use_dsl
  named :GUIDANCE
  on_contexts :example, :paragraph

  def process parent, reader, attrs
    attrs['name'] = 'guidance'
    attrs['caption'] = 'Guidance'
    create_block parent, :admonition, reader.lines, attrs, content_model: :compound
  end
end

class InitialAdmonitionBlock < Extensions::BlockProcessor
  use_dsl
  named :INITIAL
  on_contexts :example, :paragraph

  def process parent, reader, attrs
    attrs['name'] = 'initial'
    attrs['caption'] = 'Initial'
    create_block parent, :admonition, reader.lines, attrs, content_model: :compound
  end
end

class USBAdmonitionBlock < Extensions::BlockProcessor
  use_dsl
  named :USB
  on_contexts :example, :paragraph

  def process parent, reader, attrs
    attrs['name'] = 'USB'
    attrs['caption'] = 'USB'
    create_block parent, :admonition, reader.lines, attrs, content_model: :compound
  end
end

class DiscussionAdmonitionBlock < Extensions::BlockProcessor
  use_dsl
  named :DISCUSSION
  on_contexts :example, :paragraph

  def process parent, reader, attrs
    attrs['name'] = 'discussion'
    attrs['caption'] = 'Discussion'
    create_block parent, :admonition, reader.lines, attrs, content_model: :compound
  end
end

class BoilerplateAdmonitionBlockDocinfo < Extensions::DocinfoProcessor
  use_dsl

  def process doc
    '<style>
.admonitionblock td.icon .icon-boilerplate:before {content:"\f023";color:#3F903E;}
</style>'
  end
end

class ReviewAdmonitionBlockDocinfo < Extensions::DocinfoProcessor
  use_dsl

  def process doc
    '<style>
.admonitionblock td.icon .icon-review:before {content:"\f0ea";color:#FDB109;}
</style>'
  end
end

class GuidanceAdmonitionBlockDocinfo < Extensions::DocinfoProcessor
  use_dsl

  def process doc
    '<style>
.admonitionblock td.icon .icon-guidance:before {content:"\f02d";color:#0909FD;}
</style>'
  end
end

class InitialAdmonitionBlockDocinfo < Extensions::DocinfoProcessor
  use_dsl

  def process doc
    '<style>
.admonitionblock td.icon .icon-initial:before {content:"\f25a";color:#C50CCB;}
</style>'
  end
end

class USBAdmonitionBlockDocinfo < Extensions::DocinfoProcessor
  use_dsl

  def process doc
    '<style>
.admonitionblock td.icon .icon-USB:before {content:"\f2db";color:#CB0C33;}
</style>'
  end
end

class DiscussionAdmonitionBlockDocinfo < Extensions::DocinfoProcessor
  use_dsl

  def process doc
    '<style>
.admonitionblock td.icon .icon-discussion:before {content:"\f086";color:#F5F008;}
</style>'
  end
end