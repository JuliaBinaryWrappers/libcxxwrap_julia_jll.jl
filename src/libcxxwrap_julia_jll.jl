# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule libcxxwrap_julia_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("libcxxwrap_julia")
JLLWrappers.@generate_main_file("libcxxwrap_julia", UUID("3eaa8342-bff7-56a5-9981-c04077f7cee7"))
end  # module libcxxwrap_julia_jll
