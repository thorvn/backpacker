module JsonHelper
  def json
    @json ||= JSON.parse(response.body)
  end
end

RSpec.configure do |config|
  config.include JsonHelper, type: :request
  config.include JsonHelper, type: :controller
end
