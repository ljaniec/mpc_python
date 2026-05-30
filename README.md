# mpc_python

Minimal iterative MPC path-following demo with **static obstacle avoidance** and **Matplotlib visualization**.

<figure>
  <img src="img/demo_with_obs.gif" width="500" />
  <figcaption>Reference tracking with temporary path deviation to avoid a static obstacle.</figcaption>
</figure>

## What is left

Only the minimum code path needed for:
- generating a smooth reference path
- building an iterative linear MPC in CVXPY
- detecting a static obstacle inside a fake camera FOV
- deviating from the path to avoid collision
- converging back to the reference path afterwards
- visualizing the run

## Repository layout

```text
/tmp/workspace/ljaniec/mpc_python
├── README.md
├── pyproject.toml
├── img/demo_with_obs.gif
└── mpc_python
    ├── config
    │   ├── mpc.yaml
    │   └── simulation.yaml
    ├── cvxpy_mpc
    │   ├── __init__.py
    │   ├── cvxpy_mpc.py
    │   └── utils.py
    └── mpc_demo_nosim.py
```

## Run

Install dependencies:

```bash
python -m pip install "numpy<2" matplotlib cvxpy scipy osqp pyyaml
```

Run the demo:

```bash
python /tmp/workspace/ljaniec/mpc_python/mpc_python/mpc_demo_nosim.py
```

## Key files

- `/tmp/workspace/ljaniec/mpc_python/mpc_python/mpc_demo_nosim.py`  
  Main demo loop and visualization.
- `/tmp/workspace/ljaniec/mpc_python/mpc_python/cvxpy_mpc/cvxpy_mpc.py`  
  Iterative linear MPC with soft half-plane obstacle constraints.
- `/tmp/workspace/ljaniec/mpc_python/mpc_python/cvxpy_mpc/utils.py`  
  Path interpolation, reference generation, obstacle loading, and obstacle detection.
- `/tmp/workspace/ljaniec/mpc_python/mpc_python/config/simulation.yaml`  
  Start state, reference waypoints, fake sensor, and static obstacle position.

## Static obstacle behavior

The obstacle is defined directly in world coordinates. When it enters the sensor field of view, the solver adds a soft half-plane constraint around it. The controller temporarily leaves the reference path, passes around the obstacle, and then returns to pure path tracking.
