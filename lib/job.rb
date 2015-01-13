class Job
  @@all_jobs = []

  define_method(:initialize) do |title, employer, duration|
   @title = title
   @employer = employer
   @duration = duration
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
