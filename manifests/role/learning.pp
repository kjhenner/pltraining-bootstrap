class bootstrap::role::learning {
  include epel
  include localrepo
  include bootstrap
  include bootstrap::profile::quest_content
  include bootstrap::profile::installer_staging
  include bootstrap::profile::learning_ssh
  include bootstrap::profile::get_pe
  include bootstrap::profile::install_pe
  include bootstrap::profile::set_defaults
  include bootstrap::profile::learning_splash
}
