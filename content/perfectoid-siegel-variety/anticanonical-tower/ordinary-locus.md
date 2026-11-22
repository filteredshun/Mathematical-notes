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

## 1. Frobenius and Verschiebung

Let $S$ be an $\mathbf F_p$-scheme and $A/S$ an abelian scheme of relative dimension $g$. Denote by $\operatorname{Fr}_S$ and $\operatorname{Fr}_A$ the **absolute Frobenius** morphisms. Define the Frobenius twist

$$
A^{(p)}=A\times_{S,\operatorname{Fr}_S}S.
$$

The following diagram defines the **relative Frobenius** $F=F_{A/S}$; the right-hand square is cartesian:

$$
\begin{array}{ccccc}
A & \xrightarrow{\ F_{A/S}\ } & A^{(p)}
  & \xrightarrow{\ \operatorname{pr}_1\ } & A\\
{\scriptstyle\pi}\downarrow\phantom{\scriptstyle\pi}
&& {\scriptstyle\operatorname{pr}_2}\downarrow\phantom{\scriptstyle\operatorname{pr}_2}
&& {\scriptstyle\pi}\downarrow\phantom{\scriptstyle\pi}\\
S & \xrightarrow{\ \operatorname{id}_S\ } & S
  & \xrightarrow{\ \operatorname{Fr}_S\ } & S .
\end{array}
$$

Thus $\operatorname{pr}_1\circ F_{A/S}=\operatorname{Fr}_A$ and $\operatorname{pr}_2\circ F_{A/S}=\pi$. Unlike absolute Frobenius, $F_{A/S}:A\to A^{(p)}$ is an $S$-morphism.

> [!proposition] Fact (Frobenius and Verschiebung; Zhu §3.3)
> The relative Frobenius $F:A\to A^{(p)}$ is an isogeny of degree $p^g$. There is a uniquely determined **Verschiebung** isogeny $V:A^{(p)}\to A$, also of degree $p^g$, satisfying
>
> $$
> \boxed{\qquad
> V\circ F=[p]_A,\qquad
> F\circ V=[p]_{A^{(p)}}.
> \qquad}
> $$

> [!proof]- Brief explanation
> Locally in smooth coordinates, relative Frobenius has degree $p^g$. The standard construction of Verschiebung gives $V\circ F=[p]$. Since $\deg[p]_A=p^{2g}$, one has $\deg V=p^g$. Finally $F\circ V\circ F=F\circ[p]_A=[p]_{A^{(p)}}\circ F$; the surjectivity of $F$ gives $F\circ V=[p]_{A^{(p)}}$. $\square$

In particular, $\ker F\subset A[p]$ is a finite locally free subgroup of rank $p^g$. **It is this subgroup that the canonical subgroup will lift** on the ordinary locus.

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
- Y. Zhu, [*The Hodge–Tate period map on perfectoid Shimura variety*](https://yhzhumath.github.io/HT%20final.pdf), §3.3 (Frobenius and Verschiebung), and §§3.5–3.9.

[[perfectoid-siegel-variety/anticanonical-tower/index|Back to Anticanonical Tower]]
