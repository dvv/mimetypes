Mimetypes
==============

Given file name or extension return its [MIME type](http://en.wikipedia.org/wiki/Internet_media_type).
Does _not_ use `gen_server` pattern hence blazing fast.

Usage
--------------

```erlang
mimetypes:extension(<<".html">>).
<<"text/html">>
mimetypes:filename(<<"foo.json">>).
<<"application/json">>
mimetypes:path_to_mimes(<<"foo.json">>, "anything at all, just to obey arity cowboy wants").
[<<"application/json">>]
```

Installation
--------------

Include as [rebar](https://github.com/basho/rebar) dependency to your project.
Actual list of MIME types lives [here](http://svn.apache.org/viewvc/httpd/httpd/trunk/docs/conf/mime.types?view=co).

License (MIT)
-------

Copyright (c) 2013 Vladimir Dronnikov <dronnikov@gmail.com>

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
