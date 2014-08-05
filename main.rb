module Main
  def main
    arrays %w(results githubs developer_addresses)

    # for letter in ("a".."b") # faster & shorter
    for letter in ("a".."z")
      results << execute("keybase search #{letter}")
    end

    # results << "github:makevoid\t"

    for result in results
      # githubs << result.parse("github:(?<gh_user>.+?)\t")
      githubs << result.parse("github:(.+?)\t")
    end

    githubs.uniq!
    githubs.flatten!

    for gh_username in githubs
      next if gh_username =~ /\d+/
      result = json_get "https://keybase.io/_/api/1.0/user/lookup.json?github=#{gh_username}"
      result = result["them"]
      result = result.first if result
      crypto_addr = result["cryptocurrency_addresses"] if result
      btc_addr = crypto_addr["bitcoin"] if crypto_addr
      btc_addr = btc_addr.first["address"] if btc_addr # reduce

      log btc_addr
      developer_addresses << { gh_username: gh_username, btc_addr: btc_addr } if btc_addr
    end

    display developer_addresses
  end
end

# this is the program, the rest are just things to build this DSL