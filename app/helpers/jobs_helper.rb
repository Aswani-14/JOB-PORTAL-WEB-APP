module JobsHelper

  def formatted_title(job)
    "💼 #{job.title} - #{job.company}"
  end

end
