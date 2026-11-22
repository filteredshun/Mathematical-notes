---
title: Good Reduction and the Formal Generic Fibre
description: The affine and projective lines as models for the good-reduction locus
tags:
  - siegel
  - perfectoid
  - good-reduction
---

# Good Reduction and the Formal Generic Fibre

*Preliminaries for the anticanonical tower*

**Prerequisite:** [[perfectoid-siegel-variety/anticanonical-tower/siegel-modular-varieties|Siegel Modular Varieties and Level Structures]].

Our aim is to understand why the adic generic fibre of the $p$-adic completion of an integral Siegel moduli space is called the **good-reduction locus**. The essential idea is simple:

> The formal generic fibre is still a characteristic-zero analytic space, but it remembers **which points extend to the chosen integral model**.

We begin with the elementary example of the affine and projective lines, following **Caraiani, Example 4.1.2 and Exercise 4.1.3**, and then translate the result using the moduli interpretation of Siegel varieties.

## 1. Two ways to pass from a scheme to an adic space

Let $X$ be a finite-type scheme over $\mathbf Z_p$. There are two constructions:

$$
\begin{aligned}
\text{(A)}\quad &X
  \longmapsto \widehat X
  \longmapsto (\widehat X)_\eta,\\[2mm]
\text{(B)}\quad &X
  \longmapsto X_{\mathbf Q_p}
  \longmapsto (X_{\mathbf Q_p})^{\mathrm{ad}}.
\end{aligned}
$$

Here $\widehat X$ denotes the $p$-adic formal completion along the special fibre, and $(\widehat X)_\eta$ is its *adic generic fibre*. There is a natural open immersion

$$
\boxed{\quad
(\widehat X)_\eta\hookrightarrow(X_{\mathbf Q_p})^{\mathrm{ad}}.
\quad}
\tag{1.1}
$$

This need not be surjective. We shall see why through coordinates.

## 2. The affine line: an integral point means $|T|\leq1$

Let
$$
X=\mathbf A^1_{\mathbf Z_p}=\operatorname{Spec}\mathbf Z_p[T].
$$

### 2.1 First complete, then take the generic fibre

The completion is

$$
\widehat{\mathbf Z_p[T]}
=\varprojlim_n(\mathbf Z_p/p^n)[T]
=\mathbf Z_p\langle T\rangle,
$$

where

$$
\mathbf Z_p\langle T\rangle
=\left\{\sum_{i\geq0}a_iT^i:
a_i\in\mathbf Z_p,\quad v_p(a_i)\to+\infty\right\}.
$$

This is the ring of *restricted power series*, not $\mathbf Z_p[[T]]$: we complete in the $p$-direction, **not** in the $T$-direction.

Taking the adic generic fibre gives

$$
(\widehat X)_\eta=
\operatorname{Spa}\bigl(
\mathbf Q_p\langle T\rangle,\mathbf Z_p\langle T\rangle
\bigr).
$$

By the definition of $\operatorname{Spa}(B,B^+)$, its points satisfy $|f(x)|\leq1$ for $f\in B^+$. In particular, $T\in\mathbf Z_p\langle T\rangle$, so $|T(x)|\leq1$. Thus

$$
\boxed{\quad
(\widehat{\mathbf A^1_{\mathbf Z_p}})_\eta
=D(0,1)=\{|T|\leq1\}.
\quad}
\tag{2.1}
$$

This is the **closed unit disc** as an adic space.

### 2.2 Compare it with the entire analytic affine line

If instead we first invert $p$ and then analytify, we get

$$
(\mathbf A^1_{\mathbf Q_p})^{\mathrm{ad}}
=
\bigcup_{r\geq0}
\operatorname{Spa}\bigl(
\mathbf Q_p\langle p^rT\rangle,
\mathbf Z_p\langle p^rT\rangle
\bigr).
$$

The $r$-th term is the closed disc $\{|T|\leq p^r\}$ (with $|p|=p^{-1}$). Consequently

$$
\boxed{\quad
D(0,1)\subsetneq(\mathbf A^1_{\mathbf Q_p})^{\mathrm{ad}}.
\quad}
\tag{2.2}
$$

For example, the point $T=p^{-1}$ lies on the right but not on the left.

> [!remark]- Remark 2.1 (A closed disc that is open)
> Despite its name, the closed unit disc is an **open adic subspace** of the entire analytic affine line: it is a rational domain defined by $|T|\leq1$. The phrase *proper open subset* here means a **strict** open subset, not a proper morphism. The inclusion (2.2) is not a proper morphism.

### 2.3 What does “extend to the integral model” mean?

A $\mathbf Q_p$-point of $\mathbf A^1_{\mathbf Q_p}$ is an element $a\in\mathbf Q_p$, via the map $T\mapsto a$. It extends to a $\mathbf Z_p$-point of $\mathbf A^1_{\mathbf Z_p}$ precisely if this evaluation takes $\mathbf Z_p[T]$ into $\mathbf Z_p$, which is equivalent to $a\in\mathbf Z_p$.

> [!proposition] Proposition 2.2 (The affine-line extension criterion)
> For $a\in\mathbf Q_p$,
>
> $$
> \boxed{
> a\in(\widehat{\mathbf A^1_{\mathbf Z_p}})_\eta
> \iff |a|\leq1
> \iff a\in\mathbf Z_p
> \iff
> \operatorname{Spec}\mathbf Q_p\xrightarrow{a}\mathbf A^1_{\mathbf Q_p}
> \text{ extends over }\operatorname{Spec}\mathbf Z_p .
> }
> $$
>
> The same assertion holds with $\mathbf Q_p,\mathbf Z_p$ replaced by a complete rank-one valued extension $L,\mathcal O_L$.

> [!proof]- Proof
> An extension corresponds to a ring homomorphism
> $\mathbf Z_p[T]\to\mathcal O_L$ carrying $T$ to $a$, so it exists exactly when $a\in\mathcal O_L$. Equivalently $|a|\leq1$, which is the defining inequality of the formal generic fibre in (2.1). For $|a|\leq1$, every restricted power series converges at $a$ and evaluation maps $\mathbf Z_p\langle T\rangle$ to $\mathcal O_L$. $\square$

**Key observation.** We have inverted $p$, but the Huber pair

$$
\bigl(\mathbf Q_p\langle T\rangle,\mathbf Z_p\langle T\rangle\bigr)
$$

still remembers the integral subring. The role of the $+$-part is precisely to encode boundedness, hence extendability.

## 3. The projective line: properness removes the restriction

Now replace the affine line with

$$
Y=\mathbf P^1_{\mathbf Z_p}.
$$

Its two standard affine charts have coordinates $T$ and $U=1/T$. Completing them separately and passing to adic generic fibres gives

$$
D_T=\{|T|\leq1\},\qquad D_U=\{|U|\leq1\}.
$$

The second disc contains the point at infinity. On the overlap, the relation $U=1/T$ identifies the boundary annulus $|T|=1$ with $|U|=1$. Every analytic point of the projective line is in one of the two discs: if $|T|>1$, then $|U|<1$.

> [!proposition] Proposition 3.1 (Caraiani, Exercise 4.1.3)
> The canonical map
>
> $$
> \boxed{\quad
> (\widehat{\mathbf P^1_{\mathbf Z_p}})_\eta
> \xrightarrow{\ \sim\ }
> (\mathbf P^1_{\mathbf Q_p})^{\mathrm{ad}}
> \quad}
> $$
>
> is an isomorphism.

> [!proof]- Proof
> The formal generic fibre of the two standard affine charts is $D_T$ and $D_U$. These glue along $|T|=|U|=1$ and together cover the entire adic projective line. This identifies the glued spaces. $\square$

There is a conceptual reason: $\mathbf P^1_{\mathbf Z_p}$ is **proper**. By the valuative criterion, a point over a valued field $L/\mathbf Q_p$ extends to an $\mathcal O_L$-point. For example $T=p^{-1}$ fails to extend into the *affine* chart $\mathbf A^1_{\mathbf Z_p}$, but extends to the *projective* model using $U=p$.

> [!remark]- Remark 3.2 (Properness and formal generic fibres)
> More generally, for a proper finite-type $\mathbf Z_p$-scheme, the adic generic fibre of its $p$-adic formal completion agrees with the analytification of its algebraic generic fibre. Thus the difference in (2.2) reflects **non-properness and the choice of integral model**, not a failure of analytification.

## 4. Returning to Siegel moduli: integral points are good-reduction points

Fix sufficiently small tame level $K^p$ and hyperspecial $K_p=G(\mathbf Z_p)$. Let $X$ denote the smooth Siegel moduli scheme over $\mathbf Z_{(p)}$ of triples $(A,\lambda,\eta^p)$.

Base-change to a complete algebraically closed extension $C/\mathbf Q_p$ and set

$$
\mathfrak X=\widehat{X_{\mathcal O_C}},\qquad
\mathcal X=\mathfrak X_\eta
\subset X_C^{\mathrm{ad}}.
$$

Take a geometric analytic point $x$ valued in a complete algebraically closed extension $L/C$. It represents a principally polarized abelian variety $(A_x,\lambda_x)$ over $L$ with its tame level $\eta_x^p$.

Recall: $A_x/L$ has **good reduction** if there exists an abelian scheme $\mathcal A/\mathcal O_L$ with generic fibre isomorphic to $A_x$.

The correspondence with our affine-line example is now exact at the level of integral moduli points:

> [!proposition] Proposition 4.1 (The good-reduction locus)
> For the geometric points above,
>
> $$
> \boxed{\begin{aligned}
> x\in\mathcal X
> &\iff (A_x,\lambda_x,\eta_x^p)
> \text{ extends over }\mathcal O_L\\
> &\iff A_x/L\text{ has good reduction}.
> \end{aligned}}
> \tag{4.1}
> $$
>
> Therefore $\mathcal X$ is called the **good-reduction locus** in the analytic Siegel variety.

> [!proof]- Proof
> A map $\operatorname{Spec}\mathcal O_L\to X$ pulls back the universal abelian scheme to a good-reduction model of $A_x$. Conversely, if $A_x$ extends to an abelian scheme over $\mathcal O_L$, the polarization extends (by the extension property for abelian schemes), and the tame torsion and level structure extend because orders prime to $p$ are étale over the valuation ring. These data give an integral moduli point. Locally, the criterion for lying in $\mathfrak X_\eta$ is that the coordinate functions of an affine integral chart are bounded, exactly as in Proposition 2.2. $\square$

For a $\mathbf Q_p$-valued point the corresponding statement uses an extension over **$\mathbf Z_p$**. An abelian variety that acquires good reduction only after a nontrivial finite extension $L/\mathbf Q_p$ has *potentially good reduction*; this should not be confused with good reduction already over $\mathbf Q_p$.

### 4.1 The analogy with compactification

The Siegel moduli space $X$ is smooth but non-proper. It admits compactifications $X\hookrightarrow X^*$, just as

$$
\mathbf A^1_{\mathbf Z_p}\hookrightarrow\mathbf P^1_{\mathbf Z_p}.
$$

A point of $X_C^{\mathrm{ad}}$ extends, by properness, into a suitable proper integral compactification. But its specialization may land **on the boundary** $X^*\setminus X$, so it need not extend to the open moduli space parameterizing abelian schemes. Thus the boundary of the integral compactification records possible degenerations.

> [!remark]- Remark 4.2 (Good reduction at deep $p$-level)
> If $U\subseteq G(\mathbf Z_p)$ is a deeper $p$-level, write $X_U^{\mathrm{ad}}\to X^{\mathrm{ad}}$ for its generic-fibre cover and define
>
> $$
> \mathcal X_U=
> X_U^{\mathrm{ad}}\times_{X^{\mathrm{ad}}}\mathcal X.
> $$
>
> This requires **good reduction of the underlying abelian variety**. It does *not* require the chosen full $p^m$-level frame to extend as an isomorphism of constant finite étale group schemes over $\mathcal O_L$.

## 5. Good reduction versus ordinary reduction

Good reduction does **not** mean ordinary reduction. The special fibre of an abelian scheme may be ordinary, supersingular, or otherwise nonordinary. The Hasse invariant detects the ordinary locus inside $\mathcal X$, and its valuation defines small neighborhoods on which canonical subgroups exist.

We will develop those constructions in the next notes. For now, remember the chain

$$
\boxed{
\mathcal X_{\mathrm{ordinary}}
\subseteq\mathcal X_{\mathrm{Hasse\ neighborhood}}
\subseteq\mathcal X_{\mathrm{good\ reduction}}
\subseteq X_C^{\mathrm{ad}}.
}
$$

## References

- Ana Caraiani, [*Perfectoid Shimura Varieties*](https://www.ma.imperial.ac.uk/~acaraian/papers/arizona_notes.pdf), §4.1, especially Example 4.1.2 and Exercise 4.1.3.
- Peter Scholze, [*On torsion in the cohomology of locally symmetric varieties*](https://www.math.uni-bonn.de/people/scholze/Torsion.pdf), Chapter III, §III.2.
- Yihang Zhu, *The Hodge–Tate period map on perfectoid Shimura varieties*, §3.9.

[[perfectoid-siegel-variety/anticanonical-tower/index|Back to Anticanonical Tower]]
