# frozen_string_literal: true

require './spec/support/models/shared_examples'
require './spec/support/requests/shared_requests'
require 'rspec/retry'

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
    config.formatter = RSpec::Core::Formatters::DocumentationFormatter
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
  config.disable_monkey_patching!
  config.order = :random
  Kernel.srand config.seed

  config.verbose_retry = true
  config.display_try_failure_messages = true
  config.around :each, :js do |ex|
    ex.run_with_retry retry: 3
  end
end
