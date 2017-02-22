# Contesturl

Gem to get the programing contest problem URL.

Currently, this gem supports AtCoder only.
(And also, `ABC` and `ARC` only...)

## Installation

```sh
$ git clone https://github.com/ryoana14/contesturl
$ rake install
```

## Usage

```ruby
require 'contesturl'

contest = Contesturl.new('atcoder')

probs = {
  abc: {
    1 => %w(a b c d),
    20 => %w(b c)
  },
  arc: {
    1 => %w(a b),
    35 => %w(d)
  }
}

contest.obtain_url(probs).each do |p|
  puts p
end

# http://abc001.contest.atcoder.jp/tasks/abc001_1
# http://abc001.contest.atcoder.jp/tasks/abc001_2
# http://abc001.contest.atcoder.jp/tasks/abc001_3
# http://abc001.contest.atcoder.jp/tasks/abc001_4
# http://abc020.contest.atcoder.jp/tasks/abc020_b
# http://abc020.contest.atcoder.jp/tasks/abc020_c
# http://arc001.contest.atcoder.jp/tasks/arc001_1
# http://arc001.contest.atcoder.jp/tasks/arc001_2
# http://arc035.contest.atcoder.jp/tasks/arc035_d
```


## Contributing


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

