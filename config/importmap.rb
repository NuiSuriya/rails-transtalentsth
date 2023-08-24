# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"
pin "bootstrap", to: "bootstrap.min.js", preload: true
pin "@popperjs/core", to: "popper.js", preload: true
pin "sweetalert2", to: "https://ga.jspm.io/npm:sweetalert2@11.7.23/dist/sweetalert2.all.js"
pin "swiper/element/bundle", to: "https://ga.jspm.io/npm:swiper@10.2.0/swiper-element-bundle.mjs"
