---
title: Siegel Modular Varieties and Level Structures
description: A short review of prime-to-p orbits and Gamma-level moduli problems
tags:
  - siegel
  - level-structures
  - perfectoid
---

# Siegel Modular Varieties and Level Structures

*Preliminaries for the anticanonical tower*

Before defining the good-reduction locus, we recall what the Siegel modular variety parametrizes, and what changes when we add level at $p$. The essential point is that a **level structure is an orbit of trivializations**: changing the subgroup $K_p$ changes how much of a symplectic basis of $A[p^m]$ we remember, while the tame subgroup $K^p$ is fixed.

These conventions follow [Scholze, Chapter III, §III.1](https://www.math.uni-bonn.de/people/scholze/Torsion.pdf) and [Zhu, §3.4](https://ymsc.tsinghua.edu.cn/__local/D/72/98/0BE6DF2EB56ABADC7E9F0EC6804_5E438507_11E279.pdf). One small distinction between their definitions of $\Gamma_0$ is recorded explicitly in §5 below. Our §2 expands the general orbit language, which Zhu deliberately omits, and follows his exact principal-level convention in Definition 3.4.2.

## 1. The symplectic space and the moduli problem

Fix $g\geq 1$ and a prime $p$. Let

$$
V=\mathbf Q^{2g},\qquad
\Lambda=\mathbf Z^{2g},\qquad
J=\begin{pmatrix}0&I_g\\-I_g&0\end{pmatrix},
\qquad \psi(x,y)=x^tJy.
$$

The lattice $\Lambda$ is self-dual. The symplectic similitude group is

$$
G=\operatorname{GSp}(V,\psi),\qquad
G(R)=\{h\in\operatorname{GL}_{2g}(R):h^tJh=\nu(h)J\},
$$

where $\nu:G\to\mathbf G_m$ is the *similitude character*.

A principally polarized abelian scheme $(A,\lambda)$ of relative dimension $g$ has, for each $n$ invertible on the base, a perfect alternating Weil pairing

$$
e_{\lambda,n}:A[n]\times A[n]\longrightarrow\mu_n.
$$

After choosing a trivialization of $\mu_n$, this makes $A[n]$ into a symplectic $(\mathbf Z/n\mathbf Z)$-module. The ambiguity of that choice is exactly why the group of **similitudes** rather than just $\operatorname{Sp}_{2g}$ naturally appears.

> [!theorem] Theorem 1.1 (Siegel moduli space; Mumford)
> Let $K^p\subset G(\mathbf A_f^p)$ be sufficiently small, for example contained in a principal congruence subgroup of tame level $N\geq 3$ with $(N,p)=1$. There is a smooth quasi-projective moduli scheme $X_{g,K^p}$ over $\mathbf Z_{(p)}$, of relative dimension
>
> $$
> \dim X_{g,K^p}=\frac{g(g+1)}2,
> $$
>
> parametrizing principally polarized abelian schemes $(A,\lambda)$ equipped with a $K^p$-level structure.

> [!proof]- Background
> This representability theorem is used as an input, not reproved here. For a principal tame level $N\geq3$, it is the familiar fine moduli problem of symplectic level-$N$ structures, with the Weil-pairing similitude convention. See Zhu, Theorem 3.4.1.

## 2. Prime-to-$p$ level: from an orbit to Zhu's explicit definition

There are two descriptions of the same idea which should **not** be confused:

1. **General tame level** $K^p$: an orbit $\eta^p=[\alpha^p]_{K^p}$ of compatible prime-to-$p$ trivializations.
2. **Principal tame level** $K^p=\Gamma(N)^p$: an explicit pair $(\eta_N,t_N)$ of isomorphisms of finite étale group schemes.

The second is precisely the formulation in **Zhu, Definition 3.4.2**. Zhu first states the general $K^p$-level moduli problem in Theorem 3.4.1, says that he will omit the general definition, and then spells out the principal level. We explain how the orbit viewpoint leads to his pair.

### 2.1 The Weil pairing takes values in $\mu_N$

For a principally polarized abelian scheme $(A,\lambda)/S$ and any $N$ invertible on $S$, the canonical pairing between an abelian scheme and its dual, composed with the polarization, gives

$$
\begin{aligned}
e_{\lambda,N}: A[N]\times_S A[N]
&\xrightarrow{(\mathrm{id},\,\lambda)}
 A[N]\times_S A^\vee[N]\\
&\xrightarrow{\ e_N\ }\mu_{N,S}.
\end{aligned}
$$

It is a perfect alternating pairing. The distinction between the target $\mu_{N,S}$ and the **constant** group scheme $(\mathbf Z/N\mathbf Z)_S$ is crucial: no primitive root of unity has been globally chosen.

> [!remark]- Remark 2.1 (Why $\operatorname{GSp}$ and not only $\operatorname{Sp}$?)
> If we change the identification of $\mu_N$ with the constant group $(\mathbf Z/N\mathbf Z)_S$ by multiplication by $u\in(\mathbf Z/N\mathbf Z)^\times$, the resulting standard form is rescaled by $u$. Thus change-of-basis matrices naturally preserve the standard form **up to a unit**:
>
> $$
> \psi(kv,kw)=\nu(k)\psi(v,w).
> $$
>
> This gives $\operatorname{GSp}$, with $\operatorname{Sp}=\ker\nu$ as the subgroup preserving a *fixed* pairing trivialization. Equivalently, on geometric fibres the similitude character of the Galois/étale monodromy representation is the cyclotomic character.

### 2.2 General $K^p$: what exactly is $\alpha^p$?

Write

$$
\widehat{\mathbf Z}^{\,p}=\prod_{\ell\ne p}\mathbf Z_\ell,\qquad
\mathbf A_f^p=\prod_{\ell\ne p}'\mathbf Q_\ell,\qquad
T^pA=\prod_{\ell\ne p}T_\ell A,\qquad
V^pA=T^pA\otimes_{\widehat{\mathbf Z}^{\,p}}\mathbf A_f^p.
$$

The polarization yields a perfect alternating pairing with Tate twist

$$
e_\lambda^p:V^pA\times V^pA\longrightarrow\mathbf A_f^p(1).
$$

For the moment take a geometric point $\bar s$, and choose a compatible trivialization

$$
\boxed{\quad
\alpha^p:V\otimes_\mathbf Q\mathbf A_f^p
\xrightarrow{\ \sim\ }V^pA_{\bar s}.
\quad}
$$

We require it to be a *similitude trivialization*: the transported pairing is a scalar multiple of the standard form $\psi$. Explicitly, there is an $\mathbf A_f^p$-linear isomorphism

$$
c_\alpha:\mathbf A_f^p\xrightarrow{\sim}\mathbf A_f^p(1)
$$

such that

$$
\boxed{\quad
e_\lambda^p(\alpha^p(v),\alpha^p(w))
=c_\alpha\bigl(\psi(v,w)\bigr).
\quad}
\tag{2.1}
$$

If we choose integral trivializations of $T^pA$ instead, the group acting is $G(\widehat{\mathbf Z}^{\,p})$. Below we focus on small $K^p\subseteq G(\widehat{\mathbf Z}^{\,p})$ as in Zhu; arbitrary adelic compact opens can be treated by rational Tate modules and the corresponding lattice/orbit conventions.

**Where does $\alpha^p$ come from?** It is **not canonically supplied by $(A,\lambda)$**. After passing to a geometric fibre, we *choose* one of the compatible frames. It is the extra level data, modulo the equivalence specified by $K^p$.

Given a fixed compact open subgroup $K^p\subset G(\mathbf A_f^p)$, define the **$K^p$-orbit** by

$$
\boxed{\qquad
\eta^p=[\alpha^p]_{K^p}
=\{\alpha^p\circ k:k\in K^p\}.
\qquad}
\tag{2.2}
$$

In particular, $\eta^p$ is **not** an individual basis. It is the class of all bases obtained from a representative $\alpha^p$ by the allowed changes of coordinates.

> [!proposition] Proposition 2.2 (Compatibility with Weil pairing)
> If $\alpha'^p=\alpha^p\circ k$ with $k\in K^p$, then $\alpha'^p$ still satisfies (2.1), but its cyclotomic scalar changes according to
>
> $$
> \boxed{\quad c_{\alpha'}=\nu(k)c_\alpha.\quad}
> $$
>
> Hence the condition of being a compatible similitude trivialization is preserved by the $K^p$-action, though $c_\alpha$ itself need not be fixed on the orbit.

> [!proof]- Proof
> The defining identity for $G=\operatorname{GSp}$ is $\psi(kv,kw)=\nu(k)\psi(v,w)$. Therefore
>
> $$
> \begin{aligned}
> e_\lambda^p(\alpha'^p(v),\alpha'^p(w))
> &=e_\lambda^p(\alpha^p(kv),\alpha^p(kw))\\
> &=c_\alpha(\psi(kv,kw))\\
> &=\nu(k)c_\alpha(\psi(v,w)).
> \end{aligned}
> $$
>
> This is exactly the stated formula. $\square$

### 2.3 Zhu, Definition 3.4.2: the principal tame level

Let $(N,p)=1$, with $N\ge 3$, and put

$$
\Gamma(N)^p=
\ker\!\left(
G(\widehat{\mathbf Z}^{\,p})\longrightarrow G(\mathbf Z/N\mathbf Z)
\right).
$$

A $\Gamma(N)^p$-orbit of **integral** prime-to-$p$ frames remembers precisely their reduction modulo $N$. In the direction of trivialization used by Zhu, this becomes the following.

> [!definition] Definition 2.3 (Full prime-to-$p$ level $N$; Zhu, Definition 3.4.2)
> A level-$\Gamma(N)^p$ structure on a principally polarized abelian scheme $(A,\lambda)/S$ over a $\mathbf Z_{(p)}$-scheme $S$ is a **pair**
>
> $$
> \boxed{
> (\eta_N,t_N),\qquad
> \eta_N:A[N]\xrightarrow{\sim}(\mathbf Z/N\mathbf Z)_S^{2g},
> \qquad
> t_N:\mu_{N,S}\xrightarrow{\sim}(\mathbf Z/N\mathbf Z)_S,
> }
> $$
>
> of isomorphisms of **group schemes over $S$**, satisfying
>
> $$
> \boxed{\quad
> t_N\!\left(e_{\lambda,N}(x,y)\right)
> =\psi_N\!\left(\eta_N(x),\eta_N(y)\right)
> \quad}
> \tag{2.3}
> $$
>
> for all sections $x,y$ locally on $S$. Here $\psi_N$ is the reduction of $\psi$ modulo $N$.

Notice the direction: in §2.2 we chose $\alpha_N:(\mathbf Z/N\mathbf Z)^{2g}\to A[N]$ for ease of taking orbits, while Zhu uses $\eta_N=\alpha_N^{-1}$. The two descriptions agree after reversing the arrow.

> [!proof]- Why the orbit gives the pair $(\eta_N,t_N)$
> Choose an integral frame $\alpha^p$ of $T^pA$ compatible with the pairing. Reduction modulo $N$ gives
>
> $$
> \alpha_N:(\mathbf Z/N\mathbf Z)^{2g}\xrightarrow{\sim}A[N].
> $$
>
> Since the kernel of reduction $G(\widehat{\mathbf Z}^{\,p})\to G(\mathbf Z/N\mathbf Z)$ is $\Gamma(N)^p$, the orbit determines $\alpha_N$ but forgets its particular lift. Set $\eta_N=\alpha_N^{-1}$. The transported Weil pairing is a nondegenerate alternating form proportional to $\psi_N$; its proportionality determines the unique $t_N$ satisfying (2.3). Conversely, an étale-locally defined pair $(\eta_N,t_N)$ admits compatible lifts to full prime-to-$p$ frames, which differ by $\Gamma(N)^p$.
>
> On a general base, these local descriptions descend to the **group-scheme isomorphisms** in Definition 2.3; a chosen global Tate-module basis need not exist. $\square$

### 2.4 What does $t_N$ remember, and what does it forget?

The pairing determines $t_N$ **from** a compatible $\eta_N$, but it does *not* determine $\eta_N$ from $t_N$. Once $t_N$ is fixed, the possible pairing-preserving frames form an $\operatorname{Sp}_{2g}(\mathbf Z/N\mathbf Z)$-torsor (étale locally, when nonempty).

> [!example] Example 2.4 (Elliptic curve)
> Let $E/\bar k$ be an elliptic curve, $P,Q\in E[N]$ a basis, and $\zeta=e_N(P,Q)$ a primitive $N$-th root. The basis $(P,Q)$ determines $t_N(\zeta)=1$.
>
> The different basis $(P,Q+P)$ has the **same** value of $\zeta$, hence the same $t_N$. So does $(Q,-P)$. In the last case even the cyclic subgroup spanned by the first basis vector changes:
>
> $$
> \langle P\rangle\ne\langle Q\rangle.
> $$
>
> Thus $t_N$ records the cyclotomic part, not the full level structure.

> [!remark]- Remark 2.5 (Cyclotomic base)
> As Zhu notes immediately after Definition 3.4.2, the functor of isomorphisms $t_N:\mu_N\simeq\mathbf Z/N\mathbf Z$ is represented by $\operatorname{Spec}\mathbf Z_{(p)}[\zeta_N]$, where $\zeta_N$ denotes a primitive $N$-th root. Consequently a full tame level-$N$ Siegel moduli space carries a natural morphism to this cyclotomic base. This explains why the $t_N$ is not merely optional notation.

### 2.5 General base schemes and the notation $\eta^p$

Over an arbitrary connected base $S$ with $p$ locally nilpotent (or a $\mathbf Z_{(p)}$-base), the prime-to-$p$ Tate module is a lisse étale sheaf, not necessarily globally constant. The geometric-fibre frame torsor is therefore endowed with $\pi_1(S,\bar s)$-descent data.

A **global $K^p$-level structure** is a global section of the appropriate *étale sheaf of $K^p$-orbits of compatible frames*, subject to the usual integral/rational conventions. One should not assume it is represented by a global trivialization $\alpha^p$.

Thus the notation

$$
\boxed{\qquad
(A,\lambda,\eta^p),\qquad \eta^p=[\alpha^p]_{K^p},
\qquad}
$$

means that the moduli problem remembers **one orbit**, not a globally singled-out representative. When $K^p=\Gamma(N)^p$, the precise global interpretation is the pair $(\eta_N,t_N)$ in Definition 2.3, exactly as in Zhu's notes.

**We will fix this tame level $\eta^p$ in the sequel.** The tower varies only the level $K_p\subset G(\mathbf Z_p)$ at the prime $p$.

## 3. Adding level at $p$ by taking an orbit

Now work in characteristic $0$, where $A[p^m]$ is finite étale. A full $p^m$-level trivialization identifies the standard symplectic module

$$
M_m=(\mathbf Z/p^m\mathbf Z)^{2g}
$$

with $A[p^m]$, compatibly with the Weil pairing up to its cyclotomic similitude. It is convenient to regard such trivializations as a torsor under $G(\mathbf Z/p^m\mathbf Z)$ (with the cyclotomic component understood).

Given $K_p\subset G(\mathbf Z_p)$ containing the principal congruence subgroup $\Gamma(p^m)$, a **$K_p$-level structure** is the $K_p$-orbit of a full trivialization. The resulting finite-level Shimura variety, over the appropriate characteristic-zero base, is denoted $X_{K_pK^p}$.

The standard Lagrangian submodule is

$$
L_0=(\mathbf Z/p^m\mathbf Z)^g\oplus0
\ \subset M_m.
$$

We use block matrices relative to $M_m=L_0\oplus L_0^\vee$. The three most useful congruence groups are

$$
\begin{aligned}
\Gamma(p^m)
 &=\left\{\gamma\in G(\mathbf Z_p):\gamma\equiv
 \begin{pmatrix}I_g&0\\0&I_g\end{pmatrix}\pmod{p^m}\right\},\\[2mm]
\Gamma_0^{\mathrm{std}}(p^m)
 &=\left\{\gamma\in G(\mathbf Z_p):\gamma\equiv
 \begin{pmatrix}*&*\\0&*\end{pmatrix}\pmod{p^m}\right\},\\[2mm]
\Gamma_1(p^m)
 &=\left\{\gamma\in G(\mathbf Z_p):\gamma\equiv
 \begin{pmatrix}I_g&*\\0&I_g\end{pmatrix}\pmod{p^m}\right\}.
\end{aligned}
$$

> [!proposition] Proposition 3.1 (What the levels parametrize)
> On geometric points in characteristic $0$, together with the fixed prime-to-$p$ structure $\eta^p$, the corresponding information is:
>
> 1. **Full level $\Gamma(p^m)$:** a complete symplectic-similitude frame of $A[p^m]$, including the cyclotomic pairing identification.
> 2. **Parahoric level $\Gamma_0^{\mathrm{std}}(p^m)$:** a maximal isotropic finite étale subgroup $D\subset A[p^m]$, geometrically isomorphic to $(\mathbf Z/p^m\mathbf Z)^g$.
> 3. **Level $\Gamma_1(p^m)$:** the refinement of the $\Gamma_0$-data obtained by retaining a specified frame of $D$ **and** the induced compatible frame of $A[p^m]/D$. Equivalently, it is the orbit of a full symplectic-similitude frame under the upper-unitriangular block subgroup displayed above.
>
> In the last item, the compatibility includes the Weil-pairing/cyclotomic data; saying merely “choose a basis of $D$” can omit this extra datum.

> [!proof]- Why this follows from the orbit description
> Under a full level trivialization $\alpha_m:M_m\xrightarrow{\sim}A[p^m]$, let $D=\alpha_m(L_0)$. A matrix stabilizes $L_0$ precisely when its lower-left block is zero: this gives $\Gamma_0^{\mathrm{std}}$.
>
> Modulo $\Gamma_1$, the first $g$ standard vectors (and the quotient classes of the last $g$ vectors) are fixed. Their images give the two compatible frames in (3). The remaining upper-right block changes the lifts of the quotient frame by elements of $D$, which is exactly the ambiguity we wish to forget.
>
> Modulo $\Gamma(p^m)$ no such change remains; the whole frame is remembered. $\square$

For $g=1$, $\Gamma_0(p^m)$ remembers a cyclic subgroup of order $p^m$, while $\Gamma_1(p^m)$ amounts to remembering a generator, with the above conventions. This is the classical modular-curve picture.

## 4. Forgetting level and the reason for the tower

The inclusions of groups give maps of modular varieties. In particular,

$$
X_{\Gamma(p^m)}
 \longrightarrow X_{\Gamma_1(p^m)}
 \longrightarrow X_{\Gamma_0^{\mathrm{std}}(p^m)}
 \longrightarrow X.
$$

All of these are finite étale in characteristic $0$. In the $\Gamma_0$-tower the transition map has the especially simple moduli description

$$
(A,\lambda,\eta^p,D_{m+1})
\longmapsto
(A,\lambda,\eta^p,D_{m+1}[p^m]).
$$

The corresponding full-level map reduces a basis modulo $p^m$. These maps become the inverse system in which Scholze constructs a perfectoid space.

> [!remark]- Remark 4.1 (Why $\Gamma_0$ comes first)
> The anticanonical tower is initially constructed at $\Gamma_0$-level because the distinguished subgroup $D_m$ can be compared directly with the canonical subgroup of $A[p^m]$. The crucial anticanonical condition says that its first-level part is transverse to the canonical subgroup. This is much more transparent in terms of subgroups than in terms of full symplectic bases.

## 5. A convention in Scholze versus Zhu

There is a **genuine notational distinction** that matters in comparing the references.

Scholze's Definition III.1.1 uses the name $\Gamma_0(p^m)$ for the upper-block-triangular group with an **additional condition**

$$
\det(\gamma)\equiv1\pmod{p^m}.
$$

Zhu, §3.4, separates ordinary $\Gamma_0(p^m)$ from a special subgroup

$$
\Gamma_s(p^m)=
\left\{\gamma\in\Gamma_0^{\mathrm{std}}(p^m):
\nu(\gamma)\equiv1\pmod{p^m}\right\}.
$$

Zhu explicitly notes that $\det$ in Scholze's displayed definition may be a typo for $\nu$. Indeed in $\operatorname{GSp}_{2g}$,

$$
\det(\gamma)=\nu(\gamma)^g,
$$

so these two congruences are **not equivalent for arbitrary $g$**. We do not silently identify them.

> [!remark]- Remark 5.1 (Extra cyclotomic datum)
> For Zhu's $\Gamma_s(p^m)$, the moduli problem over characteristic $0$ is
>
> $$
> (A,\lambda,\eta^p,D,t_p),
> \qquad t_p:\mu_{p^m}\xrightarrow{\sim}\mathbf Z/p^m\mathbf Z,
> $$
>
> where $D$ is maximal isotropic as above. Thus the map
> $X_{\Gamma_s(p^m)}\to X_{\Gamma_0^{\mathrm{std}}(p^m)}$
> forgets $t_p$, and $X_{\Gamma_s(p^m)}$ naturally lives over the $p^m$-cyclotomic extension.
>
> In the remainder of these notes we will **write $\Gamma_0^{\mathrm{std}}$ for the subgroup-only level**, and explicitly name $\Gamma_s$ when the cyclotomic refinement is needed. Statements taken directly from Scholze will retain his notation with a warning where necessary.

## 6. Transition to good reduction

The basic variety $X$ has a smooth integral model at $p$ because its level at $p$ is hyperspecial. By contrast, in the discussion above, the finite $p$-power level spaces were introduced over characteristic $0$.

We will next work with the $p$-adic completion $\mathfrak X$ of the integral Siegel moduli space and its adic generic fibre $\mathcal X$. Its geometric points are precisely those for which the underlying abelian variety has good reduction. This is explained in [[perfectoid-siegel-variety/anticanonical-tower/good-reduction-locus|Good Reduction and the Formal Generic Fibre]].

For the higher $p$-levels, **good reduction means good reduction of the underlying abelian variety**, not extension of the chosen full $p^m$-level trivialization as a constant étale group scheme.

---

**References.** P. Scholze, [*On torsion in the cohomology of locally symmetric varieties*](https://www.math.uni-bonn.de/people/scholze/Torsion.pdf), §III.1, Definition III.1.1; Y. Zhu, [*The Hodge–Tate period map on perfectoid Shimura variety*](https://ymsc.tsinghua.edu.cn/__local/D/72/98/0BE6DF2EB56ABADC7E9F0EC6804_5E438507_11E279.pdf), §3.4, especially Theorem 3.4.1, Definition 3.4.2, and the discussion following Theorem 3.4.3.

[[perfectoid-siegel-variety/anticanonical-tower/index|Back to Anticanonical Tower]]
