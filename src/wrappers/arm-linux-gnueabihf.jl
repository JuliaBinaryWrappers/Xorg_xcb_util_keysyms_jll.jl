# Autogenerated wrapper script for Xorg_xcb_util_keysyms_jll for arm-linux-gnueabihf
export libxcb_keysyms

using Xorg_xcb_util_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"

# Relative path to `libxcb_keysyms`
const libxcb_keysyms_splitpath = ["lib", "libxcb-keysyms.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libxcb_keysyms_path = ""

# libxcb_keysyms-specific global declaration
# This will be filled out by __init__()
libxcb_keysyms_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libxcb_keysyms = "libxcb-keysyms.so.1"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"Xorg_xcb_util_keysyms")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # We first need to add to LIBPATH_list the libraries provided by Julia
    append!(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)])
    # From the list of our dependencies, generate a tuple of all the PATH and LIBPATH lists,
    # then append them to our own.
    foreach(p -> append!(PATH_list, p), (Xorg_xcb_util_jll.PATH_list,))
    foreach(p -> append!(LIBPATH_list, p), (Xorg_xcb_util_jll.LIBPATH_list,))

    global libxcb_keysyms_path = normpath(joinpath(artifact_dir, libxcb_keysyms_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libxcb_keysyms_handle = dlopen(libxcb_keysyms_path)
    push!(LIBPATH_list, dirname(libxcb_keysyms_path))

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

