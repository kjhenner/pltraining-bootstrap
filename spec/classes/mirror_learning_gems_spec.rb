require 'spec_helper'

describe "bootstrap::profile::learning::mirror_learning_gems" do
  let(:node) { 'test.example.com' }

  let(:facts) { {
    :osfamily                  => 'RedHat',
    :operatingsystem           => 'CentOS',
    :operatingsystemrelease    => '7.2.1511',
    :operatingsystemmajrelease => '7',
    :kernelversion             => '3.10.0',
    :architecture              => 'x86_64',
  } }

  it { is_expected.to compile.with_all_deps }

  it {
    is_expected.to contain_bootstrap__profile__mirror_gem('pasture')
      .with({'version' => '0.0.0'})
  }

  it {
    is_expected.to contain_bootstrap__profile__mirror_gem('cowsay')
      .with({'version' => '0.3.0'})
  }

end
