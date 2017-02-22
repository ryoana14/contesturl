class Contesturl
  class Base
    attr_accessor :problem_list

    def obtain_url(problem_list) 
      generate_url(problem_list)
    end

    private

    def generate_url(problem_list); end
  end
end
