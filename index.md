---
layout: default

components:
  carousels:
    expandable-images:
      sponsors:
        - { name: Britta Perry, email: email@gmail.com, phone: 9659 43 21 }
        - { name: Troy Barnes,  email: email@gmail.com, phone: 9659 43 21 }
        - { name: Annie,        email: email@gmail.com, phone: 9659 43 21 }
        - { name: Jeff Winger,  email: email@gmail.com, phone: 9659 43 21 }
        - { name: Britta Perry, email: email@gmail.com, phone: 9659 43 21 }
        - { name: Troy Barnes,  email: email@gmail.com, phone: 9659 43 21 }
        - { name: Annie,        email: email@gmail.com, phone: 9659 43 21 }
  panels:
    gallery:
      instagram:
        - FAFORE AC
        - Equipo FAFORE! 💪
        - Día de la madre
        - Cartas dirigidas a los menores
        - CERESO
        - Día de la mujer
        - Universidad La Salle
        - Grupo Cimarron
    icon-box:
      agreements:
        - icon: user-md
          title: Invisible braces
          description: Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quam minima, itaque molestiae ut ratione unde?
        - icon: diamond
          title: Cosmetic Dentistry
          description: Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quam minima, itaque molestiae ut ratione unde?
        - icon: flask
          title: Stain removal
          description: Lorem ipsum dolor sit amet, consectetur adipisicing elit. 
        - icon: globe
          title: Dentures
          description: Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quam minima, itaque molestiae ut ratione unde?
        - icon: ambulance
          title: Emergency Calls
          description: Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quam minima, itaque molestiae ut ratione unde?
        - icon: bed
          title: Sedation
          description: Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quam minima, itaque molestiae ut ratione unde?
    media-object:
      subtitle: Bienvenido a FAFORE AC
      media-objects:
        - { icon: heart,  body: Amor       }
        - { icon: leaf,   body: Empatia    }
        - { icon: trophy, body: Compromiso }
        - { icon: star,   body: Lealtad    }
  parallax:
    - name: Jeff Winger
      title: Law Professor - Greendale
      quote: I teach law at Greendale, so believe me, I don't know much about law.
    - name: Jeff Winger
      title: Law Professor - Greendale
      quote: Let's do what people do. Let's get a house we can't afford and a dog that makes us angry.
    - name: Jeff Winger
      title: Law Professor - Greendale
      quote: There already was a rating system in place, it was called 'Cool People Get More,' and it was working fine.
---
{% include components/hero/bootstrap.liquid 
    title="FAFORE AC"
    description="Ayuda a los hij@s de mujeres privadas de la libertad"
%}

<div class="three-shade-col">
  {% include components/info-cards/contact-us.liquid
      phone="614 289 8591"
      email="faforeac@gmail.com"
  %}
  {% include components/info-cards/working-hours.liquid
      workdays="9:00 – 18:00"
      weekends="9:00 – 15:00"
  %}
  {% include components/info-cards/location.liquid
      street="Ave. Deza y Ulloa #2910-19"
      city="Col. San Felipe 1, Chih, Chih, México."
  %}
</div>

<div id="nosotros">
  {% include components/panels/section-title.liquid
      class="panel-section-clean"
      container="container-fluid"
      title="Nosotros"
      component="panels/media-object"
  %}
</div>

<div id="testimonios">
  {% include components/parallax/dentistsmile.liquid %}
</div>

<div id="galeria">
  {% include components/panels/section-title.liquid
      class="gallery"
      title="Galería"
      component="panels/gallery"
      collection="instagram"
  %}
</div>

<div id="patrocinadores">
  {% include components/panels/section-title.liquid
      class="panel-section-primary"
      title="Nuestros patrocinadores"
      component="carousels/expandable-images"
      collection="sponsors"
  %}
</div>

<div id="convenios">
  {% include components/panels/section-title.liquid
      class="panel-section-bg"
      container="container-fluid"
      title="Convenios"
      component="panels/icon-box"
      collection="agreements"
  %}
</div>

<div id="localizanos">
  {% include components/maps/google.liquid
      url="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1702.9144635052332!2d-106.09519974909949!3d28.642364452199466!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x86ea4375b348b18b%3A0x156e120bfd807a84!2sFAFORE%20A.C.!5e0!3m2!1ses-419!2smx!4v1694552735812!5m2!1ses-419!2smx"
  %}
</div>
