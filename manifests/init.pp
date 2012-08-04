class bash ($user='vagrant') {
	file {"/home/$user/.bashrc":
		ensure => present,
		source => "puppet:///modules/userconfig/bashrc",
	}
}

class readline ($user='vagrant') {
	file {"/home/$user/.inputrc":
		ensure => present,
		source => "puppet:///modules/userconfig/inputrc",
	}
}

class vim ($user='vagrant') {
	file {"/home/$user/.vimrc":
		ensure => present,
		source => "puppet:///modules/userconfig/vimrc",
	}
	package {"vim":
		ensure => present,
	}
}

class userconfig($user='vagrant') {
	include bash, readline, vim
}
