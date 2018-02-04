require 'simple_period/version'
require 'simple_period/format'

module SimplePeriod
  MIN_SEC   =  60
  HOUR_SEC  =  60 * MIN_SEC
  DAY_SEC   =  24 * HOUR_SEC
  WEEK_SEC  =   7 * DAY_SEC
  MONTH_SEC =  30 * DAY_SEC
  YEAR_SEC  = 365 * DAY_SEC

  class << self
    def second(period)
      case period
      when Format.min_proc
        period.to_i * MIN_SEC
      when Format.hour_proc
        period.to_i * HOUR_SEC
      when Format.day_proc
        period.to_i * DAY_SEC
      when Format.week_proc
        period.to_i * WEEK_SEC
      when Format.month_proc
        period.to_i * MONTH_SEC
      when Format.year_proc
        period.to_i * YEAR_SEC
      else
        period
      end
    end
  end
end
