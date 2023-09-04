---
layout: default

components:
  info-cards:
    contact-us:
      phone: 932 50 540
      emergency: 931 53 234
      email: contact@yoursite.com
    working-hours:
      monday_friday: 9:00 – 18:00
      saturday: 10:00 – 17:00
      sunday: 10:00 – 15:00
    location:
      street: Von schroeders 273
      city: Viña del mar - Chile
  panels:
    media-object:
      title: About Us
      subtitle: Welcome to DentistSmile
      body: Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perspiciatis nostrum ab vero temporibus magnam, delectus!
      media-objects:
        - {icon: heart, body: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veniam explicabo unde doloremque quo, fugit, nisi."}
        - {icon: medkit, body: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veniam explicabo unde doloremque quo, fugit, nisi."}
        - {icon: star, body: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veniam explicabo unde doloremque quo, fugit, nisi."}
---
{% include components/hero/bootstrap.liquid 
   title="DentistSmile"
   description="A responsive Jekyll theme for dental clinics."
%}

<div class="three-shade-col">
  {% include components/info-cards/contact-us.liquid %}
  {% include components/info-cards/working-hours.liquid %}
  {% include components/info-cards/location.liquid %}
</div>

<div id="about" class="about">
  <div class="container-fluid">
    {% include components/panels/media-object.liquid %}
  </div>
</div>

<!-- Start Treatments -->
<div id="treatments" class="treatments">
    <div class="container-fluid">
        <h2 class="section-title">Treatments</h2>

        <div class="row">
            {% for treatment in site.data.treatments %}
                <div class="col-sm-6 col-md-4">
                    <div class="icon-box">
                        {% include components/icons/icon.liquid icon=treatment.icon %}
                        <h4>{{ treatment.title }}</h4>
                        <p>{{ treatment.description }}</p>
                    </div>
                </div>
            {% endfor %}
        </div>
    </div>
</div>
<!-- End Treatments -->

<!-- Start Our team -->
<div id="team" class="team"> 
    <h2 class="section-title">Our Team</h2> 
    <div id="team-carousel">
    {% for member in site.data.team %}
        <div class="expandable-box">
            <div class="expandable-box-top">
                <img src="{{ member.name | slugify | prepend: '/assets/components/carousels/' | append: '.jpg' | relative_url }}" alt="{{ member.name }}">
                <h4>{{ member.name }}</h4>
            </div>
            <div class="expandable-box-bottom">
                <span data-toggle="tooltip" data-placement="bottom" title="{{ member.email }}">
                    {% include components/icons/icon.liquid icon="envelope" %}
                </span>
                <span data-toggle="tooltip" data-placement="bottom" title="{{ member.phone }}">
                    {% include components/icons/icon.liquid icon="phone" %}
                </span>
            </div>
        </div>
    {% endfor %}
    </div>
</div>
<!-- End Our team -->

<!-- Start Testimonials -->
<div id="testimonials" class="testimonials parallax" style="background-image: url('{{ site.baseurl }}/img/{{ site.testimonials.testimonials_img }}');">
    <div class="overlay-container">
        <div class="overlay"></div>
        <div class="container-fluid">
            <div id="testimonial-carousel">
                {% for testimonial in site.data.testimonials %}
                    <div class="testimonial-item">
                        {% include components/icons/icon.liquid icon="quote-left" %}
                        <blockquote>
                            <p>{{ testimonial.description }}</p>
                            <footer>
                                {{ testimonial.name }}
                                <small>{{ testimonial.title }}</small>
                            </footer>
                        </blockquote>
                    </div>
                {% endfor %}
            </div>
        </div>
    </div>
</div>
<!-- End Testimonials -->

<!-- Start Gallery -->
<div id="gallery" class="gallery">
        
    <h2 class="section-title">Gallery</h2>

    {% for images in site.data.gallery %}
        <a href="{{ site.baseurl }}/img/gallery/large/{{ images.image_large }}" class="gallery-item expandable-box image-link">
            <div class="expandable-box-top">
                <img src="{{ site.baseurl }}/img/gallery/thumb/{{ images.image_thumb }}" alt="{{ images.image_alt }}">
            </div>
            <div class="expandable-box-bottom">
                <span>
                    {% include components/icons/icon.liquid icon="chain" %}
                </span>
            </div>
        </a>
    {% endfor %}

</div>
<!-- End Gallery -->

<!-- Start Map -->
<div id="location" class="map" data-zoom="{{ site.map.zoom }}" data-address="{{ site.map.address }}" data-address-details="<img src='{{ site.map.address_details }}'>"></div>
<!-- End Map -->
