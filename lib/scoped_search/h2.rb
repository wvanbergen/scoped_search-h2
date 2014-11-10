require "scoped_search"
require "scoped_search/h2/version"

module ScopedSearch
  # This module adds an H2 adapter to improve the search results on H2 databases.
  # Simply make sure it is loaded by requiring in when you application loads.
  #
  #    require "scoped_search/h2
  #
  module H2
  end

  class QueryBuilder

    # The H2 adapter requires some tweaks to make the case insensitive LIKE work
    class H2Adapter < ScopedSearch::QueryBuilder

      # Cast column type to VARCHAR_IGNORECASE to force case-insensitive comparisons.
      def sql_test(field, operator, value, lhs, &block)
        if field.textual? && [:like, :unlike].include?(operator)
          yield(:parameter, (value !~ /^\%|\*/ && value !~ /\%|\*$/) ? "%#{value}%" : value.tr_s('%*', '%'))
          return "CAST(#{field.to_sql(operator, &block)} AS VARCHAR_IGNORECASE) #{self.sql_operator(operator, field)} ?"
        end
        super
      end
    end
  end
end
