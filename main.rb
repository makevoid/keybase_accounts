module Main
  def main
    arrays %w(results githubs)

    for letter in ("a".."b")
    # for letter in ("a".."z")
      results << execute("keybase search #{letter}")
    end

    for result in results
      githubs << parse("github:(makevoid)")
    end

    githubs.uniq!

    display githubs
  end
end

# this is the program, the rest are just things to build this DSL