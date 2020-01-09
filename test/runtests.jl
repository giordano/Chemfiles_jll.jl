using Libdl, Pkg, Pkg.Artifacts

@show dllist()

const artifact_dir = abspath(artifact"Chemfiles")

const libchemfiles_splitpath = ["bin", "libchemfiles.dll"]
const libchemfiles_path = normpath(joinpath(artifact_dir, libchemfiles_splitpath...))

@info "Going to dlopen the library..."
dlopen(libchemfiles_path)
@info "...done!"

# using Chemfiles_jll

@show dllist()
