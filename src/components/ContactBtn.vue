<template>
  <div class="contact" :class="{ active: isActive }">
    <div class="contactme" @click="isActive = true">
      <p>Contactar</p>
    </div>
    <div class="green">
      <div class="close-btn" @click="isActive = false">
        <svg
          class="form-close"
          xmlns="http://www.w3.org/2000/svg"
          aria-hidden="true"
          role="img"
          width="24px"
          height="24px"
          preserveAspectRatio="xMidYMid meet"
          viewBox="0 0 24 24"
        >
          <path
            fill="currentColor"
            d="M19 6.41L17.59 5L12 10.59L6.41 5L5 6.41L10.59 12L5 17.59L6.41 19L12 13.41L17.59 19L19 17.59L13.41 12L19 6.41z"
          />
        </svg>
      </div>
      <div class="icon" @click="wsp">
        <svg
          xmlns="http://www.w3.org/2000/svg"
          width="1em"
          height="1em"
          preserveAspectRatio="xMidYMid meet"
          viewBox="0 0 24 24"
        >
          <path
            fill="#fff"
            fill-rule="evenodd"
            d="M17.415 14.382c-.298-.149-1.759-.867-2.031-.967c-.272-.099-.47-.148-.669.15c-.198.296-.767.966-.94 1.164c-.174.199-.347.223-.644.075c-.297-.15-1.255-.463-2.39-1.475c-.883-.788-1.48-1.761-1.653-2.059c-.173-.297-.019-.458.13-.606c.134-.133.297-.347.446-.52c.149-.174.198-.298.297-.497c.1-.198.05-.371-.025-.52c-.074-.149-.668-1.612-.916-2.207c-.241-.579-.486-.5-.668-.51c-.174-.008-.372-.01-.57-.01c-.198 0-.52.074-.792.372c-.273.297-1.04 1.016-1.04 2.479c0 1.462 1.064 2.875 1.213 3.074c.149.198 2.095 3.2 5.076 4.487c.71.306 1.263.489 1.694.625c.712.227 1.36.195 1.872.118c.57-.085 1.758-.719 2.006-1.413c.247-.694.247-1.289.173-1.413c-.074-.124-.272-.198-.57-.347Zm-5.422 7.403h-.004a9.87 9.87 0 0 1-5.032-1.378l-.36-.214l-3.742.982l.999-3.648l-.235-.374a9.861 9.861 0 0 1-1.511-5.26c.002-5.45 4.436-9.884 9.889-9.884c2.64 0 5.122 1.03 6.988 2.898a9.825 9.825 0 0 1 2.892 6.993c-.002 5.45-4.436 9.885-9.884 9.885Zm8.412-18.297A11.815 11.815 0 0 0 11.992 0C5.438 0 .102 5.335.1 11.892a11.864 11.864 0 0 0 1.587 5.945L0 24l6.304-1.654a11.881 11.881 0 0 0 5.684 1.448h.005c6.554 0 11.89-5.335 11.892-11.893a11.821 11.821 0 0 0-3.48-8.413"
            clip-rule="evenodd"
          />
        </svg>
        <p>Mensaje</p>
      </div>
      <div class="icon" @click="call">
        <svg
          xmlns="http://www.w3.org/2000/svg"
          width="1em"
          height="1em"
          preserveAspectRatio="xMidYMid meet"
          viewBox="0 0 16 16"
        >
          <path
            fill="none"
            stroke="#fff"
            stroke-linecap="round"
            stroke-linejoin="round"
            stroke-width="1.5"
            d="M1.75 1.75c0 8.5 4 12.5 12.5 12.5v-4l-3.5-1l-1 1.5c-2 0-4.5-2.5-4.5-4.5l1.5-1l-1-3.5zm8 0c2.5 0 4.5 2 4.5 4.5m-4.5-2c1 0 2 1 2 2"
          />
        </svg>
        <p>Llamar</p>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      isActive: false,
    };
  },
  methods: {
    wsp() {
      window.open(
        `https://wa.me/56953814720?text=Hola,%20necesito%20una%20cotización%20para%20mi%20equipo`,
        "_blank",
        "noopener, noreferrer"
      );
    },

    call() {
      window.open("tel:+56935258465");
    },
  },
};
</script>

<style lang="scss" scoped>
.contact {
  position: fixed;
  top: 0;
  left: 0;
  width: 100vw;
  height: 100vh;
  background-color: transparent;
  z-index: 99;
  pointer-events: none;

  &.active {
    .green {
      opacity: 1;
      pointer-events: initial;
    }

    .contactme {
      opacity: 0;
      pointer-events: none;
    }
  }
}
.green {
  background-color: #4bc959;
  height: 100vh;
  width: 100%;
  bottom: 0;
  left: 0;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  gap: 3rem;
  z-index: 99;
  opacity: 0;
  pointer-events: none;
  transition: opacity 300ms ease;
  p {
    color: #fff;
    font-weight: 600;
  }
  .icon {
    display: flex;
    justify-content: center;
    align-items: center;
    border-radius: 8px;
    padding: 12px 24px;
    border: 2px solid #fff;
    gap: 12px;
    width: 200px;
    p {
      color: #fff;
      font-weight: 600;
    }
  }

  svg {
    height: 2.5rem;
    width: 2.5rem;
  }
}

.form-close {
  position: absolute;
  top: 24px;
  right: 24px;
  cursor: pointer;
  opacity: 0.5;
  transform: opacity 300ms ease;
  color: #fff;

  &:hover {
    opacity: 1;
  }
}

.contactme {
  border-top-left-radius: 8px;
  border-top-right-radius: 8px;
  border: 2px solid #fff;
  border-bottom: 0;
  position: fixed;
  bottom: 0;
  left: 50%;
  transform: translateX(-50%);
  background-color: #d93;
  padding: 6px 24px;
  pointer-events: initial;
  cursor: pointer;

  p {
    color: #fff;
    font-weight: 600;
  }
}
</style>
