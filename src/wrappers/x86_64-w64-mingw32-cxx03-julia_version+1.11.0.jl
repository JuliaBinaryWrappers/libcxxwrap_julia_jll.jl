# Autogenerated wrapper script for libcxxwrap_julia_jll for x86_64-w64-mingw32-cxx03-julia_version+1.11.0
export libcxxwrap_julia, libcxxwrap_julia_stl

JLLWrappers.@generate_wrapper_header("libcxxwrap_julia")
JLLWrappers.@declare_library_product(libcxxwrap_julia, "libcxxwrap_julia.dll")
JLLWrappers.@declare_library_product(libcxxwrap_julia_stl, "libcxxwrap_julia_stl.dll")
function __init__()
    JLLWrappers.@generate_init_header()
    JLLWrappers.@init_library_product(
        libcxxwrap_julia,
        "bin\\libcxxwrap_julia.dll",
        RTLD_GLOBAL,
    )

    JLLWrappers.@init_library_product(
        libcxxwrap_julia_stl,
        "bin\\libcxxwrap_julia_stl.dll",
        RTLD_GLOBAL,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
