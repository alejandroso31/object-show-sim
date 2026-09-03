#!/usr/bin/env ruby
module Grammar::Controls
	def self.name(control)
		names = {
			select: {
				en: "Select",
				es: "Elegir"
			},
			accept: {
				en: "Accept",
				es: "Aceptar"
			},
			increase: {
				en: "Increase",
				es: "Aumentar"
			},
			decrease: {
				en: "Decrease",
				es: "Disminuir"
			},
			delete: {
				en: "Delete",
				es: "Borrar"
			},
			type: {
				en: "Type",
				es: "Escribir"
			},
			continue: {
				en: "Continue",
				es: "Continuar"
			}
		}
		names[control][$language]
	end

	def self.key(key)
		names = {
			up: {
				en: "Up",
				es: "Arriba"
			},
			down: {
				en: "Down",
				es: "Abajo"
			},
			left: {
				en: "Left",
				es: "Izquierda"
			},
			right: {
				en: "Right",
				es: "Derecha"
			},
			enter: {
				en: "Enter",
				es: "Enter"
			},
			space: {
				en: "Space",
				es: "Espacio"
			},
			backspace: {
				en: "Backspace",
				es: "Retroceso"
			},
			any: {
				en: "Any key",
				es: "Cualquier tecla"
			}
		}
		names[key][$language]
	end
end