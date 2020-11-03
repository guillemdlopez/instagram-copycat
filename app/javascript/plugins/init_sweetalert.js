import swal from 'sweetalert';

const deletePost = (selector, options = {}, callback = () => {}) => {
  const btn = document.querySelector(selector)
    if (btn) {
      btn.addEventListener('click', () => {
        swal(options).then(callback);
      });
    }
};

const deleteComment = (selector, options = {}, callback = () => {}) => {
  const btns = document.querySelectorAll(selector);
  btns.forEach((btn) => {
    if (btn) {
      btn.addEventListener('click', () => {
        swal(options).then(callback);
      })
    }
  });
}




export { deletePost, deleteComment };
