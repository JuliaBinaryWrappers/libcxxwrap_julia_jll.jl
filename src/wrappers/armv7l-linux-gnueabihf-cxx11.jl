# Autogenerated wrapper script for libcxxwrap_julia_jll for armv7l-linux-gnueabihf-cxx11
export libcxxwrap_julia, libcxxwrap_julia_stl

## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"

# Relative path to `libcxxwrap_julia`
const libcxxwrap_julia_splitpath = ["lib", "libcxxwrap_julia.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libcxxwrap_julia_path = ""

# libcxxwrap_julia-specific global declaration
# This will be filled out by __init__()
libcxxwrap_julia_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libcxxwrap_julia = "libcxxwrap_julia.so.0"


# Relative path to `libcxxwrap_julia_stl`
const libcxxwrap_julia_stl_splitpath = ["lib", "libcxxwrap_julia_stl.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libcxxwrap_julia_stl_path = ""

# libcxxwrap_julia_stl-specific global declaration
# This will be filled out by __init__()
libcxxwrap_julia_stl_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libcxxwrap_julia_stl = "libcxxwrap_julia_stl.so"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"libcxxwrap_julia")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # We first need to add to LIBPATH_list the libraries provided by Julia
    append!(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)])
    global libcxxwrap_julia_path = normpath(joinpath(artifact_dir, libcxxwrap_julia_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libcxxwrap_julia_handle = dlopen(libcxxwrap_julia_path, RTLD_GLOBAL)
    push!(LIBPATH_list, dirname(libcxxwrap_julia_path))

    global libcxxwrap_julia_stl_path = normpath(joinpath(artifact_dir, libcxxwrap_julia_stl_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libcxxwrap_julia_stl_handle = dlopen(libcxxwrap_julia_stl_path, RTLD_GLOBAL)
    push!(LIBPATH_list, dirname(libcxxwrap_julia_stl_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(LIBPATH_list, ':')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()

