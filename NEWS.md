# NEWS

0.2.4 - 2014/03/03
------------------

- add `hackney_url:pathencode/1` to encode the path and follow the IDN
  specs.  http://www.w3.org/International/articles/idn-and-iri/

0.2.3 - 2014/03/02
------------------

- add tests
- fix build for R17
- fix hackney_bstr
- fix hackney_date

0.2.2 - 2013/12/30
------------------

- add `hackney_multipart:part/3`: to create a full part with custom
  headers.
- fix `hackney_multipart:decode_form/2`
- fix `hackney_multipart:encode_form/2` : do not url encode headers
  properties and fix typoe (s/form_data/form-data)
- fix `hackney_multipart:mp_file_header/2`: use the correct
  default content-disposition for form-data.

0.2.1 - 2013/12/29
------------------

- fix multipart header. Do not start the first part with \r\n

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
