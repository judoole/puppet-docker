import 'init.pp'

node default{
	docker{'docker':
		version => '1.0.0'
	}
}