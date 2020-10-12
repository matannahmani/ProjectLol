// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";
    var current_star_statusses = [];
    var star_elements;
    star_elements = $('.fa-star').parent();

    star_elements.find(".fa-star").each(function(i, elem)
    {
       current_star_statusses.push($(elem).hasClass('yellow'));
    });

    star_elements.find(".fa-star").mouseenter(changeRatingStars);
    star_elements.find(".fa-star").mouseleave(resetRatingStars);

/**
 * Changes the rating star colors when hovering over it.
 */
function changeRatingStars()
{
    // Current star hovered
    var star = $(this);

  // Removes all colors first from all stars
  $('.fa-star').removeClass('gray').removeClass('yellow');

  // Makes the current hovered star yellow
  star.addClass('yellow');

  // Makes the previous stars yellow and the next stars gray
  star.parent().prevAll().children('.fa-star').addClass('yellow');
  star.parent().nextAll().children('.fa-star').addClass('gray');
}

/**
 * Resets the rating star colors when not hovered anymore.
 */
function resetRatingStars()
{
  star_elements.each(function(i, elem)
                     {
    $(elem).removeClass('yellow').removeClass('gray').addClass(current_star_statusses[i] ? 'yellow' : 'gray');
  });
}const postRate = (playerid,stars) => {
  fetch(`${location}/playerrate`, {
    method: 'post',
    headers:  {
      "Content-Type": "application/json",
      "Accept": "application/json",
      "X-CSRF-Token": document.querySelector('meta[name="csrf-token"]').content
    },
    body: JSON.stringify({
    player: {
      id: playerid,
      star: stars
      }
    })
  });
};
const initpost = (star) => {
  star.forEach ((item) => {
    item.addEventListener('click', (e) => {
      e.preventDefault();
      postRate(parseInt(item.dataset.id),parseInt(item.dataset.star));
      item.parentNode.parentNode.style.display = 'none';
    })
  });
}
document.addEventListener('turbolinks:load', () => {
  const stars =  document.querySelectorAll(".fa-star")
  if (stars !== "undefined" && stars !== null){
    initpost(stars);
  }
});
