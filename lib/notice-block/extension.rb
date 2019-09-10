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

class Initial1AdmonitionBlock < Extensions::BlockProcessor
  use_dsl
  named :INITIAL1
  on_contexts :example, :paragraph

  def process parent, reader, attrs
    attrs['name'] = 'initial1'
    attrs['caption'] = 'Initial1'
    create_block parent, :admonition, reader.lines, attrs, content_model: :compound
  end
end

class Initial2AdmonitionBlock < Extensions::BlockProcessor
  use_dsl
  named :INITIAL2
  on_contexts :example, :paragraph

  def process parent, reader, attrs
    attrs['name'] = 'initial2'
    attrs['caption'] = 'Initial2'
    create_block parent, :admonition, reader.lines, attrs, content_model: :compound
  end
end

class Initial3AdmonitionBlock < Extensions::BlockProcessor
  use_dsl
  named :INITIAL3
  on_contexts :example, :paragraph

  def process parent, reader, attrs
    attrs['name'] = 'initial3'
    attrs['caption'] = 'Initial3'
    create_block parent, :admonition, reader.lines, attrs, content_model: :compound
  end
end

class Initial4AdmonitionBlock < Extensions::BlockProcessor
  use_dsl
  named :INITIAL4
  on_contexts :example, :paragraph

  def process parent, reader, attrs
    attrs['name'] = 'initial4'
    attrs['caption'] = 'Initial4'
    create_block parent, :admonition, reader.lines, attrs, content_model: :compound
  end
end

class Initial5AdmonitionBlock < Extensions::BlockProcessor
  use_dsl
  named :INITIAL5
  on_contexts :example, :paragraph

  def process parent, reader, attrs
    attrs['name'] = 'initial5'
    attrs['caption'] = 'Initial5'
    create_block parent, :admonition, reader.lines, attrs, content_model: :compound
  end
end

class USB1AdmonitionBlock < Extensions::BlockProcessor
  use_dsl
  named :USB1
  on_contexts :example, :paragraph

  def process parent, reader, attrs
    attrs['name'] = 'USB1'
    attrs['caption'] = 'USB1'
    create_block parent, :admonition, reader.lines, attrs, content_model: :compound
  end
end

class USB2AdmonitionBlock < Extensions::BlockProcessor
  use_dsl
  named :USB2
  on_contexts :example, :paragraph

  def process parent, reader, attrs
    attrs['name'] = 'USB2'
    attrs['caption'] = 'USB2'
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

class Initial1AdmonitionBlockDocinfo < Extensions::DocinfoProcessor
  use_dsl

  def process doc
    '<style>
.admonitionblock td.icon .icon-initial1:before {content:"\f251";color:#C50CCB;}
</style>'
  end
end

class Initial2AdmonitionBlockDocinfo < Extensions::DocinfoProcessor
  use_dsl

  def process doc
    '<style>
.admonitionblock td.icon .icon-initial2:before {content:"\f25a";color:#C50CCB;}
</style>'
  end
end

class Initial3AdmonitionBlockDocinfo < Extensions::DocinfoProcessor
  use_dsl

  def process doc
    '<style>
.admonitionblock td.icon .icon-initial3:before {content:"\f178";color:#C50CCB;}
</style>'
  end
end

class Initial4AdmonitionBlockDocinfo < Extensions::DocinfoProcessor
  use_dsl

  def process doc
    '<style>
.admonitionblock td.icon .icon-initial4:before {content:"\f061";color:#C50CCB;}
</style>'
  end
end

class Initial5AdmonitionBlockDocinfo < Extensions::DocinfoProcessor
  use_dsl

  def process doc
    '<style>
.admonitionblock td.icon .icon-initial5:before {content:"\f0a1";color:#C50CCB;}
</style>'
  end
end

class USB1AdmonitionBlockDocinfo < Extensions::DocinfoProcessor
  use_dsl

  def process doc
    '<style>
.admonitionblock td.icon .icon-USB1:before {content:"\f287";color:#CB0C33;}
</style>'
  end
end

class USB2AdmonitionBlockDocinfo < Extensions::DocinfoProcessor
  use_dsl

  def process doc
    '<style>
.admonitionblock td.icon .icon-USB2:before {content:"\f2db";color:#CB0C33;}
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