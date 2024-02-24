# Autogenerated wrapper script for libcxxwrap_julia_jll for x86_64-linux-gnu-cxx11-julia_version+1.12.0
export libcxxwrap_julia, libcxxwrap_julia_stl

JLLWrappers.@generate_wrapper_header("libcxxwrap_julia")
JLLWrappers.@declare_library_product(libcxxwrap_julia, "libcxxwrap_julia.so.0")
JLLWrappers.@declare_library_product(libcxxwrap_julia_stl, "libcxxwrap_julia_stl.so")
function __init__()
    JLLWrappers.@generate_init_header()
    JLLWrappers.@init_library_product(
        libcxxwrap_julia,
        "lib/libcxxwrap_julia.so",
        RTLD_GLOBAL,
    )

    JLLWrappers.@init_library_product(
        libcxxwrap_julia_stl,
        "lib/libcxxwrap_julia_stl.so",
        RTLD_GLOBAL,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
