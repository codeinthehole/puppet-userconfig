class bash ($user='vagrant') {
	file {"/home/$user/.bashrc":
		ensure => present,
		source => "puppet:///modules/bash/bashrc",
	}
	file {"/home/$user/.inputrc":
		ensure => present,
		source => "puppet:///modules/bash/inputrc",
	}
	file {"/home/$user/.vimrc":
		ensure => present,
		source => "puppet:///modules/bash/vimrc",
	}
	package {"vim":
		ensure => present,
	}
}