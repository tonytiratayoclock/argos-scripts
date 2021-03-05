#!/usr/bin/env node

const { display, base64_encode } = require('./utils');
// CONSTANTS and IMAGES

const project = '/home/tony/Ocore';
const logoPath = project + '/assets/oclock.png';
const base64logo = base64_encode(logoPath);

// Top menu level
// With no name, just a logo
display('', {
  image: base64logo,
  imageWidth: 25,
});

display('---');

// Sub Menus

display('Open in Finder', {
  bash: `cd ${project} && xdg-open .`,
  terminal: false,
  iconName: 'folder',
});

display('Open in VSCode', {
  bash: `cd ${project} && code .`,
  terminal: false,
  iconName: 'applications-development',
});

display('---');

display('Launch Ocore', {
  bash: `cd ${project} && yarn start`,
  terminal: false,
  iconName: 'media-playback-start',
});

display('Watch Ocore', {
  bash: `cd ${project} && yarn watch`,
  terminal: true,
  iconName: 'utilities-system-monitor	',
});

display('---');

display('Build Ocore', {
  terminal: true,
  iconName: 'applications-engineering',
});

display('-- Launch Build', {
  bash: `cd ${project} && yarn make && cd out/make/deb/x64 && xdg-open .`,
  terminal: true,
});

display('-- Open Build Folder', {
  bash: `cd ${project} && cd out/make/deb/x64 && xdg-open .`,
  terminal: false,
});
