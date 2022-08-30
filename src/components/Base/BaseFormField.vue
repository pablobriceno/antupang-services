<template>
  <div
    class="form__field"
    :class="{ iconized: icono, checkbox, select, spacer, large, textarea }"
  >
    <template v-if="!spacer">
      <label v-if="label" :for="id"
        ><span v-if="required">*</span>{{ label }}</label
      >
      <input
        v-if="!$slots.default"
        :id="id"
        :type="type"
        :minlength="minlength"
        :maxlength="maxlength"
        :value="value"
        :required="required"
        :disabled="disabled"
        :placeholder="placeholder"
        :readonly="readonly"
        @input="handleChange"
        ref="input"
      />
      <slot></slot>
      <!--  <base-icono :icono="icono" /> -->
      <div v-if="type === 'password'" @click="mostrarContrasena" class="eye">
        <base-icono icono="ojo" />
      </div>
    </template>
    <template v-else>
      <label for="spacer">Spacer</label>
      <input type="text" id="spacer" />
    </template>
  </div>
</template>

<script>
export default {
  name: "BaseCampoForm",
  props: {
    id: String,
    type: String,
    minlength: String,
    maxlength: String,
    value: [String, Number, Boolean],
    label: String,
    icono: String,
    select: Boolean,
    textarea: Boolean,
    checkbox: Boolean,
    spacer: Boolean,
    required: Boolean,
    large: Boolean,
    disabled: Boolean,
    placeholder: String,
    readonly: Boolean,
  },
  methods: {
    handleChange(e) {
      this.$emit("input", e.target.value);
    },
    mostrarContrasena() {
      let input = this.$refs.input;
      if (input.type === "password") {
        input.type = "text";
      } else {
        input.type = "password";
      }
    },
  },
};
</script>

<style lang="scss" scoped>
.form__field {
  display: flex;
  flex-direction: column;
  width: 100%;

  span {
    color: red;
    margin-right: 0.2rem;
  }

  /* Estilos para campo con icono */
  &.iconized {
    position: relative;

    input {
      padding-left: 40px;

      &:focus ~ svg {
        color: hsl(var(--bg-lightblue));
      }
    }

    svg {
      position: absolute;
      bottom: 27px;
      left: 12px;
      width: 20px;
      height: 20px;
      color: rgba(0, 0, 0, 0.3);
    }

    .eye {
      position: absolute;
      bottom: 27px;
      right: 12px;
      left: initial;
      width: 20px;
      height: 20px;

      svg {
        position: initial;
        bottom: initial;
        left: initial;
        right: initial;

        &:hover {
          color: #000;
        }
      }
    }
  }

  /* Estilos para campo de tipo checkbox */
  &.checkbox {
    > div {
      display: flex;
      max-width: 100%;
      height: 50px;

      label {
        display: flex;
        justify-content: center;
        align-items: center;
        background-color: #fff;
        color: hsl(var(--bg-lightblue));
        width: 100%;
        margin: 0;
        padding: 0;
        min-height: 43.2px;
        cursor: pointer;
        text-align: center;
        border: 2px solid hsl(var(--bg-lightblue));
        font-size: clamp(0.7rem, -0.875rem + 8.333vw, 1rem);
        transition: background 300ms, color 300ms, border 300ms;
      }
    }

    input {
      display: none;

      &:checked + label {
        background-color: hsl(var(--bg-lightblue));
        color: #fff;
        border-color: hsl(var(--bg-lightblue));
      }
    }
    input:disabled + label {
      cursor: not-allowed;
    }
  }

  /* Estilos para campo invisible */
  &.spacer {
    opacity: 0;
    visibility: 0;
    user-select: none;
    pointer-events: none;
    transform: scale(0);
  }
}
</style>
