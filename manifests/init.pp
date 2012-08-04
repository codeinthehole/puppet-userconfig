class bash ($user='vagrant') {
	file {"/home/$user/.bashrc":
		ensure => present,
		source => "puppet:///modules/bash/bashrc",
	}
}

class readline ($user='vagrant') {
	file {"/home/$user/.inputrc":
		ensure => present,
		source => "puppet:///modules/bash/inputrc",
	}
}

class vim ($user='vagrant') {
	file {"/home/$user/.vimrc":
		ensure => present,
		source => "puppet:///modules/bash/vimrc",
	}
	package {"vim":
		ensure => present,
	}
}

class userconfig($user='vagrant') {
	include userconfig::bash, userconfig::readline, userconfig::vim
}
