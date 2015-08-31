# This code could eventually become `mkcargo` an equivalent
# configuration script for writing extensions in Rust.

require 'mkmf'
require 'pry'

find_executable('rustc')
find_executable('cargo')

# Not portable, blah, blah, blah, just a demo for now.
shared_lib_path = File.join(
    Dir.pwd,
    '../../lib/hyperloop/',
    'hyperloop.' + RbConfig::CONFIG['DLEXT'])

`cargo build`
`cp target/debug/libhyperloop.dylib #{shared_lib_path}`

$makefile_created = true
