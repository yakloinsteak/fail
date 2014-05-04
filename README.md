# Fail

I frequently restart commands like `tail -f server.log` to pipe it through
grep, cut, sed, or awk. It makes debugging easier, but it's an annoying extra
step. This tool is meant to be a drop-in replacement for `tail -f` (or `tailf`
if you have that). It responds to commands to dynamically change what it
filters without having to ^C and start over.

The tool supports

* cutting lines to a certain column.
* whitelisting lines with a ruby regular expression
* blacklisting lines with a ruby regular expression
* throttling the output
* outputting lines between two regualar-expression-matched lines. This is
  similar to running something of the form

    tail -f server.log | sed -n -e '/startline/,/endline/p'

* clearing all filters

Future features may include

* saving/restoring settings
* configurable colorizing


## Installation

Add this line to your application's Gemfile:

    gem 'fail'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install fail

## Usage

TODO: Write usage instructions here

## Contributing

1. Fork it ( http://github.com/<my-github-username>/fail/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
