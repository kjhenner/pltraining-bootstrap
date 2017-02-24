define bootstrap::profile::mirror_gem (
  String $gem = $title,
  String $version,
) {

  exec { "/usr/local/bin/stickler mirror --gem-version ${version} ${gem}":
    creates => "/var/opt/stickler/mirror/gems/${gem}-${version}.gem",
    require => Class['bootstrap::profile::stickler'],
  }

  notify { "/usr/local/bin/stickler mirror --gem-version ${version} ${gem}": }

}
