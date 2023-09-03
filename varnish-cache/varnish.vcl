# syntax version
vcl 4.1;

# import vmod_dynamic for better backend name resolution
import dynamic;

backend default none;

# set up a dynamic director
# for more info, see https://github.com/nigoroll/libvmod-dynamic/blob/master/src/vmod_dynamic.vcc
sub vcl_init {
    new d = dynamic.director(port = "80");
}

sub vcl_recv {
    # for the host header to match the backend (not all backends need it,
    # but our case does)
    set req.http.host = "example.com";
    # set the backend
    set req.backend_hint = d.backend("example.com");
}