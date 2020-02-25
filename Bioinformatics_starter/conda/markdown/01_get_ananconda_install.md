**For Linux x86 systems.**

- **Version:** Anaconda3-5.3.0-Linux-x86_64
- **Anaconda Version:** 5.3.0
- **Python Version:** 3.7
- **OS:** Linux-x86_64
- **Date:** 2018-11-31

### Download the Anaconda3 Install script
On the command line, use `wget` to download the [Anaconda installer for Linux](https://www.anaconda.com/download/#linux) and make it executable by running the commands:-

`wget https://repo.anaconda.com/archive/Anaconda3-5.3.0-Linux-x86_64.sh`{{execute}}

You will see something like this:

```bash
$ wget https://repo.anaconda.com/archive/Anaconda3-5.3.0-Linux-x86_64.sh
--2018-10-31 12:02:24--  https://repo.anaconda.com/archive/Anaconda3-5.3.0-Linux-x86_64.sh
Resolving repo.anaconda.com (repo.anaconda.com)... 104.17.108.77, 104.17.111.77, 104.17.109.77, ...
Connecting to repo.anaconda.com (repo.anaconda.com)|104.17.108.77|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 667822837 (637M) [application/x-sh]
Saving to: ‘Anaconda3-5.3.0-Linux-x86_64.sh’

Anaconda3-5.3.0-Linux-x86_64.s  45%[=====================>                            ] 288.47M  47.0MB/s    eta 8s
```
### Make script executable
Make the install script executable once the download has completed.

`chmod +x ./Anaconda3-5.3.0-Linux-x86_64.sh`{{execute}}
