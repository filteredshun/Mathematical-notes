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
> 3. $\operatorname{Ha}(A/k)\neq0$;
> 4. $\ker(V:A^{(p)}\to A)$ is étale.
>
> In particular, for an abelian scheme $A/S$ in characteristic $p$, all geometric fibres are ordinary precisely when the Hasse invariant is nowhere vanishing, equivalently an invertible section of $\omega_{A/S}^{\otimes(p-1)}$.

> [!proof]- Proof (via Frobenius and Verschiebung)
> Since $F:A\to A^{(p)}$ is a faithfully flat isogeny of degree $p^g$, the relation $V\circ F=[p]_A$ gives a short exact sequence **of finite flat group schemes (in the fppf topology)**
>
> $$
> \boxed{\quad
> 0\longrightarrow\ker F\longrightarrow A[p]
> \xrightarrow{\ F\ }\ker V\longrightarrow0.
> \quad}
> $$
>
> Indeed, the kernel of $F$ on $A[p]$ is $\ker F$, and for $y\in\ker V$, fppf-locally choose $x\in A$ with $F(x)=y$. Then $[p]x=V(F(x))=0$, so $x\in A[p]$.
>
> Relative Frobenius is radicial, so $\ker F$ is **connected** over $k$. Consequently, any morphism from $\ker F$ to a finite étale group scheme is trivial. The displayed exact sequence therefore identifies the **maximal étale quotient** of $A[p]$ with that of $\ker V$:
>
> $$
> A[p]^{\mathrm{ét}}\simeq(\ker V)^{\mathrm{ét}}.
> $$
>
> Since $\ker V$ has rank $p^g$, its maximal étale quotient has rank $p^g$ if and only if $\ker V$ itself is étale. This proves (2) $\Longleftrightarrow$ (4). Over the algebraically closed field $k$, the $k$-points of a finite group scheme are precisely the points of its étale quotient, proving (1) $\Longleftrightarrow$ (2).
>
> Finally, $V$ is a finite locally free morphism between smooth abelian varieties of the same dimension. It is étale if and only if its differential at the identity is an isomorphism, since translations identify its differential at all points. Equivalently,
>
> $$
> V^*:\mathbb E_{A/k}\longrightarrow\mathbb E_{A^{(p)}/k}
> $$
>
> is an isomorphism. This holds exactly when $\det(V^*)\neq0$, namely $\operatorname{Ha}(A/k)\neq0$. As $V$ is an isogeny, $V$ is étale if and only if its finite kernel $\ker V$ is étale. Hence (3) $\Longleftrightarrow$ (4), completing the proof. $\square$

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
> In the supersingular case, the étale quotient is trivial and $\operatorname{Ha}(E/k)=0$.
>
> **Caution:** the conclusion is **not** $\ker V=E[p]$; $\ker V$ has rank $p$, whereas $E[p]$ has rank $p^2$.

### Iterated Frobenius and Verschiebung

For $m\geq1$, write $A^{(p^m)}$ for the $m$-fold Frobenius twist, and let

$
F^m:A\longrightarrow A^{(p^m)},\qquad
V^m:A^{(p^m)}\longrightarrow A
$

be the successive compositions of relative Frobenius and Verschiebung (with the appropriate twists at each stage). In particular,

$
V^m\circ F^m=[p^m]_A,\qquad
F^m\circ V^m=[p^m]_{A^{(p^m)}}.
$

> [!proposition] Proposition 3.4 (The $p^m$-torsion sequence)
> There is a short exact sequence of finite locally free group schemes, exact as fppf sheaves,
>
> $
> \boxed{\quad
> 0\longrightarrow\ker F^m
> \longrightarrow A[p^m]
> \xrightarrow{\ F^m\ }\ker V^m
> \longrightarrow0.
> \quad}
> $
>
> Both $\ker F^m$ and $\ker V^m$ have rank $p^{mg}$. Over an algebraically closed field of characteristic $p$, $\ker F^m$ is connected. If $A$ is ordinary, then $\ker V^m$ is finite étale.

> [!proof]- Proof
> The compositions $F^m$ and $V^m$ have degree $p^{mg}$; their identities follow inductively from $VF=FV=[p]$ on the appropriate Frobenius twists.
>
> Since $F^m$ is faithfully flat and $V^mF^m=[p^m]$, the same fppf-lifting argument as for $m=1$ gives the asserted exact sequence. Over an algebraically closed field, relative Frobenius is radicial, hence $F^m$ is radicial and $\ker F^m$ is connected.
>
> If $A$ is ordinary, $V$ is étale by Proposition 3.2. Frobenius twists of ordinary abelian varieties remain ordinary (equivalently, the Hasse invariant remains nonzero after Frobenius base change). Thus each successive Verschiebung is étale; so is their composite $V^m$, and therefore its kernel $\ker V^m$ is finite étale. $\square$

The significance for the next construction is that, **over an ordinary special fibre**, $\ker F^m$ is the connected part of $A[p^m]$, and the quotient $\ker V^m$ is étale. Over a suitable $p$-adically complete integral base, the finite étale quotient lifts uniquely; its kernel in the lifted $p^m$-torsion gives the **level-$m$ canonical subgroup**. The lifting construction is given in the next section.

## 4. Canonical Subgroup

We now lift the connected subgroup $\ker F^n$ from an **ordinary special fibre** to characteristic zero, as in Zhu §3.7 and Caraiani §4.2.

Let $R$ be a $p$-adically complete, flat $\mathbf Z_p$-algebra and $A/\operatorname{Spec}R$ an abelian scheme of relative dimension $g$. Put $R_0=R/pR$ and $A_0=A\times_R R_0$, and assume that $A_0$ is ordinary (equivalently, its Hasse invariant is invertible). The preceding section gives, for each $n\geq1$, an exact sequence over $R_0$:

$
0\longrightarrow\ker(F^n_{A_0/R_0})
\longrightarrow A_0[p^n]
\xrightarrow{F^n}\ker(V^n_{A_0/R_0})
\longrightarrow0.
$

The last term is finite étale of rank $p^{ng}$. This allows us to lift the sequence.

> [!proposition] Proposition 4.1 (Canonical subgroup over the ordinary locus; Zhu §3.7)
> Under the assumptions above, for every $n\geq1$ there is a **unique finite locally free closed subgroup scheme**
>
> $
> \boxed{\quad C_n(A)\subset A[p^n]\quad}
> $
>
> whose reduction modulo $p$ is $\ker(F^n_{A_0/R_0})$. It has rank $p^{ng}$ and fits into a canonical exact sequence
>
> $
> \boxed{\quad
> 0\longrightarrow C_n(A)\longrightarrow A[p^n]
> \longrightarrow\mathcal G_n\longrightarrow0,
> \quad}
> $
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

$
\boxed{
\ker V^n\ \text{finite étale}
\quad\Longrightarrow\quad
\mathcal G_n\ \text{lifts uniquely}
\quad\Longrightarrow\quad
C_n(A)=\ker(A[p^n]\to\mathcal G_n).
}
$

> [!remark]- Remark 4.2 (Ordinary versus near-ordinary)
> The construction above uses an **ordinary reduction modulo $p$** and works at every level $n$. Canonical subgroups on larger Hasse-invariant neighborhoods require a separate canonical subgroup theorem, with restrictions on the Hasse height. We will distinguish these two settings when constructing the anticanonical tower.

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
- Y. Zhu, [*The Hodge–Tate period map on perfectoid Shimura variety*](https://yhzhumath.github.io/HT%20final.pdf), §3.3 (Frobenius and Verschiebung), §3.5 (translation-invariant differentials), §3.6 (Hasse invariant and iterated Frobenius–Verschiebung), and §§3.7–3.9; A. Caraiani, [*Perfectoid Shimura Varieties*](https://www.ma.imperial.ac.uk/~acaraian/papers/arizona_notes.pdf), §4.2.

[[perfectoid-siegel-variety/anticanonical-tower/index|Back to Anticanonical Tower]]
