import * as tremor from "@tremor/react";
import { ButtonAdapter, InputAdapter } from "@/shiny.react";

export const Button = ButtonAdapter(tremor.Button);

export const TextInput = InputAdapter(tremor.TextInput, (value, setValue) => ({
  value: value,
  onChange: (event) => {
    setValue(event.target.value);
  },
}));
