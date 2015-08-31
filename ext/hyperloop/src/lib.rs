#[macro_use]
extern crate tarnish;
extern crate libc;

// We need to use `CString` because CString's are byte arrays terminated by
// a NUL byte. All String's in Rust *must* be valid UTF-8, if you attempt
// to construct a string with an invalid byte sequence and error will
// occur.
use std::ffi::CString;
use tarnish::ruby::*;

ruby_extension!(Init_hyperloop, {
    let mut module = Module::new(CString::new("Hyperloop").unwrap());

    define_module_fn!(module, CString::new("start_server").unwrap(), 2, start_server_impl);
    extern fn start_server_impl(addr: Value, server: Value) -> Value {
        NIL
    }
});
