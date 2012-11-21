# Knife::Hardware

This gem is only really useful if you happen to track persistent hardware information in a data bag called hardware and link it to nodes by UUID. IF you don't do this then this plugin is useless to you.

## Installation

Add this line to your application's Gemfile:

    gem 'knife-hardware'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install knife-hardware

## Usage

knife hardware show NODE
knife hardware edit NODE

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
