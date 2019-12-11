require 'rails_helper'

RSpec.describe UpdatePriceJob, type: :job do
  #pending "add some examples to (or delete) #{__FILE__}"
  describe "#perform_later" do
    it "Insert On-Demand pricing" do
      ActiveJob::Base.queue_adapter = :test
      expect {
        UpdatePriceJob.set(wait_until: Date.today.midnight, queue: "high").perform_later
      }.to have_enqueued_job
    end
  end
end
