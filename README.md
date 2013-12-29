

# hackney_lib - Web toolkit #

Copyright (c) 2013 Benoît Chesneau.

__Version:__ 0.2.1

# hackney

**hackney_lib** is a WEB toolkit including miscellaneous modules to play with HTTP and Web protocols

Main features:

- low memory usage
- binary only
- Full HTTP parser in Erlang for clients and servers
- HTTP dates parsing
- Cookie encoding/decoding
- HTTP headers parsing
- Multipart encoding/Idecoding
- Miscellaneous functions to handle URIs

Coming:

- SPDY protocol support
- Websocket protocol support

#### Useful modules are:

- [`hackney_http`](http://github.com/benoitc/hackney_lib/blob/master/doc/hackney_http.md): HTTP parser in pure Erlang. This parser is able
to parse HTTP responses and requests in a streaming fashion. If not set
it will be autodetect if it's a request or a response if needed.

- [`hackney_headers`](http://github.com/benoitc/hackney_lib/blob/master/doc/hackney_headers.md) Module to manipulate HTTP headers
- [`hackney_cookie`](http://github.com/benoitc/hackney_lib/blob/master/doc/hackney_cookie.md): Module to manipulate cookies.
- [`hackney_multipart`](http://github.com/benoitc/hackney_lib/blob/master/doc/hackney_multipart.md): Module to encode/decode multipart.
- [`hackney_url`](http://github.com/benoitc/hackney_lib/blob/master/doc/hackney_url.md): Module to parse and create URIs.
- [`hackney_date`](http://github.com/benoitc/hackney_lib/blob/master/doc/hackney_date.md): Module to parse HTTP dates.

Read the [NEWS](https://raw.github.com/benoitc/hackney_lib/master/NEWS.md) file
to get last changelog.

## Installation

Download the sources from our [Github
repository](http://github.com/benoitc/hackney_lib)

To build the application simply run 'make'. This should build .beam, .app
files and documentation.

To run tests run 'make test'.
To generate doc, run 'make doc'.

Or add it to your rebar config

```
{deps, [
    ....
    {hackney_lib, ".*", {git, "git://github.com/benoitc/hackney_lib.git", {branch, "master"}}}
]}.
```

## Basic usage

The basic usage of hackney is:

### Start hackney_lib

hackney is an
[OTP](http://www.erlang.org/doc/design_principles/users_guide.html)
application. You have to start it first before using any of the functions.
The hackney application will start the default socket pool for you.

To start in the console run:

```
$ erl -pa ebin -pa deps/mimetypes/ebin
```

It will start hackney_lib and all of the application it depends on:

```
application:start(mimetypes),
application:start(hackney_lib).
```

Or add hackney_lib to the applications property of your .app in a release

## Contribute

For issues, comments or feedback please [create an
issue](http://github.com/benoitc/hackney_lib/issues).

### Notes for developers

If you want to contribute patches or improve the docs, you will need to
build hackney using the `rebar_dev.config`  file. It can also be built
using the **Makefile**:

```
$ make dev ; # compile & get deps
$ make devclean ; # clean all files
```


## Modules ##


<table width="100%" border="0" summary="list of modules">
<tr><td><a href="http://github.com/benoitc/hackney_lib/blob/master/doc/hackney_bstr.md" class="module">hackney_bstr</a></td></tr>
<tr><td><a href="http://github.com/benoitc/hackney_lib/blob/master/doc/hackney_cookie.md" class="module">hackney_cookie</a></td></tr>
<tr><td><a href="http://github.com/benoitc/hackney_lib/blob/master/doc/hackney_date.md" class="module">hackney_date</a></td></tr>
<tr><td><a href="http://github.com/benoitc/hackney_lib/blob/master/doc/hackney_headers.md" class="module">hackney_headers</a></td></tr>
<tr><td><a href="http://github.com/benoitc/hackney_lib/blob/master/doc/hackney_http.md" class="module">hackney_http</a></td></tr>
<tr><td><a href="http://github.com/benoitc/hackney_lib/blob/master/doc/hackney_multipart.md" class="module">hackney_multipart</a></td></tr>
<tr><td><a href="http://github.com/benoitc/hackney_lib/blob/master/doc/hackney_url.md" class="module">hackney_url</a></td></tr></table>

