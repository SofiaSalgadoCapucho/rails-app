// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
//require("turbolinks").start()
//require("@rails/activestorage").start()
//require("channels")

// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import { Turbo } from "@hotwired/turbo-rails"
import "controllers";
import * as bootstrap from "bootstrap"
import "@popperjs/core";
import "jquery";
import "@rails/ujs";


document.addEventListener("turbolinks:load", () => {
  var dropdownElementList = [].slice.call(document.querySelectorAll('.dropdown-toggle'))
  var dropdownList = dropdownElementList.map(function (dropdownToggleEl) {
    return new bootstrap.Dropdown(dropdownToggleEl)
  });

   // Initialize tooltips and popovers
  $('[data-toggle="tooltip"]').tooltip()
  $('[data-toggle="popover"]').popover()
});