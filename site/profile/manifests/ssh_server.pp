class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCxJmhQ1yPT6QMA4wfFTVRT6Vod8d2i3fI6rmPsJR2yM+s22ptI6pNSvF1HO4zVpSD+MY5yXTFKU4Q7N2qCh0uYM0duqUsvtxxoGUcOwnMZEUPeNK/nLUPBqEPzNBcbOYZ82V/Sd+LuSJz48BzlmySVs+mc6Ze+/+Njh5HpUPx0nD/5d181+Ae3mlNMowzs3jFB/E8hhfNvA5CyxgTUi/0UFcwH+s4tpk0okvNVvJwAJ37jCipUQycbgy5lb2ujiqTB4+f8ureIP7RmD9HC6Bcb+WP3KrCvhr36qlLi3pQGurv/8iQG71+gGQKd+9aiYosBa6M0FLk8udXsynkcRdL5',
  }  
}
