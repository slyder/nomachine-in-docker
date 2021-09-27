NX inside Docker
https://knowledgebase.nomachine.com/DT11R00194

Getting started with Web-based access
https://www.nomachine.com/getting-started-with-web-based-access#virtualdesktop


Docker error:

NX> 111 New connections to NoMachine server are enabled.
NX> 161 Enabled service: nxserver.
NX> 162 WARNING: Cannot find X servers running on this machine.
NX> 162 WARNING: A new virtual display will be created on demand.
NX> 161 Enabled service: nxd.
3017 3017 2021-09-24 11:06:20 321.326 NXSERVER Starting LS 7.6.2 and services.
3017 3017 2021-09-24 11:06:20 321.478 NXSERVER System information: Debian GNU/Linux 10 (buster), standalone.
16 16 2021-09-24 11:07:33 185.073 NXSERVER Starting LS 7.6.2 and services.
16 16 2021-09-24 11:07:33 185.178 NXSERVER System information: Debian GNU/Linux 10 (buster), standalone.
57 57 2021-09-24 11:18:30 115.378 NXSERVER User 'nomachine' logged in from '172.17.0.1' using authentication method NX-password.
16 16 2021-09-24 11:18:50 879.912 NXSERVER WARNING! Cannot retreive nxnode PID for virtual server C18548A4DB08CE50DD26DD54E015B4A8.
91 91 2021-09-24 11:18:50 880.557 NXSERVER ERROR! Cannot start node to create session
16 16 2021-09-24 11:18:50 881.157 NXSERVER WARNING! Process '/usr/NX/bin/nxexec --node --user nomachine --priority realtime --mode 0 --pid 49' with pid '120/120' finished with exit code 1 after 0,009 seconds.
16 16 2021-09-24 11:18:50 884.278 NXSERVER ERROR! NXFrameBuffer failed to start.
16 16 2021-09-24 11:18:50 884.473 NXSERVER ERROR! Received error message from nxserver NX> 595 Server could not establish communication with local node.
57 57 2021-09-24 11:18:50 885.316 NXSERVER ERROR! Received error from nxserver --daemon NX> 595 Server could not establish communication with local node.
57 57 2021-09-24 11:18:50 913.435 NXSERVER User 'nomachine' from '172.17.0.1' logged out.
