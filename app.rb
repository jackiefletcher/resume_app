require("sinatra")
require("sinatra/reloader")
also_reload("/lib/**/*.rb")
require("./lib/job")

get("/") do
  @jobs = Job.all()
  erb(:index)
end


post("/resume") do
  title = params.fetch("title")
  employer= params.fetch("employer")
  duration = params.fetch("duration")
  comments = params.fetch("comments")
  job = Job.new(title, employer, duration, comments)
  job.save()
  redirect("/")
end
