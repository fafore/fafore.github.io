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
    gallery:
      - FAFORE AC
      - Equipo FAFORE! 💪
      - Día de la madre
      - Cartas dirigidas a los menores
      - CERESO
      - Día de la mujer
      - Universidad La Salle
      - Grupo Cimarron
    icon-box:
      convenios:
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
      title: Nosotros
      subtitle: Bienvenido a FAFORE AC
      body: FAFORE, es una asociación civil, creada con el propósito de brindar las herramientas necesarias,  para que las niñas, niños y adolescentes, hij@s de mujeres privadas de la libertad, puedan enfrentar las adversidades que se les presentan día a día, obstaculizando su desarrollo, al no contar con uno de los pilares fundamentales en su  vida, su MADRE.
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
  {% include components/info-cards/contact-us.liquid %}
  {% include components/info-cards/working-hours.liquid %}
  {% include components/info-cards/location.liquid %}
</div>

<div id="nosotros" class="about">
  <div class="container-fluid">
    {% include components/panels/media-object.liquid %}
  </div>
</div>

{% include components/parallax/dentistsmile.liquid 
   name="testimonios"
%}

<div id="galeria" class="gallery">
  {% include components/panels/gallery.liquid %}
</div>

<div id="patrocinadores">
  {% include components/panels/section-title.liquid
     title="Nuestros patrocinadores"
     component="carousels/expandable-images"
     collection="sponsors"
  %}
</div>

<div id="convenios" class="treatments">
  <div class="container-fluid">
    <h2 class="section-title">Convenios</h2>
      {% include components/panels/icon-box.liquid
         collection="convenios"
      %}
  </div>
</div>

<div id="localizanos" style="height: 450px">
  {% include components/maps/google.liquid
     height="450"
     url="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1702.9144635052332!2d-106.09519974909949!3d28.642364452199466!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x86ea4375b348b18b%3A0x156e120bfd807a84!2sFAFORE%20A.C.!5e0!3m2!1ses-419!2smx!4v1694552735812!5m2!1ses-419!2smx"
  %}
</div>
