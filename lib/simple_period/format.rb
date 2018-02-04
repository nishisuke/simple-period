require 'simple_period'

module SimplePeriod
  module Format
    PROC_REGEX = /_proc\z/

    MIN_REGEX   = /\A\d+min\z/
    HOUR_REGEX  = /\A\d+h\z/
    DAY_REGEX   = /\A\d+d\z/
    WEEK_REGEX  = /\A\d+w\z/
    MONTH_REGEX = /\A\d+M\z/
    YEAR_REGEX  = /\A\d+y\z/

    class << self
      def method_missing(name)
        return super if name !~ PROC_REGEX

        match_data = name.match(PROC_REGEX)
        const_name = match_data.pre_match.upcase
        regex = const_get("#{const_name}_REGEX", false)
        lambda { |txt| txt =~ regex }
      end
    end
  end
end
