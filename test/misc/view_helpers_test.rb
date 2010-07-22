require File.join(File.dirname(__FILE__), '../test_helper.rb')

class ViewHelpersTest < Test::Unit::TestCase
  include ActiveScaffold::Helpers::ViewHelpers
  include ActionView::Helpers::TagHelper
  include ActionView::Helpers::AssetTagHelper

  def test_active_scaffold_includes_should_html_safe
    assert(active_scaffold_includes.html_safe?)
  end if ''.respond_to? :html_safe
end
