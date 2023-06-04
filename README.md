<h1 align="center">
Simulation Architectures<br>
for<br>
Reinforcement Learning applied to Robotics
</h1>

<h3 align="center">University of Manchester</h3>
<h4 align="center">2022</h4>

<p align="center" >
<a href="https://github.com/diegoferigo/phd-thesis/releases/latest/download/thesis.pdf">
<img alt="phd_thesis_pdf" src="https://img.shields.io/badge/PDF-phd_thesis-D21517.svg?logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAYAAACqaXHeAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAAGXRFWHRTb2Z0d2FyZQB3d3cuaW5rc2NhcGUub3Jnm+48GgAABCBJREFUeJztml9oHEUcx78ze7eXs9ek6YUYa7Vp6LWIUDCtfbC0BgPxQQRLIcRSCIJQEN+qb2IfVAhi82BBqyC+WKQU2vgntvSMolJFI/VPaUoamqR48bpJLm2aP7fe7cz4cPZiyV1625nxLmY+b3vz2+/87sPu3uzuAQaDwWAwGAwrFKIj1HHGdhKCXYQgJJuVTDpfb93a/K2KvgqhXMDEROKoEDigKm9oaCTtuulnWlvbzqrK/DdUZZjj/LFX5ZcHACFEmHP09PWdbVOZewulAgghT6nMu4VOCUoFAFilOC+PLgmqBWhFh4RlJQBQL2HZCQDUSliWAgB1EipeACHFlyoqJFS8gEhk6R8WWQkVL6C+PopwuGrJGhkJSpfC4+OJ4wDaVWYCAOccU1M3MD+fXrKOEJKurl61MxZ7+JdSswPS3f0HUEpRV7e2lNIwgE0AShZQ8aeAboyAcjdQboyAcjdQboyAcjdQbnyvA663tDQS294OIRYtovjpeIOorXFVNCYoBd+yOYiaaktFXjF8Cbje0tJoBYMXAERQ4CaFHvtYVV85Vkc8t/tNhnCVNgm+ToGAbW8HIRFdzSxiZjZA/0xmdU7h7xpQ4LDXjRBc65wr/iK44gVI3Q3ec6QLdMMDuQ3OwYdH4b77IfjQMKwdzQi/cvCfMQaedOD1fYfMqV6Asdz+Rw+Drmu4LdPrPw/3tcMybflC7nbYouDJa8j2xkGqQgg+/STCh17GXOeLIISABCxker4ATzqwYk2wn3sWdMsmuG90AwCIRcETY8j2xvOR3JmQaskv0s8DhDOB7Kdnchu2jdC+vSBra/Pj3rkfwS4OIgvAnpxCqGMPMg9tBr90Obf/+CSyZ75aCORctiVfSAug998Hu7MjdwS07gZPOhCTKaBpw6Ja74d+hDr2wGp8MC8gsKMZqz87lq9Jv94N7/ufZNsqGWkBJFqLYOsugHN4Fy7hrw8+AoQoWGttzEnhqan8Z+zKKDKfnF7YHhqWbckX0gLY7wNIv9pVdJw03As6l4YVa0Lo+f1gVxNg53/Lj4vJFLwvv5Ft467R/kwwfPAFAIAQAqz/V7hH3gc8pnvakpES4L71DuB5Bce8gUHMv3QIACAYg7g2DjF987aadNfbQCYj04I0UgL48GjxwZlZsIHBpfe/MiIzvRJW/ErQl4DKOXPV4fcIGIEo8hunA0o5olGtR6mva8CaePznmba2dgjxOAq8VmPbHnkCNTUbVTTGKQF/dJslatcEVeQVY1m8G/RJe339+hOlFpuLoOK8OcV5d4GY9VOtVACl9HOVef4RN6an3XN+9lAqoK5u3Ukh8J7KTB/Mcy46Y7HYzTuXLqDlgWMqNfYYY3w3IVT6z9J3gnMOQmjKskRPNLo+oXs+g8FgMBgMhv8NfwMqrogtIDJkNgAAAABJRU5ErkJggg==" />
</a>
</p>

<div style="text-align: justify; text-justify: inter-word;">
<details>
<summary>Abstract</summary>

## Abstract

<p align="justify">
There is no doubt that we are living in the age of data.
In the last two decades, the scientific community has been able to produce systems with superhuman capabilities through the combination of modern hardware advancements, novel learning algorithms and architectures, and advances in software frameworks.
Such progress revolutionised domains like computer vision and language processing, showing performance previously out of reach.
One may think that results could transfer straightforwardly to other fields like robotics until realising the existence of domain-specific characteristics and limitations hindering the potential of these learning methods.
Generating enough data from real-world robots is often too expensive or not even possible to the desired scale.
Data sampled from robots has a sequential nature, and not all families of learning algorithms are effective in this context.
Furthermore, most algorithms that excel in this sequential setting, such as those belonging to the Reinforcement Learning (RL) family, learn by a trial-and-error process, which could lead to trajectories that damage either the robots or their surroundings.
</p>

<p align="justify">
In this thesis, we attempt to answer the question,
<i>"How can modern technology help us generate synthetic data for humanoid robot planning and control?"</i>.
</p>

<p align="justify">
Motivated by the advancements in hardware accelerators that are revolutionising scientific computing, we limit our analysis to the simulation realm.
In this context, we first introduce a software architecture allowing to structure learning environments for robotics that can be adopted to train and run RL policies regardless of the simulated or real-world setting.
With its underlying simulation technology and exploiting a scheme based on reward shaping, we validate the architecture by
training with RL a push-recovery controller capable of synthesising whole-body references for the humanoid robot iCub.
Then, motivated by overcoming the bottlenecks related to the poor sampling performance of traditional rigid-body simulators, we present a new physics engine in reduced coordinates that can simulate robots interacting with a ground surface on hardware accelerators like GPUs and TPUs.
To this end, we present a contact-aware continuous state-space representation describing the dynamical evolution of floating-base robots that can be numerically integrated for simulation purposes.
We adopt the new general-purpose Gazebo Sim simulator as our first solution to sample synthetic data, and exploit JAX and its hardware support to scale the sampling performance for highly parallel problems.
Furthermore, we implement and benchmark common Rigid Body Dynamics Algorithms part of the proposed physics engine on hardware accelerators and assess their scalability properties on different GPUs.
These pieces of technology help to lower the computational barriers that nowadays are still among the main bottlenecks for obtaining intelligent agents, democratising the applicability of this family of learning-based methods.
</p>

</details>
</div>

## Citing

```bib
@phdthesis{ferigo_phd_thesis_2022,
  title = {Simulation Architectures for Reinforcement Learning applied to Robotics},
  author = {Ferigo, Diego},
  school = {University of Manchester},
  type = {PhD Thesis},
  month = {July},
  year = {2022},
  url = {https://github.com/diegoferigo/phd-thesis/releases/latest/download/thesis.pdf},
}
```

## Contributing

For any doubt or to report an error, please [open an issue][new_issue].

If you want to fix the document yourself, please open a PR against the `main` branch (see [branching](#branching) details below).
The Continuous Integration pipeline implemented in this repository will compile the LaTeX sources with your contribution
and upload the PDF document as artifact of the workflow for inspection.

[new_issue]: https://github.com/diegoferigo/phd-thesis/issues/new

## Branching

This repository has two branches:

- **`overleaf`** is the branch connected to my personal Overleaf project.
- **`main`** is the branch associated to external contributions and releases.

The Overleaf Git system [does not currently support branching][overleaf_no_branching].
For this reason, I cannot select **`main`** as default branch of the repository, even if it is.

**If you want to contribute with a new PR, please target the `main` branch.**

[overleaf_no_branching]: https://www.overleaf.com/learn/how-to/Using_Git_and_GitHub#Known_Limitations
