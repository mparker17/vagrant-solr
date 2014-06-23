# vagrant-solr

By [M Parker](https://github.com/mparker17).

## Description

A sample Vagrant script for setting up an [Apache Solr](http://lucene.apache.org/solr/) instance.

## Installation

1. Ensure you have [Bundler](http://bundler.io/) installed: `gem install bundler`.
2. Clone this project: `git clone --recursive git@github.com:mparker17/vagrant-solr.git`.
3. Install vagrant plugins:

		vagrant plugin install vagrant-librarian-puppet
		vagrant plugin install vagrant-hostmanager

4. Install dependencies: `bundle install`.
5. Bring up the machine for the first time: `bundle exec vagrant up` (this might take a while).

## Usage

1. Bring up the machine: `bundle exec vagrant up`.
2. Do your work. The guest machine's Solr interface will be available at `http://solr:8080/solr`.
3. When you're done working, stop the machine: `bundle exec vagrant halt`, or delete the machine: `bundle exec vagrant destroy`
