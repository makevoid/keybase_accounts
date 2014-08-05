module Main
  def main
    arrays %w(results githubs)

    for letter in ("a".."b")
    # for letter in ("a".."z")
      results << execute("keybase search #{letter}")
    end

    # inspect results
    for result in results
      githubs << result.parse("github:(?<gh_user>.+?)\t")
    end

    githubs.uniq!

     inspect githubs
    # log githubs

    display githubs.map{|g| g[:gh_user] }
    # display_all githubs: :gh_user
  end
end

# this is the program, the rest are just things to build this DSL