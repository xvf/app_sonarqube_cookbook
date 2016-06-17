#
# Cookbook Name:: app_sonarqube
# Recipe:: default
#
# Copyright 2016, APN LLC
#
# Author Abhishek Srivastava
#
# All rights reserved - Do Not Redistribute
#

default['java']['install_flavor'] = 'openjdk'
default['java']['jdk_version'] = '7'
default['java']['set_etc_environment'] = true

# Custom settings

default['sonarqube']['database']['dbname'] = 'sonar'
default['sonarqube']['database']['host'] = '127.0.0.1'
default['sonarqube']['database']['port'] = '3306'
default['sonarqube']['database']['username'] = 'root'
default['sonarqube']['database']['password'] = 'root'
default['sonarqube']['database']['app']['username'] = 'sonar'
default['sonarqube']['database']['app']['password'] = 'sonar'
default['sonarqube']['database']['sock_location'] = '/var/run/mysql-default/mysqld.sock'

default['sonarqube']['os_kernel'] = 'linux-x86-64'
default['sonarqube']['embeddedDatabase']['dataDir'] = nil

default['sonarqube']['jdbc_driverClassName'] = 'extensions/jdbc-driver/oracle'
default['sonarqube']['jdbc']['username'] = 'sonar'
default['sonarqube']['jdbc']['password'] = 'sonar'
default['sonarqube']['jdbc']['url'] = 'jdbc:mysql://127.0.0.1:3306/sonar?useUnicode=true&characterEncoding=utf8&rewriteBatchedStatements=true&useConfigs=maxPerformance'

## From SonarQube Cookbook

default['sonarqube']['mirror'] = 'https://sonarsource.bintray.com/Distribution/sonarqube/'
default['sonarqube']['version'] = '5.1.2'
default['sonarqube']['checksum'] = 'a8d63d837242d0d07c0b3f65cfa9c84d5ae82ee51c6cbb52248bcf0d1bc58491'
default['sonarqube']['os_kernel'] = 'linux-x86-64'

default['sonarqube']['config']['dir'] = '/opt/sonarqube-%{version}/conf'
default['sonarqube']['config']['file'] = 'sonar.properties'

default['sonarqube']['user'] = 'sonarqube'
default['sonarqube']['group'] = 'sonarqube'

default['sonarqube']['web']['host'] = '0.0.0.0'
default['sonarqube']['web']['context'] = nil
default['sonarqube']['web']['port'] = 9000
default['sonarqube']['web']['https']['port'] = -1 # Default value of -1 leaves https disabled

default['sonarqube']['embeddedDatabase']['dataDir'] = nil
default['sonarqube']['embeddedDatabase']['port'] = 9092

default['sonarqube']['jdbc']['maxActive'] = 20
default['sonarqube']['jdbc']['maxIdle'] = 5
default['sonarqube']['jdbc']['minIdle'] = 2
default['sonarqube']['jdbc']['maxWait'] = 5000
default['sonarqube']['jdbc']['minEvictableIdleTimeMillis'] = 600_000
default['sonarqube']['jdbc']['timeBetweenEvictionRunsMillis'] = 30_000

default['sonarqube']['web']['https']['keyAlias'] = nil
default['sonarqube']['web']['https']['keyPass'] = 'changeit'
default['sonarqube']['web']['https']['keystoreFile'] = nil
default['sonarqube']['web']['https']['keystorePass'] = nil
default['sonarqube']['web']['https']['keystoreType'] = 'JKS'
default['sonarqube']['web']['https']['keystoreProvider'] = nil
default['sonarqube']['web']['https']['truststoreFile'] = nil
default['sonarqube']['web']['https']['truststorePass'] = nil
default['sonarqube']['web']['https']['truststoreType'] = 'JKS'
default['sonarqube']['web']['https']['truststoreProvider'] = nil
default['sonarqube']['web']['https']['clientAuth'] = false

default['sonarqube']['web']['http']['maxThreads'] = 50
default['sonarqube']['web']['http']['minThreads'] = 5
default['sonarqube']['web']['http']['acceptCount'] = 25
default['sonarqube']['web']['https']['minThreads'] = 5
default['sonarqube']['web']['https']['maxThreads'] = 50
default['sonarqube']['web']['https']['acceptCount'] = 25

default['sonarqube']['web']['accessLogs']['enable'] = true
default['sonarqube']['ajp']['port'] = 9009

default['sonarqube']['updatecenter']['activate'] = true
default['sonarqube']['http']['proxyHost'] = nil
default['sonarqube']['http']['proxyPort'] = nil
default['sonarqube']['http']['auth']['ntlm']['domain'] = nil
default['sonarqube']['socksProxyHost'] = nil
default['sonarqube']['socksProxyPort'] = nil
default['sonarqube']['http']['proxyUser'] = nil
default['sonarqube']['http']['proxyPassword'] = nil
default['sonarqube']['notifications']['delay'] = 60
default['sonarqube']['log']['profilingLevel'] = 'NONE'

default['sonarqube']['rails']['dev'] = false

default['sonarqube']['extra_properties'] = [
  # 'sonar.security.realm=LDAP',
  # 'sonar.security.savePassword=false'
]
