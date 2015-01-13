require('rspec')
require('job')

describe(Job) do
  before() do
    Job.clear()
  end

  describe("#title") do
    it("allows you to give it a job title") do
      test_job = Job.new("Fry Cook", "McDonald's", "2 months")
      expect(test_job.title()).to(eq("Fry Cook"))
    end
  end

  describe("#employer") do
    it("allows you to input employer") do
      test_job = Job.new("Product Manager", "BIOTRONIK", "1998-2008")
      expect(test_job.employer()).to(eq("BIOTRONIK"))
    end
  end

  describe("#duration") do
    it("allows you to input the duration") do
      vocelli = Job.new("Team Member", "Vocelli's Pizza", "2010-2012")
      expect(vocelli.duration()).to(eq("2010-2012"))
    end
  end

  describe("#save") do
    it("saves the instance within the class array") do
      test_job = Job.new("Jr. Web Developer", "Some Really Cool Company", "1 year")
      test_job.save()
      expect(Job.all()).to(eq([test_job]))
    end
  end

  describe(".all") do
    it("opens an empty class array") do
      expect(Job.all()).to(eq([]))
    end
  end

  describe(".clear") do
    it("clears the array") do
      test_job = Job.new("Designer", "Chanel", "forever")
      test_job.save()
      Job.clear()
      expect(Job.all()).to(eq([]))
    end
  end

end
