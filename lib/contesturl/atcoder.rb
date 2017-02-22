class Contesturl
  class Atcoder < Contesturl::Base
    def generate_url(problem_list)
      url = []

      problem_list.each do |contest_type, open_times|
        if contest_type == 'abc' or contest_type.to_s == 'abc'
          open_times.each do |open_time, problems|
            if open_time > 19
              problems.each do |p|
                url << sprintf("http://abc%03d.contest.atcoder.jp/tasks/abc%03d_%s", open_time, open_time, p)
              end
            else
              problems.each do |p|
                url << sprintf("http://abc%03d.contest.atcoder.jp/tasks/abc%03d_%d", open_time, open_time, p.ord - 96)
              end
            end
          end
        elsif contest_type == 'arc' or contest_type.to_s == 'arc'
          open_times.each do |open_time, problems|
            if open_time > 34
              problems.each do |p|
                url << sprintf("http://arc%03d.contest.atcoder.jp/tasks/arc%03d_%s", open_time, open_time, p)
              end
            else
              problems.each do |p|
                url << sprintf("http://arc%03d.contest.atcoder.jp/tasks/arc%03d_%d", open_time, open_time, p.ord - 96)
              end
            end
          end
        end
      end

      url
    end
  end
end

