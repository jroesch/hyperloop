#[macro_use(ruby_extension)]
extern crate tarnish;

// We need to use `CString` because CString's are byte arrays terminated by
// a NUL byte. All String's in Rust *must* be valid UTF-8, if you attempt
// to construct a string with an invalid byte sequence and error will
// occur.
use std::ffi::CString;
use tarnish::ruby::*;

ruby_extension!(Init_hyperloop, {
    let mut module = Module::new(CString::new("Hyperloop").unwrap());
    module.define_module_fn(CString::new("test").unwrap(), 0);
});
