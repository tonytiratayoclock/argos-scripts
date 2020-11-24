#!/usr/bin/env bash
LOGO=$(curl -s "https://upload.wikimedia.org/wikipedia/commons/thumb/0/08/Circle-icons-rocket.svg/600px-Circle-icons-rocket.svg.png" | base64 -w 0)
IMAGEWIDTH=20
echo "QuickLaunch | image='$LOGO' imageWidth=25"
echo "---"
OCLOCK_ICON=$(curl -s "https://cdn-images-1.medium.com/max/184/1*-ehjXK3qIt_650V4c6r3ng@2x.png" | base64 -w 0)
CLOCKIFY=$(curl -s "https://clockify.me/assets/images/brand-assets/clockify-mark-blue.png" | base64 -w 0)
ARGOS=$(curl -s "https://www.loughtonandgreatholm-pc.gov.uk/wp-content/uploads/Argos-Competitions-Argos-logo.jpg" | base64 -w 0)
GITHUB=$(curl -s "https://github.githubassets.com/images/modules/logos_page/Octocat.png" | base64 -w 0)
TEAMWEEK=$(curl -s "https://pbs.twimg.com/profile_images/1049858731456909312/lJnVqk16.jpg" | base64 -w 0)
echo "Github | image='$GITHUB' imageWidth='$IMAGEWIDTH' href='https://github.com/orgs/O-clock-Teach/dashboard'"
echo "Cockpit | image='$OCLOCK_ICON' imageWidth='$IMAGEWIDTH' href='https://cockpit.oclock.io/app'"
echo "Clockify | image='$CLOCKIFY' imageWidth='$IMAGEWIDTH' href='https://clockify.me/tracker'"
echo "Team Week | image='$TEAMWEEK' imageWidth='$IMAGEWIDTH' href='https://app.teamweek.com/#timeline/271043/groups/223925?zoom=month'"
echo "---"
echo "Oclock Apps - open VSCode | iconName=media-playback-start bash='cd && cd ocore && code .' terminal=false"
echo "Oclock Apps - start project | iconName=media-playback-start bash='cd && cd ocore && yarn start' terminal=true"
echo "Oclock Apps - start project plus VSCode | iconName=media-playback-start bash='cd && cd ocore && code . && yarn start' terminal=true"
echo "---"
echo "---"
echo "Oclock Github - open VSCode | iconName=media-playback-start bash='cd && cd test-dashboard && code .' terminal=false"
echo "Oclock Github - start project | iconName=media-playback-start bash='cd && cd test-dashboard && yarn start:electron' terminal=true"
echo "Oclock Github - start project plus VSCode | iconName=media-playback-start bash='cd && cd test-dashboard && code . && yarn start:electron' terminal=true"
echo "---"
echo "O My Hotel - open ssh shell | iconName=media-playback-start bash='ssh  ubuntu@ec2-35-181-156-87.eu-west-3.compute.amazonaws.com' terminal=true"
echo "O My Hotel - open fakeAPI | iconName=media-playback-start bash='cd && cd Pulsar/CDA-omyhotel-fakeAPI && code .' terminal=false"
echo "---"
echo "Xamp | iconName=media-playback-start bash='sudo /opt/lampp/manager-linux-x64.run' terminal=true"
echo "Argos Documentation | image='$ARGOS' imageWidth='$IMAGEWIDTH' href='https://github.com/p-e-w/argos'"
