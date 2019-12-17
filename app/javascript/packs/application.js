// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("aframe")
require("mxgraph")



require("./mxClient")
require("./js/Init")
require("./deflate/pako.min")
require("./deflate/base64")
require("./jscolor/jscolor")
require("./sanitizer/sanitizer.min")
require("./js/EditorUi")
require("./js/Editor")
require("./js/Sidebar")
require("./js/Graph")
require("./js/Format")
require("./js/Shapes")
require("./js/Actions")
require("./js/Menus")
require("./js/Toolbar")
require("./js/Dialogs")

//require("./js/EditorUi")


require('../app')
// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
