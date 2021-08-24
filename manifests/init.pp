# @summary Installs Python from source.
#
# This module downloads Python sources from python.org and builds and installs
# the Python interpreter from there.
#
# @param source_dir The directory where to download and extract the sources to.
# @param base_url The base URL where the Python sources are downloaded from.
#                 This defaults to the FTP directory on python.org.
# @param build_dependencies A list of packages that need to be installed in
#                           order to successfully build Python. These
#                           dependencies should be specified via Hiera.
# @param versions The Python versions to be downloaded and installed. The keys
#                 of the hash are the version numbers. The values are a hash
#                 holding additional parameters passed to the build process.
#                 At the moment, only "override_url" is supported, which forces
#                 the download from the specified URL rather than constructing
#                 the URL from the base_url and the version string.
#
# @author Christoph Müller
class pythonbuild(
        String $source_dir = '/usr/local/src',
        #String $install_dir = '/usr/local/bin',
        String $base_url = 'https://www.python.org/ftp/python',
        Array[String] $build_dependencies,
        Hash[String, Hash[String, Variant[String, Integer, Boolean]]] $versions = { }
        ) {

    # Ensure that all build depedencies are installed.
    ensure_packages($build_dependencies)

    # Build all of the requested versions
    $versions.each | $version, $attributes | {
        pythonbuild::build { "pythonbuild-${version}":
            source_dir => $source_dir,
            #install_dir => $install_dir,
            base_url => $base_url,
            version => $version,
            * => $attributes
        }
    }
}