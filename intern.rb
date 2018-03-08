# an intern, does everything an employee does, and also sends reports
module Actualize
  class Intern < Employee
    include EmailReportable
  end
end
