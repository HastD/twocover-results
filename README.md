# twocover-results

This repository stores the results of running an implementation of two-cover descent for genus 2 quintic curves on all 7692 such curves of rank 2 or 3 in [the LMFDB's database](https://www.lmfdb.org/Genus2Curve/Q/?num_rat_wpts=1-&analytic_rank=2-&search_type=List). The code is [here](https://github.com/HastD/twocover-descent), and the theory and formulas are explained in the following paper: [https://arxiv.org/abs/2009.10313](https://arxiv.org/abs/2009.10313)

The data is stored in the `json` folder, which contains one JSON file for each curve, titled according to the curve's LMFDB label. The JSON files contain data in the following format:

- `"label"`: the curve's LMFDB label
- `"conductor"`: the curve's conductor
- `"disc"`: the absolute value of the discriminant of the curve
- `"coeffs"`: a list of the coefficients of an integral sextic polynomial f such that y^2 = f(x) defines the curve
- `"pts"`: a list of the (projective) points on the curve, or `null` if the points have not been provably computed (conditional on GRH)
- `"count"`: the number of points if computed
- `"root"`: the chosen root of the above sextic
- `"g"`: a list whose entries are lists of the coefficients of the factors of f(x)/(x - root) over **Q**
- `"x-coords"`: a list of x-coordinates of points on the curve. May be `null` or incomplete if the points have not been provably computed.
- `"verified"`: is the above list verified complete (conditional on GRH)?
- `"obstruction_found"`: have we found an obstruction to the algorithm completing?
- `"search_bound"`: how far have we searched before for rational points on the twists?
- `"twists"`:
  - `"coeffs"`: list of the coefficients of the twist parameter in the form "num/denom"
  - `"found_pts"`: number of points that have been found by a search
  - `"base_pt"`: chosen base point of the twist, or `null` if none found
  - `"loc_solv"`: is the twist locally solvable?
  - `"pts"`: list of coordinates of points once provably computed
  - `"verified"`: have we verified that the list of points is complete (conditional on GRH)?
  - `"g1"`:
    - `"g"`: list of coefficients of the corresponding factor of f
    - `"aInv"`: a-invariant data (the strings are in the form "num/denom")
    - `"Ecov"`: equation data for map Ecov: E -> P^1
    - `"rank"`: computed rank of MW group
    - `"MW_proven"`: has the MW group been provably computed (conditional on GRH)?
    - `"MW_orders"`: orders of generators of MW group
    - `"gens"`: generators of MW group (str in the form "num/denom")
    - `"gens_reduced"`: whether the MW generators have already been reduced
    - `"x-coords"`: list of x-coordinates found by elliptic Chabauty
- `"hasse_principle"`: do the curve's twists all appear to satisfy the Hasse principle?
- `"runtime"`: estimated runtime in seconds taken so far to compute this data
- `"exception"`: did an unhandled exception occur?

The `logs` folder stores log files that are produced when running the code and are useful for debugging.

