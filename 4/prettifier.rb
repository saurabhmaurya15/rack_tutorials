class Prettifier
  def initialize(app)
    @app = app
  end

  def call(env)
    status, headers, body = @app.call(env)
    new_body = prettify(status, body)
    [status, headers, new_body]
  end

  def prettify(status, body)
    ["<h2>status: #{status} | #{body.join(',')}</h2>"]
  end
end
