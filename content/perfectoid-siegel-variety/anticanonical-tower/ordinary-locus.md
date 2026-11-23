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

### Frobenius–Verschiebung duality

The following identities will be used in Proposition 4.4. They are valid for **any abelian scheme in characteristic $p$**; no ordinary hypothesis is needed. We must distinguish the *dual abelian scheme* $A^\vee$ from the *Cartier dual* $H^D$ of a finite locally free commutative group scheme.

> [!proposition] Proposition 1.2 (Dual isogenies and their kernels)
> Let $f:A\to B$ be an isogeny of abelian schemes over a base $S$, with finite locally free kernel $K$. Its dual isogeny is
>
> $$
> f^\vee:B^\vee\longrightarrow A^\vee.
> $$
>
> There is a canonical isomorphism of finite locally free group schemes
>
> $$
> \boxed{\qquad \ker(f^\vee)\simeq(\ker f)^D=K^D.\qquad}
> $$
>
> In particular, for the relative Frobenius and Verschiebung of $A/S$ in characteristic $p$, using $(A^{(p)})^\vee\simeq(A^\vee)^{(p)}$, we have
>
> $$
> \boxed{\quad
> (F_A)^\vee=V_{A^\vee},\qquad
> (V_A)^\vee=F_{A^\vee}.
> \quad}
> $$
>
> Consequently,
>
> $$
> \boxed{
> \begin{aligned}
> (\ker F_A)^D&\simeq\ker V_{A^\vee},\\
> (\ker V_A)^D&\simeq\ker F_{A^\vee}.
> \end{aligned}}
> $$
>
> The same identities hold for iterated Frobenius and Verschiebung:
>
> $$
> \boxed{
> \begin{aligned}
> (\ker F_A^n)^D&\simeq\ker V_{A^\vee}^n,\\
> (\ker V_A^n)^D&\simeq\ker F_{A^\vee}^n.
> \end{aligned}}
> $$

> [!proof]- Explanation of the two dualities
> **(1) Kernels of dual isogenies.** The dual abelian scheme $A^\vee$ represents the relative $\operatorname{Pic}^0$ functor; $f^\vee$ is pullback of line bundles along $f$. The standard dual-isogeny theorem gives an fppf-exact sequence
>
> $$
> 0\longrightarrow K^D
> \longrightarrow B^\vee
> \xrightarrow{\,f^\vee\,}A^\vee
> \longrightarrow0.
> $$
>
> To see the role of $K^D$, note that $f:A\to B$ is an fppf $K$-torsor. A line bundle on $B$ whose pullback to $A$ is trivial can, after the relevant fppf localization, be described by a $K$-linearization of the trivial line bundle on $A$. Such a linearization is a character $K\to\mathbf G_m$, i.e. a point of $K^D$. The exactness and representability are provided by the dual-isogeny theorem.
>
> **(2) Duality interchanges $F$ and $V$.** Dualization commutes with Frobenius base change:
>
> $$
> (A^{(p)})^\vee\simeq(A^\vee)^{(p)}.
> $$
>
> The fundamental Frobenius–Verschiebung duality theorem identifies the dual of the relative Frobenius with the Verschiebung of the dual abelian scheme, and vice versa:
>
> $$
> (F_A)^\vee=V_{A^\vee},
> \qquad (V_A)^\vee=F_{A^\vee}.
> $$
>
> The *directions* are important:
>
> $$
> \begin{aligned}
> F_A &:A\to A^{(p)}
> &&\rightsquigarrow&
> (F_A)^\vee&:(A^\vee)^{(p)}\to A^\vee,\\
> V_A &:A^{(p)}\to A
> &&\rightsquigarrow&
> (V_A)^\vee&:A^\vee\to(A^\vee)^{(p)}.
> \end{aligned}
> $$
>
> The first dual arrow has exactly the direction of $V_{A^\vee}$, and the second that of $F_{A^\vee}$.
>
> **(3) Taking kernels.** Apply (1) to $f=V_A$:
>
> $$
> (\ker V_A)^D
> \simeq\ker((V_A)^\vee)
> =\ker F_{A^\vee}.
> $$
>
> Similarly, applying it to $f=F_A$ gives $(\ker F_A)^D\simeq\ker V_{A^\vee}$. The same argument applies to the iterated isogenies $F_A^n:A\to A^{(p^n)}$ and $V_A^n:A^{(p^n)}\to A$, whose duals are $V_{A^\vee}^n$ and $F_{A^\vee}^n$, respectively. $\square$

> [!remark]- Remark 1.3 (What is used later)
> For an abelian scheme $A/R$ over a mixed-characteristic ring, these identities apply to its characteristic-$p$ special fibre $A_0$. In Proposition 4.4 we use
>
> $$
> (\ker V_{A_0}^n)^D\simeq\ker F_{A_0^\vee}^n
> $$
>
> to identify the reduction of the Cartier dual of the finite étale quotient $A[p^n]/C_n(A)$. This does **not** require a principal polarization.



## 2. The Sheaf of Translation-Invariant Differentials

Let $\pi:A\to S$ be an abelian scheme of relative dimension $g$, with identity section $e:S\to A$. Write

$$
\mathbb E_{A/S}:=e^*\Omega^1_{A/S}.
$$

This is a locally free $\mathcal O_S$-module of rank $g$, called the **Hodge bundle** (or the sheaf of invariant differentials). Its determinant line bundle will be denoted by $\omega_{A/S}$ below.

> [!proposition] Proposition 2.1 (Invariant differentials; Zhu §3.5)
> There are natural isomorphisms
>
> $$
> \boxed{\quad
> \pi^*\mathbb E_{A/S}\xrightarrow{\sim}\Omega^1_{A/S},
> \qquad
> \mathcal O_S\xrightarrow{\sim}\pi_*\mathcal O_A.
> \quad}
> $$
>
> Consequently, restriction to the identity induces
>
> $$
> \boxed{\quad
> \pi_*\Omega^1_{A/S}\xrightarrow[\ e^*\ ]{\sim}
> e^*\Omega^1_{A/S}=\mathbb E_{A/S}.
> \quad}
> $$
>
> In particular, every relative global differential on an abelian scheme is translation-invariant.

> [!proof]- Proof
> **(1) Translation-invariant trivialization.** For any smooth group scheme $G/S$, let $m:G\times_S G\to G$ be multiplication and $\mathbb E_G=e^*\Omega^1_{G/S}$. Pull back $dm$ along the map $s:G\to G\times_S G$, $a\mapsto(a,e(\pi(a)))$, and project to the differential in the second factor. This gives a natural morphism
>
> $$
> v:\Omega^1_{G/S}\longrightarrow\pi^*\mathbb E_G.
> $$
>
> At a geometric point $a$ of a fibre, $v_a$ is the cotangent map of translation by $a$ at the identity:
>
> $$
> (d\,t_a)_e^*:T_a^*G_{\bar s}\xrightarrow{\sim}T_e^*G_{\bar s}.
> $$
>
> Translation by $a$ is an isomorphism with inverse translation by $-a$, so $v$ is an isomorphism on all geometric fibres. Both sides are locally free of the same rank, hence $v$ is an isomorphism; its inverse is the required $\pi^*\mathbb E_G\simeq\Omega^1_{G/S}$. Associativity of the group law shows that the resulting forms are translation-invariant. This part does **not** use properness.
>
> **(2) Functions on an abelian scheme.** For a geometric point $\bar s\to S$, the fibre $A_{\bar s}$ is proper, smooth and connected, hence geometrically integral. Therefore
>
> $$
> H^0(A_{\bar s},\mathcal O_{A_{\bar s}})=k(\bar s):
> $$
>
> a regular function on a connected proper variety over an algebraically closed field is constant. Since $\pi$ is proper and flat with geometrically reduced, connected fibres, cohomology and base change in degree zero gives that $\pi_*\mathcal O_A$ is locally free of rank one and commutes with base change. The natural map $\mathcal O_S\to\pi_*\mathcal O_A$ is an isomorphism on every geometric fibre, hence is an isomorphism.
>
> **(3) Conclusion.** Apply $\pi_*$ to (1) and use the projection formula:
>
> $$
> \begin{aligned}
> \pi_*\Omega^1_{A/S}
> &\simeq\pi_*\pi^*\mathbb E_{A/S}\\
> &\simeq\mathbb E_{A/S}\otimes_{\mathcal O_S}\pi_*\mathcal O_A\\
> &\simeq\mathbb E_{A/S}.
> \end{aligned}
> $$
>
> The inverse of this identification is pullback along the identity section, giving the stated canonical isomorphism. $\square$

> [!remark]- Remark 2.2 (Why properness matters)
> The first isomorphism also holds for $\mathbf G_{a,k}$, but $H^0(\mathbf G_{a,k},\Omega^1)=k[T]\,dT$ is much larger than $e^*\Omega^1_{\mathbf G_a/k}=k\,dT$. For abelian schemes, $\pi_*\mathcal O_A=\mathcal O_S$ eliminates such nonconstant coefficients.

### Frobenius pullback of the determinant line

To follow Zhu's notation, distinguish the rank-$g$ Hodge bundle from its determinant:

$$
\mathbb E_{A/S}:=e^*\Omega^1_{A/S},
\qquad
\omega_{A/S}:=\det\mathbb E_{A/S}
=\bigwedge^g(e^*\Omega^1_{A/S}).
$$

For any base change $g:S'\to S$, with $A'=A\times_S S'$, the base-change isomorphism for relative differentials, together with the compatibility of identity sections, gives

$$
\mathbb E_{A'/S'}\simeq g^*\mathbb E_{A/S},
\qquad
\omega_{A'/S'}\simeq g^*\omega_{A/S}.
$$

#### Frobenius twist of a vector bundle

Suppose $S$ is an $\mathbf F_p$-scheme. Its **absolute Frobenius** $\operatorname{Fr}_S:S\to S$ is the identity on points and sends a local function $b$ to $b^p$. For **any vector bundle** $\mathcal V$ on $S$, define its *Frobenius twist* by

$$
\boxed{\quad\mathcal V^{(p)}:=\operatorname{Fr}_S^*\mathcal V.\quad}
$$

This means ordinary pullback along the absolute Frobenius; it is **not** the $p$-fold tensor product of $\mathcal V$. If $U=\operatorname{Spec}B\subset S$ and $\mathcal V|_U=\widetilde M$, then

$$
M^{(p)}=M\otimes_{B,\operatorname{Fr}_B}B,
\qquad \operatorname{Fr}_B(b)=b^p.
$$

If $\mathcal V$ is glued from trivial bundles by transition matrices $g_{ij}=(g_{ij,ab})$, then $\mathcal V^{(p)}$ is glued by the matrices

$$
g_{ij}^{(p)}=(g_{ij,ab}^{\,p})_{a,b}.
$$

Here the notation means **entrywise** $p$th powers, not the matrix power $g_{ij}^{p}$. In general, there is no canonical isomorphism $\mathcal V\simeq\mathcal V^{(p)}$; nor is $\operatorname{Fr}_S$ necessarily an automorphism when $S$ is nonperfect or nonreduced.

For a **line bundle**, the Frobenius pullback *does* identify canonically with its $p$th tensor power; the transition-function proof appears immediately below.

This notation is also used below for the Hodge and Dieudonné bundles: $\mathcal F^{(p)}=\operatorname{Fr}_S^*\mathcal F$ and $\mathcal E^{(p)}=\operatorname{Fr}_S^*\mathcal E$.

In characteristic $p$, take $g=\operatorname{Fr}_S$ and $A'=A^{(p)}$. For **any** line bundle $\mathcal L$ on an $\mathbf F_p$-scheme, there is a canonical isomorphism

$$
\operatorname{Fr}_S^*\mathcal L\simeq\mathcal L^{\otimes p}.
$$

> [!proof]- Proof via transition functions
> Trivialize $\mathcal L$ locally, with transition functions $g_{ij}\in\mathcal O_S^\times$. The transition functions of $\operatorname{Fr}_S^*\mathcal L$ are $g_{ij}^p$, because absolute Frobenius acts on functions by $f\mapsto f^p$. The transition functions of $\mathcal L^{\otimes p}$ are also $g_{ij}^p$. Locally the isomorphism sends $a\otimes\ell$ to $a\,\ell^{\otimes p}$, so it is independent of the chosen trivializations. $\square$

In particular,

$$
\boxed{\quad
\omega_{A^{(p)}/S}
\simeq\operatorname{Fr}_S^*\omega_{A/S}
\simeq\omega_{A/S}^{\otimes p}.
\quad}
$$

This identity is exactly what makes the determinant of Verschiebung into a section of a line bundle.

## 3. The Hasse Invariant and the Ordinary Locus

Assume now that $S$ is an $\mathbf F_p$-scheme. The Verschiebung $V:A^{(p)}\to A$ induces a map on invariant differentials,

$$
V^*:\mathbb E_{A/S}
\longrightarrow\mathbb E_{A^{(p)}/S}
\simeq\operatorname{Fr}_S^*\mathbb E_{A/S}.
$$

Taking the top exterior power, and using the Frobenius pullback formula from §2, gives a morphism of line bundles

$$
\det(V^*):\omega_{A/S}
\longrightarrow\omega_{A/S}^{\otimes p}.
$$

Since $\operatorname{Hom}_{\mathcal O_S}(\omega,\omega^{\otimes p})
\simeq\omega^{\otimes(p-1)}$ for a line bundle $\omega$, we obtain:

> [!definition] Definition 3.1 (Hasse invariant; Zhu §3.6)
> The **Hasse invariant** of $A/S$ is the section corresponding to $\det(V^*)$:
>
> $$
> \boxed{\quad
> \operatorname{Ha}(A/S)
> \in H^0\!\left(S,\omega_{A/S}^{\otimes(p-1)}\right).
> \quad}
> $$

> [!proposition] Proposition 3.2 (Ordinary criterion; Zhu §3.6)
> Let $A/k$ be an abelian variety of dimension $g$ over an algebraically closed field of characteristic $p$. The following conditions are equivalent:
>
> 1. $A$ is ordinary, i.e. $\#A[p](k)=p^g$;
> 2. the maximal étale quotient $A[p]^{\mathrm{ét}}$ has rank $p^g$;
> 3. $\operatorname{Ha}(A/k)\ne0$;
> 4. the finite group scheme $\ker(V:A^{(p)}\to A)$ is étale;
> 5. the Verschiebung isogeny $V:A^{(p)}\to A$ is étale.
>
> For an abelian scheme $A/S$ in characteristic $p$, all geometric fibres are ordinary if and only if $\operatorname{Ha}(A/S)$ is nowhere vanishing, i.e. is an invertible section of $\omega_{A/S}^{\otimes(p-1)}$.

> [!proof]- Proof: connectedness, étale kernels, and the Hasse invariant
> **Step 1 — Frobenius–Verschiebung exact sequence.** Relative Frobenius $F:A\to A^{(p)}$ is a finite faithfully flat isogeny of degree $p^g$. The identity $V\circ F=[p]_A$ yields a short exact sequence of finite flat group schemes in the **fppf topology**:
>
> $$
> \boxed{\quad
> 0\longrightarrow\ker F\longrightarrow A[p]
> \xrightarrow{\ F\ }\ker V\longrightarrow0.
> \quad}
> $$
>
> For surjectivity, take $y\in\ker V$ and choose an fppf-local lift $x\in A$ with $F(x)=y$. Then $[p]x=V(F(x))=V(y)=0$, hence $x\in A[p]$. Both $\ker F$ and $\ker V$ have rank $p^g$.
>
> **Step 2 — Why is $\ker F$ connected?** Recall that a scheme is **connected** when its underlying topological space cannot be decomposed into two disjoint nonempty open subsets. Relative Frobenius is *radicial* (universally injective): for every algebraically closed extension $\Omega/k$, the map $F:A(\Omega)\to A^{(p)}(\Omega)$ is injective. Therefore
>
> $$
> \ker F(\Omega)=\{e\}.
> $$
>
> Since $\ker F$ is finite over the algebraically closed field $k$, its topological space consists of exactly one point. It is therefore connected. This **does not** imply $\ker F$ is the trivial group scheme: it has length $p^g$, and may be nonreduced. For example, in characteristic $p$,
>
> $$
> \mu_p=\operatorname{Spec}k[u]/(u^p)
> $$
>
> is connected (one point), although it has rank $p$.
>
> **Step 3 — The maximal étale quotient.** A homomorphism from a connected finite $k$-group scheme to a finite étale one must be trivial: over the algebraically closed field $k$, a finite étale scheme is a discrete collection of points, and a group homomorphism sends the identity to the identity. Thus every homomorphism from $A[p]$ to a finite étale group scheme kills $\ker F$ and factors uniquely through the fppf quotient $\ker V$. By the universal property of the maximal étale quotient,
>
> $$
> \boxed{\quad A[p]^{\mathrm{ét}}\simeq(\ker V)^{\mathrm{ét}}.\quad}
> $$
>
> Since $\ker V$ has rank $p^g$, its maximal étale quotient has rank $p^g$ precisely when $\ker V$ itself is étale. Therefore **(2) $\Longleftrightarrow$ (4)**.
>
> For any finite group scheme $G$ over $k=\bar k$, its $k$-points are the points of $G^{\mathrm{ét}}$, and $\#G(k)=\operatorname{rank}(G^{\mathrm{ét}})$. Hence **(1) $\Longleftrightarrow$ (2)**. Equivalently, the exact sequence above gives a bijection $A[p](k)\simeq\ker V(k)$: its kernel has only the identity $k$-point, and every nonempty finite fibre over $k$ has a $k$-point.
>
> **Step 4 — Why is $V$ étale if and only if $\ker V$ is étale?** The forward implication is immediate, since $\ker V\to\operatorname{Spec}k$ is the base change of $V$ by the identity section of $A$.
>
> For the converse put $K=\ker V$. Because $V$ is a faithfully flat group homomorphism, there is an isomorphism
>
> $$
> A^{(p)}\times_A A^{(p)}
> \xrightarrow{\sim}K\times_k A^{(p)},
> \qquad (x,y)\longmapsto(x-y,y).
> $$
>
> Under this identification, the base change of $V$ along $V$ becomes the projection $K\times_k A^{(p)}\to A^{(p)}$. If $K$ is étale, this projection is étale. Since **étaleness descends along faithfully flat base change**, $V$ itself is étale. Thus **(4) $\Longleftrightarrow$ (5)**.
>
> **Step 5 — The Hasse invariant.** Since $A$ and $A^{(p)}$ are smooth of dimension $g$, $V$ is étale exactly when its differential at the identity
>
> $$
> dV_e:\operatorname{Lie}A^{(p)}\longrightarrow\operatorname{Lie}A
> $$
>
> is an isomorphism: by translation invariance the same then holds at every point. Dualizing gives the map on invariant differentials
>
> $$
> V^*:\mathbb E_{A/k}\longrightarrow\mathbb E_{A^{(p)}/k}.
> $$
>
> Its determinant is, by Definition 3.1, the Hasse invariant. Hence
>
> $$
> V\text{ étale}\iff dV_e\text{ invertible}
> \iff V^*\text{ invertible}
> \iff\operatorname{Ha}(A/k)\ne0.
> $$
>
> This establishes **(5) $\Longleftrightarrow$ (3)** and proves all five equivalences. Applying the result to every geometric fibre proves the assertion over $S$. $\square$

> [!example] Example 3.3 (Elliptic curve)
> For an elliptic curve $E/k$ over an algebraically closed field of characteristic $p$, the proposition specializes to the equivalence of
>
> $$
> \begin{gathered}
> |E[p](k)|=p,\qquad E[p](k)\simeq\mathbf Z/p\mathbf Z,\\
> \operatorname{rank}(E[p]^{\mathrm{ét}})=p,\qquad
> \operatorname{Ha}(E/k)\neq0,\qquad
> \ker(V:E^{(p)}\to E)\text{ is étale}.
> \end{gathered}
> $$
>
> In this ordinary case, $E[p]\simeq\mu_p\oplus(\mathbf Z/p\mathbf Z)$, $\ker F\simeq\mu_p$, and the exact sequence identifies
> $E[p]/\ker F\simeq\ker V\simeq\mathbf Z/p\mathbf Z$.
> In the supersingular case, $\ker F\simeq\alpha_p$ and $\ker V\simeq\alpha_p$: both are connected, the étale quotient of $E[p]$ is trivial, and $\operatorname{Ha}(E/k)=0$. Thus $\ker F$ is connected even when it is strictly smaller than the connected group scheme $E[p]$.
>
> **Caution:** the conclusion is **not** $\ker V=E[p]$; $\ker V$ has rank $p$, whereas $E[p]$ has rank $p^2$.

### Iterated Frobenius and Verschiebung

For $m\geq1$, write $A^{(p^m)}$ for the $m$-fold Frobenius twist, and let

$$
F^m:A\longrightarrow A^{(p^m)},\qquad
V^m:A^{(p^m)}\longrightarrow A
$$

be the successive compositions of relative Frobenius and Verschiebung (with the appropriate twists at each stage). In particular,

$$
V^m\circ F^m=[p^m]_A,\qquad
F^m\circ V^m=[p^m]_{A^{(p^m)}}.
$$

> [!proposition] Proposition 3.4 (The $p^m$-torsion sequence)
> There is a short exact sequence of finite locally free group schemes, exact as fppf sheaves,
>
> $$
> \boxed{\quad
> 0\longrightarrow\ker F^m
> \longrightarrow A[p^m]
> \xrightarrow{\ F^m\ }\ker V^m
> \longrightarrow0.
> \quad}
> $$
>
> Both $\ker F^m$ and $\ker V^m$ have rank $p^{mg}$. Over an algebraically closed field of characteristic $p$, $\ker F^m$ is connected. If $A$ is ordinary, then $\ker V^m$ is finite étale.

> [!proof]- Proof
> The compositions $F^m$ and $V^m$ have degree $p^{mg}$; their identities follow inductively from $VF=FV=[p]$ on the appropriate Frobenius twists.
>
> Since $F^m$ is faithfully flat and $V^mF^m=[p^m]$, the same fppf-lifting argument as for $m=1$ gives the asserted exact sequence. Over an algebraically closed field, relative Frobenius is radicial, hence $F^m$ is radicial and $\ker F^m$ is connected.
>
> If $A$ is ordinary, $V$ is étale by Proposition 3.2. Frobenius twists of ordinary abelian varieties remain ordinary (equivalently, the Hasse invariant remains nonzero after Frobenius base change). Thus each successive Verschiebung is étale; so is their composite $V^m$, and therefore its kernel $\ker V^m$ is finite étale. $\square$

The significance for the next construction is that, **over an ordinary special fibre**, $\ker F^m$ is the connected part of $A[p^m]$, and the quotient $\ker V^m$ is étale. Over a suitable $p$-adically complete integral base, the finite étale quotient lifts uniquely; its kernel in the lifted $p^m$-torsion gives the **level-$m$ canonical subgroup**. The lifting construction is given in the next section.

### The formal ordinary locus and its universal abelian scheme

We now turn the fibrewise ordinary condition into a **formal moduli space** over a mixed-characteristic base. This also explains precisely what is meant by the *universal ordinary abelian scheme* in the construction of the anticanonical tower.

**(1) Universal family on the hyperspecial integral model.** Fix the hyperspecial level $K_p=G(\mathbf Z_p)$ and a sufficiently small tame level $K^p$ (for instance a neat level contained in a principal congruence subgroup of level $N\ge3$ prime to $p$). By the fine Siegel moduli theorem recalled in [[perfectoid-siegel-variety/anticanonical-tower/siegel-modular-varieties|Siegel Modular Varieties and Level Structures, §1.2]], the smooth integral model $X=X_{K^pK_p,\mathbf Z_{(p)}}$ represents the functor of triples $(A,\lambda,\eta^p)$ consisting of an abelian scheme, a principal polarization, and a $K^p$-level structure. In particular, it carries a **universal triple**

$$
\boxed{\quad
\pi:\mathcal A\longrightarrow X,\qquad
\lambda_{\mathrm{univ}}:\mathcal A\xrightarrow{\sim}\mathcal A^\vee,
\qquad\eta^p_{\mathrm{univ}}.
\quad}
$$

The reason is simply representability: under the moduli-functor isomorphism, the identity $\operatorname{id}_X\in\operatorname{Hom}(X,X)$ corresponds to this family (Yoneda). Every family classified by a map $f:T\to X$ is its pullback along $f$. The **fine** hypothesis is important: a coarse moduli space need not carry a universal family.

**(2) Special fibre and ordinary open subset.** Base change to $\mathbf Z_p$, and write

$$
X_p=X\times_{\mathbf Z_{(p)}}\operatorname{Spec}\mathbf Z_p,
\qquad
X_0=X_p\times_{\mathbf Z_p}\operatorname{Spec}\mathbf F_p.
$$

The universal abelian scheme restricts to $\mathcal A_0/X_0$. By Proposition 3.2, the ordinary locus is exactly the open subset on which the Hasse invariant of $\mathcal A_0$ is invertible:

$$
\boxed{\quad
X_0^{\mathrm{ord}}
:=\{x\in X_0:\operatorname{Ha}(\mathcal A_{0,x})\neq0\}
\subseteq X_0.
\quad}
$$

More invariantly, this is the nonvanishing locus of the Hasse section of the appropriate determinant Hodge line bundle; it makes sense without a global trivialization.

**(3) Formal restriction is not the special fibre.** Let

$$
\mathfrak X:=\widehat{X_p}^{\,p}
$$

be the $p$-adic formal completion. Its underlying topological space is canonically

$$
|\mathfrak X|=|X_0|.
$$

Since $X_0^{\mathrm{ord}}$ is an **open** subset of this space, it determines an **open formal subscheme**, which we define to be the *formal ordinary locus*:

$$
\boxed{\quad
\mathfrak X(0):=
\mathfrak X\big|_{\,X_0^{\mathrm{ord}}}.
\quad}
$$

Here the vertical bar means **restriction of the formal structure sheaf to the indicated open subset**, *not* the special fibre (formed by setting $p=0$). Thus $\mathfrak X(0)$ retains the compatible thickenings modulo $p^r$ for every $r\ge1$; it is not merely the characteristic-$p$ scheme $X_0^{\mathrm{ord}}$.

> [!example] Example 3.5 (What formal restriction looks like on an affine chart)
> For $\mathfrak X=\operatorname{Spf}\mathbf Z_p\langle T\rangle$, the special fibre is $\operatorname{Spec}\mathbf F_p[T]$. If $U=D(\bar T)$ is the open subset where $\bar T$ is invertible, then
>
> $$
> \mathfrak X|_U
> =\operatorname{Spf}\bigl(\mathbf Z_p\langle T,T^{-1}\rangle\bigr),
> \qquad
> (\mathfrak X|_U)_0=\operatorname{Spec}\mathbf F_p[T,T^{-1}].
> $$
>
> The first space still has a $p$-adic formal structure (and hence a characteristic-zero generic fibre); the second is only its special fibre. In general, for $\mathfrak X=\operatorname{Spf}B$ and $U=D(\bar f)\subseteq\operatorname{Spec}(B/p)$, the formal restriction is $\operatorname{Spf}\widehat{B[1/f]}^{\,p}$, where $f\in B$ lifts $\bar f$.

**(4) Restricting the universal family.** Complete the universal family and its moduli data along the ordinary formal open:

$$
\boxed{\quad
\bigl(\widehat{\mathcal A}^{\mathrm{ord}},
\widehat\lambda_{\mathrm{univ}},
\widehat\eta^p_{\mathrm{univ}}\bigr)
\longrightarrow\mathfrak X(0).
\quad}
$$

Concretely, on each infinitesimal thickening of $\mathfrak X(0)$ modulo $p^r$, this is just the base change of $(\mathcal A,\lambda_{\mathrm{univ}},\eta^p_{\mathrm{univ}})$; these abelian schemes and their structures are compatible in $r$. We call this the **universal ordinary formal abelian scheme**. The adjective *ordinary* refers only to its special fibre, which lies over $X_0^{\mathrm{ord}}$; it does not mean that the characteristic-zero torsion splits.

> [!proposition] Proposition 3.6 (Moduli interpretation of the formal ordinary locus)
> Let $R$ be a $p$-adically complete $\mathbf Z_p$-algebra, and write $R_r=R/p^rR$. Then $\operatorname{Hom}(\operatorname{Spf}R,\mathfrak X(0))$ is naturally identified with the set of isomorphism classes of **compatible systems of triples**
>
> $$
> (A_r,\lambda_r,\eta_r^p)/R_r,\qquad r\ge1,
> $$
>
> such that $A_r/R_r$ is an abelian scheme of dimension $g$, $\lambda_r$ is a principal polarization, $\eta_r^p$ is the fixed tame level structure, and
>
> $$
> \boxed{\qquad A_1/R_1\text{ is ordinary on every geometric fibre}.\qquad}
> $$
>
> In particular, for a triple $(A,\lambda,\eta^p)$ over $R$ with ordinary reduction, its classifying map factors canonically through $\mathfrak X(0)$. When such compatible formal data are algebraizable over $R$ (as in the standard noetherian polarized setting), one may write the moduli interpretation suggestively as
>
> $$
> \boxed{
> \mathfrak X(0)(R)=
> \bigl\{(A,\lambda,\eta^p)/R:
> A\otimes_R R/p\text{ is ordinary}\bigr\}/\cong.
> }
> $$
>
> Here $\mathfrak X(0)(R)$ abbreviates $\operatorname{Hom}(\operatorname{Spf}R,\mathfrak X(0))$, and the fine-moduli hypotheses on $K^p$ remain in force.

> [!proof]- Proof from the formal restriction
> By the definition of $p$-adic formal completion,
>
> $$
> \operatorname{Hom}(\operatorname{Spf}R,\mathfrak X)
> \simeq\varprojlim_r\operatorname{Hom}_{\mathbf Z_p}
> (\operatorname{Spec}R_r,X_p).
> $$
>
> Because $X_p$ is a **fine moduli scheme**, the term at level $r$ classifies $(A_r,\lambda_r,\eta_r^p)/R_r$; the inverse limit imposes compatibility under reduction $R_{r+1}\to R_r$.
>
> A morphism $f:\operatorname{Spf}R\to\mathfrak X$ factors through the open formal subscheme
>
> $$
> \mathfrak X(0)=\mathfrak X|_{X_0^{\mathrm{ord}}}
> $$
>
> **if and only if** the underlying morphism on special fibres
>
> $$
> f_1:\operatorname{Spec}(R/p)\longrightarrow X_0
> $$
>
> lands in $X_0^{\mathrm{ord}}$. By the Hasse-invariant criterion of Proposition 3.2, this means that the special fibre $A_1$ is ordinary at every geometric point, or equivalently that its Hasse invariant is an invertible section. This proves the asserted description. $\square$

> [!remark]- Remark 3.7 (Formal versus analytic moduli)
> The special fibre $X_0^{\mathrm{ord}}$ classifies abelian schemes **in characteristic $p$**. The formal ordinary locus $\mathfrak X(0)$ classifies **compatible $p$-adic thickenings** of such objects; its generic fibre $\mathcal X(0)=\mathfrak X(0)_\eta$ is the corresponding analytic ordinary-good-reduction locus. In particular, the latter should not be confused with a moduli scheme of abelian varieties over characteristic $p$.

Thus Proposition 4.1 applies functorially to the universal ordinary family on $\mathfrak X(0)$, and its level-$m$ canonical subgroup is compatible with pullback along every formal moduli point. This is precisely the input for the quotient construction in §5.

Finally, all of these constructions may be base changed from $\mathbf Z_p$ to the ring of integers $\mathcal O_K$ of the perfectoid field used in §5. In that case the formal ordinary locus is the corresponding base change, with the same ordinary condition on the geometric special fibres.

## 4. Canonical Subgroup

We now lift the connected subgroup $\ker F^n$ from an **ordinary special fibre** to characteristic zero, as in Zhu §3.7 and Caraiani §4.2.

Let $R$ be a $p$-adically complete, flat $\mathbf Z_p$-algebra and $A/\operatorname{Spec}R$ an abelian scheme of relative dimension $g$. Put $R_0=R/pR$ and $A_0=A\times_R R_0$, and assume that $A_0$ is ordinary (equivalently, its Hasse invariant is invertible). The preceding section gives, for each $n\geq1$, an exact sequence over $R_0$:

$$
0\longrightarrow\ker(F^n_{A_0/R_0})
\longrightarrow A_0[p^n]
\xrightarrow{F^n}\ker(V^n_{A_0/R_0})
\longrightarrow0.
$$

The last term is finite étale of rank $p^{ng}$. This allows us to lift the sequence.

> [!proposition] Proposition 4.1 (Canonical subgroup over the ordinary locus; Zhu §3.7)
> Under the assumptions above, for every $n\geq1$ there is a **unique finite locally free closed subgroup scheme**
>
> $$
> \boxed{\quad C_n(A)\subset A[p^n]\quad}
> $$
>
> whose reduction modulo $p$ is $\ker(F^n_{A_0/R_0})$. It has rank $p^{ng}$ and fits into a canonical exact sequence
>
> $$
> \boxed{\quad
> 0\longrightarrow C_n(A)\longrightarrow A[p^n]
> \longrightarrow\mathcal G_n\longrightarrow0,
> \quad}
> $$
>
> where $\mathcal G_n/R$ is finite étale and reduces to $\ker(V^n_{A_0/R_0})$.
>
> The subgroup $C_n(A)$ is called the **canonical subgroup of level $n$**.

> [!proof]- Construction and uniqueness
> Put $H=A[p^n]$ and $H_0=A_0[p^n]$, and write
>
> $$
> G_0=\ker(V^n_{A_0/R_0}),\qquad
> q_0:H_0\longrightarrow G_0
> $$
>
> for the finite étale quotient in characteristic $p$.
>
> **(1) Lift the étale quotient.** Because $R$ is $p$-adically complete, $(R,pR)$ is a henselian pair. The reduction functor from finite étale $R$-schemes to finite étale $R/pR$-schemes is an equivalence. It also preserves finite products, so the group law on $G_0$ lifts uniquely. We obtain a finite étale group scheme $\mathcal G_n/R$ with $\mathcal G_n\otimes_R R_0\simeq G_0$.
>
> **(2) Lift the quotient map.** It is important that *formal étaleness concerns maps into the étale target*; the source $H$ need not be étale. For each $r\geq1$ set
>
> $$
> R_r=R/p^rR,\qquad
> H_r=H\times_R R_r,\qquad
> G_r=\mathcal G_n\times_R R_r.
> $$
>
> Suppose we have constructed $q_r:H_r\to G_r$, beginning with $q_1=q_0$. The closed immersion
>
> $$
> H_r\hookrightarrow H_{r+1}
> $$
>
> is defined by the square-zero ideal $p^r\mathcal O_{H_{r+1}}$ (indeed $2r\geq r+1$). Regard $q_r$ as a morphism $H_r\to G_{r+1}$ using the closed immersion $G_r\hookrightarrow G_{r+1}$. Since $G_{r+1}/R_{r+1}$ is formally étale, the infinitesimal lifting criterion gives a **unique** morphism
>
> $$
> q_{r+1}:H_{r+1}\longrightarrow G_{r+1}
> $$
>
> extending $q_r$. Thus the $q_r$ are compatible for every $r$.
>
> To pass to the limit, write $H=\operatorname{Spec}B$ and $\mathcal G_n=\operatorname{Spec}C$. As $B$ is finite locally free over the $p$-adically complete ring $R$,
>
> $$
> B\simeq\varprojlim_r B/p^rB.
> $$
>
> The compatible algebra maps $C\to B/p^rB$ therefore define a unique $R$-algebra map $C\to B$, hence a unique
>
> $$
> \boxed{\quad q_n:A[p^n]\longrightarrow\mathcal G_n\quad}
> $$
>
> reducing to $q_0$. This is why one **cannot** simply apply formal étaleness to $H_0\hookrightarrow H$: the ideal $p\mathcal O_H$ is not nilpotent. We first lift modulo every $p^r$, then use completeness.
>
> **(3) Preserve the group law.** The maps $q_n\circ m_H$ and $m_{\mathcal G_n}\circ(q_n\times q_n)$ from $H\times_RH$ to $\mathcal G_n$ have the same reduction, since $q_0$ is a homomorphism. Uniqueness of the preceding lifting argument (applied to the finite locally free source $H\times_RH$) shows that they agree. The identity and inverse are treated similarly. Thus $q_n$ is a homomorphism of group schemes.
>
> **(4) Take the kernel.** The reduction $q_0$ is faithfully flat, and the finite map $q_n$ is finite locally free and surjective by the flatness criterion applied along the $p$-adic thickenings. Hence
>
> $$
> C_n(A):=\ker q_n
> $$
>
> is finite locally free of rank $p^{ng}$ and has special fibre $\ker F^n$.
>
> Finally, if another finite locally free closed subgroup $C\subseteq A[p^n]$ has special fibre $\ker F^n$, the quotient $A[p^n]/C$ is finite locally free with étale special fibre. Because $p$ lies in the Jacobson radical of $R$, this quotient is finite étale over $R$. Its reduction agrees with $G_0$, so it identifies uniquely with $\mathcal G_n$; the resulting quotient map agrees with $q_n$ by the uniqueness in (2). Hence $C=C_n(A)$. $\square$

The essential mechanism is

$$
\boxed{
\ker V^n\ \text{finite étale}
\quad\Longrightarrow\quad
\mathcal G_n\ \text{lifts uniquely}
\quad\Longrightarrow\quad
C_n(A)=\ker(A[p^n]\to\mathcal G_n).
}
$$

### Quotients by canonical subgroups

Let $f_n:A\to A':=A/C_n(A)$ be the quotient isogeny. Recall that, by construction,

$$
C_n(A)_0=\ker(F^n_{A_0/R_0}).
$$

> [!proposition] Proposition 4.2 (The canonical quotient remains ordinary)
> The quotient $A'=A/C_n(A)$ is an abelian scheme over $R$ with ordinary reduction, and there is a canonical identification
>
> $$
> \boxed{\quad A'_0\simeq A_0^{(p^n)}.\quad}
> $$
>
> Under this identification, the reduction of $f_n$ is the iterated relative Frobenius $F^n:A_0\to A_0^{(p^n)}$.

> [!proof]- Proof
> Quotients of abelian schemes by finite locally free subgroup schemes exist as abelian schemes and commute with base change. Therefore
>
> $$
> A'_0=A_0/C_n(A)_0
> =A_0/\ker F^n
> \simeq A_0^{(p^n)},
> $$
>
> with quotient map $F^n$. Frobenius base change preserves the ordinary condition: the Hasse invariant remains invertible after pullback by $\operatorname{Fr}_{R_0}^n$. Hence $A'_0$, and therefore $A'$ in the sense of ordinary reduction, is ordinary. $\square$

We can now compare the subgroup arising from $f_n$ with the first canonical subgroup of $A'$. Write

$$
D_n:=f_n(A[p^n])
\simeq A[p^n]/C_n(A)
\subset A'[p^n],
\qquad C'_1:=C_1(A').
$$

Here $D_n$ is **finite étale of rank $p^{ng}$**, since it identifies with the finite étale quotient $\mathcal G_n$ of Proposition 4.1.

> [!proposition] Proposition 4.3 (Transversality; Zhu, Lemma 3.7.4)
> Inside $A'[p^n]$, one has
>
> $$
> \boxed{\qquad D_n\cap C'_1=\{0\}.\qquad}
> $$
>
> For $n=1$, the two rank-$p^g$ subgroups $D_1$ and $C'_1$ are complementary in $A'[p]$:
>
> $$
> A'[p]\simeq D_1\times_R C'_1.
> $$

> [!proof]- Proof
> On the special fibre, the identification $A'_0\simeq A_0^{(p^n)}$ gives
>
> $$
> (D_n)_0\simeq\ker(V^n_{A_0/R_0})
> \quad\text{(étale)},\qquad
> (C'_1)_0=\ker(F_{A'_0/R_0})
> \quad\text{(connected)}.
> $$
>
> Their intersection is trivial on every geometric fibre: a subgroup scheme of a finite étale group scheme is étale over an algebraically closed field, whereas a finite connected group scheme has only the identity as a geometric point. Hence their scheme-theoretic intersection has trivial special fibre.
>
> **Lifting triviality from the special fibre (Nakayama).** Let
>
> $$
> H:=D_n\cap C'_1.
> $$
>
> The scheme-theoretic intersection is a closed subgroup scheme of $D_n$. Because $D_n$ is finite étale over $R$, the morphism $H\to\operatorname{Spec}R$ is **finite** (we do not assume $H$ is flat). Its special fibre is the identity group scheme $H_0\simeq\operatorname{Spec}(R/p)$, as proved above.
>
> Set $B:=\Gamma(H,\mathcal O_H)$, a finite $R$-algebra. The identity section $e:\operatorname{Spec}R\to H$ induces the **augmentation**
>
> $$
> \varepsilon=e^\#:B\longrightarrow R.
> $$
>
> Since $\varepsilon$ splits the structure homomorphism $R\to B$, there is an $R$-module direct sum
>
> $$
> B=R\oplus I,\qquad I=\ker\varepsilon.
> $$
>
> In particular, $I$ is a finite $R$-module. Reduction modulo $p$ gives
>
> $$
> B/pB\simeq R/p\oplus I/pI.
> $$
>
> On the other hand $H_0$ is exactly the identity section, so its coordinate ring is $R/p$ and the reduced augmentation $B/pB\to R/p$ is an isomorphism. Thus $I/pI=0$, i.e. $I=pI$.
>
> Finally $R$ is $p$-adically complete, hence $pR\subseteq\operatorname{Jac}(R)$. **Nakayama's lemma** applied to the finite $R$-module $I$ implies $I=0$. Consequently
>
> $$
> B=R,\qquad H=\operatorname{Spec}R,
> $$
>
> and the embedding $H\hookrightarrow A'[p^n]$ is its identity section. This proves $D_n\cap C'_1=\{0\}$. Note that **flatness of $H$ is unnecessary**.
>
> When $n=1$, both $D_1$ and $C'_1$ have rank $p^g$, and their trivial intersection implies that $D_1\times_R C'_1\to A'[p]$ is an isomorphism: it is so on the ordinary special fibre, and hence over $R$ by the same finite-module/Nakayama argument. $\square$

In particular, for $n=1$, **the image of $A[p]$ in the canonical quotient is an étale complement to the new canonical subgroup**. This is the basic geometric picture behind an *anticanonical level*.

### Canonical subgroups and duality

**First we must check that the dual abelian scheme has ordinary reduction.** Recall that $A$ is defined over a $p$-adically complete, flat ring $R$ of mixed characteristic, and *ordinary* here means that its special fibre $A_0:=A\times_R(R/p)$ is ordinary. The Hasse invariant is defined on $S=\operatorname{Spec}(R/p)$, not via a characteristic-zero Frobenius on $A$.

Write $\mathcal L_A=\det\omega_{A_0/S}$ and similarly $\mathcal L_{A^\vee}=\det\omega_{(A^\vee)_0/S}$. Since formation of the dual abelian scheme commutes with base change, $(A^\vee)_0\simeq A_0^\vee$.

> [!lemma] Duality of the Hasse invariant (Fargues; Bijakowski, Theorem 2.1.4)
> There is a natural isomorphism of invertible sheaves on $S$,
>
> $$
> \boxed{\quad \mathcal L_A^{\otimes(p-1)}
> \xrightarrow{\ \sim\ }
> \mathcal L_{A^\vee}^{\otimes(p-1)},\quad}
> $$
>
> under which $\operatorname{Ha}(A_0)$ corresponds to $\operatorname{Ha}(A_0^\vee)$. In particular, the two sections generate the same ideal after local trivialization, and
>
> $$
> \boxed{\quad A_0\text{ is ordinary}
> \quad\Longleftrightarrow\quad A_0^\vee\text{ is ordinary}.\quad}
> $$

> [!proof]- Proof using the Hodge and conjugate filtrations
> Let $G=A_0[p^\infty]$, and let $G^D=A_0^\vee[p^\infty]$ be its Cartier dual. Evaluate the **contravariant Dieudonné crystal** of $G$ on $S$:
>
> $$
> \mathcal E=\mathbb D(G)_S,\qquad \operatorname{rk}\mathcal E=2g.
> $$
>
> **Why can we identify this with de Rham cohomology?** This is a special fact about $G=A_0[p^\infty]$ coming from the **abelian scheme** $\pi:A_0\to S$. The crystalline Dieudonné comparison theorem (Messing; Berthelot–Breen–Messing) identifies the crystals
>
> $$
> \mathbb D(A_0[p^\infty])
> \simeq R^1\pi_{\mathrm{cris},*}\mathcal O_{A_0/\mathrm{cris}}.
> $$
>
> Evaluating on the trivial PD thickening $S\hookrightarrow S$ and using crystalline–de Rham comparison for the smooth proper morphism $A_0/S$ gives
>
> $$
> \boxed{\quad
> \mathcal E=\mathbb D(G)_S
> \xrightarrow{\sim}H^1_{\mathrm{dR}}(A_0/S).\quad}
> $$
>
> **For a general $p$-divisible group $G$, $\mathbb D(G)$ need not be the cohomology of an abelian scheme.** Conversely, smooth proper reduction alone is not the reason for the identification: the essential input is that $G$ is the $p$-divisible group of an abelian scheme. Because $A/R$ is a smooth proper lift, de Rham base change also gives $H^1_{\mathrm{dR}}(A_0/S)\simeq H^1_{\mathrm{dR}}(A/R)\otimes_R R/p$; this is a separate comparison, not the definition of $\mathbb D(G)$.
>
> Here, as defined in §2, the superscript $(p)$ on a vector bundle means **pullback along the absolute Frobenius of $S$**: $\mathcal E^{(p)}=\operatorname{Fr}_S^*\mathcal E$ and $\mathcal F^{(p)}=\operatorname{Fr}_S^*\mathcal F$. In particular, it does not mean a tensor or exterior power.
>
> The crystal carries Frobenius and Verschiebung, expressed on $\mathcal E$ as
>
> $$
> F:\mathcal E^{(p)}\to\mathcal E,\qquad
> V:\mathcal E\to\mathcal E^{(p)}.
> $$
>
> Under the comparison with $H^1_{\mathrm{dR}}(A_0/S)$, these agree respectively with the contravariant pullbacks induced by the geometric relative Frobenius $F_{A_0}:A_0\to A_0^{(p)}$ and Verschiebung $V_{A_0}:A_0^{(p)}\to A_0$. In particular,
>
> $$
> V=V_{A_0}^*:H^1_{\mathrm{dR}}(A_0/S)
> \longrightarrow H^1_{\mathrm{dR}}(A_0^{(p)}/S).
> $$
>
> > **(1) Two complementary-rank filtrations.** The Hodge filtration gives a rank-$g$ subbundle $\mathcal F=\omega_G\subset\mathcal E$, and an exact sequence
>
> $$
> 0\longrightarrow\mathcal F\longrightarrow\mathcal E
> \longrightarrow\omega_{G^D}^{\vee}\longrightarrow0.
> $$
>
> Define the *conjugate filtration* $\widetilde{\mathcal F}:=\ker V=\operatorname{im}F\subset\mathcal E$, also of rank $g$. Standard Dieudonné identities yield **isomorphisms of vector bundles**
>
> $$
> \begin{aligned}
> \overline V:\mathcal E/\widetilde{\mathcal F}
> &\xrightarrow{\ \sim\ }\mathcal F^{(p)},\\
> \overline F:(\mathcal E/\mathcal F)^{(p)}
> &\xrightarrow{\ \sim\ }\widetilde{\mathcal F}.
> \end{aligned}
> $$
>
> These identifications are essential: $\widetilde{\mathcal F}$ is not the Hodge subbundle, and the two subbundles need not be transverse.
>
> **(2) Why is this the Hasse invariant from Definition 3.1?** First, the Hodge filtration identifies $\mathcal F=\omega_G$ with $\omega_{A_0/S}$, and the corresponding subbundle $\mathcal F^{(p)}\subset\mathcal E^{(p)}$ with $\omega_{A_0^{(p)}/S}$. The geometric Verschiebung induces the map
>
> $$
> V_{A_0}^*:\omega_{A_0/S}
> \longrightarrow\omega_{A_0^{(p)}/S}
> \simeq\omega_{A_0/S}^{(p)}.
> $$
>
> **This was the original definition in §3.** Functoriality of the Hodge filtration, together with the comparison between the geometric Verschiebung and the Dieudonné operator $V$, gives a commutative square:
>
> $$
> \begin{array}{ccc}
> \mathcal F & \xrightarrow{\ \iota\ } & \mathcal E\\
> {\scriptstyle V_{A_0}^*}\big\downarrow && \big\downarrow{\scriptstyle V}\\
> \mathcal F^{(p)} & \xrightarrow{\ \iota^{(p)}\ } & \mathcal E^{(p)}.
> \end{array}
> $$
>
> We also have $\ker V=\widetilde{\mathcal F}$ and $\operatorname{im}V=\mathcal F^{(p)}$, so $V$ factors through the **isomorphism**
>
> $$
> \overline V:\mathcal E/\widetilde{\mathcal F}
> \xrightarrow{\sim}\mathcal F^{(p)}.
> $$
>
> Writing $q:\mathcal E\twoheadrightarrow\mathcal E/\widetilde{\mathcal F}$, the commutative square says precisely that
>
> $$
> \boxed{\quad
> V_{A_0}^*=\overline V\circ q\circ\iota:
> \mathcal F\longrightarrow\mathcal F^{(p)}.
> \quad}
> $$
>
> Thus the projection
>
> $$
> \mathcal F\hookrightarrow\mathcal E
> \twoheadrightarrow\mathcal E/\widetilde{\mathcal F}
> $$
>
> is **not a new definition of the Hasse map**: after identifying its target by $\overline V$, it is *exactly* $V_{A_0}^*$ from Definition 3.1. Taking determinants gives the original Hasse section
>
> $$
> \det(V_{A_0}^*)=\operatorname{Ha}(A_0)
> \in H^0\bigl(S,(\det\mathcal F)^{\otimes(p-1)}\bigr).
> $$
>
> Equivalently, the determinant of the projection is this section, when viewed in the naturally identified line
>
> $$
> \det(\mathcal E/\widetilde{\mathcal F})
> \otimes(\det\mathcal F)^{-1}
> \simeq(\det\mathcal F)^{\otimes(p-1)}.
> $$
>
> > **(3) The Hasse map of the dual.** The Dieudonné module of $G^D$ is $\mathcal E^\vee$, with Hodge subbundle
>
> $$
> \omega_{G^D}\simeq(\mathcal E/\mathcal F)^\vee
> \subset\mathcal E^\vee.
> $$
>
> Cartier duality exchanges Frobenius and Verschiebung: the Verschiebung of $\mathcal E^\vee$ is the transpose $F^\vee$ of the original Frobenius. Dualizing its Hasse map thus gives
>
> $$
> F:(\mathcal E/\mathcal F)^{(p)}
> \longrightarrow\mathcal E/\mathcal F.
> $$
>
> By $\overline F$, this is the projection
>
> $$
> \boxed{\quad
> \widetilde{\mathcal F}\hookrightarrow\mathcal E
> \twoheadrightarrow\mathcal E/\mathcal F.
> \quad}
> $$
>
> Taking its determinant (equivalently, the determinant of the dual Hasse map) gives $\operatorname{Ha}(G^D)$ in the line
>
> $$
> \det(\mathcal E/\mathcal F)\otimes
> (\det\widetilde{\mathcal F})^{-1}
> \simeq(\det\omega_{G^D})^{\otimes(p-1)}.
> $$
>
> **(4) Why the two determinants agree.** The two determinant lines above are both naturally isomorphic to
>
> $$
> \mathscr D:=
> \det\mathcal E\otimes
> (\det\mathcal F)^{-1}\otimes
> (\det\widetilde{\mathcal F})^{-1}.
> $$
>
> Under these identifications the determinants in (2) and (3) both become the determinant of the single map
>
> $$
> \boxed{\quad
> \mathcal F\oplus\widetilde{\mathcal F}
> \longrightarrow\mathcal E,\qquad(x,y)\longmapsto x+y.
> \quad}
> $$
>
> More concretely, if $f_1,\ldots,f_g$ and $t_1,\ldots,t_g$ are local bases of $\mathcal F$ and $\widetilde{\mathcal F}$, the common section of $\mathscr D$ is represented (with the natural determinant conventions) by
>
> $$
> (f_1\wedge\cdots\wedge f_g\wedge
> t_1\wedge\cdots\wedge t_g)
> \otimes(f_1\wedge\cdots\wedge f_g)^{-1}
> \otimes(t_1\wedge\cdots\wedge t_g)^{-1}.
> $$
>
> In particular, the two Hasse maps are invertible **precisely when** $\mathcal F$ and $\widetilde{\mathcal F}$ are transverse. The determinant-line identification makes their Hasse invariants equal, not merely simultaneously nonzero. This is [Bijakowski, Proposition 2.1.3 and Theorem 2.1.4](https://stephane-bijakowski.perso.math.cnrs.fr/filtration_dual.pdf), §2.1. $\square$

We therefore know **over the original mixed-characteristic base $R$** that $A^\vee$ also has ordinary reduction. No splitting of $A[p^n]$ or $A^\vee[p^n]$ over $R$ is being assumed. This justifies applying Proposition 4.1 to $A^\vee$ in the next proof.

For a *principally polarized* Siegel abelian scheme there is also a shorter check. A principal polarization $\lambda:A\xrightarrow{\sim}A^\vee$ identifies their Hodge bundles on $S$. If $M$, $M^\vee$ are the local matrices of the two Hasse maps and $P$ is the matrix of $\lambda_0^*:\omega_{A_0^\vee}\to\omega_{A_0}$, naturality of Verschiebung gives

$$
MP=P^{(p)}M^\vee,\qquad
\det M^\vee=(\det P)^{1-p}\det M.
$$

Since $P$ is invertible, this already proves simultaneous ordinarity; the Dieudonné argument above shows the stronger duality statement **without** assuming a polarization.

The canonical Weil pairing with the dual abelian scheme is

$$
e_{p^n}:A[p^n]\times A^\vee[p^n]\longrightarrow\mu_{p^n}.
$$

Let $C_n(A)^\perp\subset A^\vee[p^n]$ be the annihilator of $C_n(A)$ under this perfect pairing. The first identity in Proposition 4.4 holds without a principal polarization; the latter is needed only to view the annihilator as a subgroup of $A[p^n]$ itself.

> [!proposition] Proposition 4.4 (Orthogonality of canonical subgroups)
> We have
>
> $$
> \boxed{\quad C_n(A)^\perp=C_n(A^\vee).\quad}
> $$
>
> In particular, under the principal polarization $\lambda$, the subgroup $C_n(A)$ is Lagrangian in $A[p^n]$ for the induced Weil pairing:
> $C_n(A)^\perp=C_n(A)$.

> [!proof]- Proof via Cartier duality
> Cartier duality applied to the exact sequence of Proposition 4.1 gives
>
> $$
> 0\longrightarrow\mathcal G_n^D
> \longrightarrow A^\vee[p^n]
> \longrightarrow C_n(A)^D\longrightarrow0.
> $$
>
> By definition of the perfect pairing, the image of $\mathcal G_n^D$ is precisely $C_n(A)^\perp$. Its special fibre is the Cartier dual of $\ker V^n_{A_0/R_0}$, which identifies with $\ker F^n_{A_0^\vee/R_0}$ by the Frobenius–Verschiebung duality of Proposition 1.2. Thus $\mathcal G_n^D$ is a finite locally free subgroup of $A^\vee[p^n]$ lifting $\ker F^n$ on the dual abelian scheme. Uniqueness in Proposition 4.1 yields
>
> $$
> C_n(A)^\perp=\mathcal G_n^D=C_n(A^\vee).
> $$
>
> A principal polarization carries the canonical subgroup of $A$ to that of $A^\vee$, proving the last assertion. $\square$

> [!remark]- Remark 4.5 (Ordinary versus near-ordinary)
> The construction above uses an **ordinary reduction modulo $p$** and works at every level $n$. Canonical subgroups on larger Hasse-invariant neighborhoods require a separate canonical subgroup theorem, with restrictions on the Hasse height. We will distinguish these two settings when constructing the anticanonical tower.

## 5. Construction of the Anticanonical Tower

We now follow [Caraiani, §4.2](https://www.ma.imperial.ac.uk/~acaraian/papers/arizona_notes.pdf). Fix a sufficiently small tame level $K^p$ and work over the ring of integers $\mathcal O_K$ of the completed cyclotomic extension $K=\widehat{\mathbf Q_p(\mu_{p^\infty})}$. Write $\mathfrak X(0)$ for the formal ordinary locus of the hyperspecial Siegel moduli space. It carries the universal ordinary abelian scheme $\mathcal A$, with its principal polarization and $K^p$-level structure.

### 5.1 Canonical Frobenius lifts

For $m\geq0$, let $\mathfrak X(m,0)$ be a **copy** of $\mathfrak X(0)$ as a formal scheme; the index $m$ will specify its map to level zero. The canonical subgroup $C_m(\mathcal A)$ is available at every level because the reduction is ordinary (put $C_0=0$). The quotient

$$
\mathcal A\longmapsto \mathcal A/C_m(\mathcal A)
$$

is again an ordinary abelian scheme. Since $C_m$ is Lagrangian for the Weil pairing, the quotient carries the induced principal polarization; the $p$-power isogeny also transports the prime-to-$p$ level structure, with the usual normalization.

Thus the moduli interpretation yields a map of formal schemes

$$
\boxed{\quad
\widetilde F_m:\mathfrak X(m,0)\longrightarrow\mathfrak X(0,0),
\qquad
A\longmapsto A/C_m(A).
\quad}
$$

By Proposition 4.2, its special fibre agrees, under the canonical Frobenius-twist identification, with the $m$-fold **relative Frobenius** of the ordinary Siegel moduli space.

Moreover, the compatibility of canonical subgroups

$$
C_m(A)\subseteq C_{m+1}(A),
\qquad
C_{m+1}(A)/C_m(A)=C_1(A/C_m(A))
$$

gives transition maps between successive copies of the formal ordinary locus:

$$
\boxed{\qquad
\cdots\longrightarrow\mathfrak X(2,0)
\xrightarrow{\widetilde F}
\mathfrak X(1,0)
\xrightarrow{\widetilde F}
\mathfrak X(0,0).
\qquad}
$$

Every transition map reduces to relative Frobenius modulo $p$. **These are Frobenius lifts, not inclusion maps.**

### 5.2 Anticanonical $\Gamma_0(p^m)$-levels

Let $\mathcal X_{\Gamma_0(p^m)}(0)$ denote the inverse image of the ordinary good-reduction locus in the $\Gamma_0(p^m)$ generic-fibre cover. Its points parametrize pairs $(B,D)$ (with the fixed polarization and tame level data), where

$$
D\subset B[p^m]
$$

is a locally free rank-$g$ Lagrangian subgroup, of order $p^{mg}$.

> [!definition] Definition 5.1 (Anticanonical locus)
> The **anticanonical locus** $\mathcal X_{\Gamma_0(p^m)}(0)_{\mathrm{anti}}$ is the open-and-closed locus of pairs $(B,D)$ with ordinary good reduction such that
>
> $$
> \boxed{\qquad D[p]\cap C_1(B)=\{0\}.\qquad}
> $$
>
> Here the intersection is taken inside $B[p]$ on the integral ordinary model. The condition says that the chosen $p$-level points in the direction *transverse* to the canonical subgroup.

Starting with an ordinary abelian scheme $A$, form

$$
B=A/C_m(A),\qquad D=A[p^m]/C_m(A)\subset B[p^m].
$$

The subgroup $D$ is finite étale of order $p^{mg}$ and totally isotropic. Proposition 4.3 gives $D[p]\cap C_1(B)=0$. We therefore obtain a map

$$
\Phi_m:\mathcal X(m,0)\longrightarrow
\mathcal X_{\Gamma_0(p^m)}(0)_{\mathrm{anti}},
\qquad
A\longmapsto
\left(A/C_m(A),\ A[p^m]/C_m(A)\right),
$$

where $\mathcal X(m,0)$ is the adic generic fibre of $\mathfrak X(m,0)$.

> [!proposition] Proposition 5.2 (Caraiani, Lemma 4.2.2)
> For every $m\geq1$, $\Phi_m$ is a natural isomorphism
>
> $$
> \boxed{\quad
> \mathcal X(m,0)\xrightarrow{\sim}
> \mathcal X_{\Gamma_0(p^m)}(0)_{\mathrm{anti}}.
> \quad}
> $$
>
> These isomorphisms are compatible with the Frobenius-lift transition maps on the left and the level-forgetting maps on the right.

> [!proof]- Geometric argument
> The construction above lands in the anticanonical locus by the transverse-intersection result in §4.
>
> In the opposite direction, consider the *quotient-by-level* map
>
> $$
> \Psi_m:(B,D)\longmapsto B/D
> $$
>
> with its induced principal polarization and tame level. This is a finite étale Hecke-type morphism on the characteristic-zero level spaces. The composite $\Psi_m\circ\Phi_m$ sends $A$ to
>
> $$
> (A/C_m(A))/(A[p^m]/C_m(A))
> \simeq A/A[p^m]\simeq A,
> $$
>
> with the standard normalization of the resulting polarization and tame level. Thus $\Phi_m$ is a section of the étale map $\Psi_m$ and therefore an open immersion.
>
> To identify the image, start with an anticanonical pair $(B,D)$. The condition $D[p]\cap C_1(B)=0$ forces $D$ to be finite étale on the ordinary integral model. The isogeny $B\to B/D$ then has a complementary $p^m$-isogeny $B/D\to B$; its kernel reduces to the connected subgroup $\ker F^m$, so by uniqueness it is the level-$m$ canonical subgroup of $B/D$. This reconstructs $(B,D)$ from $A=B/D$ and proves that the image is precisely the anticanonical locus. For the full moduli-space argument, see Caraiani, Lemma 4.2.2. $\square$

> [!remark]- Remark 5.3 (Two different quotient maps)
> The Frobenius lift is defined by **quotienting by the canonical subgroup** $C_m(A)$. In contrast, $\Psi_m$ quotients an anticanonical point $(B,D)$ by its **chosen level subgroup** $D$. These two maps play different roles and should not be confused.

Therefore the anticanonical $\Gamma_0$-tower is the **same inverse system**, after the finite-level identifications, as the canonical Frobenius-lift tower:

$$
\boxed{
\{\mathcal X_{\Gamma_0(p^m)}(0)_{\mathrm{anti}}\}_m
\ \cong\
\{\mathcal X(m,0)\}_m.
}
$$

## 6. Perfectoidness of the Frobenius Tower

We now prove the algebraic mechanism underlying the ordinary case of [Scholze, Corollary III.2.19](https://www.math.uni-bonn.de/people/scholze/Torsion.pdf). **The point is not merely that Frobenius is surjective modulo $p$, but that the completed direct limit satisfies an integral perfectoid criterion.**

Let $K=\widehat{\mathbf Q_p(\mu_{p^\infty})}$ as above; it is a perfectoid field. Choose $\varpi\in\mathcal O_K$ with $\varpi^p/p\in\mathcal O_K^\times$. Frobenius on the base induces an isomorphism

$$
\varphi:\mathcal O_K/\varpi\xrightarrow{\sim}\mathcal O_K/p,
\qquad \bar a\longmapsto\overline{a^p}.
$$

### 6.1 A local Frobenius-tower criterion

Choose compatible affine formal charts of the inverse system in §5,

$$
\operatorname{Spf}R_m\subseteq\mathfrak X(m,0),
\qquad
R_0\longrightarrow R_1\longrightarrow R_2\longrightarrow\cdots,
$$

with each $R_m$ $p$-adically complete and flat over $\mathcal O_K$. Put

$$
\boxed{\qquad
R_\infty:=\widehat{\varinjlim_m R_m}^{\,p}.
\qquad}
$$

Here the hat means **$p$-adic completion after taking the direct limit**.

> [!proposition] Proposition 6.1 (Perfectoidness of the ordinary Frobenius tower)
> Assume the transition maps reduce modulo $p$ to the relative Frobenius of the ordinary smooth moduli chart over $\mathbf F_p$. Then absolute Frobenius induces an isomorphism
>
> $$
> \boxed{\quad
> \varphi:R_\infty/\varpi
> \xrightarrow{\sim}R_\infty/p.
> \quad}
> $$
>
> Consequently, $R_\infty$ is an integral perfectoid $\mathcal O_K$-algebra, and $R_\infty[1/p]$ is a perfectoid $K$-algebra.

> [!proof]- Proof
> The formal ordinary locus is the base change of a smooth integral Siegel moduli scheme. On a suitable special-fibre affine chart, denote the $\mathbf F_p$-algebra by $B$. Modulo either $p$ or $\varpi$, the rings $R_m$ are identified locally with $B\otimes_{\mathbf F_p}\mathcal O_K/I$, and the transition maps act as
>
> $$
> b\otimes c\longmapsto b^p\otimes c
> \qquad (I=(p)\text{ or }(\varpi)).
> $$
>
> The first factor is **relative Frobenius**; the coefficients in the second factor remain unchanged. Passing to the direct limit in the geometric factor gives the perfection
>
> $$
> B^{\mathrm{perf}}
> :=\varinjlim_{b\mapsto b^p} B.
> $$
>
> Hence, after the completion (which does not alter these fixed reductions),
>
> $$
> \begin{aligned}
> R_\infty/\varpi
> &\simeq B^{\mathrm{perf}}\otimes_{\mathbf F_p}\mathcal O_K/\varpi,\\
> R_\infty/p
> &\simeq B^{\mathrm{perf}}\otimes_{\mathbf F_p}\mathcal O_K/p.
> \end{aligned}
> $$
>
> Absolute Frobenius between these two rings is the tensor product of the bijective Frobenius on $B^{\mathrm{perf}}$ and the isomorphism
> $\mathcal O_K/\varpi\xrightarrow{\sim}\mathcal O_K/p$. It is therefore an isomorphism.
>
> The ring $R_\infty$ is $p$-adically complete and flat in this standard formal setting. The displayed Frobenius isomorphism is the **integral perfectoid criterion**, so $R_\infty[1/p]$ is a perfectoid $K$-algebra. $\square$

> [!example] Example 6.2 (A coordinate model)
> For the tower
>
> $$
> \mathcal O_K\langle T_0\rangle
> \longrightarrow\mathcal O_K\langle T_1\rangle
> \longrightarrow\cdots,\qquad
> T_m\longmapsto T_{m+1}^p,
> $$
>
> we have
>
> $$
> R_\infty=
> \mathcal O_K\langle T^{1/p^\infty}\rangle^{\wedge},
> \qquad
> R_\infty[1/p]=K\langle T^{1/p^\infty}\rangle,
> $$
>
> the standard perfectoid closed disc with all $p$-power roots of the coordinate.

### 6.2 The perfectoid anticanonical limit

The affinoids $\operatorname{Spa}(R_\infty[1/p],R_\infty)$ from Proposition 6.1 glue along the compatible formal charts to a perfectoid space $\mathcal X_\infty$. Its underlying topology is the inverse limit of those at finite level, and its structure sheaf is obtained from the completed colimit; in Scholze's notation this is a **tilde-limit**:

$$
\mathcal X_\infty\sim\varprojlim_m\mathcal X(m,0).
$$

By Proposition 5.2 the finite-level spaces identify with the anticanonical loci, compatibly with transition maps. Therefore:

> [!theorem] Theorem 6.3 (Perfectoid anticanonical tower over the ordinary locus)
> There exists a perfectoid space $\mathcal X_{\Gamma_0(p^\infty)}(0)_{\mathrm{anti}}$ over $K$ such that
>
> $$
> \boxed{\quad
> \mathcal X_{\Gamma_0(p^\infty)}(0)_{\mathrm{anti}}
> \sim\varprojlim_m
> \mathcal X_{\Gamma_0(p^m)}(0)_{\mathrm{anti}}.
> \quad}
> $$
>
> It is obtained by passing to the generic fibre of the completed direct limit of the canonical Frobenius-lift tower.

> [!remark]- Remark 6.4 (Beyond the ordinary locus)
> The above argument concerns $\epsilon=0$. Scholze extends it to strict neighborhoods using the Hasse invariant: for $0\leq\epsilon<1/2$, transition maps agree with relative Frobenius modulo $p^{1-\epsilon}$, and the corresponding Frobenius isomorphism has the form
>
> $$
> R_\infty/p^{(1-\epsilon)/p}
> \xrightarrow{\ \varphi\ }R_\infty/p^{1-\epsilon}.
> $$
>
> This is the overconvergent anticanonical tower, treated separately in Scholze §III.2 and Caraiani §4.3.

## References

- P. Scholze, [*On torsion in the cohomology of locally symmetric varieties*](https://www.math.uni-bonn.de/people/scholze/Torsion.pdf), Chapter III, §III.2, especially Corollary III.2.19.
- Y. Zhu, [*The Hodge–Tate period map on perfectoid Shimura variety*](https://yhzhumath.github.io/HT%20final.pdf), §3.3 (Frobenius and Verschiebung), §3.5 (translation-invariant differentials), §3.6 (Hasse invariant and iterated Frobenius–Verschiebung), and §§3.7–3.9; A. Caraiani, [*Perfectoid Shimura Varieties*](https://www.ma.imperial.ac.uk/~acaraian/papers/arizona_notes.pdf), §§4.2–4.3, especially Lemma 4.2.2.

[[perfectoid-siegel-variety/anticanonical-tower/index|Back to Anticanonical Tower]]
