require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

import "bootstrap";

import { initChangeFollowLink } from '../components/follow-link';

document.addEventListener('turbolinks:load', () => {
  initChangeFollowLink();
});
