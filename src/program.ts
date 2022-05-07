import execa from 'execa';

const upgradeUbuntu = () => {
  const { stdout } = execa('sudo', ['apt', 'upgrate']);
  console.log(stdout);
};

const install = () => {
  // let list = 'build-essential git wget curl tar gzip nano net-tools htop';
  // list += 'vim zsh openssh-server ca-certificates software-properties-common';
  // list += 'gnome-tweak-tool gnome-system-tools gnome-shell-extensions';
  // list +=
  //   'chrome-gnome-shell  gnome-shell-extensions flatpak snapd gparted vlc sqlitebrowser';

  // list.split(' ');
  const { stdout } = execa('sudo', ['apt', 'update']);
  console.log(stdout);
};

const updateUbuntu = () => {
  const { stdout } = execa('sudo', ['apt', 'update']);
  console.log(stdout);
};

execa('apt', ['install', 'sudo', '-y']).stdout?.pipe(process.stdout);
execa('sudo', ['apt', 'update', '-y']).stdout?.pipe(process.stdout);
execa('sudo', ['apt', 'upgrade', '-y']).stdout?.pipe(process.stdout);
execa('sudo', [
  'apt',
  'install',
  'git',
  'curl',
  'wget',
  'nano',
  '-y',
]).stdout?.pipe(process.stdout);
