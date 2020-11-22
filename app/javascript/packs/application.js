require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("bootstrap/dist/js/bootstrap")
require("../stylesheets/application.scss")
require("jquery")
require("search_movie")

// scriptタブをビューファイル内に書く場合に必要 Ref:https://teratail.com/questions/280958?link=qa_related_pc
window.jQuery = window.$ = require('jquery')