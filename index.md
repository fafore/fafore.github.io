---
layout: default

components:
  info-cards:
    contact-us:
      phone: 614 289 8591
      email: faforeac@gmail.com
    working-hours:
      workdays: 9:00 – 18:00
      weekends: 9:00 – 15:00
    location:
      street: "Ave. Deza y Ulloa #2910-19"
      city: Col. San Felipe 1, Chih, Chih, México.
  panels:
    media-object:
      title: Nosotros
      subtitle: Bienvenido a FAFORE AC
      body: FAFORE, es una asociación civil, creada con el propósito de brindar las herramientas necesarias,  para que las niñas, niños y adolescentes, hij@s de mujeres privadas de la libertad, puedan enfrentar las adversidades que se les presentan día a día, obstaculizando su desarrollo, al no contar con uno de los pilares fundamentales en su  vida, su MADRE.
      media-objects:
        - {icon: heart, body: "Amor"}
        - {icon: medkit, body: "Empatia"}
        - {icon: star, body: "Compromiso"}
        - {icon: star, body: "Lealtad"}
---
{% include components/hero/bootstrap.liquid 
   title="FAFORE AC"
   description="Ayuda a los hij@s de mujeres privadas de la libertad"
%}

<div class="three-shade-col">
  {% include components/info-cards/contact-us.liquid %}
  {% include components/info-cards/working-hours.liquid %}
  {% include components/info-cards/location.liquid %}
</div>

<div id="nosotros" class="about">
  <div class="container-fluid">
    {% include components/panels/media-object.liquid %}
  </div>
</div>

<div id="testimonios" class="testimonials parallax" style="background-image: url('{{ site.baseurl }}/img/{{ site.testimonials.testimonials_img }}');">
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

<div id="galeria" class="gallery">
        
    <h2 class="section-title">Galería</h2>

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

<div id="patrocinadores" class="team"> 
  <h2 class="section-title">Nuestros patrocinadores</h2>

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

<div id="convenios" class="treatments">
  <div class="container-fluid">
    <h2 class="section-title">Convenios</h2>
    <div class="row">
      {% for treatment in site.data.treatments %}
        <div class="col-sm-6 col-md-4">
          <div class="icon-box">
            {% include components/icons/icon.liquid icon=treatment.icon color="danger" %}
            <h4>{{ treatment.title }}</h4>
            <p>{{ treatment.description }}</p>
          </div>
        </div>
      {% endfor %}
    </div>
  </div>
</div>

<div id="localizanos" style="height: 450px">
  {% include components/maps/google.liquid
     height="450"
     url="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1702.9144635052332!2d-106.09519974909949!3d28.642364452199466!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x86ea4375b348b18b%3A0x156e120bfd807a84!2sFAFORE%20A.C.!5e0!3m2!1ses-419!2smx!4v1694552735812!5m2!1ses-419!2smx"
  %}
</div>
