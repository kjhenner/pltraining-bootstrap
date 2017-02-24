class bootstrap::profile::learning::mirror_learning_gems {

  include bootstrap::profile::stickler

  $gems = [
    {'gem' => 'cowsay', 'version' => '0.3.0'},
    {'gem' => 'pasture', 'version' => '0.0.0'}
  ]

  $gems.each | Hash $gem | {
    bootstrap::profile::mirror_gem { $gem['gem']:
      version => $gem['version'],
    }
  }

}
