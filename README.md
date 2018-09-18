## Getting Started
1. Clone repo
2. `docker-compose build`
3. Create and migrate the database in the docker container: `docker exec active-storage-demo_web_1 rails db:create db:migrate`
4. `docker-compose up`

## Adding ActiveJob
1. Install ActiveJob in the docker container: `docker exec active-job-demo_web_1 rails active_storage:install`
3. Create and migrate the database in the docker container: `docker exec active-storage-demo_web_1 rails db:create db:migrate`
5. This adds two tables to your db, which ActiveStorage will use. `active_storage_blobs` and `active_storage_attachments`
6. You should also have a `config/storage.yml` file. That's where you configure your storage options.
7. You can set which storage to use per environment in the environments files. See `config/environments/development.rb` and look at the `config.active_storage.service` setting. By default it references the `local` storage.
8. Active storage has built in storage adapters for common storage options like S3. See `config/storage.yml` for commented examples.

### Reference
Check out the Rails ActiveJob docs here https://guides.rubyonrails.org/v4.2/active_job_basics.html

## Challenge
