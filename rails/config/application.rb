module Snippets
  class Application < Rails::Application

    # remove default 255 char limit for strings
    initializer "postgresql.no_default_string_limit" do
      ActiveSupport.on_load(:active_record) do
        ActiveRecord::ConnectionAdapters::PostgreSQLAdapter::NATIVE_DATABASE_TYPES[:string].delete(:limit)
      end
    end

  end
end
