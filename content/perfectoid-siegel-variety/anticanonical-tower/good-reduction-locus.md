---
title: Good Reduction and the Formal Generic Fibre
description: Why a formal generic fibre detects good reduction in Siegel moduli
tags:
  - siegel
  - perfectoid
  - good-reduction
---

# Good Reduction and the Formal Generic Fibre

*A short note on Siegel moduli spaces · 21 November 2026*

**Prerequisite.** [[perfectoid-siegel-variety/anticanonical-tower/siegel-modular-varieties|Siegel Modular Varieties and Level Structures]] recalls the $K^p$-orbit moduli problem and the $p$-level towers used here.

The phrase **good reduction locus** refers to the abelian varieties represented by moduli points. We explain why taking the generic fibre of the formal completion of an integral Siegel moduli space detects exactly this condition.

## 1. Formal completion versus analytification

Let $X/\mathbf Z_p$ be a fine Siegel moduli space parameterizing principally polarized abelian schemes of dimension $g$, with sufficiently small prime-to-$p$ level $K^p$. Fix a complete algebraically closed rank-one valued field $C/\mathbf Q_p$. Set

$$
X_{\mathcal O_C}=X\times_{\mathbf Z_p}\operatorname{Spec}\mathcal O_C,\qquad
\mathfrak X=\widehat{X_{\mathcal O_C}},\qquad
\mathcal X=\mathfrak X_\eta.
$$

The completion is $p$-adic. There is a natural open immersion

$$
\mathcal X\hookrightarrow X_C^{\mathrm{ad}},
$$

but in general it is not surjective: the right-hand side is the analytification of the full algebraic generic fibre, while the left-hand side is its locus of points extending to the chosen integral model.

> [!lemma] Lemma 1.1 (Integral points and the formal generic fibre)
> Let $L/C$ be a complete algebraically closed rank-one valued extension. For an $L$-valued point $x$ of $X_C^{\mathrm{ad}}$, the following are equivalent:
>
> $$
> x\in\mathcal X
> \quad\Longleftrightarrow\quad
> x:\operatorname{Spec}L\to X_C
> \text{ extends to }\operatorname{Spec}\mathcal O_L\to X_{\mathcal O_C}.
> $$

> [!proof]- Proof of Lemma 1.1
> On an affine open $U=\operatorname{Spec}R\subset X_{\mathcal O_C}$, the completion is $\operatorname{Spf}\widehat R$. An $L$-point lies in its formal generic fibre precisely when the coordinate map is bounded on $R$:
>
> $$
> |f(x)|\leq 1\ (f\in R)
> \quad\Longleftrightarrow\quad
> R\to L\text{ has image in }\mathcal O_L.
> $$
>
> Such a map extends continuously to $\widehat R\to\mathcal O_L$ by $p$-adic completeness. Conversely, a bounded coordinate map restricts to an integral map on $R$.
>
> For an integral extension, choose an affine open containing the image of the closed point of $\operatorname{Spec}\mathcal O_L$; the map factors through that affine open. These local characterizations yield the equivalence. $\square$

> [!example] Example 1.2 (The affine line)
> If $Y=\mathbf A^1_{\mathcal O_C}$, then
>
> $$
> \widehat Y=\operatorname{Spf}\mathcal O_C\langle T\rangle,
> \qquad
> (\widehat Y)_\eta
> =\operatorname{Spa}(C\langle T\rangle,\mathcal O_C\langle T\rangle)
> =\{|T|\leq 1\}.
> $$
>
> This is the closed unit disc, not the entire analytic affine line $(\mathbf A^1_C)^{\mathrm{ad}}$. For example, the point $T=p^{-1}$ does not extend to an integral point. The completed ring is the *restricted* power series ring $\mathcal O_C\langle T\rangle$.

## 2. The moduli interpretation

Let $A_x/L$ denote the principally polarized abelian variety represented by $x$, with its prime-to-$p$ level structure. We say $A_x$ has **good reduction** if it extends to an abelian scheme over $\mathcal O_L$.

> [!theorem] Proposition 2.1 (The good-reduction criterion)
> For the geometric points considered in Lemma 1.1,
>
> $$
> \boxed{x\in\mathcal X
> \quad\Longleftrightarrow\quad
> A_x/L\text{ has good reduction}.}
> $$
>
> Thus $\mathcal X=\mathfrak X_\eta$ is the **good reduction locus** of the Siegel moduli space.

> [!proof]- Proof of Proposition 2.1
> If $x$ extends to an $\mathcal O_L$-point of the integral moduli space, pulling back the universal abelian scheme supplies a good-reduction model of $A_x$.
>
> Conversely, let $\mathcal A/\mathcal O_L$ be an abelian scheme extending $A_x$. Homomorphisms between the generic fibres of abelian schemes extend over the valuation ring, so the principal polarization also extends. Prime-to-$p$ torsion is finite étale over the strictly henselian ring $\mathcal O_L$; the chosen tame level structure therefore extends. These extended moduli data determine an $\mathcal O_L$-point of $X$. Lemma 1.1 completes the proof. $\square$

## 3. Why smoothness does not imply good reduction

Although $X/\mathbf Z_p$ is smooth, it need not be proper. Smoothness does not guarantee that an $L$-point extends to an $\mathcal O_L$-point; the valuative extension property belongs to **properness**.

Suppose $X^*$ is a proper integral compactification. Properness extends a point in the generic fibre to $X^*$, but its specialization may lie in the boundary $X^*\setminus X$. In that case the corresponding abelian variety need not have good reduction. Thus:

- being in the *interior of the generic fibre*;
- remaining in the *interior after specialization*;

are different conditions. The latter is the good-reduction condition.

> [!remark]- Remark 3.1 (Level at $p$)
> At non-hyperspecial level $K_p$, it is convenient to define the good-reduction locus by pulling back $\mathcal X$ under the level-forgetting map:
>
> $$
> \mathcal X_{K_p}=\pi_{K_p}^{-1}(\mathcal X).
> $$
>
> This constrains the underlying abelian variety. It does **not** assert that a full $p$-power level structure extends as a constant finite étale group scheme over the valuation ring.

## 4. Good reduction is not ordinary reduction

A good-reduction abelian variety may have a supersingular or otherwise nonordinary special fibre. The further condition of ordinary reduction is detected by the **Hasse invariant**.

Let $\omega=\det e^*\Omega^1_{\mathcal A/\mathcal O_L}$. The mod-$p$ Hasse invariant is a section of $\omega^{\otimes(p-1)}$. Trivialize this line bundle integrally, lift the Hasse value to $a\in\mathcal O_L$, and normalize $v_L(p)=1$. Define its truncated Hasse height by

$$
h(A_x)=\min\{v_L(a),1\}.
$$

It is independent of the choice of lift and integral trivialization. For $0\leq\epsilon<1$, write

$$
\mathcal X(\epsilon)=\{x\in\mathcal X:h(A_x)\leq\epsilon\}.
$$

We obtain

$$
\underbrace{\mathcal X(0)}_{\text{ordinary}}
\ \subseteq\underbrace{\mathcal X(\epsilon)}_{\text{Hasse neighborhood}}
\ \subseteq\underbrace{\mathcal X}_{\text{good reduction}}
\ \subseteq X_C^{\mathrm{ad}}.
$$

Nonordinary reduction means $h(A_x)>0$; it need not mean $h(A_x)=1$.

> [!remark]- Remark 4.1 (Canonical subgroups)
> Good reduction alone is not enough to construct the canonical subgroup required by the anticanonical tower. We next work in sufficiently small Hasse neighborhoods $\mathcal X(\epsilon)$, where the canonical subgroup theorem applies.

## References

1. P. Scholze, [*On torsion in the cohomology of locally symmetric varieties*](https://www.math.uni-bonn.de/people/scholze/Torsion.pdf), Chapter III (discussion before Definition III.2.12).
2. Y. Zhu, *The Hodge–Tate period map on perfectoid Shimura varieties*, Construction 3.9.12 and Definition 3.9.13.

[[perfectoid-siegel-variety/anticanonical-tower/index|Back to Anticanonical Tower]]
