require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

import "bootstrap";

import { initChangeFollowLink, initChangeUnfollowLink } from '../components/follow-link';
import { greetingHomePage } from '../components/greeting';
import { deletePost, deleteComment } from '../plugins/init_sweetalert';
import { socialLinks } from '../functions/home_social_links';
import { initMapbox } from '../plugins/init_mapbox';
import { initAutocomplete } from '../plugins/init_autocomplete';

document.addEventListener('turbolinks:load', () => {
  initChangeFollowLink();
  initChangeUnfollowLink();
  greetingHomePage();
  socialLinks();
  initMapbox();
  initAutocomplete();
  deletePost('#btn-delete', {
  title: "Are you sure?",
  text: "This action cannot be reversed",
  icon: "warning",
  buttons: ['Cancel', 'Delete'],
  dangerMode: true,
  }, (value) => {
    if (value) {
      const link = document.querySelector('#delete-link');
      link.click();
    } else {
      swal('Your post is saved!', {
        icon: 'success',
      })
    }
  });
  deleteComment('#btn-delete-comment', {
    title: 'Are you sure?',
    text: 'This action cannot be reversed',
    icon: 'warning',
    buttons: ['Cancel', 'Delete'],
    dangerMode: true,
  }, (value) => {
    if (value) {
      const links = document.querySelectorAll("#link");
      links.forEach((link) => {
        link.click();
      })
    } else {
      swal('Your comment is saved!', {
        icon: 'success'
      })
    }
  });
});
