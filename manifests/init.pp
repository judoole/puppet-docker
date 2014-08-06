#Install Docker from get.docker.io
#
#Parameters:
#   - $version
#         Docker version
define docker($version='latest'){
	include wget

	wget::fetch{'docker-download':
		source => "https://get.docker.io/builds/Linux/x86_64/docker-${version}",
		destination => '/usr/local/bin/docker',
		before => File['/usr/local/bin/docker']
	}

	file {'/usr/local/bin/docker':
		mode => '0755'
	}
}