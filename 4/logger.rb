class Logger
  def initialize(app)
    @app = app
  end

  def call(env)
    STDOUT.write("Started --- Requested Path -- [ #{env['REQUEST_PATH']} ]\n")
    status, headers, body = @app.call(env)
    STDOUT.write("Completed --- Requested Path -- [ #{env['REQUEST_PATH']} ]\n")
    [status, headers, body]
  end
end
