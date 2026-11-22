---
title: Ordinary Locus
description: Ordinary reduction, Frobenius, Verschiebung and the Hasse invariant
tags:
  - siegel
  - ordinary
  - hasse
---

# Ordinary Locus

*From good reduction to Frobenius near the ordinary locus*

We now work **inside the good-reduction locus** introduced in [[perfectoid-siegel-variety/anticanonical-tower/siegel-modular-varieties|Siegel Modular Varieties and Level Structures, §6]]. Good reduction means that the abelian variety extends to an abelian scheme. **Ordinary reduction is an additional condition on its special fibre.**

This note sets up the definitions needed before constructing canonical subgroups and the anticanonical tower. The detailed canonical subgroup theorem will be treated separately.

## 1. Relative Frobenius and Verschiebung

Let $S$ be an $\mathbf F_p$-scheme and $A/S$ an abelian scheme of relative dimension $g$. Write

$$
A^{(p)}=A\times_{S,F_S}S.
$$

The relative Frobenius and Verschiebung are isogenies

$$
F_{A/S}:A\longrightarrow A^{(p)},\qquad
V_{A/S}:A^{(p)}\longrightarrow A
$$

satisfying

$$
V_{A/S}\circ F_{A/S}=[p]_A,\qquad
F_{A/S}\circ V_{A/S}=[p]_{A^{(p)}}.
$$

> [!remark]- Remark 1.1 (Why relative Frobenius?)
> The absolute Frobenius of $A$ is not generally an $S$-morphism. The relative Frobenius has source $A$ and target its Frobenius twist $A^{(p)}$, so it is a morphism over $S$. This distinction is essential for families.

## 2. The ordinary condition

For an abelian variety $A$ over an algebraically closed field $k$ of characteristic $p$, one says that $A$ is **ordinary** if its $p$-rank is maximal:

$$
\#A[p](k)=p^g.
$$

Equivalently, the $p$-divisible group has an étale part of height $g$ and a multiplicative part of height $g$.

> [!example] Example 2.1 (Elliptic curve)
> For an ordinary elliptic curve $E/k$,
>
> $$
> E[p]\simeq \mu_p\oplus\mathbf Z/p\mathbf Z
> $$
>
> over an algebraically closed field. Its connected multiplicative subgroup is $\ker(F_{E/k})=\mu_p$, whereas its étale subgroup is transverse to it. The supersingular elliptic curve does not have such an étale direct summand of rank $p$.

## 3. The Hasse invariant

Let $\omega_A=e^*\Omega^1_{A/S}$ be the rank-$g$ Hodge bundle and let $\det\omega_A$ denote its determinant line bundle. The pullback by Verschiebung yields

$$
V^*:\omega_A\longrightarrow \omega_{A^{(p)}}
\simeq F_S^*\omega_A.
$$

Taking determinants produces the **Hasse invariant**

$$
\boxed{
\operatorname{Ha}(A)\in
H^0\!\left(S,(\det\omega_A)^{\otimes(p-1)}\right).
}
$$

> [!proposition] Proposition 3.1 (Ordinary criterion)
> For a geometric point $s\to S$, the abelian variety $A_s$ is ordinary if and only if $\operatorname{Ha}(A)$ does not vanish at $s$.

> [!proof]- Standard criterion
> The nonvanishing of $\operatorname{Ha}$ is equivalent to the map induced by Verschiebung on invariant differentials being an isomorphism. This is the usual Hasse–Witt (or ordinary) criterion for abelian varieties. We use the criterion here as a standard input.

## 4. From ordinary to a neighborhood

For a good-reduction point over a complete rank-one valued extension $L/\mathbf Q_p$, evaluate a local integral lift of the Hasse invariant, and normalize $v(p)=1$. In the relevant range $0\leq\epsilon<1$, the condition that the valuation is at most $\epsilon$ defines a neighborhood $\mathcal X(\epsilon)$ of the ordinary locus:

$$
\mathcal X(0)\subseteq\mathcal X(\epsilon)\subseteq\mathcal X.
$$

Here $\mathcal X$ is the good-reduction locus from the preceding note. **A point in $\mathcal X(\epsilon)$ need not have ordinary special fibre** when $\epsilon>0$.

> [!remark]- Remark 4.1 (What comes next?)
> The canonical subgroup theorem applies when the Hasse invariant is sufficiently small. It constructs a finite flat subgroup lifting the kernel of relative Frobenius to characteristic zero. This gives the Frobenius-lift mechanism behind the anticanonical tower.

## References

- P. Scholze, [*On torsion in the cohomology of locally symmetric varieties*](https://www.math.uni-bonn.de/people/scholze/Torsion.pdf), Chapter III, §III.2.
- Y. Zhu, *The Hodge–Tate period map on perfectoid Shimura varieties*, §§3.5–3.9.

[[perfectoid-siegel-variety/anticanonical-tower/index|Back to Anticanonical Tower]]
