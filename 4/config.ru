require './my_application'
require './logger'
require './prettifier'

use Logger
use Prettifier
run MyApplication.new
