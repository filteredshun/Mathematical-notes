---
title: Overconvergent Locus
description: Canonical subgroups and anticanonical towers near the ordinary locus
tags:
  - siegel
  - perfectoid
  - overconvergent
---

# Overconvergent Locus

*Extending the anticanonical tower beyond the ordinary locus*

The [[perfectoid-siegel-variety/anticanonical-tower/ordinary-locus|Ordinary Locus]] note constructs the canonical subgroups and the anticanonical tower when the reduction is ordinary. We now replace ordinarity by a quantitative **smallness condition on the Hasse invariant**.

The first section follows **Yihang Zhu, [*The Hodge–Tate Period Map on Perfectoid Shimura Variety*, §3.9.1](https://yhzhumath.github.io/HT%20final.pdf)** (PDF pp. 44–48). We retain Zhu's original numbering **3.9.1–3.9.11**. The original statements are retained below, with **collapsible proofs** for the deformation-theoretic steps and the resulting canonical-subgroup properties. The subsequent construction of canonical Frobenius lifts (§3.9.2 in Zhu) belongs to a later section of these notes.

## 1. Canonical Subgroups over the Overconvergent Locus

> [!remark] Historical remark (Lubin–Katz)
> The **canonical subgroup** predates the perfectoid approach. In the introduction to his 1973 [*p-adic Properties of Modular Schemes and Modular Forms*](https://web.math.princeton.edu/~nmk/old/padicpropMFMS.pdf), Katz explicitly attributes the theory to **Jonathan Lubin**; Chapter 3, especially Theorem 3.1, develops the construction for elliptic curves over $p$-adic bases when the Hasse invariant is sufficiently small. In Katz's normalized *$r$-situation*, the level-one existence bound is $v_p(r)<p/(p+1)$.
>
> The classical intuition comes from the formal-group $p$-series
>
> $$
> [p](T)=pT+aT^p+\cdots+uT^{p^2}+\cdots,
> $$
>
> where $a\bmod p$ encodes the Hasse invariant (after choosing a coordinate). Under the smallness bound, a distinct slope of its Newton polygon singles out the subgroup of order $p$ consisting of the torsion points closest to the identity. See also Lubin, [*Canonicity of a Cyclic Subgroup of an Elliptic Curve*](https://archive.numdam.org/item/AST_1979__63__165_0/) (1979).
>
> Katz–Mazur, [*Arithmetic Moduli of Elliptic Curves*](https://doi.org/10.1515/9781400881710) (1985), especially Chapter 12 on characteristic-$p$ moduli problems and Igusa curves, provides the related integral-moduli background. The statements below are **not the original Lubin–Katz theorem**: Zhu follows Scholze's higher-dimensional, higher-level formulation using Lie complexes and Illusie-style deformation theory.

### 1.1 Ground rings, Lie complexes, and a lifting theorem

> [!definition] Notation 3.9.1 (Cyclotomic base and small exponents)
> Put
>
> $$
> \mathcal O_K=\mathbf Z_p^{\mathrm{cycl}}
> :=\widehat{\mathbf Z_p[\mu_{p^\infty}]},\qquad
> K=\mathbf Q_p^{\mathrm{cycl}}
> :=\widehat{\mathbf Q_p(\mu_{p^\infty})}.
> $$
>
> Fix a rational exponent $0\leq\epsilon<\frac12$ belonging to the value group of $K$ (as in Zhu, one may take $\epsilon=a/\varphi(p^r)$). We write $p^\epsilon$ for **any element of valuation $\epsilon$**, determined up to a unit.
>
> Throughout this section, $R$ is a **$p$-adically complete, flat $\mathcal O_K$-algebra**; write $R_\delta=R/p^\delta R$ whenever the exponent is defined, and $A_\delta=A\otimes_RR_\delta$ for an abelian scheme $A/R$.
>
> Unless specified otherwise, *group scheme* means **finite locally free commutative group scheme**, and a *subgroup* is a finite locally free closed subgroup. This matters because $R$ need not be Noetherian.

> [!theorem] Theorem 3.9.2 (Illusie's subgroup-lifting theorem; Scholze III.2.2)
> Let $G/R$ be a finite locally free commutative group scheme. Set $G_1=G\otimes_RR_1$, and let $C_1\subseteq G_1$ be a finite locally free subgroup with quotient $H_1=G_1/C_1$.
>
> Assume that multiplication by $p^\epsilon$ is **null-homotopic on the Lie complex** $\check\ell_{H_1}$, for some $0\leq\epsilon<\frac12$.
>
> Then there exists a finite locally free closed subgroup $C\subseteq G$ such that, as subgroups of $G\otimes_RR_{1-\epsilon}$,
>
> $$
> \boxed{\quad
> C\otimes_R R_{1-\epsilon}
> =C_1\otimes_{R_1}R_{1-\epsilon}.
> \quad}
> $$
>
> In particular, when $\epsilon=0$, the hypothesis is equivalent to $H_1$ being finite étale, and the subgroup lifts with its prescribed full reduction modulo $p$.


> [!proof]- Proof: Illusie's obstruction classes and Scholze's two thickenings
> **Input from Illusie.** We use [Scholze, Theorem III.2.1](https://www.math.uni-bonn.de/people/scholze/Torsion.pdf), which is an application of Illusie's deformation theory of finite flat group schemes. Given a homomorphism $C_1\hookrightarrow G_1$ and two *square-zero thickenings* $B_i\twoheadrightarrow R/p$ with augmentation ideals $J_i$, the obstruction to lifting the subgroup homomorphism lies in an Ext group controlled by the cone of Lie complexes
>
> $$
> \mathcal K=\operatorname{Cone}
> \bigl(\check\ell_{C_1}\longrightarrow\check\ell_{G_1}\bigr)
> \simeq\check\ell_{H_1}
> \quad\text{(up to the usual cohomological shift).}
> $$
>
> The crucial property is **functoriality in the thickening**: under a map $B_1\to B_2$ of thickenings, the second obstruction is the image of the first under the corresponding coefficient map $J_1\to J_2$. This is the non-elementary theorem we invoke, not a claim proved by linear algebra alone.
>
> **The choice of thickenings.** Take
>
> $$
> \begin{aligned}
> B_1&=R/p^{2-\epsilon},\\
> B_2&=(R/p^{2-2\epsilon})
> \times_{R/p^{1-\epsilon}}(R/p),
> \qquad B_i\twoheadrightarrow R/p.
> \end{aligned}
> $$
>
> Here $B_1\to B_2$ sends $x$ to its two reductions. Both augmentation ideals $J_i=\ker(B_i\to R/p)$ are square-zero and, as $R/p$-modules, are isomorphic to $R/p^{1-\epsilon}$. The identifications use multiplication by $p$ on $J_1$ and by $p^{1-\epsilon}$ on $J_2$. Under them the map on ideals is precisely
>
> $$
> J_1\longrightarrow J_2,\qquad
> x\longmapsto p^\epsilon x.
> $$
>
> By hypothesis, multiplication by $p^\epsilon$ on $\check\ell_{H_1}$ is null-homotopic. It follows that the induced map on the obstruction Ext group is zero, so the obstruction to lifting the subgroup along $B_2$ vanishes. A lift over $B_2$ is the same as a lift over $R/p^{2-2\epsilon}$ agreeing with the original subgroup modulo $p^{1-\epsilon}$.
>
> The inequality
>
> $$
> 2-2\epsilon>1
> \qquad\Longleftrightarrow\qquad
> \epsilon<\tfrac12
> $$
>
> ensures that the lift passes beyond the initial modulo-$p$ precision. Repeating the same obstruction-theoretic improvement on successively deeper square-zero thickenings, while preserving the prescribed reduction modulo $p^{1-\epsilon}$, constructs a compatible system of finite locally free subgroups. $p$-adic completeness and finite presentation allow passage to the inverse limit, giving $C\subset G$ as asserted.
>
> **Scope.** The key vanishing of the obstruction uses the *null-homotopy of the full Lie complex*, not merely vanishing of the action on its cohomology. This is why an arbitrary lift of $\ker F^n$ cannot be asserted without the Hasse smallness hypothesis. $\square$

> [!remark] Remark 3.9.3 (Lie complex)
> For a finite locally free commutative group scheme $H/S$, the Lie complex $\check\ell_H$ is a perfect complex of amplitude $[0,1]$ with
>
> $$
> H^0(\check\ell_H)=\operatorname{Lie}(H)
> =\operatorname{Hom}_{\mathcal O_S}(e^*\Omega^1_{H/S},\mathcal O_S).
> $$
>
> It is defined using the **cotangent complex** and derived pullback at the identity section. If there is an exact sequence
>
> $$
> 0\longrightarrow H\longrightarrow G_1
> \xrightarrow{f}G_2\longrightarrow0
> $$
>
> with $G_1,G_2$ smooth commutative group schemes, then
>
> $$
> \boxed{\quad
> \check\ell_H\simeq
> [\,\operatorname{Lie}G_1\xrightarrow{df}\operatorname{Lie}G_2\,].
> \quad}
> $$
>
> In particular, **null-homotopic multiplication by $p^\epsilon$** is a stronger, derived condition than merely annihilating $\operatorname{Lie}(H)$.


> [!remark]- Cotangent-complex origin of the Lie complex (transitivity triangle)
> Recall the **transitivity triangle** for a composite of schemes $X\xrightarrow{f}Y\to S$:
>
> $$
> Lf^*\mathbb L_{Y/S}
> \longrightarrow\mathbb L_{X/S}
> \longrightarrow\mathbb L_{X/Y}
> \xrightarrow{+1}.
> $$
>
> It refines the usual right-exact sequence of Kähler differentials, retaining the information that may be lost at its left end.
>
> Now suppose $f:G_1\to G_2$ is a **faithfully flat** homomorphism of smooth commutative group schemes, and put $H=\ker f$. By definition $H$ is the cartesian fibre of $f$ over the identity $e_2:S\to G_2$:
>
> $$
> \begin{array}{ccc}
> H&\longrightarrow&G_1\\
> \downarrow&&\downarrow{\scriptstyle f}\\
> S&\xrightarrow{\ e_2\ }&G_2.
> \end{array}
> $$
>
> Because $f$ is flat, this square is Tor-independent. **Base change for cotangent complexes** gives
>
> $$
> \mathbb L_{H/S}
> \simeq\mathbb L_{G_1/G_2}\big|_H.
> $$
>
> Apply transitivity to $G_1\xrightarrow{f}G_2\to S$. Since both $G_i/S$ are smooth, $\mathbb L_{G_i/S}\simeq\Omega^1_{G_i/S}[0]$, and thus
>
> $$
> \mathbb L_{G_1/G_2}\simeq
> \operatorname{Cone}\!\left(
> f^*\Omega^1_{G_2/S}
> \longrightarrow\Omega^1_{G_1/S}
> \right).
> $$
>
> Let $e_H:S\to H$ be the identity section and set $\omega_{G_i}=e_i^*\Omega^1_{G_i/S}=(\operatorname{Lie}G_i)^\vee$. Pulling this two-term, locally free complex back to $e_H$ identifies the **co-Lie complex** with
>
> $$
> \boxed{\quad
> \ell_H:=Le_H^*\mathbb L_{H/S}
> \simeq
> [\,\omega_{G_2}\xrightarrow{(df)^\vee}\omega_{G_1}\,],
> \quad}
> $$
>
> placed in **degrees $-1,0$**. The Lie complex is its **derived dual**, not a Grothendieck dualizing complex:
>
> $$
> \boxed{\quad
> \check\ell_H:=
> R\mathcal Hom_S(\ell_H,\mathcal O_S)
> \simeq
> [\,\operatorname{Lie}G_1\xrightarrow{df}\operatorname{Lie}G_2\,],
> \quad}
> $$
>
> placed in **degrees $0,1$**. In particular,
>
> $$
> H^0(\check\ell_H)=\ker(df)=\operatorname{Lie}H,
> \qquad
> H^0(\ell_H)=\operatorname{coker}((df)^\vee)
> =e_H^*\Omega^1_{H/S}.
> $$
>
> **Concrete alternative.** The immersion $H\hookrightarrow G_1$ is a base change of the regular identity immersion $S\hookrightarrow G_2$. Its conormal complex
>
> $$
> [\,I/I^2\longrightarrow\Omega^1_{G_1/S}|_H\,]
> $$
>
> gives the same formula, since $e_H^*(I/I^2)\simeq\omega_{G_2}$. This is the special case of the transitivity triangle needed for $H=\ker V^n$ in the canonical subgroup proof.
>
> [!example] Example 3.9.4 (An étale group)
> If $N$ is invertible on $R_1$ and $H_1=\mu_N$, the presentation
>
> $$
> 1\longrightarrow\mu_N\longrightarrow\mathbf G_m
> \xrightarrow{[N]}\mathbf G_m\longrightarrow1
> $$
>
> gives
>
> $$
> \check\ell_{H_1}\simeq
> [\,R_1\xrightarrow{\,N\,}R_1\,]\simeq0.
> $$
>
> Thus Theorem 3.9.2 applies with $\epsilon=0$.

> [!lemma] Lemma 3.9.5 (Rigidity of sections; Scholze III.2.4)
> Let $X$ be an $R$-scheme such that
>
> $$
> p^\epsilon\Omega^1_{X/R}=0.
> $$
>
> For every $\delta>\epsilon$ for which $p^\delta$ is defined in $R$, reduction induces an **injective** map
>
> $$
> \boxed{\quad X(R)\longrightarrow X(R/p^\delta R).\quad}
> $$


> [!proof]- Proof by successive improvement of the congruence
> Let $s,t\in X(R)$ coincide modulo $p^\delta$, with $\delta>\epsilon$. We show that they coincide modulo a **strictly higher** power.
>
> Consider the square-zero extension $R/p^{2\delta}\twoheadrightarrow R/p^\delta$. The set of lifts of the common reduced section, when nonempty, is a torsor under
>
> $$
> \operatorname{Hom}_{R/p^\delta}
> \bigl(s^*\Omega^1_{X/R}\otimes_RR/p^\delta,\;
> p^\delta R/p^{2\delta}\bigr).
> $$
>
> Identifying the target with $R/p^\delta$, we see that every such homomorphism has image in the ideal $p^{\delta-\epsilon}(R/p^\delta)$, since $p^\epsilon$ annihilates its source and $R$ is flat over the valuation ring. Therefore any two lifts that agree modulo $p^\delta$ in fact agree modulo
>
> $$
> p^{\,2\delta-\epsilon}.
> $$
>
> Starting from $\delta_0=\delta$, define $\delta_{r+1}=2\delta_r-\epsilon$. Then
>
> $$
> \delta_r=\epsilon+2^r(\delta-\epsilon)\xrightarrow[r\to\infty]{}\infty.
> $$
>
> Applying the same argument repeatedly and using the $p$-adic separatedness of the base, we deduce $s=t$. This is [Scholze, Lemma III.2.4](https://www.math.uni-bonn.de/people/scholze/Torsion.pdf). $\square$

### 1.2 Hasse smallness and weak canonical subgroups

Let $A/R$ be an abelian scheme of relative dimension $g$, and set $A_1=A\otimes_RR_1$. As in the [[perfectoid-siegel-variety/anticanonical-tower/ordinary-locus|Ordinary Locus, §3]], its Hasse invariant is a section of $(\det\omega_{A_1/R_1})^{\otimes(p-1)}$. All divisibility statements below are **Zariski-local**, after choosing a trivialization of the determinant Hodge line.

> [!definition] Definition 3.9.6 (The condition $O(n,\epsilon)$)
> For $n\geq1$ and $0\leq\epsilon<\frac12$, the abelian scheme $A$ (equivalently, its special fibre $A_1$) is called **$O(n,\epsilon)$** if
>
> $$
> \boxed{\quad
> \operatorname{Ha}(A_1/R_1)^{\,N_n}\mid p^\epsilon
> \quad\text{in }R_1,\qquad
> N_n=\frac{p^n-1}{p-1}=1+p+\cdots+p^{n-1}.
> \quad}
> $$
>
> The condition is independent of the local trivialization: changing a trivialization multiplies the Hasse invariant by a unit.

> [!theorem] Theorem 3.9.7 (Existence and uniqueness of weak canonical subgroups)
> Suppose $A/R$ is $O(n,\epsilon)$ for some $0\leq\epsilon<\frac12$.
>
> Then there is a **unique finite locally free closed subgroup** $C_n\subseteq A[p^n]$, called the **level-$n$ weak canonical subgroup**, whose reduction modulo $p^{1-\epsilon}$ agrees with the iterated Frobenius kernel:
>
> $$
> \boxed{\quad
> C_n\otimes_R R_{1-\epsilon}
> =
> \ker(F^n:A_1\to A_1^{(p^n)})
> \otimes_{R_1}R_{1-\epsilon}.
> \quad}
> $$
>
> It has rank $p^{ng}$. Furthermore:
>
> **(1) Small differentials of the quotient.** For
>
> $$
> H:=A[p^n]/C_n
> $$
>
> one has
>
> $$
> \boxed{\quad p^\epsilon\Omega^1_{H/R}=0.\quad}
> $$
>
> **(2) Characterization by relative Frobenius (valid for flat test algebras).** For every $p$-adically complete flat $\mathcal O_K$-algebra $R'$ equipped with $R\to R'$, put $\alpha:=1-\epsilon$ and $B:=R'/p^\alpha R'$, and write $s_\alpha\in A[p^n](B)$ for the reduction of $s$. Then
>
> $$
> \boxed{\quad
> C_n(R')
> =
> \left\{\,s\in A[p^n](R') :
> F^n_{A_B/B}(s_\alpha)=0\,\right\},
> \qquad \alpha=1-\epsilon.
> \quad}
> $$
>
> Here $F^n$ is **relative Frobenius**, not the multiplication-by-$p^n$ map. Equivalently, if $X_1,\ldots,X_t$ generate the augmentation ideal of the affine group scheme $A[p^n]_{R'/p^\alpha}$, the criterion is
>
> $$
> \boxed{\quad
> X_i(s_\alpha)^{p^n}=0
> \ \text{in }R'/p^\alpha
> \quad\text{for every }i.\quad}
> $$
>
> **Valuation-ring case (the usual congruence form).** If $R'$ is a complete valuation ring containing the indicated fractional powers of $p$, then this is also equivalent to $s\equiv0\pmod{p^{(1-\epsilon)/p^n}}$. The latter simplification need not hold for an arbitrary flat test algebra. See the proof below.

> [!proof]- Proof: existence, differentials, the congruence criterion, and uniqueness
> Write $S=\operatorname{Spec}(R/p)$ and put $A_1=A\times_RS$. Everything below is compatible with localization on $S$, so we may trivialize the Hodge determinant line locally.
>
> **Step I — Existence from the Lie complex.** In characteristic $p$ there is an fppf-exact sequence
>
> $$
> 0\longrightarrow\ker F^n
> \longrightarrow A_1[p^n]
> \xrightarrow{F^n}
> H_1:=\ker(V^n:A_1^{(p^n)}\to A_1)
> \longrightarrow0.
> $$
>
> The quotient we want to lift is $H_1$. By Remark 3.9.3, its Lie complex is
>
> $$
> \boxed{\quad
> \check\ell_{H_1}\simeq
> [\,\operatorname{Lie}A_1^{(p^n)}
> \xrightarrow{\,dV^n\,}\operatorname{Lie}A_1\,].
> \quad}
> $$
>
> The determinant of the iterated Verschiebung is the product of the Hasse invariants on the successive Frobenius twists:
>
> $$
> \begin{aligned}
> \det(dV^n)
> &\doteq\prod_{i=0}^{n-1}\operatorname{Ha}(A_1)^{p^i}\\
> &=\operatorname{Ha}(A_1)^{N_n},
> \qquad N_n=1+p+\cdots+p^{n-1}.
> \end{aligned}
> $$
>
> Here $\doteq$ means equality after the natural determinant-line identifications (or after choosing local bases). Since $A$ is $O(n,\epsilon)$, we may write
>
> $$
> p^\epsilon=u\det(dV^n)
> $$
>
> with $u$ a local function. For a matrix $M$ representing $dV^n$, its adjugate satisfies
>
> $$
> M\operatorname{adj}(M)
> =\operatorname{adj}(M)M
> =(\det M)I_g.
> $$
>
> Hence the map $u\,\operatorname{adj}(M)$ is a **chain homotopy** between multiplication by $p^\epsilon$ and zero on the two-term complex $\check\ell_{H_1}$. This is stronger than saying only that $p^\epsilon$ kills $\operatorname{Lie}(H_1)$. Applying Theorem 3.9.2 to
>
> $$
> G=A[p^n],\qquad C_1^{\mathrm{aux}}=\ker F^n\subset A_1[p^n]
> $$
>
> yields a finite locally free closed subgroup $C_n\subset A[p^n]$ satisfying
>
> $$
> C_n\otimes_R R/p^{1-\epsilon}
> =(\ker F^n)\otimes_{R/p}R/p^{1-\epsilon}.
> $$
>
> Since $\deg F^n=p^{ng}$, the subgroup $C_n$ has rank $p^{ng}$.
>
> **Step II — $p^\epsilon$ kills the quotient differentials.** Put $H=A[p^n]/C_n$ and write $\Omega=\Omega^1_{H/R}$. By construction,
>
> $$
> H\otimes_R R/p^{1-\epsilon}
> \simeq H_1\otimes_{R/p}R/p^{1-\epsilon}.
> $$
>
> The null-homotopy on $\check\ell_{H_1}$ also annihilates the degree-zero cohomology of the **dual cotangent complex**, hence $p^\epsilon e^*\Omega^1_{H_1/(R/p)}=0$. Translation invariance of differentials on group schemes yields
>
> $$
> \Omega^1_{H_1/(R/p)}
> \simeq \pi^*e^*\Omega^1_{H_1/(R/p)},
> $$
>
> so $p^\epsilon$ kills all of $\Omega^1_{H_1/(R/p)}$. By reduction,
>
> $$
> p^\epsilon\Omega\subseteq p^{1-\epsilon}\Omega
> =p^{1-2\epsilon}(p^\epsilon\Omega).
> $$
>
> Iterating gives $p^\epsilon\Omega\subseteq p^{r(1-2\epsilon)}\Omega$ for every $r\ge1$. As $\epsilon<1/2$, the exponents tend to infinity. The module $\Omega$ is $p$-adically separated: $H$ is finite over the complete ring $R$, and its module of differentials is finite. Hence
>
> $$
> \boxed{\qquad p^\epsilon\Omega^1_{H/R}=0.\qquad}
> $$
>
> **Step III — Rigorous Frobenius criterion for sections.** Let $R'$ be an allowed $p$-adically complete flat test algebra, let $\alpha=1-\epsilon$, and put $B=R'/p^\alpha R'$. Write $G=A[p^n]$, $H=G/C_n$, and $q:G\to H$. By Step II, $p^\epsilon\Omega^1_{H/R}=0$. Since $\alpha>\epsilon$, Lemma 3.9.5 (rigidity) makes the reduction map
>
> $$
> H(R')\longrightarrow H(B)
> $$
>
> **injective**. Moreover, the base change of $C_n$ to $B$ is $\ker F^n$. Thus, for any $s\in G(R')$,
>
> $$
> \begin{aligned}
> s\in C_n(R')
> &\iff q(s)=0\quad\text{in }H(R')\\
> &\iff q(s_B)=0\quad\text{in }H(B)\\
> &\iff s_B\in C_n(B)=\ker F^n(B)\\
> &\iff F^n(s_B)=0.
> \end{aligned}
> $$
>
> This proves the **intrinsic, base-change-compatible criterion** in (2), without any normality or reducedness assumption on $R'$.
>
> **Why this is a $p^n$-power condition.** Because $G_B$ is finite affine, write $G_B=\operatorname{Spec}D$ and let $I=\ker(e^\#:D\to B)$ be its augmentation ideal, generated by $X_1,\ldots,X_t$. In characteristic $p$ the relative Frobenius has comorphism
>
> $$
> \begin{aligned}
> D\otimes_{B,\mathrm{Fr}_B^n}B&\longrightarrow D,\\
> d\otimes b&\longmapsto d^{p^n}b.
> \end{aligned}
> $$
>
> If $s_B^\#:D\to B$ is the section, comparing it with the identity section on the Frobenius twist gives
>
> $$
> \boxed{\quad
> F^n(s_B)=0
> \iff s_B^\#(X_i)^{p^n}=0\text{ in }B
> \quad\text{for all }i.\quad}
> $$
>
> Thus the shorthand "$s^{p^n}=0\bmod p^{1-\epsilon}$" is valid **only as a coordinatewise Frobenius statement**; it does not mean $[p^n]s=0$ (which already holds for all $p^n$-torsion points).
>
> **Relation to the classical congruence.** Let $J=\ker(\mathrm{Fr}_B^n:B\to B)$. Factoring the Frobenius ring map through $B/J$, and using that $G_B$ is affine, the same calculation yields
>
> $$
> F^n(s_B)=0\iff s_B\bmod J=0.
> $$
>
> If $R'$ is a valuation ring (with the relevant $p^\gamma$ present), valuation gives
>
> $$
> J=p^{\alpha/p^n}B,\qquad
> x^{p^n}\in p^\alpha R'\iff x\in p^{\alpha/p^n}R'.
> $$
>
> In this case, and **only under such an additional condition on the test ring**, the criterion becomes the usual congruence $s\equiv0\bmod p^{(1-\epsilon)/p^n}$. For a general flat algebra, $\ker(\mathrm{Fr}_B^n)$ can contain additional nilpotents (for example, in $\mathcal O_C[T]/(T^p-1)$, $(T-1)^p=0$), so the congruence version must not be used without checking this ideal equality. Compare [Scholze, Corollary III.2.6](https://www.math.uni-bonn.de/people/scholze/Torsion.pdf) and [Zhu, Theorem 3.9.7](https://yhzhumath.github.io/HT%20final.pdf).

> **Step IV — Uniqueness by Yoneda.** The right-hand side of the section formula depends only on $(A,n,\epsilon)$, not on the chosen lift. If $C_n'$ is another finite locally free subgroup with the required reduction, Steps II–III apply equally to it. The functors of points of $C_n$ and $C_n'$ therefore coincide on all allowed flat complete base changes.
>
> In particular, take $R'$ to be the coordinate algebra of $C_n$ (and conversely of $C_n'$), which is finite locally free and $p$-adically complete over $R$. Evaluating on its universal section proves $C_n\subseteq C_n'$ and the reverse inclusion. Hence $C_n=C_n'$ as subgroup schemes. $\square$

### 1.3 Strong canonical subgroups and successive quotients

> [!definition] Definition 3.9.8 (Strong $O(n,\epsilon)$ and canonical subgroup)
> For $n\geq1$ and $0\leq\epsilon<\frac12$, say that $A$ is **strongly $O(n,\epsilon)$** if
>
> $$
> \boxed{\quad
> \operatorname{Ha}(A_1/R_1)^{\,p^n}\mid p^\epsilon
> \quad\text{in }R_1.
> \quad}
> $$
>
> Under this stronger hypothesis, Zhu calls the weak canonical subgroup of Theorem 3.9.7 the **level-$n$ canonical subgroup** $C_n(A)$.
>
> We say $A$ is *(strongly) $O(n)$* if it is *(strongly) $O(n,\epsilon)$* for some allowed $\epsilon$.
>
> **Basic consequences recorded by Zhu:** an abelian scheme with ordinary reduction is $O(n,0)$ for all $n$; if $A$ is $O(n,\epsilon)$, then it is $O(r,\epsilon')$ for every $1\leq r\leq n$ and $\epsilon'\geq\epsilon$ still in the allowed range. The weak canonical subgroups are nested whenever defined:
>
> $$
> \boxed{\quad C_1(A)\subseteq C_2(A)\subseteq\cdots\subseteq C_n(A).\quad}
> $$
>
> The stronger hypothesis is used to control **successive canonical quotients**, rather than merely the existence of a weak subgroup.


> [!proof]- Verification of the elementary consequences
> If $A$ is strongly $O(n,\epsilon)$, the divisibility $\operatorname{Ha}^{p^n}\mid p^\epsilon$ implies the weak $O(n,\epsilon)$ condition because $N_n\leq p^n$. The same reasoning gives weak and strong conditions of each smaller level whenever appropriate.
>
> For the nesting of weak canonical subgroups, fix $1\leq r\leq n$ and choose a common allowable exponent $\epsilon$ for both levels. The higher-level weak Hasse condition implies the lower-level condition because $N_r\leq N_n$. By the **corrected Frobenius criterion** in Theorem 3.9.7(2), for every allowed test algebra $R'$, with $B=R'/p^{1-\epsilon}$,
>
> $$
> \begin{aligned}
> C_r(A)(R')&=\{s\in A[p^r](R'):F^r(s_B)=0\},\\
> C_n(A)(R')&=\{s\in A[p^n](R'):F^n(s_B)=0\}.
> \end{aligned}
> $$
>
> The relative Frobenius iterates compose (with the appropriate Frobenius twist on the intermediate target):
>
> $$
> F^n_{A_B/B}
> =F^{n-r}_{A_B^{(p^r)}/B}\circ F^r_{A_B/B}.
> $$
>
> Hence $F^r(s_B)=0\Rightarrow F^n(s_B)=0$, so $C_r(A)(R')\subseteq C_n(A)(R')$. Equivalently, in augmentation-ideal coordinates,
>
> $$
> X_i(s_B)^{p^r}=0
> \quad\Longrightarrow\quad
> X_i(s_B)^{p^n}
> =\bigl(X_i(s_B)^{p^r}\bigr)^{p^{n-r}}=0.
> $$
>
> Finally, evaluate on the **universal point** over the finite locally free coordinate algebra $\Gamma(C_r,\mathcal O_{C_r})$, which is an allowed complete flat test algebra. The pointwise inclusion then forces the factorization $C_r\hookrightarrow C_n$ as closed subgroup schemes. Thus
>
> $$
> \boxed{\quad C_r(A)\subseteq C_n(A)\quad(r\le n).\quad}
> $$
>
> This argument works for arbitrary allowed flat test algebras; it does **not** use the valuation-ring congruence formula. $\square$

> [!proposition] Proposition 3.9.9 (Compatibility under canonical quotient)
> Suppose $A$ is **strongly $O(n)$**, with canonical subgroup $C_n(A)$, and put
>
> $$
> B:=A/C_n(A).
> $$
>
> Then
>
> $$
> \boxed{\quad
> B\text{ is strongly }O(m)
> \quad\Longleftrightarrow\quad
> A\text{ is strongly }O(n+m).
> \quad}
> $$
>
> In this statement the small exponents $\epsilon$ for $A$ and $B$ **need not be the same**. Whenever these equivalent conditions hold, the quotient map $A\to B$ induces an exact sequence
>
> $$
> \boxed{
> 0\longrightarrow C_n(A)
> \longrightarrow C_{n+m}(A)
> \longrightarrow C_m(B)
> \longrightarrow0.
> }
> $$


> [!proof]- Proof: the Hasse transformation and rigidity of the quotient
> **(1) Comparison of the Hasse conditions.** Let $q:A\to B=A/C_n(A)$, and choose $\epsilon_0<1/2$ witnessing the strong $O(n)$ condition on $A$. Modulo $p^{1-\epsilon_0}$, the canonical isogeny $q$ agrees with the relative $n$-fold Frobenius
>
> $$
> F_A^n:A_1\longrightarrow A_1^{(p^n)}.
> $$
>
> Consequently, under the Frobenius-twisted Hodge-line identifications,
>
> $$
> \boxed{\quad
> \operatorname{Ha}(B)\equiv
> \operatorname{Ha}(A)^{p^n}
> \pmod{p^{1-\epsilon_0}}.
> \quad}
> $$
>
> Since $1-\epsilon_0>1/2$, this congruence controls all the small Hasse valuations used in the strong canonical subgroup conditions. Locally, the condition for $B$ to be strongly $O(m)$ is exactly the condition for $A$ to be strongly $O(n+m)$, with a possibly different exponent smaller than $1/2$. This is the divisibility calculation in [Scholze, Proposition III.2.8(iii)](https://www.math.uni-bonn.de/people/scholze/Torsion.pdf); in a rank-one valuation ring, it reads transparently as
>
> $$
> h(B)=p^n h(A),\qquad
> h(B)<\frac{1}{2p^m}
> \ \Longleftrightarrow\
> h(A)<\frac{1}{2p^{n+m}}.
> $$
>
> The valuation formula is an illustration; the formal proof uses the stated congruence of Hasse sections and their divisibility on the base.
>
> **(2) Nested subgroups and the $p^m$-torsion quotient.** Suppose the equivalent conditions hold. By the nesting argument above,
>
> $$
> C_n(A)\subseteq C_{n+m}(A).
> $$
>
> We need to prove that $q$ maps $C_{n+m}(A)$ into $C_m(B)$. To see first that $q(C_{n+m})$ is killed by $p^m$, one may use **Proposition 3.9.10 below**, which is proved independently of the present proposition: over each geometric generic fibre $C_{n+m}\simeq(\mathbf Z/p^{n+m})^g$ and $C_n=C_{n+m}[p^n]$, by inclusion and equality of their ranks. Hence $C_{n+m}/C_n$ is killed by $p^m$ on the generic fibre. Since these are finite locally free over the $p$-torsion-free base, this identity holds over $R$. Thus $q(C_{n+m})\subseteq B[p^m]$.
>
> **(3) Use rigidity instead of geometric points.** Take a common exponent $\epsilon<1/2$ for the relevant weak subgroups, and set
>
> $$
> H_B:=B[p^m]/C_m(B).
> $$
>
> Theorem 3.9.7(1) gives $p^\epsilon\Omega^1_{H_B/R}=0$, so Lemma 3.9.5 yields
>
> $$
> H_B(R')\hookrightarrow H_B(R'/p^{1-\epsilon})
> $$
>
> for any allowed flat, complete $R'$.
>
> Now work modulo $p^{1-\epsilon}$. The maps $A\to B$ and $B\to B/C_m(B)$ become the successive Frobenius maps $F^n$ and $F^m$. Their composite is $F^{n+m}$. Every section $s$ of $C_{n+m}(A)$ is killed by $F^{n+m}$ after this reduction, so its image in $H_B(R'/p^{1-\epsilon})$ is zero. By the displayed injection its image in $H_B(R')$ is already zero. Consequently
>
> $$
> q(C_{n+m}(A))\subseteq C_m(B)
> $$
>
> as finite locally free subgroup schemes (the assertion can be checked on the universal sections over their coordinate algebras).
>
> Finally, the induced map
>
> $$
> C_{n+m}(A)/C_n(A)\longrightarrow C_m(B)
> $$
>
> is an inclusion of finite locally free group schemes of the **same rank** $p^{mg}$, hence an isomorphism. Its kernel before quotienting is exactly $C_n(A)$, proving the claimed short exact sequence. $\square$

> [!proposition] Proposition 3.9.10 (Generic fibre of the canonical subgroup)
> Assume $A$ is **strongly $O(n)$** and let $C_n=C_n(A)$ be its canonical subgroup. For any geometric point $\bar x\to\operatorname{Spec}(R[1/p])$,
>
> $$
> \boxed{\quad
> C_n(\bar x)\simeq
> (\mathbf Z/p^n\mathbf Z)^g,
> \qquad g=\dim A_{\bar x}.
> \quad}
> $$
>
> In particular, the generic fibre is a locally constant finite étale group of **standard rank-$g$ free type** over $\mathbf Z/p^n\mathbf Z$, not merely an abstract group of order $p^{ng}$.


> [!proof]- Proof by the elementary divisors and a rigidity contradiction
> **Reduction to a valuation ring.** Since the generic fibre of $C_n$ is finite étale, its abstract group structure is locally constant on connected components. The specialization argument of [Scholze, Proposition III.2.8(iv)](https://www.math.uni-bonn.de/people/scholze/Torsion.pdf) reduces the verification to $R=\mathcal O_C$ for a complete algebraically closed extension $C/K$. A geometric generic-fibre point specializes to a point of the integral base, after passage to a suitable valuation ring, so this reduction detects any possible failure.
>
> Choose $\epsilon<1/2$ such that $A$ is strongly $O(n,\epsilon)$; in this valuation-ring case let $h$ be its Hasse height. Thus $p^nh\leq\epsilon$. We have a finite abelian group
>
> $$
> C_n(C)\subseteq A[p^n](C)
> \simeq(\mathbf Z/p^n\mathbf Z)^{2g},
> \qquad |C_n(C)|=p^{ng}.
> $$
>
> **Suppose it is not free of rank $g$.** By the elementary divisor theorem we can write
>
> $$
> C_n(C)\simeq
> \bigoplus_{j=1}^{r}\mathbf Z/p^{a_j}\mathbf Z,
> \qquad 1\leq a_j\leq n,\quad
> \sum_j a_j=ng.
> $$
>
> If the group is not $(\mathbf Z/p^n)^g$, necessarily $r>g$. Hence its $p$-torsion has more than $p^g$ elements:
>
> $$
> |C_n(C)[p]|=p^r>p^g=|C_1(C)|.
> $$
>
> By the nesting of canonical subgroups we have $C_1\subseteq C_n$. Choose
>
> $$
> s\in C_n(C)[p]\setminus C_1(C).
> $$
>
> It determines a nontrivial point of $H:=A[p]/C_1$. Because $C_n$ and $H$ are finite over the integrally closed valuation ring $\mathcal O_C$, this point extends uniquely to integral sections $\widetilde s\in C_n(\mathcal O_C)$ and $\widetilde t\in H(\mathcal O_C)$.
>
> **Now apply the weak canonical subgroup criterion at level one.** Since $p^nh\leq\epsilon$, the level-one Hasse condition $h\leq\epsilon/p^n$ holds. Therefore $C_1$ is a **weak** level-one canonical subgroup with exponent
>
> $$
> \epsilon_1:=\epsilon/p^n.
> $$
>
> By Theorem 3.9.7(1), $p^{\epsilon_1}$ kills $\Omega^1_{H/\mathcal O_C}$. On the other hand, the **valuation-ring specialization** of the corrected Frobenius section criterion for $C_n$ gives
>
> $$
> \widetilde s\equiv0
> \pmod{p^{\delta}},
> \qquad
> \delta:=\frac{1-\epsilon}{p^n}.
> $$
>
> Its image $\widetilde t$ in $H$ is also zero modulo $p^\delta$. But
>
> $$
> \delta>\epsilon_1
> \quad\Longleftrightarrow\quad
> 1-\epsilon>\epsilon,
> $$
>
> which holds because $\epsilon<1/2$. The rigidity Lemma 3.9.5 forces $\widetilde t=0$, contradicting the choice of $s\notin C_1(C)$. Hence
>
> $$
> \boxed{\quad C_n(C)\simeq(\mathbf Z/p^n\mathbf Z)^g.\quad}
> $$
>
> This proves the generic-fibre claim. The smallness inequality $\epsilon<1/2$ is used a **second time** here, independently of its use in the Illusie lifting argument. $\square$

> [!remark] Remark 3.9.11 (Principal polarization and isotropy)
> If $A/R$ carries a **principal polarization**, uniqueness of the canonical subgroup and duality imply that $C_n(A)$ is **totally isotropic** for the induced Weil pairing. In particular, on each geometric generic fibre, $C_n(\bar x)[p]\subset A[p](\bar x)$ is isotropic and therefore has at most $p^g$ elements.
>
> Zhu notes that this gives a shorter route to Proposition 3.9.10 in the principally polarized setting.


> [!proof]- Proof by Cartier duality and uniqueness
> Let $\lambda:A\xrightarrow{\sim}A^\vee$ be a principal polarization. The finite locally free exact sequence
>
> $$
> 0\to C_n(A)\to A[p^n]\to H_n\to0
> $$
>
> gives, by Cartier duality and the perfect Weil pairing,
>
> $$
> C_n(A)^\perp=H_n^D\subset A^\vee[p^n].
> $$
>
> Modulo $p^{1-\epsilon}$, the quotient $H_n$ is $\ker V^n$; duality exchanges Frobenius and Verschiebung and gives
>
> $$
> (H_n^D)\bmod p^{1-\epsilon}
> \simeq(\ker V^n)^D
> \simeq\ker F^n_{A^\vee}.
> $$
>
> Under the principal polarization, $A^\vee$ has the same Hasse condition as $A$, so the weak canonical subgroup theorem applies to $A^\vee$. By **uniqueness**,
>
> $$
> H_n^D=C_n(A^\vee)=\lambda(C_n(A)).
> $$
>
> Thus, after identifying $A$ and $A^\vee$ through $\lambda$,
>
> $$
> \boxed{\qquad C_n(A)^\perp=C_n(A).\qquad}
> $$
>
> In particular the Weil pairing is trivial on $C_n(A)\times C_n(A)$, so $C_n(A)$ is Lagrangian, hence totally isotropic. This is the higher-level form of the duality argument already proved in *Ordinary Locus*, Proposition 4.4. $\square$

---

**The proofs above follow Zhu §3.9.1 and Scholze §III.2.1.** The Frobenius-lift construction is developed in §3 below; the remainder of the overconvergent tower is treated in §§4–6.




## 2. Hasse-Invariant Neighborhoods

In the ordinary note, we restricted the formal hyperspecial moduli space to the *nonvanishing locus* of the Hasse invariant. We now retain a **strict neighborhood** where the Hasse invariant need not be a unit but is sufficiently close to one. Our principal sources are [Zhu, Definition–Proposition 3.9.15](https://yhzhumath.github.io/HT%20final.pdf), [Scholze, Lemma III.2.13](https://www.math.uni-bonn.de/people/scholze/Torsion.pdf), and [Caraiani, §4.3](https://www.ma.imperial.ac.uk/~acaraian/papers/arizona_notes.pdf).

Fix a sufficiently small tame level $K^p$, hyperspecial $K_p=G(\mathbf Z_p)$, and let

$$
\mathcal O_K=\mathbf Z_p^{\mathrm{cycl}},
\qquad K=\mathbf Q_p^{\mathrm{cycl}}.
$$

Write $\mathfrak X$ for the $p$-adic completion of the integral hyperspecial Siegel moduli space after base change to $\mathcal O_K$, and $\mathcal X=\mathfrak X_\eta$ for its adic generic fibre (the **good-reduction locus**). It carries the completed universal principally polarized abelian family $\mathfrak A$ and its determinant Hodge line $\omega$. The Hasse section is

$$
\operatorname{Ha}\in H^0(\mathfrak X/p,\omega^{\otimes(p-1)}/p).
$$

As in §1, write $p^\delta\in\mathcal O_K$ for a chosen element of valuation $\delta$, defined up to a unit. We use exponents in the cyclotomic value group, stable under division by $p$.

### 2.1 The formal Hasse neighborhood

> [!definition] Definition 2.1 (Formal Hasse neighborhood; Zhu 3.9.15)
> Fix $0\leq\delta<1$. Define the formal moduli space $\mathfrak X(\delta)\to\mathfrak X$ on $p$-adically complete, flat $\mathcal O_K$-algebras $R$ as follows.
>
> A point consists of a formal moduli point $f:\operatorname{Spf}R\to\mathfrak X$ together with a class of sections
>
> $$
> u\in H^0(\operatorname{Spf}R,f^*\omega^{\otimes(1-p)})
> $$
>
> satisfying the congruence
>
> $$
> \boxed{\qquad
> u\operatorname{Ha}(A\otimes_RR/p)
> =p^\delta\quad\text{in }R/p.
> \qquad}
> $$
>
> Here $A/R$ is the abelian scheme classified by $f$. Two choices $u,u'$ are equivalent when they differ by the prescribed multiplicative correction $1+p^{1-\delta}h$, $h\in R$. This is the relative divisibility condition $\operatorname{Ha}(A_0)\mid p^\delta$, rather than an additional choice in the final generic-fibre moduli problem.
>
> At $\delta=0$ this construction recovers the **formal ordinary locus** $\mathfrak X(0)$ of the preceding note.

> [!proposition] Proposition 2.2 (Local equation and adic generic fibre)
> Choose an affine formal chart $\operatorname{Spf}R_0\subset\mathfrak X$, trivialize $\omega$ there, and choose an integral lift $\widetilde{\operatorname{Ha}}\in R_0$ of the Hasse invariant. Then
>
> $$
> \boxed{\quad
> \mathfrak X(\delta)\times_{\mathfrak X}\operatorname{Spf}R_0
> \simeq
> \operatorname{Spf}
> \frac{R_0\langle u\rangle}
> {u\widetilde{\operatorname{Ha}}-p^\delta}.
> \quad}
> $$
>
> Its adic generic fibre $\mathcal X(\delta):=\mathfrak X(\delta)_\eta$ is the **rational open subspace**
>
> $$
> \boxed{\quad
> \mathcal X(\delta)
> =
> \{x\in\mathcal X:
> |\widetilde{\operatorname{Ha}}(x)|\geq|p^\delta|\}.
> \quad}
> $$
>
> The inequality is independent of the local lift and trivialization. In particular,
>
> $$
> \mathcal X(0)\subseteq\mathcal X(\delta)
> \subseteq\mathcal X(\delta')\subseteq\mathcal X
> \qquad(0\leq\delta\leq\delta'<1).
> $$

> [!proof]- Proof and why formal restriction is different
> Over $\operatorname{Spf}R_0$, choosing $u$ corresponds to imposing $u\widetilde{\operatorname{Ha}}=p^\delta$. The functor in Definition 2.1 determines this normalized representative uniquely: if the relation holds only modulo $p$, multiplication by a unit of the form $1+p^{1-\delta}h$ corrects the discrepancy. This is the local representability argument in Zhu 3.9.15 and Scholze III.2.13; $p$-torsion-freeness ensures uniqueness.
>
> Inverting $p$, $u=p^\delta/\widetilde{\operatorname{Ha}}$ is power bounded exactly where $|p^\delta|\leq|\widetilde{\operatorname{Ha}}|$. This is a Huber rational domain. **The formal morphism** $\mathfrak X(\delta)\to\mathfrak X$ **is generally not an open immersion**; its **adic generic-fibre morphism** $\mathcal X(\delta)\hookrightarrow\mathcal X$ **is**.
>
> If $\delta=0$, the equation $u\widetilde{\operatorname{Ha}}=1$ makes the reduction of $\operatorname{Ha}$ a unit, recovering the open formal ordinary locus. $\square$

> [!remark]- Remark 2.3 (Hasse height)
> On a rank-one valued point with normalized $v(p)=1$, define the truncated Hasse height $h(x)=\min(1,v(\widetilde{\operatorname{Ha}}(x)))$, using a local integral trivialization. Then $\mathcal X(\delta)$ is the locus $h(x)\leq\delta$. For $\delta>0$, **ordinary reduction is no longer required**; its role is replaced by this small-height condition.
>
> The local chart in Proposition 2.2 is a *dilatation-type formal model*, not the restriction of $\mathfrak X$ to an open subset of its original special fibre.

### 2.2 Frobenius twists of neighborhoods in characteristic $p$

> [!lemma] Lemma 2.4 (Frobenius twist of the Hasse neighborhood; Zhu 3.9.17 / Scholze III.2.14)
> For $0\leq\delta<1$, the special fibres of the Hasse-neighborhood models satisfy a natural isomorphism
>
> $$
> \boxed{\quad
> \bigl(\mathfrak X(p^{-1}\delta)/p\bigr)^{(p)}
> \xrightarrow{\sim}
> \mathfrak X(\delta)/p.
> \quad}
> $$
>
> Here $(p)$ denotes base change by the absolute Frobenius of $\mathcal O_K/p$, *not* a tensor power. Relative Frobenius on the universal abelian scheme is compatible with this identification.

> [!proof]- Proof by Frobenius base change on local coordinate rings
> We distinguish the **Frobenius of the cyclotomic coefficient ring** from the relative Frobenius of the Hasse neighborhood.
>
> **(1) Three different kinds of coordinates.** Put
>
> $$
> B:=\mathcal O_K/p,\qquad
> \operatorname{Fr}_B:B\to B,\quad b\mapsto b^p.
> $$
>
> Choose a sufficiently small affine chart of the hyperspecial Siegel moduli scheme **over \(\mathbf Z_p\)**, with special-fibre coordinate ring \(C_0\) over \(\mathbf F_p\). Trivialize the Hodge determinant line on this chart. The Hasse invariant is then represented by an element
>
> $$
> h\in C_0.
> $$
>
> Let \(c_\delta\in B\) be the reduction of the chosen element \(p^\delta\in\mathcal O_K\). The local model from Proposition 2.2, **after reduction modulo \(p\)**, has coordinate ring
>
> $$
> \boxed{\quad
> D_\delta=
> \frac{(C_0\otimes_{\mathbf F_p}B)[U]}
> {(Uh-c_\delta)}.
> \quad}
> $$
>
> These symbols have **different origins**: \(h\) is a function on the original characteristic-\(p\) Siegel moduli chart; \(c_\delta\) belongs to the cyclotomic coefficient ring \(B\); and **\(U\) is a new, independent polynomial coordinate**, the universal value of the auxiliary Hasse-divisibility section after trivializing its line bundle. In particular, \(U\) is **not** an element of the original ring \(C_0\otimes_{\mathbf F_p}B\). Zhu's Definition–Proposition 3.9.15 explains why the equivalence class \([u]\) has a unique normalized representative satisfying the exact formal equation \(U\widetilde h=p^\delta\).
>
> **(2) Twist only the coefficient-ring structure.** By definition,
>
> $$
> D_{\delta/p}^{(p)}
> :=D_{\delta/p}\otimes_{B,\operatorname{Fr}_B}B.
> $$
>
> Since the original moduli chart and its Hasse section descend to \(\mathbf F_p\), there is a canonical \(B\)-algebra identification
>
> $$
> \begin{aligned}
> (C_0\otimes_{\mathbf F_p}B)
> \otimes_{B,\operatorname{Fr}_B}B
> &\xrightarrow{\ \sim\ } C_0\otimes_{\mathbf F_p}B,\\
> (a\otimes b)\otimes b'
> &\longmapsto a\otimes b^p b'.
> \end{aligned}
> $$
>
> Under this identification, **\(h\) and the new coordinate \(U\) stay unchanged**, whereas \(c_{\delta/p}\) becomes \(c_{\delta/p}^{\,p}=c_\delta\) (choose the elements \(p^{\delta/p}\) and \(p^\delta\) compatibly). It follows that
>
> $$
> \begin{aligned}
> D_{\delta/p}^{(p)}
> &\simeq
> \frac{(C_0\otimes_{\mathbf F_p}B)[U]}
> {(Uh-c_{\delta/p}^{\,p})}\\
> &=
> \frac{(C_0\otimes_{\mathbf F_p}B)[U]}
> {(Uh-c_\delta)}
> =D_\delta.
> \end{aligned}
> $$
>
> The construction respects changes of the Hodge-line trivialization and glues across charts: both the moduli space and the Hasse section descend from \(\mathbf F_p\). This proves the **canonical isomorphism of formal special fibres**
>
> $$
> \boxed{\quad
> \bigl(\mathfrak X(\delta/p)/p\bigr)^{(p)}
> \xrightarrow{\sim}\mathfrak X(\delta)/p.
> \quad}
> $$
>
> **(3) Do not confuse this with relative Frobenius.** The isomorphism just established comes from **base changing along \(\operatorname{Fr}_B\)**; it does **not** raise \(h\) or \(U\) to their \(p\)-th powers. Raising coordinates to \(p\)-th powers instead describes the separate **relative Frobenius** morphism. The Frobenius map used in the next construction is the composite
>
> $$
> \mathfrak X(\delta/p)/p
> \xrightarrow{\ F_{\mathrm{rel}}\ }
> \bigl(\mathfrak X(\delta/p)/p\bigr)^{(p)}
> \xrightarrow{\ \sim\ }
> \mathfrak X(\delta)/p.
> $$
>
> The first arrow is generally **not** an isomorphism; the second one **is**. This distinction is exactly what Zhu makes in Proposition 3.9.17 and Construction 3.9.19. \(\square\)

## 3. Canonical Frobenius Lifts on Shrinking Neighborhoods

Fix from now on $0\leq\epsilon<\frac12$. The **radius at level $m$** is $p^{-m}\epsilon$. The point of this choice is that $\mathcal X(p^{-m}\epsilon)$ carries a **strong** canonical subgroup of level $m$, although $\mathcal X(\epsilon)$ itself generally only carries a **weak** level-one subgroup.

### 3.1 Existence and the Hasse transformation

> [!proposition] Proposition 3.1 (Uniform strong canonical subgroup; Zhu 3.9.21(2))
> For each $m\geq1$, the universal abelian family over $\mathfrak X(p^{-m}\epsilon)$ is **strongly $O(m,\epsilon)$** in the sense of §1:
>
> $$
> \boxed{\quad
> \operatorname{Ha}^{p^m}\mid p^\epsilon.
> \quad}
> $$
>
> Consequently, it possesses a base-change-compatible, level-$m$ canonical subgroup
>
> $$
> C_m\subseteq\mathfrak A(p^{-m}\epsilon)[p^m],
> \qquad \operatorname{rank}C_m=p^{mg}.
> $$
>
> This subgroup is isotropic for the universal principal polarization, and the quotient $\mathfrak B_m=\mathfrak A(p^{-m}\epsilon)/C_m$ carries the induced principal polarization and transported tame level.

> [!proof]- Hasse divisibility and polarized quotient
> Locally, the defining relation of the neighborhood is
>
> $$
> u\,\operatorname{Ha}=p^{\epsilon/p^m}
> \qquad\text{modulo }p.
> $$
>
> Raising to the $p^m$-th power gives $\operatorname{Ha}^{p^m}\mid p^\epsilon$, up to a unit stemming from the choice of compatible elements of the cyclotomic valuation ring. The **strong canonical subgroup theorem** in §1 therefore applies.
>
> The subgroup is Lagrangian for the polarization by canonical-subgroup duality. As in Ordinary Locus, Proposition 5.1, the quotient by a Lagrangian subgroup of order $p^{mg}$ carries a principal polarization with $q^\vee\lambda_Bq=p^m\lambda_A$; the prime-to-$p$ level transports along the $p$-power isogeny $q$. $\square$

> [!lemma] Lemma 3.2 (Hasse invariant after canonical quotient)
> Let $A/R$ be strongly $O(1,\epsilon)$, $q:A\to B=A/C_1(A)$, and $0\leq\epsilon<1/2$. Since
>
> $$
> q\bmod p^{1-\epsilon}=F_{A\bmod p^{1-\epsilon}},
> $$
>
> the Hasse sections satisfy, via the induced Hodge-line and Frobenius-twist identifications,
>
> $$
> \boxed{\quad
> \operatorname{Ha}(B)\equiv\operatorname{Ha}(A)^p
> \pmod{p^{1-\epsilon}}.
> \quad}
> $$
>
> In particular, for $\operatorname{Ha}(A)\mid p^{\epsilon/p}$, the quotient $B$ lies in the $\epsilon$-neighborhood.

> [!proof]- Functoriality under relative Frobenius
> The defining property of the canonical subgroup yields $B\bmod p^{1-\epsilon}\simeq A^{(p)}\bmod p^{1-\epsilon}$. The Hasse invariant of $A^{(p)}$ is the Frobenius pullback of the Hasse invariant of $A$, which in a local trivialization is its $p$-th power. Thus $\operatorname{Ha}(B)$ is congruent to $\operatorname{Ha}(A)^p$ at the stated precision. If $u\,\operatorname{Ha}(A)=p^{\epsilon/p}$, then its $p$-th power gives the required divisibility for $B$. $\square$

### 3.2 Constructing the Frobenius lift

> [!theorem] Theorem 3.3 (Canonical Frobenius lift; Scholze III.2.15(i), Zhu 3.9.21(1))
> There are canonical morphisms of formal schemes and formal abelian families
>
> $$
> \begin{array}{ccc}
> \mathfrak A(p^{-1}\epsilon)&
> \xrightarrow{\ \widetilde F_{\mathfrak A}\ }&
> \mathfrak A(\epsilon)\\
> \downarrow&&\downarrow\\
> \mathfrak X(p^{-1}\epsilon)&
> \xrightarrow{\ \widetilde F_\epsilon\ }&
> \mathfrak X(\epsilon).
> \end{array}
> $$
>
> The top map is quotient by the level-one **strong canonical subgroup**. After reduction modulo $p^{1-\epsilon}$, and the identifications of Lemma 2.4, the two maps coincide with the **relative Frobenius** of the universal abelian scheme and the moduli space.
>
> These maps are **Frobenius lifts**, not the natural inclusion morphisms between nested Hasse neighborhoods.

> [!proof]- Constructing the map on the formal moduli functor
> For a point $(A,\lambda,\eta^p,[u])$ of $\mathfrak X(p^{-1}\epsilon)$, take $B=A/C_1(A)$ with its quotient polarization and transported tame level. Proposition 3.1 constructs $C_1$, and Lemma 3.2 shows $B$ belongs to $\mathfrak X(\epsilon)$. In Hasse coordinates, the auxiliary divisor datum is transported by the $p$-power operation, symbolically
>
> $$
> (A,[u])\longmapsto
> \bigl(A/C_1(A),[u^p]\bigr),
> $$
>
> with the Hodge-line identifications and the equivalence relation of Definition 2.1 understood. This determines a morphism by the formal moduli property. Uniqueness comes from the uniqueness of the canonical subgroup and the normalized Hasse-divisibility datum. The defining congruence of $C_1$ with $\ker F$ gives the asserted reduction modulo $p^{1-\epsilon}$. $\square$

> [!proposition] Proposition 3.4 (Iterated Frobenius tower and its degrees)
> For each $m\geq0$ put
>
> $$
> \mathfrak X_m(\epsilon):=\mathfrak X(p^{-m}\epsilon),
> \qquad \mathcal X_m(\epsilon):=(\mathfrak X_m(\epsilon))_\eta.
> $$
>
> Successive canonical quotients define the inverse system
>
> $$
> \boxed{
> \cdots\xrightarrow{\ \widetilde F\ }
> \mathfrak X_{m+1}(\epsilon)
> \xrightarrow{\ \widetilde F\ }
> \mathfrak X_m(\epsilon)
> \xrightarrow{\ \widetilde F\ }\cdots
> \xrightarrow{\ \widetilde F\ }\mathfrak X_0(\epsilon).
> }
> $$
>
> The composite $\widetilde F^{(m)}:\mathfrak X_m(\epsilon)\to\mathfrak X_0(\epsilon)$ is induced by **quotienting by $C_m$**. Every transition is a finite locally free Frobenius lift of relative degree $p^{g(g+1)/2}$ on the formal moduli spaces, and on adic generic fibres it is **finite étale**. The transition maps reduce to relative Frobenius modulo $p^{1-\epsilon}$ with the compatible twists.
>
> The compatibility
>
> $$
> C_{m+1}(A)/C_1(A)
> =C_m(A/C_1(A))
> $$
>
> follows from §1, Proposition 3.9.9, and identifies $m$ successive level-one quotients with one quotient by $C_m$.

> [!proof]- Compatibility and the distinction from inclusions
> Proposition 3.9.9 of §1 identifies the successive canonical subgroups and proves the quotient compatibility. The formal finiteness/flatness and relative-Frobenius reductions are part of Scholze III.2.15; on generic fibres, the finite étale property follows also from the cartesian finite-level $\Gamma_0(p^m)$-diagram of Theorem 4.3 below (Zhu 3.9.21(2)). These maps are generally **not** the inclusions $\mathcal X(p^{-(m+1)}\epsilon)\subset\mathcal X(p^{-m}\epsilon)$. $\square$



## 4. The Overconvergent Anticanonical Tower

The formal Frobenius tower of §3 is not yet a tower of level structures. To relate it to Siegel modular varieties at $\Gamma_0(p^m)$-level, we follow [Scholze, Theorem III.2.15](https://www.math.uni-bonn.de/people/scholze/Torsion.pdf), [Zhu, Proposition 3.9.21](https://yhzhumath.github.io/HT%20final.pdf), and [Caraiani, Lemma 4.3.2](https://www.ma.imperial.ac.uk/~acaraian/papers/arizona_notes.pdf).

### 4.1 Finite-level adic spaces and canonical quotient maps

As in Ordinary Locus §5.2, let $\mathcal Y_m$ be the **adic analytification** of the characteristic-zero Siegel moduli scheme with $K^p\Gamma_0(p^m)$-level, after the chosen cyclotomic base change. Write $\mathcal Y_0$ for the hyperspecial analytification. The map

$$
\pi_m:\mathcal Y_m\longrightarrow\mathcal Y_0
$$

forgets the $\Gamma_0(p^m)$-level. With $\mathcal X\subset\mathcal Y_0$ the good-reduction open space and $\mathcal X(\epsilon)\subset\mathcal X$ from §2, define

$$
\boxed{
\begin{aligned}
\mathcal X_{\Gamma_0(p^m)}
&:=\mathcal Y_m\times_{\mathcal Y_0}\mathcal X,\\
\mathcal X_{\Gamma_0(p^m)}(\epsilon)
&:=\mathcal Y_m\times_{\mathcal Y_0}\mathcal X(\epsilon).
\end{aligned}}
$$

These are **fibre products of adic spaces**. In particular, the second is not defined by taking only geometric points. Its valued-field points have moduli data $(B,\lambda_B,\eta_B^p,D)$, where $D\subset B[p^m]$ is a Lagrangian subgroup of standard $\Gamma_0(p^m)$-type and the underlying $B$ lies in the Hasse neighborhood $\mathcal X(\epsilon)$.

> [!proposition] Proposition 4.1 (Canonical-quotient morphism)
> For each $m\geq1$, the universal strong canonical subgroup on $\mathfrak X(p^{-m}\epsilon)$ induces a morphism of adic spaces
>
> $$
> \boxed{
> \begin{aligned}
> \Phi_{m,\epsilon}:\mathcal X(p^{-m}\epsilon)
> &\longrightarrow\mathcal X_{\Gamma_0(p^m)}(\epsilon),\\
> A&\longmapsto
> \left(
> B=A/C_m(A),\
> D=A[p^m]/C_m(A)\subset B[p^m]
> \right).
> \end{aligned}}
> $$
>
> The quotient $B$ carries the canonical **principal polarization** and **transported $K^p$-level**. The subgroup $D$ is a finite étale Lagrangian subgroup of free type $(\mathbf Z/p^m\mathbf Z)^g$ on each geometric generic fibre. The map is compatible with the finite-level forgetting maps as $m$ varies.

> [!proof]- Construction from the universal analytic family
> By Proposition 3.1 the formal universal family over $\mathfrak X(p^{-m}\epsilon)$ has a base-change-compatible strong canonical subgroup $C_m$. Its quotient is principally polarized because $C_m$ is Lagrangian, exactly as in Ordinary Locus, Proposition 5.1. Prime-to-$p$ level transports along this $p$-power isogeny.
>
> The image $D=A[p^m]/C_m$ is of rank $p^{mg}$ and free of rank $g$ on geometric generic fibres by the strong canonical subgroup theorem in §1. It is Lagrangian in $B[p^m]$, by the Weil-pairing calculation for the quotient polarization.
>
> Lemma 3.2 applied successively shows that $B$ has Hasse height at most $\epsilon$, so the map lands in $\mathcal X_{\Gamma_0(p^m)}(\epsilon)$, rather than merely $\mathcal Y_m$. These operations define morphisms of families and commute with base change, hence give a **morphism of adic spaces** after passing to generic fibres, not merely a map on geometric points. $\square$

### 4.2 Open immersion and the anticanonical image

The next point is the geometric heart of the construction: the map $\Phi_{m,\epsilon}$ is **open**. This is not an automatic consequence of a bijection on geometric fibres.

> [!lemma] Lemma 4.2 (The étale-section argument)
> Let $X\xrightarrow{f}Y\xrightarrow{g}Z$ be morphisms of analytic adic spaces. If $g$ is étale and $g\circ f$ is an open immersion, then $f$ is an **open immersion**.
>
> If, in addition, $g$ is finite étale and the composite identifies $X$ with an open subspace $U\subset Z$, then $f(X)$ is open-and-closed inside $g^{-1}(U)$.

> [!proof]- Proof by base change
> Identify $X$ with its image $U\subset Z$. Base change $g$ to $U$: the morphism $Y_U=Y\times_ZU\to U$ is étale, and $f$ becomes a **section** $U\to Y_U$. A section of an étale morphism is an open immersion (its graph is a base change of the open diagonal). If $g$ is finite étale, the same section is also closed because finite étale maps are separated; locally the associated finite étale algebra splits as a product. The result follows after composing with $Y_U\hookrightarrow Y$. $\square$

> [!proposition] Proposition 4.3 (Open immersion; Scholze III.2.15(ii))
> The morphism $\Phi_{m,\epsilon}$ of Proposition 4.1 is an **open immersion**.
>
> In fact, the diagram
>
> $$
> \begin{array}{ccc}
> \mathcal X(p^{-(m+1)}\epsilon)
> &\xrightarrow{\ \Phi_{m+1,\epsilon}\ }&
> \mathcal X_{\Gamma_0(p^{m+1})}(\epsilon)\\
> {\scriptstyle \widetilde F}\downarrow&&
> \downarrow{\scriptstyle D\mapsto D[p^m]}\\
> \mathcal X(p^{-m}\epsilon)
> &\xrightarrow{\ \Phi_{m,\epsilon}\ }&
> \mathcal X_{\Gamma_0(p^m)}(\epsilon)
> \end{array}
> $$
>
> is **cartesian** for $m\geq1$, where the right vertical arrow forgets part of the $p$-level. Thus the corresponding inverse system is genuinely a pullback of the finite-level $\Gamma_0$-tower.

> [!proof]- Proof of open immersion and cartesian compatibility
> Let $\Psi_m:\mathcal X_{\Gamma_0(p^m)}\to\mathcal X$ be the **quotient-by-level** map $(B,D)\mapsto B/D$, with its induced polarization and normalized tame level. This is a finite étale Hecke-type morphism on the characteristic-zero level space: up to the familiar Atkin–Lehner/diamond normalization, it is the finite étale forgetting-level map followed by a level automorphism.
>
> The composite with $\Phi_{m,\epsilon}$ sends $A$ to
>
> $$
> (A/C_m)/(A[p^m]/C_m)
> \simeq A/A[p^m]\simeq A.
> $$
>
> Under the full moduli data this is the **natural open embedding** $\mathcal X(p^{-m}\epsilon)\hookrightarrow\mathcal X$, possibly composed with the harmless central tame-level automorphism determined by the chosen normalization. Lemma 4.2 applies, so $\Phi_{m,\epsilon}$ is an open immersion.
>
> For the cartesian square, apply the compatibility of canonical subgroups under quotient from §1, Proposition 3.9.9. The two resulting $p^m$-level subgroups agree after forgetting one level. Both sides are finite étale over the generic-fibre moduli base, with the same degree $[\Gamma_0(p^m):\Gamma_0(p^{m+1})]=p^{g(g+1)/2}$; the square is therefore cartesian. See [Scholze III.2.15(ii)](https://www.math.uni-bonn.de/people/scholze/Torsion.pdf) for the full scheme-theoretic comparison. $\square$

> [!definition] Definition 4.4 (Overconvergent anticanonical locus: image definition)
> **Following Scholze**, define the *anticanonical part* as the image of the **open immersion**:
>
> $$
> \boxed{\quad
> \mathcal X_{\Gamma_0(p^m)}(\epsilon)_{\mathrm{anti}}
> :=\operatorname{im}\bigl(
> \Phi_{m,\epsilon}:
> \mathcal X(p^{-m}\epsilon)
> \hookrightarrow\mathcal X_{\Gamma_0(p^m)}(\epsilon)
> \bigr).
> \quad}
> $$
>
> It is therefore a **defined open adic subspace**. The intersection condition in the next theorem is its *geometric characterization*, not its definition.

> [!theorem] Theorem 4.5 (Anticanonical identification and transversality)
> The anticanonical image is **open and closed** in $\mathcal X_{\Gamma_0(p^m)}(\epsilon)$, and $\Phi_{m,\epsilon}$ induces an isomorphism
>
> $$
> \boxed{\qquad
> \mathcal X(p^{-m}\epsilon)
> \xrightarrow{\sim}
> \mathcal X_{\Gamma_0(p^m)}(\epsilon)_{\mathrm{anti}}.
> \qquad}
> $$
>
> Let $C_1^{\mathrm{weak}}(B)\subset B[p]$ denote the **weak** canonical subgroup of the underlying abelian scheme on $\mathcal X(\epsilon)$ (available because $\operatorname{Ha}\mid p^\epsilon$). Then the anticanonical image is precisely the locus where the universal level subgroup $D\subset B[p^m]$ satisfies
>
> $$
> \boxed{\qquad
> D[p]\cap C_1^{\mathrm{weak}}(B)=\{0\}.
> \qquad}
> $$
>
> For $\epsilon=0$, this reduces to Ordinary Locus, Proposition 5.3. For positive $\epsilon$, **do not replace** the weak subgroup on $\mathcal X(\epsilon)$ by an ordinary Frobenius kernel: the reduction need not be ordinary.

> [!proof]- Why the image is clopen and how transversality enters
> Openness follows from Proposition 4.3. For **closedness**, consider the commutative diagram
>
> $$
> \begin{array}{ccc}
> \mathcal X(p^{-m}\epsilon)&
> \xrightarrow{\ \Phi_{m,\epsilon}\ }&
> \mathcal X_{\Gamma_0(p^m)}(\epsilon)\\
> {\scriptstyle\widetilde F^{(m)}}\downarrow&&
> \downarrow{\scriptstyle\pi_m}\\
> \mathcal X(\epsilon)&=&\mathcal X(\epsilon).
> \end{array}
> $$
>
> The iterated Frobenius lift $\widetilde F^{(m)}$ is finite, and $\pi_m$ is finite étale, in particular separated. The graph of $\Phi_{m,\epsilon}$ is a closed immersion into the base change of $\mathcal X(p^{-m}\epsilon)$ along $\pi_m$, whose projection to $\mathcal X_{\Gamma_0(p^m)}(\epsilon)$ is finite. Hence $\Phi_{m,\epsilon}$ is finite, so **its image is closed**. Together with openness, the image is clopen.
>
> The transversality characterization is the deeper assertion in [Scholze III.2.15(iii)](https://www.math.uni-bonn.de/people/scholze/Torsion.pdf); see also [Zhu 3.9.21(3)](https://yhzhumath.github.io/HT%20final.pdf) and [Caraiani 4.3.2](https://www.ma.imperial.ac.uk/~acaraian/papers/arizona_notes.pdf). Its proof uses rigidity of sections (Lemma 3.9.5 in §1), rather than the simple connected–étale decomposition available on the ordinary special fibre.
>
> In particular, at rank-one points the condition can be checked in the generic fibre as the vanishing of the scheme-theoretic intersection of two finite étale $p$-subgroups. But the **adic locus** is already defined as an image and characterized by the theorem; one does not need to reconstruct it from rank-one points. $\square$

### 4.3 The fixed-radius anticanonical tower

By Proposition 4.3 and Theorem 4.5, the anticanonical loci form a tower with finite étale transition maps,

$$
\boxed{
\cdots\longrightarrow
\mathcal X_{\Gamma_0(p^{m+1})}(\epsilon)_{\mathrm{anti}}
\longrightarrow
\mathcal X_{\Gamma_0(p^m)}(\epsilon)_{\mathrm{anti}}
\longrightarrow\cdots\longrightarrow
\mathcal X_{\Gamma_0(p)}(\epsilon)_{\mathrm{anti}}.
}
$$

Its identification with the canonical Frobenius tower is

$$
\boxed{
\left\{\mathcal X_{\Gamma_0(p^m)}(\epsilon)_{\mathrm{anti}}\right\}_m
\ \cong\
\left\{\mathcal X(p^{-m}\epsilon)\right\}_m,
}
$$

where the transition maps on the right are **canonical quotient/Frobenius lifts**, not inclusions.

> [!remark]- Remark 4.6 (Why this is an *overconvergent tower*)
> For a fixed $m$, the level-$m$ canonical subgroup exists on a neighborhood whose radius is on the order of $p^{-m}\epsilon$. These neighborhoods **shrink to the ordinary locus** as $m\to\infty$. Therefore the *canonical subgroup tower on the hyperspecial base does not overconverge at a fixed positive radius*.
>
> By contrast, each anticanonical space above is defined **over the same** $\mathcal X(\epsilon)$. The cartesian square of Proposition 4.3 shows that all higher anticanonical levels are obtained by pulling back the level-one anticanonical open along the ordinary level-forgetting tower. This is the geometric meaning of **overconvergence of the anticanonical tower**.



## 5. Perfectoidness of the Overconvergent Tower

The construction now works without requiring ordinary reduction. The key is **not merely Frobenius surjectivity modulo $p$**, but a specific Frobenius **isomorphism between two different reductions** of the completed limit ring. This is the noncompactified case of [Scholze, Corollary III.2.19](https://www.math.uni-bonn.de/people/scholze/Torsion.pdf).

### 5.1 Completed formal limit and the Frobenius criterion

Fix $0\leq\epsilon<1/2$ and let

$$
\mathfrak X_m:=\mathfrak X(p^{-m}\epsilon),
\qquad
\mathfrak X_\infty(\epsilon)
:=\varprojlim_m\mathfrak X_m.
$$

The inverse limit uses the **Frobenius-lift maps**, not the inclusions of Hasse neighborhoods. For compatible affine formal charts $\operatorname{Spf}R_m\subset\mathfrak X_m$, the local ring is

$$
\boxed{\quad
R_\infty
:=\widehat{\varinjlim_m R_m}^{\,p}.
\quad}
$$

> [!lemma] Lemma 5.1 (Frobenius on the limit ring)
> The absolute Frobenius of the completed limit induces an **isomorphism**
>
> $$
> \boxed{\quad
> \varphi:
> R_\infty/p^{(1-\epsilon)/p}
> \xrightarrow{\sim}R_\infty/p^{1-\epsilon}.
> \quad}
> $$
>
> The exponents are understood as principal ideals generated by elements of the prescribed valuations in the cyclotomic valuation ring.

> [!proof]- Proof from the relative Frobenius transition maps
> By §3 and Scholze III.2.15, each transition $R_m\to R_{m+1}$ reduces modulo $p^{1-\epsilon}$ to the **relative Frobenius** (with the corresponding twist of the cyclotomic base). Passing to the direct limit and applying the absolute Frobenius gives
>
> $$
> \begin{aligned}
> R_\infty/p^{(1-\epsilon)/p}
> &\simeq\varinjlim_mR_{m+1}/p^{(1-\epsilon)/p}\\
> &\xrightarrow{\ \varphi\ \sim\ }
> \varinjlim_mR_m/p^{1-\epsilon}\\
> &\simeq R_\infty/p^{1-\epsilon}.
> \end{aligned}
> $$
>
> The isomorphism in the middle combines the relative Frobenius description of the tower with Frobenius on the perfectoid coefficient ring $\mathcal O_K$. Completion does not alter these fixed reductions. This is the key calculation in [Scholze, proof of Corollary III.2.19](https://www.math.uni-bonn.de/people/scholze/Torsion.pdf). $\square$

> [!theorem] Theorem 5.2 (Perfectoid overconvergent anticanonical tower)
> For each fixed $0\leq\epsilon<1/2$, there exists a perfectoid space over $K=\mathbf Q_p^{\mathrm{cycl}}$, denoted $\mathcal X_{\Gamma_0(p^\infty)}(\epsilon)_{\mathrm{anti}}$, such that
>
> $$
> \boxed{\quad
> \mathcal X_{\Gamma_0(p^\infty)}(\epsilon)_{\mathrm{anti}}
> \sim\varprojlim_m
> \mathcal X_{\Gamma_0(p^m)}(\epsilon)_{\mathrm{anti}}.
> \quad}
> $$
>
> It is the adic generic fibre of the completed formal Frobenius tower $\mathfrak X_\infty(\epsilon)$. The symbol $\sim$ denotes the **tilde-limit**, not simply a set-theoretic inverse limit.

> [!proof]- The integral perfectoid criterion and gluing
> The rings $R_\infty$ are $p$-adically complete and $\mathcal O_K$-flat. By Lemma 5.1, their Frobenius maps induce
>
> $$
> R_\infty/p^{(1-\epsilon)/p}
> \xrightarrow{\sim}R_\infty/p^{1-\epsilon}.
> $$
>
> This is the **integral perfectoid criterion** over the perfectoid valuation ring $\mathcal O_K$, applied at the nonzero topologically nilpotent exponent $1-\epsilon$. Thus $R_\infty$ is integral perfectoid and the local generic fibre
>
> $$
> \operatorname{Spa}(R_\infty[1/p],R_\infty)
> $$
>
> is affinoid perfectoid. These charts glue. Their underlying topologies and completed structure rings give the tilde-limit, not merely a bijection on rank-one points. By Theorem 4.5 the generic fibres of $\mathfrak X_m$ are exactly the anticanonical level spaces in the statement. $\square$

> [!remark]- Remark 5.3 (Tilt and the ordinary case)
> Scholze's Corollary III.2.19 also identifies the **tilt** with a characteristic-$p$ **perfection of the corresponding Hasse neighborhood**. Thus the relative Frobenius tower has a literal perfection as its characteristic-$p$ geometry.
>
> When $\epsilon=0$, Theorem 5.2 reduces to Ordinary Locus, Theorem 6.3. For $\epsilon>0$, it works on an actual strict neighborhood, even when the special fibre is not ordinary.

## 6. From Anticanonical $\Gamma_0$-Level to Full $p$-Level

We work here on the **noncompactified good-reduction locus**. We first pass from anticanonical $\Gamma_0$-level to full level by almost purity, then cover the entire full-level Hasse neighborhood with finitely many symplectic translates. See [Caraiani, §4.4](https://www.ma.imperial.ac.uk/~acaraian/papers/arizona_notes.pdf).

### 6.1 Full-level anticanonical covers

Let $\mathcal X_{\Gamma(p^m)}(\epsilon)$ be the inverse image of $\mathcal X(\epsilon)$ in the characteristic-zero **full $p^m$-level** adic cover (with the chosen cyclotomic base). Define the **full-level anticanonical part by base change**:

$$
\boxed{
\mathcal U_m(\epsilon):=
\mathcal X_{\Gamma(p^m)}(\epsilon)
\times_{\mathcal X_{\Gamma_0(p^m)}(\epsilon)}
\mathcal X_{\Gamma_0(p^m)}(\epsilon)_{\mathrm{anti}}.
}
$$

> [!proposition] Proposition 6.1 (Perfectoid full-level anticanonical limit)
> There is a perfectoid $K$-space $\mathcal U_\infty(\epsilon)$ satisfying
>
> $$
> \boxed{\quad
> \mathcal U_\infty(\epsilon)
> \sim\varprojlim_m\mathcal U_m(\epsilon).
> \quad}
> $$

> [!proof]- Finite étale towers and almost purity
> For every $m$, the morphism
>
> $$
> \mathcal U_m(\epsilon)\to
> \mathcal X_{\Gamma_0(p^m)}(\epsilon)_{\mathrm{anti}}
> $$
>
> is finite étale, since it forgets part of the full $p$-level. Pulling these covers back to the **perfectoid anticanonical limit** from Theorem 5.2 produces a compatible inverse system of finite étale covers of a perfectoid base.
>
> By Faltings' **almost purity theorem**, finite étale covers of affinoid perfectoid spaces are affinoid perfectoid; the completed inverse limit of a profinite étale tower can be constructed affinoid-locally and remains perfectoid. These affinoids glue to the asserted $\mathcal U_\infty(\epsilon)$. This is the construction of [Caraiani, Theorem 4.4.3](https://www.ma.imperial.ac.uk/~acaraian/papers/arizona_notes.pdf). $\square$

### 6.2 Finite translates and the whole full-level neighborhood

> [!proposition] Proposition 6.2 (Finite symplectic translates; no boundary)
> There exist finitely many
>
> $$
> \gamma_1,\ldots,\gamma_N
> \in\operatorname{Sp}_{2g}(\mathbf Z_p),
> $$
>
> **independent of $m$**, for which
>
> $$
> \boxed{
> \mathcal X_{\Gamma(p^m)}(\epsilon)
> =\bigcup_{i=1}^{N}\gamma_i\mathcal U_m(\epsilon)
> \quad(m\geq1).
> }
> $$
>
> Every translate is **open-and-closed** inside the indicated full-level Hasse neighborhood.

> [!proof]- Lagrangian complements, rank-one density, and closedness
> By Theorem 4.5, $\mathcal U_m(\epsilon)$ is the clopen inverse image of the anticanonical locus; so are all its symplectic translates.
>
> The Lagrangian subspaces of $\mathbf F_p^{2g}$ form a **finite set**. Choose once and for all a lift in $\operatorname{Sp}_{2g}(\mathbf Z_p)$ that moves the standard Lagrangian to each such subspace.
>
> At any rank-one point, full $p$-level identifies the generic fibre of the **weak** canonical subgroup $C_1(B)\subset B[p]$ with a Lagrangian $W\subset\mathbf F_p^{2g}$. Choose a complementary Lagrangian $L$, and one of the predetermined symplectic elements carrying the chosen $\Gamma_0$-direction to $L$. The resulting level satisfies $D[p]\cap C_1(B)=0$, so it is **anticanonical** by Theorem 4.5.
>
> Thus all rank-one points lie in the finite union of translates. The union is **closed** because its finitely many members are clopen; rank-one points are dense in analytic adic spaces. Hence the union equals the entire $\mathcal X_{\Gamma(p^m)}(\epsilon)$. The argument uses only the mod-$p$ Lagrangian and therefore gives the **same finite family** at every $m$. $\square$

> [!corollary] Corollary 6.3 (Perfectoid full-level overconvergent locus; no boundary)
> There exists a perfectoid space $\mathcal X_{\Gamma(p^\infty)}(\epsilon)$ satisfying
>
> $$
> \boxed{
> \mathcal X_{\Gamma(p^\infty)}(\epsilon)
> \sim\varprojlim_m\mathcal X_{\Gamma(p^m)}(\epsilon).
> }
> $$
>
> It is obtained by **gluing finitely many symplectic translates** of the full-level anticanonical perfectoid space $\mathcal U_\infty(\epsilon)$.

> [!proof]- Gluing along open overlaps
> Proposition 6.1 constructs the perfectoid space $\mathcal U_\infty(\epsilon)$. Changing full $p$-level framing by $\gamma_i\in\operatorname{Sp}_{2g}(\mathbf Z_p)$ gives an isomorphic perfectoid space $\gamma_i\mathcal U_\infty(\epsilon)$.
>
> By Proposition 6.2 these finitely many clopen translates cover every finite level compatibly, hence also the inverse-limit topology. Their intersections are **open perfectoid subspaces**. Gluing along the overlaps yields a perfectoid space, and the completed direct-limit description of the affinoid structure sheaves gives the required **tilde-limit**. $\square$

> [!remark]- Remark 6.4 (Which infinite-level space is perfectoid?)
> We have established three distinct conclusions:
>
> 1. The **shrinking-radius formal Frobenius tower** $\{\mathcal X(p^{-m}\epsilon)\}$ has a perfectoid limit.
> 2. The **fixed-radius anticanonical $\Gamma_0$-tower** is isomorphic to that tower, hence perfectoid at infinite level.
> 3. The **full-level tower** $\{\mathcal X_{\Gamma(p^m)}(\epsilon)\}$ is covered by finitely many translates of its anticanonical part and therefore has a perfectoid limit.
>
> None of these assertions says that the **unrestricted** $\Gamma_0(p^\infty)$-tower is perfectoid. The extension to the minimal compactification and the use of $\operatorname{GSp}_{2g}(\mathbf Q_p)$-translates to cover the entire infinite-level Siegel modular variety are separate arguments in [Scholze §§III.2–III.3](https://www.math.uni-bonn.de/people/scholze/Torsion.pdf).

---

## References

- **Yihang Zhu**, [*The Hodge–Tate Period Map on Perfectoid Shimura Variety*](https://yhzhumath.github.io/HT%20final.pdf), §§3.9.1–3.9.2: in particular Definition–Proposition 3.9.15, Proposition 3.9.17, Construction 3.9.20, and Proposition 3.9.21.
- **Peter Scholze**, [*On torsion in the cohomology of locally symmetric varieties*](https://www.math.uni-bonn.de/people/scholze/Torsion.pdf), §III.2: Lemmas III.2.13–14, Theorem III.2.15, and Corollary III.2.19.
- **Ana Caraiani**, [*Perfectoid Shimura Varieties*](https://www.ma.imperial.ac.uk/~acaraian/papers/arizona_notes.pdf), §§4.3–4.4: overconvergent anticanonical tower, Lemma 4.3.2, and almost purity.


[[perfectoid-siegel-variety/anticanonical-tower/index|Back to Anticanonical Tower]]
