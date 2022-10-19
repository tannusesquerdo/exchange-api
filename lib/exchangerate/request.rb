class Request
  class << self

    def get(path, cache)
      response, status = get_json(path, cache)
      status == 200 ? Result.new(response) : errors(response)
    end

    def errors(response)
      error = { errors: { status: response["status"], message: response["message"] } }
      response.merge(error)
    end

    def get_json(path, cache)
      response =  Rails.cache.fetch(path, expires_in: cache[:expires_in], force: cache[:force]) do
        api.get(path)
      end
      [JSON.parse(response.body), response.status]
    end

    def api
      Connection.api
    end
  end
end