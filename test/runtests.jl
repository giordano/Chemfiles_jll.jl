using Libdl, Pkg, Pkg.Artifacts

@show dllist()

const artifact_dir = abspath(artifact"Chemfiles")
const libchemfiles_splitpath = ["bin", "libchemfiles.dll"]
const libchemfiles_path = normpath(joinpath(artifact_dir, libchemfiles_splitpath...))

if Sys.WORD_SIZE == 64
    @info "Going to dlopen my library..."
    @show dlopen("libchemfiles.dll", throw_error = false)
    @info "...done!"
end

@info "Going to dlopen official library..."
@show dlopen(libchemfiles_path, throw_error = false)
@info "...done!"

# using Chemfiles_jll

@show dllist()
