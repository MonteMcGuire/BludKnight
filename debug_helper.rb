# DebugHelper
#
# When done, turn the method name to the false, so you can
#      globally turn all debug statements back on if needed
#      or leave breadcrumbs of where you had problems last time...
#
module DebugHelper
  def debug_helper_true(f1, s2)
    private_debug_helper(f1, s2, true)
  end

  def debug_helper_false(f1, s2)
    private_debug_helper(f1, s2, false)
  end

  private

  def private_debug_helper(f1, s2, line_doit)
    return unless line_doit
    mmm_dd = Time.new.strftime('%b_%d')
    f = File.open("/tmp/monte_#{mmm_dd}.log", 'a')
    time_format = Time.new.strftime('%m/%d/%y %H:%M:%S')
    file = File.basename(f1) + '                         '
    f.puts "#{time_format} #{file[0..19]}, #{s2}"
    f.close
  end
end
