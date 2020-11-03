const initChangeFollowLink = () => {
  const links = document.querySelectorAll('.follow-link')
  links.forEach((link) => {
    if (link) {
      console.log(link);
      link.addEventListener('click', (event) => {
        event.target.innerText = 'Unfollow'
        event.target.classList.add('change-follow-link')
      });
    }
  })
}

const initChangeUnfollowLink = () => {
  const unfollowLinks = document.querySelectorAll('.unfollow-link')
  unfollowLinks.forEach((unfollowLink) => {
    if (unfollowLink) {
      unfollowLink.addEventListener('click', (event) =>{
        event.target.innerText = 'Follow'
        event.target.classList.add('change-unfollow-link')
      });
    }
  })
}


export { initChangeFollowLink, initChangeUnfollowLink };
