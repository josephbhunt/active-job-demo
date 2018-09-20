## Getting Started
1. Clone repo
2. `docker-compose build`
3. `docker-compose up`
4. Create and migrate the database in the docker container: `docker exec active-job-demo_web_1 rails db:create db:migrate`

### Reference
Check out the Rails ActiveJob docs here https://edgeguides.rubyonrails.org/active_job_basics.html
For image manipulation, check out the Mini Magick docs here https://github.com/minimagick/minimagick
For info on ActiveStorage's image manipulation wrapper around MiniMagick look here https://edgeapi.rubyonrails.org/classes/ActiveStorage/Variant.html

## Challenge
Create an app that allows the user to upload images that will be manupulated asyncronouly from a job queue.

### Adding ActiveJob
1. Add a job called image_converter

### Running your first job
1. Write a job that will change the name of the photo to anything you like.
2. Call the job in the create action.
3. The new photo name should show up on the index page.

### Resize the photo
1. Use minimagick to resize the photo to 100x100 pixels in the image_converter job.
2. The new resized photo should show up on the index page.
HINT: You will have to make sure that the index page shows the changed photo and not the original.
Use something like `photo.images.first.variant(resize: "100x100")` in the job.
You will also have to use `.variant(resize: "100x100")` when you display the image. Read the docs on `.variant` to understnad why. Basically, rails keeps a variant in ActiveStorage under a hash key that is based on the options you pass to `.variant`.

### Set the queue
1. Set the queue for your job as "urgent".

### Wait to process the job
1. Call the job after a 10 second delay. This will appear to happen instantly, because the index page actually converts the image. You can confirm that the job was delayed by waiting for it to show up in the log after the index page renders.

### Use callbacks
1. Before the photo is enqueued, check that the file extention is `.jpeg`, `.jpg`, or `.png`. Raise an exception if it is not to prevent it from being enqueued.

## Bonus points!
### Rescue from an exception
1. Destroy the photo if an `ActiveStorage::InvariableError` error is received. You can test this by uploading a pdf, or other document that you rename to .jpg.
