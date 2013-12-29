-record(hackney_url, {
        transport,
        scheme,
        netloc,
        raw_path,
        path = <<>>,
        qs = <<>>,
        fragment = <<>>,
        host,
        port,
        user = <<>>,
        password = <<>> }).

%% common types
-type hackney_url() :: #hackney_url{}.
