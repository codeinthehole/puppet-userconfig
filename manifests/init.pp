class bash {
	file {"/home/vagrant/.bashrc":
		ensure => present,
		source => "puppet:///modules/bash/.bashrc",
	}
	file {"/home/vagrant/.inputrc":
		ensure => present,
		source => "puppet://modules/bash/.inputrc",
	}
	package {"vim":
		ensure => present,
	}
}