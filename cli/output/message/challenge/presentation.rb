#!/usr/bin/env ruby
module Message::Challenge
	def self.presentation(id)
		case id
		when 1
			message = {
				s1: {
					en: "TWO KILOMETER RACE",
					es: "CARRERA DE DOS KILÓMETROS"
				},
				d1: {
					en: "All contestants must compete in a two kilometer race. Whoever comes first wins immunity",
					es: "Todos los concursantes deben competir en una carrera de dos kilómetros. Quien llegue primero gana la inmunidad"
				}
			}
		when 2
			message = {
				s1: {
					en: "ARM WRESTLING",
					es: "VENCIDITAS"
				},
				d1: {
					en: "All contestants will engage in an arm wrestling tournament, the winner gets immunity",
					es: "Todos los concursantes competirán en un torneo de venciditas, quien gane obtiene la inmunidad"
				}
			}
		when 3
			message = {
				s1: {
					en: "STANDING ON THE BAR",
					es: "PARADOS EN LA BARRA"
				},
				d1: {
					en: "Contestants must try to remain standing on a thin bar high above the water, whoever remains last without falling in the water wins immunity",
					es: "Los concursantes deben intentar mantenerse de pie sobre una barra delgada encima del agua, quien permanezca más tiempo sin caer al agua, gana la inmunidad"
				}
			}
		when 4
			message = {
				s1: {
					en: "SUPER HARD PUZZLE",
					es: "ROMPECABEZAS SUPERDIFÍCIL"
				},
				d1: {
					en: "Every contestant must solve an abstract puzzle on their own, whoever finishes first wins immunity",
					es: "Cada concursante debe resolver un rompecabezas abstracto por su cuenta, quien termine primero gana la inmunidad"
				}
			}
		when 5
			message = {
				s1: {
					en: "HALLWAY OF TEMPTATIONS",
					es: "PASILLO DE LAS TENTACIONES"
				},
				d1: {
					en: "All contestants must make it through a long hallway full of extremely enticing and entertaining things without getting distracted, whoever manages to exit first wins immunity",
					es: "Todos los concursantes deben atravesar un largo pasillo lleno de cosas extremadamente atractivas y entretenidas sin distraerse, quien logre salir primero gana la inmunidad"
				}
			}
		when 6
			message = {
				s1: {
					en: "SWINGING AROUND",
					es: "COLUMPIÁNDOSE POR AHÍ"
				},
				d1: {
					en: "A bunch of swinging ropes were set up on top of a bottomless ravine, whoever manages to swing to the other side first without falling in the ravine wins immunity",
					es: "Un montón de cuerdas colgantes fueron colocadas encima de un barranco sin fondo, quien logre columpiarse hasta el otro lado primero sin caer en el barranco gana la inmunidad"
				}
			}
		when 7
			message = {
				s1: {
					en: "THREADMILL CHAOS",
					es: "CAOS EN LA CORREDORA"
				},
				d1: {
					en: "There's a giant threadmill where all the contestants must run on for an indefinite amount of time while they dodge various obstacles, whoever manages to last the longest wins immunity",
					es: "Hay una corredora gigante donde todos los concursantes deben correr por una cantidad indefinida de tiempo mientras esquivan varios obstáculos, quien logre durar más gana la inmunidad"
				}
			}
		when 8
			message = {
				s1: {
					en: "BOWLING NIGHT",
					es: "NOCHE DE BOLOS"
				},
				d1: {
					en: "All the contestants must play bowling, whoever gets the highest score wins immunity",
					es: "Todos los concursantes deben jugar bolos, quien obtenga la puntuación más alta gana la inmunidad"
				}
			}
		when 9
			message = {
				s1: {
					en: "SIMON SAYS",
					es: "SIMÓN DICE"
				},
				d1: {
					en: "All the contestants must play Simon Says, whoever follows the instructions correctly for the longest amount of time wins immunity",
					es: "Todos los concursantes deben jugar a Simón Dice, quien siga las instrucciones correctamente por la mayor cantidad de tiempo gana la inmunidad"
				}
			}
		when 10
			message = {
				s1: {
					en: "WEIGHTLIFT LIKE A STATUE",
					es: "LEVANTA PESAS COMO UNA ESTATUA"
				},
				d1: {
					en: "All the contestants must lift a 10 kilogram weight once and keep it up for as long as possible, the last person to drop their weight wins immunity",
					es: "Todos los concursantes deben lavantar una pesa de 10 kilogramos una única vez y mantenerla levantada por la mayor cantidad de tiempo posible, la última persona en soltar su pesa gana la inmunidad"
				}
			}
		when 11
			message = {
				s1: {
					en: "DEFEAT THE ZOMBIES",
					es: "DERROTA A LOS ZOMBIS"
				},
				d1: {
					en: "Zombies are invading us! Whichever contestant survives and eliminates the most zombies gets immunity",
					es: "¡Nos invaden los zombis! El concursante que sobreviva y elimine a la mayor cantidad de zombis obtiene la inmunidad"
				}
			}
		when 12
			message = {
				s1: {
					en: "WHACK-A-TOUGH-MOLE",
					es: "PÉGALE AL TOPO DUROTE"
				},
				d1: {
					en: "All contestants must play a round of whack-a-mole, except the moles are really tough to whack, whoever whacks the most moles gets immunity",
					es: "Todos los concursantes deben jugar una ronda de pegarle al topo, excepto que los topos son muy duros de golpear, quien logre golpear la mayor cantidad de topos obtiene la inmunidad"
				}
			}
		when 13
			message = {
				s1: {
					en: "PSYCHO CHESS",
					es: "AJEDREZ PSICÓPATA"
				},
				d1: {
					en: "All contestants must play a game of chess against a crazy, unbeatable robot, whoever manages to last the most turns without being chekmated gets immunity",
					es: "Todos los concursantes deben jugar una partida de ajedrez contra un robot loco e invencible, quien logre durar la mayor cantidad de turnos sin quedar en mate obtiene la inmunidad"
				}
			}
		when 14
			message = {
				s1: {
					en: "EWWW!",
					es: "¡GUÁCALA!"
				},
				d1: {
					en: "All contestants must enter a chamber full of bugs and other disgusting things, whoever lasts the longest without fleeing gets immunity",
					es: "Todos los concursantes deben entrar a una cabina llena de bichos y otras cosas asquerosas, quien logre durar más sin huir obtiene la inmunidad"
				}
			}
		when 15
			message = {
				s1: {
					en: "BREADWINNERS",
					es: "GANÁNDOSE EL PAN"
				},
				d1: {
					en: "There's an ungodly amout of loaves of bread in a giant basket, contestants must dive in and deposit the highest quantity of loaves in their own basket as possible, whoever does, gets immunity",
					es: "Hay una cantidad infernal de pedazos de pan en una canasta gigange, los concursantes deben adentrarse y depositar la mayor cantidad de panes posibles en su propia canasta, quien lo haga, obtiene la inmunidad"
				}
			}
		end
		Element.subtitle(message[:s1][$language])
		Element.description(message[:d1][$language])
		Element.controls(["#{Grammar::Controls.key(:any)}: #{Grammar::Controls.name(:continue)}"])
	end
end