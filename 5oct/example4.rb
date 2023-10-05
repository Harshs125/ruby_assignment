class Company
    attr_reader:job_title
    attr_writer:job_title
    def initialize(job_title)
        @job_title=job_title
    end
    # def job_title 
    #     @job_title
    # end
    # def job_title=(job_title)
    #     @job_title=job_title
    # end

end

nilesh=Company.new("developer")
nilesh.job_title="Designer"
puts nilesh.job_title