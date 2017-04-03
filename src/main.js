import 'whatwg-fetch'
import riot from 'riot'
import './app.tag'
import './menu-item.tag'

riot.mount('app')

// Reload every hour to get updates remotely
const aHour = 1000 * 60 * 60
window.setTimeout(() => window.reload(), aHour)
