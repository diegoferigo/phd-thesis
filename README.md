<h1 align="center">
Simulation Architectures<br>
for<br>
Reinforcement Learning applied to Robotics
</h1>

<h3 align="center">University of Manchester</h3>
<h4 align="center">2022</h4>

<div style="text-align: justify; text-justify: inter-word;">
<details>
<summary>Abstract</summary>

<p align="justify">
There is no doubt, we are living in the age of data.
In the last two decades, the scientific community has been able to produce systems with superhuman capabilities through the combination of modern hardware advancements, novel learning algorithms and architectures, and advances in software frameworks.
Such progress revolutionised domains like computer vision and language processing, showing performance previously out of reach.
One may think that results could transfer straightforwardly to other fields like robotics until realising the existence of domain-specific characteristics and limitations hindering the potential of these learning methods.
Generating enough data from real-world robots is often too expensive or not even possible to the desired scale.
Data sampled from robots have a sequential nature, and not all families of learning algorithms are effective in this context.
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
  url = {https://github.com/diegoferigo/phd-thesis/releases/latest/download/thesis.pdf},
  author = {Ferigo, Diego},
  year = {2022},
}
```

## Contributing

For any doubt or to report an error, please [open an issue][new_issue].

If you want to fix the document yourself, please open a PR against the `main` branch (see [branching](#branching) details below).
The Continuous Integration pipeline implemented in this repository will try to compile the LaTeX sources with your contribution,
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
