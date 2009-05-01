# kule-redgreen

kule-redgreen is a fork of Pat Eyler's & Chris Wanstrath's RedGreen.

I had problems with autotest only running once and then stopping (rather than continuously testing new updates).

This version works using ZenTest 4.0.0 on XP & Vista.

## Recent Changes

0.1.2

* Added foreground coloring (note: changes to Snarl Issue Regular Expression below) - Thanks Matte Edens
* Added namespace to Color class, to stop conflicts with similar named classes - Thanks Andreas Riemer
* I'm now working on a Mac so if someone would like to pick this up please let me know!

0.1.1
* Initial Version

## Install the gem

    gem install kule-redgreen -s http://gems.github.com

NB. Don't forget to uninstall the old redgreen gem if you are using it:

    gem uninstall redgreen

## Autotest & Snarl Setup

See here to set up your windows environment:
[http://thewebfellas.com/blog/2007/12/10/rspec-autotest-and-snarl-on-windows](http://thewebfellas.com/blog/2007/12/10/rspec-autotest-and-snarl-on-windows)

In your `.autotest` file you just need the following (used for tests/shoulda):

    require 'autotest/snarl'
    require 'Win32/Console/ANSI'
    require 'redgreen/autotest'

## Snarl Issue (Tests always Pass)

Currently to allow Snarl to work with ZenTest 4.0.0 you need to modify autotest.rb file  
(Usually: `C:\Ruby\lib\ruby\gems\1.8\gems\ZenTest-4.0.0\lib\` ):

Change this line:
    self.failed_results_re = /^\s+\d+\) (?:Failure|Error):\n(.*?)\((.*?)\)/

To:
	self.failed_results_re = /^\s+\d+\) (?:\e\[\d+;\d+m)?(?:Failure|Error)(?:\e\[\d+;\d+m)?:\n(.*?)\((.*?)\)/

This then allows the regular expression to ignore the colour escape codes and it picks up the correct amount of failures.

FYI I'll pop an email over to the ZenTest guys to see if they are okay to make this change.

## Other Minor Changes

Changed the colour scheme from foreground to background colours as I find it a little easier on the eyes!

Luke Pearce  
[http://www.kulesolutions.com](http://www.kulesolutions.com)

### Previous README comments:

Use it as you would the ruby interpreter when running your unit test.

Like so:

    rg test/test_units.rb

Relevant bloggings:

* [http://errtheblog.com/post/15](http://errtheblog.com/post/15)
* [http://on-ruby.blogspot.com/2006/05/red-and-green-for-ruby.html](http://on-ruby.blogspot.com/2006/05/red-and-green-for-ruby.html)

Enjoy.

