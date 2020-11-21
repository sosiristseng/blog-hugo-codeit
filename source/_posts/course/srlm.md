---
title: "Super-resolution microscopy techniques"
date: 2020-10-21T15:42:03+08:00
tags: ["microscopy"]
categories: ["Course Notes"]
mathjax: true
---

Notes about Super-resolution microscopy techniques.

<!--more-->

## Course information
* Lecturer: Tony Yang
* Time: 789 (W)
* Location: MD225
* Reference books
  * Bahaa Saleh and Malvin Teich, Fundamental of Photonics, 2nd ed. Wiley, New York, 2007.
  * Erfle, Holger, Super-Resolution Microscopy: Methods and Protocols, Humana Press, 2017
* Grading:
  * Participation in classroom discussions: 25%
  * Midterm: 30%
  * Term paper: 45%
* G drive: https://drive.google.com/drive/u/1/folders/1sTXB5tplkqXRCZ05VJYFFkjfPJ-hs43I

## Photonics

### Ray optics
When lenght scale of the instrument i smuch larger than that of light wavelength.
Neither wave properties (diffraction, interference) nor photon ones.
Optical pathlength = line integral from one point to another, with respect to refraction index (n)
$$\int_A^B n(r)ds$$
#### Fermat's principle
Light tries to tale minimal travel time
Snell's law:
$$n_1sin\theta_1 = n_2sin\theta_2$$

#### Huygen's principle
Wavefront and wavelets: explains refraction, diffraction and interference

### Total internal reflection
Dense material to loose material.
With little energy loss (<0.1%) as evanescent wave, penetration depth about 100-200 nm.
When incidence angle \\(\theta > \\) the critial angle \\(\theta_c = sin^{-1}(\frac{n_2}{n_1})\\)
Used in fiber optics and qsuperresolution microscope.

### Nagative-index metamaterials
$$
n = \left( \frac{\epsilon\mu}{\epsilon_0\mu_0}  \right)^{1/2} \in \mathbb{C}
$$

Superlensing breaking through the diffraction limit.
n is requency-dependent

### Spherical mirrors
* Approximation of the 'perfect' parabolic mirror at small angles
* For small angles (paraaxial) \\(\theta \approx sin(\theta) \approx tan(\theta)\\)
$$
\begin{aligned}
\frac{1}{z_1} &+ \frac{1}{z_2} = \frac{1}{f} \newline
f &= R/2  \newline
m &= \frac{y_2}{y_1} = \frac{-z_2}{z_1}
\end{aligned}
$$

### Spherical boundaries of different refractive indices
$$
\begin{aligned}
\frac{n_1}{z_1} &+ \frac{n_2}{z_2} = \frac{n_2 - n_1}{R} \newline
y_2 &= \frac{-n_1}{n_2} \frac{z_2}{z_1} y_1
\end{aligned}
$$

### Thin lens from two spherical surfaces
$$
\begin{aligned}
\theta_3 &= \theta_1 - y / f  \newline
\frac{1}{f} &= (n_2-n_1)(\frac{1}{R_1} - \frac{1}{R_2})   \newline
\frac{1}{z_1} &+ \frac{1}{z_2} = \frac{1}{f} \newline
m &= \frac{-y_2}{y_1} = \frac{-z_2}{z_1}
\end{aligned}
$$

### Transformation in matrix forms
Light rays as 2-component vector
Components as 2 by 2 matrix.

## Wave optics

### Considerations
* Diffraction (+), polarization (-), Fraunhofer (+), Fresnal (+)
* Maxwell equations: EM (E and B) vector fields
* optic *phase* is the central quantity.
* phase match at boundaries


### Wave equation
* 2nd derivative of space proprotional to that of time
  u: space; t: time; v: phase velocity; k: wave number; $\omega$: angular frequency; n: refractive index

$$
\begin{aligned}
\nabla^2u &= \frac{1}{v^2}\frac{\partial^2u}{\partial t^2}  \newline
k &= \frac{2\pi}{\lambda}  \newline
\omega &= 2\pi v  \newline
v &= \frac{c}{n}
\end{aligned}
$$

* Linear equations => superposition possible
* Complex notation by Euler's formula
  a: amplitude, ϕ(r): phase, ω: angular velocity
  periodic both in time and space
  the real part = physical quantity

$$
U (r,t) = a(r)exp(i\phi(r))exp(i\omega t)
$$
### Helmholtz equations
* regardless of time
$$
\begin{aligned}
U (r) = a(r)exp(i\phi(r)) \newline
\nabla^2U (r) + k^2U (r) = 0  \newline
\end{aligned}
$$

### Wavefonts
* surfaces of constant phase (等相位面)

* Plane waves in media with refractive index n
$$
\begin{aligned}
k &= k_0n \newline
λ &= \frac{λ_0}{n}
\end{aligned}
$$

Bigger the n, higher in spatial frequency (shorter in wavelength). The same time frequency.

### Spherical waves

$$
\begin{aligned}
U (r) &= \frac{A}{r}exp(-ikr) \newline
r &= \sqrt{x^2 + y^2 + z^2}
\end{aligned}
$$


**Fresnal Approximation**: Paraaxial (\\(z^2 >> (x^2 + y^2)\\)): Spherical -> paraboloidal -> planar wave
$$
\begin{aligned}
U (r) &= \frac{A}{z}exp(-ikz) exp \left( -ik \frac{x^2 + y^2}{z} \right) \\
\nabla^2U (r) &+ k^2U (r) = 0  \newline
\end{aligned}
$$

### Reflection, Refraction
* Results are similar to ray optics at planar surfaces for planar waves
* Plane wave through thin lens -> paraboloidal waves
* Intensity = \\(| U(r) |^2\\)

### Interference
By superposition of two rays
$$I = | U(r) |^2 = I_1 + I_2 + 2\sqrt{I_1I_2} cosΔϕ$$

### Paraxial waves
* Slowly varying envelope: slow change in amplitude
* Paraxial Helmholtz equation
$$
∇_T^2 A(r) = 2ik\frac{∂A}{∂z}
$$

### Gaussian beam
https://en.wikipedia.org/wiki/Gaussian_beam

$$
\begin{aligned}
A(r) &= \frac{A_1}{q(z)}exp \left( \frac{-ik(x^2 + y^2)}{2q(z)} \right) \newline
q(z) &= z + iz_0
\end{aligned}
$$

* q(z): **q-parameter**
* A solution to the paraxial Helmholtz equation
* The best we can do in real situations
* Cannot avoid spreading, but Gaussian beam's angular divergence in minimal.
* Inside the waist (the narrowest part of the beam) is similar to planar wave
* Long wavelength and thin beam waist -> more divergence
* Depth of focus

$$
\begin{aligned}
W(z) &= W_0 \sqrt{1 + (z / z_0)^2}  \newline
DOF &= 2z_0 = 2 \frac{W_0^2 \pi}{\lambda}
\end{aligned}
$$

* Calculate the divergence by the q parameter and complex distance

$$
\begin{aligned}
q_2 &= q_1 + d  \newline
\frac{1}{q_1} &= \frac{1}{R_1} - \frac{iλ}{πW_1^2}  \newline
\frac{1}{q_2} &= \frac{1}{R_2} - \frac{iλ}{πW_2^2}  \newline
\end{aligned}
$$

* Beam quality: M-square factor >=1, the smaller the better.

* Through thin lens
  * Change in phase -> wavefront is bent
  * Radius is unchanged
  * Not focused on a single point like in ray optics

### Higher order modes (TEM (l,m))
* Laguerre-Gaussion beams -> important in superresolution.

## Fourier Optics

* Any wave = sum (superpositions) of plane waves
  * Important properties: *angles* and *spatial frequencies*
* Optical components:  linear functions with frequency response
  * Impulse (with all frequencies) => **Impulse response function**
  * Inputs of various freq. => **Transfer function**

### Propagation of light in free space

Angles => spatial frequencies in the x-y plane

$$U(x,y,z) = A \cdot exp(-j(k_xx+k_yy+k_zz))$$

Where
* wave vector \\(\textbf{k} = (k_x, k_y, k_z)\\)
* wave length \\(\lambda\\)
* wavenumber \\(k = \sqrt{k_x^2 + k_y^2 + k_z^2} = \frac{2\pi}{\lambda}\\)

For paraxial waves

$$\theta_x = sin^{-1}(\lambda\nu_x) \approx \lambda\nu_x$$

$$\theta_y = sin^{-1}(\lambda\nu_y) \approx \lambda\nu_y$$

### Optical Fourier Transform
* Spatial frequencies at different angles
* A lens could do Fourier transform at the focal plane

### Fraunhofer Far Field Approximation
* Far field: \\(d \gg \frac{b^2}{\lambda} , \frac{a^2}{\lambda}\\)
* Near field (\\(d \approx \lambda\\)): superresolution (~nm) due to little distortion
* Far field image (diffraction pattern) is the Fourier transform of the original image
  * Smaller the scale (higher spatial frequencies), larger the distortion (wider aura)
* Diffraction: is everywhere, but best demonstrated in the pinhole(aperture) experiment

#### Rectangular aperture
* expressed as cardinal sine (sinc) function
* Angular divergence (first zero value): \\(\theta_x = \frac{\lambda}{D_x}\\)
#### Circular aperture
* Bessel function, Airy pattern
* \\(\theta = 1.22\frac{\lambda}{D}\\): angle of the Airy disk
  * Focused optical beam throught an aperture: \\(\theta = 1.22\frac{f\lambda}{D}\\):
#### 4-F imaging system
* Original image -> lens (FT) -> (spatial freqs.) -> lens(iFT) -> perfect image (in theory)
* Filtering of higher spatial freqs: less detailed image, less noise
* Spatial filtering: *cleaning* laser beams

### Transfer function of free space
* Higher freq. => real exponent => attenuate rapidly (evanescent wave)

## Polarization
* Electric-field as a vector
* Polarization ellipse: looking at the xy plane from the z axis.
  * Phase difference: \\(\varphi\\)
  * Linearly polarized: \\(\varphi = 0 \\) or \\(\pi\\)
  * Circularly polarized \\(\varphi = \pm \pi /2 \\) and \\(a_x = a_y$\\)
* Linear polarizer : only passed a certain linearly polarized light
* Wave retarder: changes \\(\varphi\\) to change polarization pattern

### Fiber optics
* Low-loss
* Light could *bend* inside it
* Single-mode fiber (small core): Gaussain wave only
* Multimode fiber (larger core): higher order light source
* Relation to numerical aperture (NA)
  * Acceptance angle of the fiber: \\(\theta_a = sin^{-1}(NA)\\)
  * Larger NA: more higher order information, more noise
  * Smaller NA: \\(V = 2\pi\frac{a}{\lambda_0}NA < 2.405\\). Gaussian wave only
* Polariztion-maintaining fibers

## Quantum optics
* Quantum electrodynamics (QED)
* Energy carried by a photon: \\(E = h\nu = \hbar\omega\\)
  * Typical light source: more than trillion photons per second
  * \\(E (eV) = \frac{1.24}{\lambda_0(\mu m)}\\)
* Momentum carried by a photon: \\(p = hk\\)
* Probability of photon position or the squared magnitude of the SWE (indivisual behavior) is directly proportional to light intensity (group behavior)
  * At smaller n : the interference pattern looks random (randomness of photon flow)
  * At larger n: the interference pattern is more similar to what we see in the macroscale
* Poisson distribution (discrete ranomness with rate = photon flux)
  * mean = variance
  * SNR = mean^2 / variance = mean
### Schroedinger wave equation (SWE)
* Similar to solve for eigenvalues => discrete solutions => quantitized energy levels
* Particle in a well / atoms with a single electron => standing wave (discrete solutions)
* Multi-electron: no analytical solutions



## Photons and matter
* Photon absorption and release: jumping in energy levels
* Rotational : microwave to far-infrared
* Vibrational : IR e.g. CO2 laser
* Electronic : visible to UV
* Photon absorption: elcetron jump up in energy level
* Photon emmision: Spontaneous vs stimulated (laser)

## Occupation of energy levels
* Boltzmann distribution
* Pumping enegy: population inversion
  * Laser stimulated emmision

## Luminescence
- Cathodo- (CRT)
- Sono- (ultrasound)
- Chemi- (lightsticks)
- Bio- (firefly)
- Electro- (LED)
- Photo- (Laser, Fluorescence, Phosphorescence)

## Photoluminescence
* In fact emitting a range of wavelengths (many sub-energy levels)
* Fluorescence (spin-allowed, shorter lifetime) vs phosphorescence (spin-forbidden, longer lifetime)

### Multiphoton
* Absorption of 2 lower energy photons => emission of 1 higher energy photon
* Multiphoton fluorescence

## Light scattering
* Photoluminescence: real excited states (resonant)
* Scattering: virtual excited states (non-resonant)
  * Rayleigh: same energy (elastic)
    * Particle size much smaller than the photon wavelength
    * Reason behind blue sky
    * vs Mie scatttering particle size comparable to photon wavelength
  * Raman
    * Stokes: Loss energy
    * Ani-Stokes: Gain energy
    * Molecular signature
  * Brillouin: acoustic

### Stimulated Raman scattering (SRS)
* Label-free microscopy

## Eyes
* 380 nm ~ 710 nm
* theshold of vision: 10 photons (a cluster of rod cells)
* Logarithmic perception: Weber-Fechner Law (like hearing)
* Single lens: spherical and chromatic aberration inevitable
* Astigmatism: directional abberation
* Pupil (Aperture)
  * Small pupil: less spherical and chromatic aberration (paraxial), less brightness and more diffraction
  * Large pupil: more brightness, more spherical and chromatic aberration
  * Optimum: 3mm
* Viewing angle: the *perceived* size

## Length scale of microscopes
* Resiolution limit of regular light microscope: 200nm
* Clear organnels structure: 30nm

## Geometrical optics of a thin lens
* Lens equation: \\(\frac{1}{f} = \frac{1}{a} + \frac{1}{b}\\)
* Magnification factor: \\(M = \frac{b}{a}\\)
* Virtual image: divergent rays forming a real image on the retina due to the lens
* Compound microscope: M = \\(M_{obj}\\) * \\(M_{eye}\\)
*
### Infinity-corrected mircoscope
* Object on the focal plane of the objective lens
* Parallel rays from the objective is converged by the tube lens
* Magnification: reference tube length (160-200mm) divided by the focal length of the objective
  * shorter focal length = larger magnification
  * 1.5mm => 100x

## Microscope anatomy and design

* The most important: resolving power (distinguish between two points) = numericalaperture (NA)
* 2nd: Contrast : object v.s. background (noise) signal strength
* 3rd: Magnificaition: \\(M_{obj}\\) * \\(M_{eye}\\)

### Anatomy

* Light source: Koehler illumination to see the sample, not the light source
* Diaphragm
  * Field: field of view
  * Condenser / aperture: resolution + brightness (open, larger angle) vs contrast + depth of view (closed, smaller angle)
* Condenser
* Objective
* Eyepiece / camera

### Different types of microscopic design
* Transmitted light
  * Bright field
  * Dark field
  * Phase contrast
  * DIC
  * Polarization
* Reflected light: objective = condenser (most common in modern microscopes)
* Fluorescence
* Upright vs inverted

## Optical aberrations
### Spherical aberrations
* Paraxial and peripheral rays have different focal planes
* Assymetry in unfocused images
* Corrected by
  * 2 plano-convex lenses facing each other
  * meniscus lenses
  * lenses with different radii
  * doubling with another lens with opposing degree of spherical aberration
### Chromatic aberrations
* Different refractive index for different wavelengthes
* Corrected by
  * Doubling with a lens with a different material and shape
  * Achromat: corrected for 2 wavelengths
  * Apochromat: corrected for at least 3 wavelengths
  * Flunar (semi-apochromat)
### Astigmatism
* Different directional plane, different foci
* Not in perfect alignment (off-axis) / curvature of field
  * Esp. in high NA lens
* Caused / corrected vy a plano-cylindrical lens
### Coma
* Comet tail
* Off-axis aberration (misalignment)
### Field Curvature
* Thin flat object -> image with edges curving towards lens
* Cause: difference of lengthes of light paths
* Esp. in high NA
* Planar view objectives correct this
### Distortion
* non-linear aberrations
* different magnification across the field of view
### Transverse chromatic aberration
* Chromatic difference of magnification

### Testing for aberrations
* Color shift between channels
* Fluorescent beads

### Anti-vibration tables
* Vibrations
  * Ground (low freq. 0.1 - 5 Hz)
  * Acoustic
  * Direct vibration from the components (10-100 Hz)
* Solution:
  * Air isolators
  * Active control

### Ergonomics
* Protect scietists' eyes, neck, and shoulder

## Objective
* The most important part in a microscope

### Objective class
* More corrections, more expensive
* Achromat: 1
* Semi-apochromat: 2-3
* Apochromat: 5-10 cost

### Labels on the objective
* numerical aperture (NA): resolving power (collected photons)
* magnification (e.g. 10x): field of view
* colorcorrection: Achromat / Semi-apochromat (Neofluar / fluotar) / Apochromat
* gimmersion: air / water / oil
* free working distance
* cover slip thickness (usually 170 μm)

### Numerical aperture
NA = nsinα

#### Oil immersion
  * no air gap causing total internal reflection (loss of photon information)
  * NA up to 1.4

#### Abbe's law

Lateral spatial resolution (xy):

$$
d \approx \frac{\lambda}{2}
$$

Axial spatial resolution (z): usually worse (~700 nm)

### Depth of field vs depth of focus
* Depth of field: moving the object
* Depth of focus: moving the image plane

### Brightness
* More NA, brighter
* More mag, dimmer
* Best brightness: NA 1.4 and mag 40x

### Illumination (lamp)
* Tungsten: 300-1500nm (reddish), dimmer
* Tungsten-halogen lamp: stable spctrum and bright
* Mercury lamp: 5 spectral peaks, 200hrs
* Meta-halide lamp: same spectral properties as the mercury lamp, latts 2000 hrs
* Xenon lamp: more constant illumination across wavelengths, 1000 hrs
* LED: small, stable, efficient, intense, multiple colors, quick to switch, long-lasting (10000 hrs)

### Filter
* Absorption vs interference (modern)
* Neutral-density (equal) vs color filters (specific wavelengths)

### Resolution
* Rayleigh's criterion: \\(d = \frac{0.61 \lambda}{NA}\\)
* Sparrow's (astrophysics): \\(d = \frac{0.47 \lambda}{NA}\\)
* Abbe's:  \\(d = \frac{0.5 \lambda}{NA}\\)
* Interpreted as spatial freq. response of a transfer function (low-pass filter)

### Contrast
* Signal strength of object vs background
* Human eye limit: 2% (dynamic range = 50x, 5-6 bits)
* Improved by staining (including fluorescence) and lighting techiniques
#### Interactions with the specimen
* Absorption / transmission / reflection: produce contrast (amplitude objects)
* scattering (irregular) / diffraction : edge constrast enhancement
* Refraction: difference in refractive index (n)
* Polarization: DIC (differential interference contrast) with two coherent beam and Wollaston prisms
* Phase change: phase contrast (shifting phases)/ phase interference
* Fluorescence: achieves superresolution
  * Absorption and release of photons (time scale of 1fs to 1ns)
  * Great resolution, constrast, sensitivity and specificity
  * Live cell imaging
  * Various labels (with different wavelength)
#### Bright vs Dark field
* Bright field : darker specimen than the background, lower contrast
* Dark field (by oblique illumination): birghter specimen than the background, higher contrast
  * transmitted light fall outside the objective, scattered light only

## Fluorescence microscopy
* Finally the main point of superresolution microscopy
* high-contrast (clean labeling)
* sensitive: single molecule imaging (single photon)
* specific: labeling agent dependent
* multiple labeling at once with different wavelength
* versatile
* Live imaging: cell metabolsim, protein kinetics
* Molecular interaction: FRET
* Relatively cheap and safe

### Quantum processes
* Driving photon: kick electrons to an upper electronic state
* Fluorescence: electrons falling back to the ground state
* Some relaxation by vibrational energy levels (Strokes shift), or non-photogenic energy shifts
  * Absorb / emit a range of wavelengths with abs. peak
  * emittedwavelength is usually longer than absorbed
* Time scale: 1fs to 1ns
* Phosphorescence: singlet -> triplet -> singlet electron (spin-forbidden), much longer time scale (in seconds)

### Fluorophore
* Conjugated pi bonds providing the electronic energy levels from UV to IR
* Fluorescence lifetime:depdens on the type of fluorophores. e.g. FLIM
* Photobleaching: irreversibly destroyed after 10000 - 100000 absorption/emission cycles
  * FRAP: measuinge diffusion rate
* Quenching / blinking
  * Reversible supression of emission
  * PALM / STORM (single molecule microscopy)
* Emission tail: increased crostalk to others
* Efficiency (Birghtness):  \\(\Phi\epsilon_{max}\\)
  * Quantum yield (Φ)
  * Molarextinction coef. (\\(\epsilon_{max}\\))
  * The best one: quantum dots (alos the most versatile)

### Fluorescence microscope
* epi illumination is more suitable for biology
  * Object = condenser
  * Increased contrast (reduced background)
* transmitted light are outside field of view (only see fluorescence photons)
* Filter sets: one for excitation + one for emission + one dichromic mirror
  * May need to design excitation / emssion bands for multiple fluorophores

### Fluorophores
* Smaller = better spatial resolution
* May disrupt normal cellular function
* Lables: organic dye (1 nm), protein (3 nm), quantum dots (10 nm), gold particles (100 nm)
* Specificity molecules: Antibody (15 nm), Fab, Streptavidin, Nanobody (3 nm)
  * May have secondary ones (making the entire dot even bigger)
* Absorption / emission wavelengths
* Stokes shift
* Molar extinction coefficient / quantum yield = brightness
* Toxicity
* Satuartion
* Environment (pH)

### Fluorescent protein: e.g. GFP
* Introduced by transfection: not always successful (transfection and cell viability)
* Others: CFP (cyan), mCherry, mOrange, ...

#### Photoactive fluorescent protein e.g. mCherry
* State transitions by activating photons
* photoactivable
* photoconvertible
* photoswitchable

### Quantum dots
* Bright and resistant to photobleaching
* Blinking under continuous activation
* Bigger (10 nm)
* Broad excitation and narrow emission spectra

### Autofluoresence
* e.g. Tryptophan, NAD(P)(H) in the cell
* Label-free imaging
* Background

### Issues of fluorescence microscopy
* Blurring
* Bleaching
* Bleed-through

### Blurring in fluorescence microscopy
* Limited depth of field compared to specimen thickness
* Reduce the SNR (out-of-focus blurred images)
* Solution: optical sectioning

### Confocal
* Pinhole: block out-of-focus light. Aperture in Airy Units (AU), optimal is 1
* Raster scanning with mirrors and a laser: point-by-point
* Phototoxicity issues: Time-lapse possible, but even higher phototoxicity
* photon detection
  * PMT: high gain, low quantum efficiency(QE) (1/8)
  * CCD: higher QE (65%), higher background noise (lower SNR)
  * ScMOS: QE~95%
  * Avalanche photodiode (APD): QE~80%, higher SNR
* Imaging parameters: no absolute rules, always trade-offs
* Resolution: slightly better than wide field (1.4x spatial freq., by FWHM of the PSF)
#### Spinning disc
* Faster imaging (parallel scans) and lower phototoxicity
* Spinning microlens array + pinholes
* Thinner optical slice of 800nm (traditional confocal: 1000nm)


### Point spread function
* Point -> psf -> Airy disk
* After Fourier transform: Optical transfer function (OTF)

## Convolution
* Lens: finite aperture, could not capture higher spatial frequencies of the object
* A way to understand and calculate blurring. Image = object * psf
* Simplified to multiplication in the frequency domain by Fourier transform
* Optical transfer function (OTF) = F{PSF}

### Point spread function (PSF)
* Hour-glass shape (sharper xy and less z resolution) due to the orientation of the objective
* Confocal pinhole open at 1 AU: less spreading of the PSF

### Deconvolution
* Computational iterative process: deblurring, restorative
* Only makes good image better

## Total Internal Reflection Fluorescence (TIRF)
* An illumination method for bottom 200nm (extent of evanescent field)
* Improves axial resolution (up to ~100 nm) and contrast

## Colocalization
 * spatial overlap between two (or more) different fluorescent labels
 * Pearson correlation coefficient
 * Spatial colocalization doe snot mean interaction (just the same pixel: co-occurence)
 * Software analysis: [ImageJ](https://imagej.net/Colocalization_Analysis)
 * Mander's Colocalization coefficients
 * Noise leads to underestimation of colocalization

## Spectral Overlap
* Bleed-through
* Crossover
* Cross-talk
* Managed by tweaking light sources and filters

## Resolution limit
* Abide to physical laws
* Abbe limit: 0.5 * wavelength / numerical aperture, from Fourier optics
* Electron microscope (EM): 2nm. But cells need to be fixed and processed
* Flurorescent microscopy: 200 nm. Multiple labeling methods. Multiple strategies to enhance the resolution.

## Super-resolution light microscopy (SRLM) (precisely nanoscopy)
* Cost, specimen prep, and operational complexity are in the middle between confocal and EM.

### Near field microscopy
* Evanescent waves (before the light diffracts)
* 5-10 nm axial resolution, 30-100 nm lateral resolution
* Practically zero working distance

### 4-pi microscopy
* Two opposing objectives improves z resolution
* Techical difficulties

### PALM, STED, STROM
* Using non-linear properties of the fluorophores (turing they on / off)

### Stimulated emission depletion microscopy (STED)
* Donut-shaped induced depletion laser (high power)
  * At the tail of emmision spetrum to avoid cross-talk
  * Donut-shape via a vortex phase plate
  * Diffraction-limited. But combining another diffraction-limited excitation laser to achieve super-resolution
* Higher labels and samples preparation requirements, and optical alignment (vibration sensitive)
* Depletion efficiency: \\(p_{STED} = exp(-\frac{I_{STED}}{I_{sat}})\\)
* Resolution by the factor of \\(\sqrt{1 + \frac{I_{STED}}{I_{sat}}}\\)
  * More \\(I_{STED}\\), more resolution, but more power (photobleaching)
* Implementation: Pulsed, continous wave, gated
  * Pulsed: synchronization challenges
  * continous wave (CW): high background noises
  * Gated: lower background noises than CW, easier than pulsed, mainstream
* Protected STED: less photobleaching using photoswitable dyes
  * Long-time observation
* STED with 4-pi: improved axial(z) resolution by another phase plate
#### Fluorescence probes
* More restricted
* Two color: Long Stoke shift + normal Stoke shift dyes

## Localization microscopy
* Tracking the particles central positions from reversing the point spread function (e.g. fittin gthe Gaussian distribution). Only possible with sparse points, thus stochastic.
* Reconstruct the whole image from a series of sparse excited dyes.
* Switching-based separation is the mainstream of sparse activation

### Photoactivated localization microscopy (PALM)
* Less convenient than dSTORM.

### Stochastic optical reconstruction microscopy (STORM)
* Direct STORM (dSTORM) currently
* Readily implemented on regular wide-field microscopes.
* Selected dye (esp. Alexa 647) and imaging buffers.
* Cameras instead of PMTs to see the whole field.
* Gaussian distributions fitting the intensity of dots to calculate the centroid point.
* Labels could have an impact on the measured length (e.g. primaryand secondary antibodies)
* Localization precision: more photons, less uncertainty (more precision, up to 5-20 nm), more frames (time) required
  * Precision estimation is a statistical issue.
  * FWHM = 2.35 uncertainty (\\(\sigma_{loc}\\))
* Imaging buffer: together with activation laser, determines the state (active, vs dark) of dyes
* More fluorophores could be reactivated when the signal gets too weak by the activation laser (typically UV).
  But not too strong to ruin the single molecule signals.
* To avoid cross-talk (activating multiple types of dyes at once) and photobleaching by stronger activation photons,
  starting activating with far-red (long-wavelength) dyes
* Irradiation density
  * Too high: no single molecule anymore, poor localization quality
  * Too low: more time required and more background noise
* Threshold for signal detection and rejection criteria
  * Too strict: wasted the real signal
  * Too loose: more noise
  * Too many phtons at one time indicate multiple molecules = false positive, poorly localized
* Structual averaging: reducing noise by a series of images (time info. -> spatial info.)
* Pair correlation analysis and molecular cluster analysis (not randomly distributed particles)
* Single molecule tracking
* 3D localization by encoding z information into the optic system
  * Bi-plane
  * Dual helix
  * Astigmatism

## Structured illumination microscopy
* SIM for short
* Grating pattern for structured illumination (stripes) encoding high frequency information
* Indicated by Fourier optics (extension of optical transfer function (OTF))
* Multiple images by superimposing illimunation stripes in different angles
* Increasing resolving power by 2x
* Even more resolution improvement by non-linear optics (saturation SIM)

## Light sheet microscopy
* Orthogonal illumination
* Improved z axis and optical section
* Low laser intensity for live cell imaging, minimal phototoxicity
* Scanning beam / lattice for even illumination and more z resolution
