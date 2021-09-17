$(() => {
  window.propertyListing = {};

  function createListing(property, isReservation) {
    return `
    <article class="property-listing">
        <section class="property-listing__preview-image">
          <img src="${property.thumbnail_photo_url}" alt="house">
        </section>
        <section class="property-listing__details">
          <h3 class="property-listing__title">${property.title}</h3>
          <ul class="property-listing__details">
            <li>number_of_bedrooms: ${property.number_of_bedrooms}</li>
            <li>number_of_bathrooms: ${property.number_of_bathrooms}</li>
            <li>parking_spaces: ${property.parking_spaces}</li>
          </ul>
          ${isReservation ?
        `<p>${moment(property.start_date).format('ll')} - ${moment(property.end_date).format('ll')}</p>`
        : ``}
          <footer class="property-listing__footer">
            <div class="property-listing__rating">${Math.round(property.average_rating * 100) / 100}/5 stars</div>
            <div class="property-listing__price">$${property.cost_per_night / 100.0}/night</div>
            <button class="make-reservation">Make Reservation</button>
            <form action="/api/reservations" method="POST" id="new-reservation-form" class="new-reservation-form hidden">
              <div class="new-reservation-form__field-wrapper">
                <input type="number" name="property_id" value="${property.id}" readonly>
              </div>
              <div class="new-reservation-form__field-wrapper">
                <label>Start date</label>
                <input type="date" name="start_date" placeholder="From">
              </div>
              <div class="new-reservation-form__field-wrapper">
                <label>End date</label>
                <input type="date" name="end_date" placeholder="Until">
              </div>
              <div class="new-reservation-form__field-wrapper">
                <button>Create</button>
              </div>
            </form>
          </footer>
          </section>
          </article>
    `
  }

  window.propertyListing.createListing = createListing;

  //   const $newReservationForm = $(`<form action="/api/reservations" method="POST" id="new-reservation-form" class="new-reservation-form">

  //   <div class="new-reservation-form__field-wrapper">
  //     <label>Start date</label>
  //     <input type="date" name="start_date" placeholder="From">
  //   </div>

  //   <div class="new-reservation-form__field-wrapper">
  //     <label>End date</label>
  //     <input type="date" name="end_date" placeholder="Until">
  //   </div>

  //   <div class="new-reservation-form__field-wrapper">
  //         <button>Create</button>
  //     </div>
  // </form>`)

  // window.$newReservationForm = $newReservationForm;


  $('#new-reservation-form').on('submit', function (event) {
    event.preventDefault();

    views_manager.show('none');

    const data = $(this).serialize();
    submitReservation(data)
      .then(() => {
        views_manager.show('listings');
      })
      .catch((error) => {
        console.error(error);
        views_manager.show('listings');
      })
  });

  $('#main-content').on('click', '.make-reservation', function () {
    $('.make-reservation').hide();
    $('.new-reservation-form').removeClass('hidden').attr('display', 'block');
  });
});