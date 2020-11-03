require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

import "bootstrap";

import { initChangeFollowLink } from '../components/follow-link';
import { greetingHomePage } from '../components/greeting';
import { deletePost, deleteComment } from '../plugins/init_sweetalert';

document.addEventListener('turbolinks:load', () => {
  initChangeFollowLink();
  greetingHomePage();
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
    button: 'Delete',
    dangerMode: true,
  }, (value) => {
    if (value) {
      const links = document.querySelectorAll("#link");
      links.forEach((link) => {
        link.click();
      })
    }
  });
});
