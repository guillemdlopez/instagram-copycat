const initChangeFollowLink = () => {
  const link = document.querySelector('.follow-link')
  if (link) {
    link.addEventListener('click', (event) => {
      event.target.innerText = 'Unfollow'
      console.log(event);
      event.target.classList.add('change-follow-link')
    });
  }
}

export { initChangeFollowLink };
