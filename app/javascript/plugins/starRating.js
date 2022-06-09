import "jquery-bar-rating";
import $ from 'jquery'; 

const starRating = () => {
  $('#review_rating').barrating({
    theme: 'css-stars'
  });
}

export {starRating};