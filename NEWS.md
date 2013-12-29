# NEWS

0.2.0 - 2013/12/29
------------------

- **breaking change**: `hackney_multipart:encode_form/1` has been
  rewritten to now return the content-lenght. The format of the parts
has also been changed.
- add `hackney_multipart:len_mp_stream/2` to get the full content-length
  of a multipart stream without sending it.
- add the possibility to handle an header with params. Now an header can
  be passed to the list with its params: `{Name, Value, Params}`
- add `hackney_headers:content_disposition/1` to parse the
  content-disposition header

0.1.1 - 2013/12/19
------------------

- http_parser: only check body_state=done wheh we are done.
- http_parser: always return `{done, binary()}` when the parsing is
  done.

0.1.0 - 2013/12/19
------------------

- initial release
