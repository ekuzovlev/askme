require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()

import '../scripts/script'
import '../styles/application'

const images = require.context('../images', true)
