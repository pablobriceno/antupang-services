<template>
  <div class="home">
    <section class="main__section">
      <h1>Reparación y mantención de computadores y notebooks</h1>
      <div class="divider light"></div>
      <h2>Servicio Técnico Profesional</h2>
      <form class="main__form" @submit.prevent="sendForm">
        <div class="form__header">
          <p class="form__title">Cotización</p>
          <p class="text-required">
            Campos obligatorios (<span class="red">*</span>)
          </p>
        </div>

        <div class="divider"></div>
        <div class="form__fields">
          <base-form-field label="tipo de servicio" select required>
            <select
              name="tipo_servicio"
              id="tipo_servicio"
              v-model="form.tipo_servicio"
            >
              <option value="reparacion">Reparación de Notebook y PC</option>
              <option value="armado">Armado de PC</option>
              <option value="mantenimiento">
                Mantenimiento de Notebook y PC
              </option>
            </select>
          </base-form-field>

          <base-form-field
            label="nombre"
            placeholder="Ingrese su primer nombre"
            type="text"
            minlength="2"
            maxlength="20"
            v-model="form.nombre"
            id="nombre"
            required
          />
          <base-form-field
            label="apellido"
            placeholder="Ingrese su primer apellido"
            type="text"
            minlength="2"
            maxlength="20"
            v-model="form.apellido"
            id="apellido"
            required
          />
          <base-form-field
            label="Celular"
            placeholder="9XXXXXXXX"
            type="text"
            minlength="9"
            maxlength="9"
            v-model="form.nro_celular"
            id="nro_celular"
            required
          />
          <base-form-field
            label="email"
            placeholder="Ingrese su correo electronico"
            type="email"
            minlength="2"
            maxlength="100"
            v-model="form.email"
            id="email"
            required
          />
          <base-form-field label="mensaje">
            <textarea
              required
              name="mensaje"
              id="mensaje"
              maxlength="300"
              placeholder="Ingrese cualquier duda o consulta que tenga"
              v-model="form.mensaje"
            ></textarea>
          </base-form-field>
        </div>
        <div class="form__submit">
          <button type="submit">Cotizar</button>
        </div>
      </form>
    </section>
    <section class="services">
      <div class="section__title">
        <h2>Nuestros servicios</h2>
        <div class="divider"></div>
        <p>
          Somos expertos en soporte y servicio técnico de notebooks y
          computadores. Reparamos y mantenemos todo tipo de equipos
          tecnológicos.
        </p>
      </div>
      <div class="section__body">
        <div class="service-box">
          <img src="@/assets/images/fix.png" alt="" />
          <p>Reparación de computadores y notebooks</p>
        </div>
        <div class="service-box">
          <img src="@/assets/images/windows.png" alt="" />
          <p>Instalación de sistemas operativos.</p>
        </div>
        <div class="service-box">
          <img src="@/assets/images/virus.png" alt="" />
          <p>Solución a problemas de virus.</p>
        </div>
        <div class="service-box">
          <img src="@/assets/images/settings.png" alt="" />
          <p>Configuración, formateos, traspasos de archivos,etc.</p>
        </div>
        <div class="service-box">
          <img src="@/assets/images/upgrade.png" alt="" />
          <p>Modernización, upgrade de memoria y mucho más.</p>
        </div>
        <div class="service-box">
          <img src="@/assets/images/clean.png" alt="" />
          <p>Limpieza de notebooks y PC.</p>
        </div>
      </div>
    </section>
    <section class="feedback gray-bg">
      <div class="section__title">
        <h2>¿Qué opinan nuestros clientes?</h2>
        <div class="divider"></div>
      </div>
      <div class="section__body">
        <div class="testimony">
          <div class="testimony__header">
            <p>
              Buen diagnóstico y pronta reparación. Se ha realizado
              satisfactoriamente.
            </p>
            <div class="arrow"></div>
          </div>
          <div class="testimony__image">
            <img
              src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/331810/sample47.jpg"
              alt=""
            />
          </div>
          <div class="testimony__footer">
            <span>Julio Carrera</span>
            <p>- Naturopata</p>
          </div>
        </div>
        <div class="testimony">
          <div class="testimony__header">
            <p>
              Muy buen servicio, muy profesional y trabaja en tiempo récord.
              100% recomendable.
            </p>
            <div class="arrow"></div>
          </div>
          <div class="testimony__image">
            <img
              src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/331810/sample17.jpg"
              alt=""
            />
          </div>
          <div class="testimony__footer">
            <span>Isabel Arancibia</span>
            <p>- Secretaria</p>
          </div>
        </div>
        <div class="testimony">
          <div class="testimony__header">
            <p>Excelente servicio!! Mi pc quedo super gracias.</p>
            <div class="arrow"></div>
          </div>
          <div class="testimony__image">
            <img
              src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/331810/sample3.jpg"
              alt=""
            />
          </div>
          <div class="testimony__footer">
            <span>Kaitiare Carrera</span>
            <p>- Tens</p>
          </div>
        </div>
        <div class="testimony">
          <div class="testimony__header">
            <p>Excelente se pudo revivir mi notebook 😊, lo recomiendo.</p>
            <div class="arrow"></div>
          </div>
          <div class="testimony__image">
            <img
              src="http://tusimagenesde.com/wp-content/uploads/2018/02/fotos-de-personas-2.jpg"
              alt=""
            />
          </div>
          <div class="testimony__footer">
            <span>Caroline Pasten</span>
            <p>- Estudiante</p>
          </div>
        </div>
      </div>
    </section>
    <section>
      <div class="section__title">
        <h2 class="medium-text">Trabajamos con las siguientes marcas</h2>
        <div class="divider"></div>
        <carousel>
          <carousel-slide
            v-for="slide in slides"
            :key="slide"
            class="carousel-slider"
          >
            <img :src="slide" :alt="slide" />
          </carousel-slide>
        </carousel>
      </div>
    </section>
    <section class="gray-bg">
      <div class="cta">
        <div class="section__title">
          <h2 class="medium-text">¿Tu notebook o PC anda lento?</h2>
          <p>¡Cotiza una modernización con nosotros!</p>
        </div>
        <div class="section__cta">
          <button @click="wsp">Háblanos</button>
        </div>
      </div>
    </section>
    <section class="find-us">
      <div class="section__title">
        <h2>Encuéntranos</h2>
        <p>
          Servicio técnico de computadores y Notebook, reparaciones y
          mantenciones de hardware y software
        </p>
      </div>
      <div class="section__body">
        <iframe
          src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3326.5614519308638!2d-70.6827088!3d-33.5127853!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9662db3ce0d54e73%3A0x2ea5dd065844d226!2sIn%C3%A9s%20de%20Su%C3%A1rez%206886%2C%20Lo%20Espejo%2C%209120831%2C%20Regi%C3%B3n%20Metropolitana!5e0!3m2!1ses!2scl!4v1659897998348!5m2!1ses!2scl"
          width="600"
          height="450"
          style="border: 0"
          allowfullscreen=""
          loading="lazy"
          referrerpolicy="no-referrer-when-downgrade"
        ></iframe>
      </div>
    </section>
  </div>
</template>

<script>
import Carousel from "@/components/carousel/Carousel.vue";
import CarouselSlide from "@/components/carousel/CarouselSlide";
export default {
  name: "HomeView",
  data() {
    return {
      form: {
        tipo_servicio: "reparacion",
        nombre: "",
        apellido: "",
        nro_celular: "",
        email: "",
        mensaje: "",
      },
      slides: [
        require("@/assets/images/toshiba.png"),
        require("@/assets/images/acer.png"),
        require("@/assets/images/samsung.png"),
        require("@/assets/images/asus.png"),
        require("@/assets/images/hp.png"),
        require("@/assets/images/lenovo.png"),
        require("@/assets/images/dell.png"),
        require("@/assets/images/mac.png"),
      ],
    };
  },
  components: {
    Carousel,
    CarouselSlide,
  },
  methods: {
    sendForm() {
      alert("Sus datos han sido enviados");
    },
    wsp() {
      window.open(
        `https://wa.me/56953814720?text=Hola,%20necesito%20una%20cotización`,
        "_blank",
        "noopener, noreferrer"
      );
    },
  },
};
</script>

<style lang="scss" scoped>
section {
  padding: 48px 5%;
}

.main__section {
  background-image: url("https://www.inspirecaymantraining.com/wp-content/uploads/2020/07/Computer.jpg");
  h1,
  h2 {
    text-align: center;
  }

  h1 {
    color: #fff;
  }

  h2 {
    margin-bottom: 48px;
    color: #dd9933;
    font-size: 32px;
  }
}
.main__form {
  border-radius: 8px;
  background-color: #fff;
  box-shadow: rgb(0 0 0 / 12%) 0px 2px 8px;
  padding: 24px;
  max-width: 750px;

  .form__header {
    display: flex;
    flex-direction: column;
    .form__title {
      font-size: 20px;
      font-weight: 600;
      text-align: center;
    }
    .text-required {
      text-align: center;
    }
  }

  .form__fields {
    display: flex;
    flex-wrap: wrap;
    gap: 24px;
    margin-bottom: 24px;
  }

  .form__submit {
    display: flex;
    justify-content: center;
    align-items: flex-start;
  }
}

.services {
  .service-box {
    display: flex;
    flex-direction: column;
    align-items: center;
    gap: 12px;
    background-color: rgba(0, 0, 0, 0.1);
    border-radius: 8px;
    padding: 24px;
    max-width: 400px;
    min-height: 220px;

    img {
      width: 100px;
      height: 100px;
    }

    p {
      font-weight: 600;
      font-size: 18px;
      text-align: center;
      color: #4a4a4a;
    }
  }
}
.gray-bg {
  background-color: #e7e4e445;
}

.testimony {
  border-radius: 8px;
  background-color: #fff;
  box-shadow: rgb(0 0 0 / 12%) 0px 2px 8px;
  max-width: 400px;

  &__header {
    padding: 24px 48px;
    font-style: italic;
    position: relative;
    line-height: 1.6em;
    text-align: center;
    font-size: 14px;

    .arrow {
      top: 100%;
      left: 50%;
      width: 0;
      height: 0;
      border-left: 0 solid transparent;
      border-right: 25px solid transparent;
      border-top: 25px solid #ffffff;
      margin: 0;
      position: absolute;
    }
  }

  &__image {
    height: 245.6px;
    overflow: hidden;
    img {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }
  }

  &__footer {
    display: flex;
    justify-content: flex-start;
    align-items: flex-start;
    padding: 6px 24px;

    span {
      font-weight: 600;
      margin-right: 12px;
      text-transform: uppercase;
    }
  }
}

.section__title {
  margin-bottom: 24px;
  text-align: center;
  font-size: 32px;

  h2 {
    font-size: 40px;
  }

  p {
    color: rgba(0, 0, 0, 0.75);
    font-size: 16px;
  }
}

.section__body {
  display: flex;
  flex-direction: column;
  gap: 24px;

  iframe {
    width: 100%;
    height: 250px;
  }
}

.testimony__header p:before,
.testimony__header p:after {
  font-family: "FontAwesome";
  content: "\201C";
  position: absolute;
  font-size: 50px;
  opacity: 0.3;
  font-style: normal;
}
.testimony__header p:before {
  top: 25px;
  left: 20px;
}
.testimony__header p:after {
  content: "\201D";
  right: 20px;
  bottom: 0;
}

.carousel-slider {
  position: absolute;
  top: 0;
  left: 0;
  bottom: 0;
  right: 0;
  display: flex;
  justify-content: center;
  align-items: center;
}
.carousel-slider img {
  width: 150px;
  height: 150px;
}

.cta {
  background-color: #01578c;
  border-radius: 8px;
  padding: 48px 12px;

  .section__title {
    h2 {
      color: #fff;
      font-size: 32px;
    }

    p {
      color: #fff;
      font-weight: 600;
    }
  }

  .section__cta {
    display: flex;
    justify-content: center;
    button {
      background-color: #d93;
      width: 50%;
    }
  }
}

.find-us {
  .section__title {
    p {
      font-weight: 600;
    }
  }
}
</style>
