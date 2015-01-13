class Job
  @@all_jobs = []

  define_method(:initialize) do |title, employer, duration, comments|
   @title = title
   @employer = employer
   @duration = duration
   @comments = comments
  end

  define_method(:title) do
    @title
  end

  define_method(:employer) do
    @employer
  end

  define_method(:duration) do
    @duration
  end

  define_method(:comments) do
    @comments
  end

  define_singleton_method(:all) do
    @@all_jobs
  end

  define_method(:save) do
    @@all_jobs.push(self)
  end

  define_singleton_method(:clear) do
    @@all_jobs = []
  end

end
