class bootstrap::role::learning {
  include localrepo
  include bootstrap
  include bootstrap::profile::pe_tweaks
  class {'learning':
    git_branch => 'hello_puppet',
  }
  class {'bootstrap::profile::splash':
    # Note: the $IP_ADDRESS string is a variable determined at boot time by rc.local
    login_message => file('bootstrap/learning_message')
  }
}
