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

> [!proposition] Proposition 1.1 (Frobenius and Verschiebung; cf. Zhu §3.3)
> The relative Frobenius
>
> $$
> F=F_{A/S}:A\longrightarrow A^{(p)}
> $$
>
> is a **finite faithfully flat isogeny of degree $p^g$**. Multiplication by $p$ factors uniquely through $F$, defining the **Verschiebung**
>
> $$
> V=V_{A/S}:A^{(p)}\longrightarrow A.
> $$
>
> It is an isogeny of degree $p^g$, and
>
> $$
> \boxed{\qquad V\circ F=[p]_A,\qquad
> F\circ V=[p]_{A^{(p)}}.\qquad}
> $$
>
> In particular, $\ker F\subseteq A[p]$ is finite locally free of rank $p^g$.

> [!proof]- Construction and proof
> **(1) Flatness and degree of $F$.** Since $A/S$ is smooth of relative dimension $g$, the relative Frobenius is étale-locally the base change of the map on affine space given by $T_i\mapsto T_i^p$. For this model,
>
> $$
> R[T_1,\dots,T_g]
> =\bigoplus_{0\le i_1,\dots,i_g<p}
> R[T_1^p,\dots,T_g^p]\,
> T_1^{i_1}\cdots T_g^{i_g}.
> $$
>
> Hence $F$ is finite locally free of constant positive rank $p^g$, and consequently faithfully flat and surjective. Since $F$ respects the group law, it is an isogeny.
>
> **(2) Constructing $V$.** The differential of multiplication by $p$ vanishes:
>
> $$
> d[p]_A=p\cdot\mathrm{id}_{\operatorname{Lie}(A/S)}=0.
> $$
>
> For a smooth $S$-scheme in characteristic $p$, an $S$-morphism with zero relative differential factors uniquely through relative Frobenius (the standard Frobenius factorization lemma, checked étale-locally). Applied to $[p]_A$, this gives a morphism $V:A^{(p)}\to A$ with
>
> $$
> V\circ F=[p]_A.
> $$
>
> Faithfully flat descent along $F$ shows that $V$ is a homomorphism of group schemes. The factorization immediately implies $\ker F\subseteq A[p]$.
>
> **(3) The other identity.** Since $F$ is a group homomorphism,
>
> $$
> F\circ V\circ F=F\circ[p]_A
> =[p]_{A^{(p)}}\circ F.
> $$
>
> As $F$ is faithfully flat, it is an epimorphism of fppf sheaves, so we may cancel $F$ on the right and obtain $F\circ V=[p]_{A^{(p)}}$. Finally,
>
> $$
> \deg V=\frac{\deg[p]_A}{\deg F}
> =\frac{p^{2g}}{p^g}=p^g.
> $$
>
> Thus $V$ is also an isogeny. $\square$

This identifies the subgroup that we will lift in the theory of canonical subgroups: **on an ordinary special fibre, the level-one canonical subgroup lifts $\ker F$**.

## 2. The Sheaf of Translation-Invariant Differentials

Let $\pi:A\to S$ be an abelian scheme of relative dimension $g$, with identity section $e:S\to A$. Write

$
\omega_A=e^*\Omega^1_{A/S}.
$

This is a locally free $\mathcal O_S$-module of rank $g$, called the **Hodge bundle** (or the sheaf of invariant differentials). We recall two facts underlying its interpretation.

> [!proposition] Proposition 2.1 (Invariant differentials; Zhu §3.5)
> There are natural isomorphisms
>
> $
> \boxed{\quad
> \pi^*\omega_A\xrightarrow{\sim}\Omega^1_{A/S},
> \qquad
> \mathcal O_S\xrightarrow{\sim}\pi_*\mathcal O_A.
> \quad}
> $
>
> Consequently, restriction to the identity induces
>
> $
> \boxed{\quad
> \pi_*\Omega^1_{A/S}\xrightarrow[\ e^*\ ]{\sim}
> e^*\Omega^1_{A/S}=\omega_A.
> \quad}
> $
>
> In particular, every relative global differential on an abelian scheme is translation-invariant.

> [!proof]- Proof
> **(1) Translation-invariant trivialization.** For any smooth group scheme $G/S$, let $m:G\times_S G\to G$ be multiplication and $\omega_G=e^*\Omega^1_{G/S}$. Pull back $dm$ along the map $s:G\to G\times_S G$, $a\mapsto(a,e(\pi(a)))$, and project to the differential in the second factor. This gives a natural morphism
>
> $
> v:\Omega^1_{G/S}\longrightarrow\pi^*\omega_G.
> $
>
> At a geometric point $a$ of a fibre, $v_a$ is the cotangent map of translation by $a$ at the identity:
>
> $
> (d\,t_a)_e^*:T_a^*G_{\bar s}\xrightarrow{\sim}T_e^*G_{\bar s}.
> $
>
> Translation by $a$ is an isomorphism with inverse translation by $-a$, so $v$ is an isomorphism on all geometric fibres. Both sides are locally free of the same rank, hence $v$ is an isomorphism; its inverse is the required $\pi^*\omega_G\simeq\Omega^1_{G/S}$. Associativity of the group law shows that the resulting forms are translation-invariant. This part does **not** use properness.
>
> **(2) Functions on an abelian scheme.** For a geometric point $\bar s\to S$, the fibre $A_{\bar s}$ is proper, smooth and connected, hence geometrically integral. Therefore
>
> $
> H^0(A_{\bar s},\mathcal O_{A_{\bar s}})=k(\bar s):
> $
>
> a regular function on a connected proper variety over an algebraically closed field is constant. Since $\pi$ is proper and flat with geometrically reduced, connected fibres, cohomology and base change in degree zero gives that $\pi_*\mathcal O_A$ is locally free of rank one and commutes with base change. The natural map $\mathcal O_S\to\pi_*\mathcal O_A$ is an isomorphism on every geometric fibre, hence is an isomorphism.
>
> **(3) Conclusion.** Apply $\pi_*$ to (1) and use the projection formula:
>
> $
> \begin{aligned}
> \pi_*\Omega^1_{A/S}
> &\simeq\pi_*\pi^*\omega_A\\
> &\simeq\omega_A\otimes_{\mathcal O_S}\pi_*\mathcal O_A\\
> &\simeq\omega_A.
> \end{aligned}
> $
>
> The inverse of this identification is pullback along the identity section, giving the stated canonical isomorphism. $\square$

> [!remark]- Remark 2.2 (Why properness matters)
> The first isomorphism also holds for $\mathbf G_{a,k}$, but $H^0(\mathbf G_{a,k},\Omega^1)=k[T]\,dT$ is much larger than $e^*\Omega^1_{\mathbf G_a/k}=k\,dT$. For abelian schemes, $\pi_*\mathcal O_A=\mathcal O_S$ eliminates such nonconstant coefficients.

This identification lets us define the Hasse invariant using the rank-$g$ bundle $\omega_A$ on the **base** $S$, rather than working directly with all differentials on $A$.

## 3. The ordinary condition

For an abelian variety $A$ over an algebraically closed field $k$ of characteristic $p$, one says that $A$ is **ordinary** if its $p$-rank is maximal:

$$
\#A[p](k)=p^g.
$$

Equivalently, the $p$-divisible group has an étale part of height $g$ and a multiplicative part of height $g$.

> [!example] Example 3.1 (Elliptic curve)
> For an ordinary elliptic curve $E/k$,
>
> $$
> E[p]\simeq \mu_p\oplus\mathbf Z/p\mathbf Z
> $$
>
> over an algebraically closed field. Its connected multiplicative subgroup is $\ker(F_{E/k})=\mu_p$, whereas its étale subgroup is transverse to it. The supersingular elliptic curve does not have such an étale direct summand of rank $p$.

## 4. The Hasse invariant

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

> [!proposition] Proposition 4.1 (Ordinary criterion)
> For a geometric point $s\to S$, the abelian variety $A_s$ is ordinary if and only if $\operatorname{Ha}(A)$ does not vanish at $s$.

> [!proof]- Standard criterion
> The nonvanishing of $\operatorname{Ha}$ is equivalent to the map induced by Verschiebung on invariant differentials being an isomorphism. This is the usual Hasse–Witt (or ordinary) criterion for abelian varieties. We use the criterion here as a standard input.

## 5. From ordinary to a neighborhood

For a good-reduction point over a complete rank-one valued extension $L/\mathbf Q_p$, evaluate a local integral lift of the Hasse invariant, and normalize $v(p)=1$. In the relevant range $0\leq\epsilon<1$, the condition that the valuation is at most $\epsilon$ defines a neighborhood $\mathcal X(\epsilon)$ of the ordinary locus:

$$
\mathcal X(0)\subseteq\mathcal X(\epsilon)\subseteq\mathcal X.
$$

Here $\mathcal X$ is the good-reduction locus from the preceding note. **A point in $\mathcal X(\epsilon)$ need not have ordinary special fibre** when $\epsilon>0$.

> [!remark]- Remark 5.1 (What comes next?)
> The canonical subgroup theorem applies when the Hasse invariant is sufficiently small. It constructs a finite flat subgroup lifting the kernel of relative Frobenius to characteristic zero. This gives the Frobenius-lift mechanism behind the anticanonical tower.

## References

- P. Scholze, [*On torsion in the cohomology of locally symmetric varieties*](https://www.math.uni-bonn.de/people/scholze/Torsion.pdf), Chapter III, §III.2.
- Y. Zhu, [*The Hodge–Tate period map on perfectoid Shimura variety*](https://yhzhumath.github.io/HT%20final.pdf), §3.3 (Frobenius and Verschiebung), §3.5 (translation-invariant differentials), and §§3.6–3.9.

[[perfectoid-siegel-variety/anticanonical-tower/index|Back to Anticanonical Tower]]
