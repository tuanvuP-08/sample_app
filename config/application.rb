require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module SampleApp
  # This cop checks for missing top-level documentation of
  # classes and modules. Classes with no body are exempt from the
  # check and so are namespace modules - modules that have nothing in
  # their bodies except classes, other modules, or constant definitions.
  #
  # The documentation requirement is annulled if the class or module has
  # a "#:nodoc:" comment next to it. Likewise, "#:nodoc: all" does the
  # same for all its children.
  class Application < Rails::Application
    config.load_defaults 5.2
  end
end
