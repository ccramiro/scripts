# Mac bash file

### EXPORT VARIABLES ###

# Development directores
export WORKDIR=$HOME/workdir
export LOGS=$HOME/workdir/logs

# Dev vars

export M2_HOME="/Applications/apache-maven-3.2.1"
export MAVEN_OPTS="-Xmx1024m -XX:MaxPermSize=512m"
export PATH=${PATH}:${M2_HOME}/bin
export JAVA_HOME="$(/usr/libexec/java_home -v 1.7)"

# Changing size of bash history

export HISTSIZE=100000
export HISTFILESIZE=1000000

# Sublime as editor

export EDITOR='subl -w'

# MySQL variable

export DB="/usr/local/mysql-5.6.21-osx10.8-x86_64/data"

# Not showing hidden files
defaults write com.apple.finder AppleShowAllFiles NO

# Mysql Alias

alias mysql=/usr/local/mysql/bin/mysql
alias mysqladmin=/usr/local/mysql/bin/mysqladmin
alias startmysql="sudo /usr/local/mysql/support-files/mysql.server start"

# Customize terminal prompt with username and current directory

PS1='\[\e[1;33m\][\u@\h \W]\$\[\e[0m\] '

