descendants_tracker
===================

[![Build Status](https://secure.travis-ci.org/mbj/descendants_tracker.png?branch=master)](http://travis-ci.org/mbj/descendants_tracker)
[![Dependency Status](https://gemnasium.com/mbj/descendants_tracker.png)](https://gemnasium.com/mbj/descendants_tracker)
[![Code Climate](https://codeclimate.com/badge.png)](https://codeclimate.com/github/mbj/descendants_tracker)

This is a small standalone gem featuring a module ripped out from [veritas](https://github.com/dkubb/veritas).
It allows to trak descendants in an unobtrusive way.

Installation
------------

There is no gem release yet so use git source.

In your **Gemfile**

``` ruby
gem 'descendants_tracker', :git => 'https://github.com/mbj/descendants_tracker'
```

Examples
--------

``` ruby
class Foo
  extend Virtus::DescendantsTracker
end

class Bar < Foo
end

Foo.descendants # => [Foo]
```

Credits
-------

* Dan Kubb ([dkubb](https://github.com/dkubb))
* Piotr Solnica ([solnic](https://github.com/solnic))

Contributing
-------------

* Fork the project.
* Make your feature addition or bug fix.
* Add tests for it. This is important so I don't break it in a
  future version unintentionally.
* Commit, do not mess with Rakefile or version
  (if you want to have your own version, that is fine but bump version in a commit by itself I can ignore when I pull)
* Send me a pull request. Bonus points for topic branches.

License
-------

Copyright (c) 2011-2012 Piotr Solnica
Copyright (c) 2012 Markus Schirp (packaging)

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
