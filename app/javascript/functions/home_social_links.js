const socialLinks = () => {
  const socialLinks = document.querySelectorAll("#social-link")
  socialLinks.forEach((socialLink) => {
    if (socialLink) {
      socialLink.addEventListener('mouseover', (e) => {
        if (!socialLink.innerHTML.includes('<i class="far fa-arrow-alt-circle-right"></i>')) {
          socialLink.innerHTML += '<i class="far fa-arrow-alt-circle-right"></i>'
        } else {
          socialLink.innerHTML += ''
        }
      }, {once: true})
    }
  })
}

export { socialLinks }
