## Getting Started
1. Clone repo
2. `docker-compose build`
3. Create and migrate the database in the docker container: `docker exec active-storage-demo_web_1 rails db:create db:migrate`
4. `docker-compose up`

## Adding ActiveJob
1. Install ActiveJob in the docker container: `docker exec active-job-demo_web_1 rails active_storage:install`

### Reference
Check out the Rails ActiveJob docs here https://guides.rubyonrails.org/v4.2/active_job_basics.html

## Challenge
