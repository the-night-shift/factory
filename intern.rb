# an intern, does everything an employee does, and also sends reports

class Intern < Employee
  include EmailReportable
end
