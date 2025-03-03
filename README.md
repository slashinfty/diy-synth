# diy-synth

Checklist (in order):

- [ ] VCO #1
- [ ] Mixer
- [ ] MIDI-to-CV
- [ ] LFO
- [ ] VCA
- [ ] VCF
- [ ] ADSR
- [ ] Mult
- [ ] Delay
- [ ] VCO #2
- [ ] Wavefolder
- [ ] Logic
- [ ] VC Clock
- [ ] Sequencer
- [ ] Divider
- [ ] Chaos
- [ ] Diff
- [ ] Switch
- [ ] Reverb
- [ ] Noise

Current plans:

- VCO #1
  - [https://github.com/kassu/kassutronics/blob/master/documentation/VCO 3340/VCO3340_docs_v2.1_A.pdf](<https://github.com/kassu/kassutronics/blob/master/documentation/VCO 3340/VCO3340_docs_v2.1_A.pdf>)
  - Single V/Oct input
- VCO #2
  - [http://www.fonitronik.de/application/files/7915/5922/3259/TH-VCO-MAXIMUS.pdf](http://www.fonitronik.de/application/files/7915/5922/3259/TH-VCO-MAXIMUS.pdf)
  - Positive polarity only on sub
- LFO
  - [https://www.davidhaillant.com/simple-lfo-1-5/](https://www.davidhaillant.com/simple-lfo-1-5/)
  - Build two on one
- VCA
  - [https://benjiaomodular.com/post/2021-12-17-lm13700-vca/](https://benjiaomodular.com/post/2021-12-17-lm13700-vca/)
  - Build two on one
  - Replace one CV input with offset pot
  - ![](https://i.ibb.co/BCCPWVw/vca-offset.png)
- VCF
  - [https://www.schmitzbits.de/ms20.html](https://www.schmitzbits.de/ms20.html)
  - Replace LEDs around A3 with triple diodes
  - ![](https://i.ibb.co/wNV5pfZ/vcf-diodes.png)
- Envelope
  - [https://benjiaomodular.com/post/2022-02-02-mini-adsr/](https://benjiaomodular.com/post/2022-02-02-mini-adsr/)
- VC Clock & Divider
  - [http://www.modular.fonik.de/Page49.html](http://www.modular.fonik.de/Page49.html)
- Wavefolder
  - [https://www.gerbster.nl/eurorack/wave-folder/](https://www.gerbster.nl/eurorack/wave-folder/)
  - Remove audio-in level
- Buffered Multiplier
  - [https://www.dropbox.com/s/738oddm1nlbos37/Schematic_Buffured-Multiple-3x1-2.pdf?dl=0](https://www.dropbox.com/s/738oddm1nlbos37/Schematic_Buffured-Multiple-3x1-2.pdf?dl=0)
- Delay
  - [https://benjiaomodular.com/post/2022-09-11-mini-delay/](https://benjiaomodular.com/post/2022-09-11-mini-delay/)
- Reverb
  - [https://sdiy.info/wiki/CGS_reverb](https://sdiy.info/wiki/CGS_reverb)
  - Remove left output to output mono
- Sequential Switch
  - [https://www.doepfer.de/faq/a151_sch.gif](https://www.doepfer.de/faq/a151_sch.gif)
- Noise??
  - ![](https://i.ibb.co/TmdFMkD/noise-filter.jpg)
  - ![](https://i.ibb.co/5ByjQMj/noise-gate.jpg)
- Chaos
  - [https://www.nonlinearcircuits.com/modules/p/1u-sloth-chaos](https://www.nonlinearcircuits.com/modules/p/1u-sloth-chaos)
  - Build torpor and apathy
- Difference Rectifier
  - [https://www.nonlinearcircuits.com/modules/p/1u-diff-rect](https://www.nonlinearcircuits.com/modules/p/1u-diff-rect)
  - Build two on one
- Logic
  - [https://github.com/nickajeglin/Eurorack-pcbs/blob/master/analog%20logic%20module/schematic.pdf](https://github.com/nickajeglin/Eurorack-pcbs/blob/master/analog%20logic%20module/schematic.pdf)
  - Remove J3-J6 (J3 becomes offset)
  - Remove comparator (trigger)
- Sequencer
  - [https://benjiaomodular.com/post/2021-04-09-8-step-sequencer/](https://benjiaomodular.com/post/2021-04-09-8-step-sequencer/)
- Mixer
  - [https://musicfromouterspace.com/analogsynth_new/OLDIESBUTGOODIES/AUDIOMIXER/panningmixer.html](https://musicfromouterspace.com/analogsynth_new/OLDIESBUTGOODIES/AUDIOMIXER/panningmixer.html)
- MIDI-to-CV
  - [https://github.com/peterzimon/pico-midi2cv](https://github.com/peterzimon/pico-midi2cv)
  - Remove hardware pitch bend
  - [https://github.com/rppicomidi/midi2usbhost](https://github.com/rppicomidi/midi2usbhost)
  - External power
- Drum Machine
  - [https://www.gerbster.nl/tr82/](https://www.gerbster.nl/tr82/)
  - Trigger push button and output jack on each drum source
  - Internal 555 clock, external clock jack, clock out jack
  - I2C LCD screen to display current status
  - Rotary encoder to select drum and start/stop
  - 16 step pattern switches (input read by 74HC147)
  - LEDs on each step (output by 2x74HC595 - on/off XOR current step)
  - Mixer with master output volume and stereo out jack

For case building:
- Rails
  - [https://www.thingiverse.com/thing:2489238](https://www.thingiverse.com/thing:2489238)