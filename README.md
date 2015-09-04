# docker-anemometer
Dockerized image for the Box Anemometer application for monitoring MySQL slow query logs

This image contains the php application that provides the front end to the processed data captured by the pt-query-digest script.

There are 2 other containers involved to complete the application, a mysql instance and a one-shot container that will enable and process the slow query logs from the database server of your choice. You will need to start the mysql instance first, then start the application instance that links to the database.

The intent is to have the app and mysql containers running constantly and then fire up the third container to parse the logs from a crontab.
