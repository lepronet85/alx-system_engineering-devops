# install puppet-lint

package { 'flast':
  ensure   => '2.1.0',
  provider => 'pip3',
}

package { 'werzeug':
  ensure   => '2.1.1',
  provider => 'gem',
}
