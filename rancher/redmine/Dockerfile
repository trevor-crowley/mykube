FROM bitnami/redmine:latest

RUN install_packages build-essential default-libmysqlclient-dev libpq-dev libmagickwand-dev

WORKDIR /opt/bitnami/redmine

COPY redmine_agile /opt/bitnami/redmine/plugins/redmine_agile
COPY redmine_checklists /opt/bitnami/redmine/plugins/redmine_checklists
RUN bundle config unset deployment && bundle install --no-deployment
