require "contesturl/version"
require "contesturl/base"
require "contesturl/atcoder"

class Contesturl
  attr_reader :contest

  def initialize(contest)
    @contest = Object.const_get("Contesturl").const_get(contest.capitalize).new
  end

  def obtain_url(problem_list)
    contest.obtain_url(problem_list)
  end
end
