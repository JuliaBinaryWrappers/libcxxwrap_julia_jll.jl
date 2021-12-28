# Autogenerated wrapper script for libcxxwrap_julia_jll for x86_64-apple-darwin-julia_version+1.6.0
export libcxxwrap_julia, libcxxwrap_julia_stl

JLLWrappers.@generate_wrapper_header("libcxxwrap_julia")
JLLWrappers.@declare_library_product(libcxxwrap_julia, "@rpath/libcxxwrap_julia.0.dylib")
JLLWrappers.@declare_library_product(libcxxwrap_julia_stl, "@rpath/libcxxwrap_julia_stl.dylib")
function __init__()
    JLLWrappers.@generate_init_header()
    JLLWrappers.@init_library_product(
        libcxxwrap_julia,
        "lib/libcxxwrap_julia.0.8.3.dylib",
        RTLD_GLOBAL,
    )

    JLLWrappers.@init_library_product(
        libcxxwrap_julia_stl,
        "lib/libcxxwrap_julia_stl.dylib",
        RTLD_GLOBAL,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()