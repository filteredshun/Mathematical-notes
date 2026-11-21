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

Before defining the good-reduction locus, we recall what the Siegel modular variety parametrizes, and what changes when we add level at $p$. The essential point is that a **level structure is an orbit of trivializations**: changing the subgroup $K_p$ changes how much of a symplectic basis of $A[p^m]$ we remember.

These conventions follow [Scholze, Chapter III, §III.1](https://www.math.uni-bonn.de/people/scholze/Torsion.pdf) and [Zhu, §3.4](https://ymsc.tsinghua.edu.cn/__local/D/72/98/0BE6DF2EB56ABADC7E9F0EC6804_5E438507_11E279.pdf). One small distinction between their definitions of $\Gamma_0$ is recorded explicitly in §5 below.

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

## 2. What is a $K^p$-orbit level structure?

For a geometric point $A/\overline{k}$ in characteristic $0$, set

$$
\widehat T^{\,p}(A)=\prod_{\ell\neq p}T_\ell(A),\qquad
\widehat{\mathbf Z}^{\,p}=\prod_{\ell\neq p}\mathbf Z_\ell,\qquad
\mathbf A_f^p=\widehat{\mathbf Z}^{\,p}[1/\text{primes}\neq p].
$$

More precisely, one usually takes the prime-to-$p$ rational Tate module
$V^p(A)=\widehat T^{\,p}(A)\otimes_{\widehat{\mathbf Z}^{\,p}}\mathbf A_f^p$.
A prime-to-$p$ trivialization is a compatible symplectic **similitude**

$$
\alpha^p: V\otimes_{\mathbf Q}\mathbf A_f^p
  \xrightarrow{\sim} V^p(A)
$$

(with the usual cyclotomic twist in the target pairing). We quotient by the right action of $K^p$:

$$
\boxed{\quad
\eta^p=[\alpha^p]_{K^p}.
\quad}
$$

Thus $\eta^p$ does **not** specify a distinguished basis. It remembers a trivialization only modulo the allowed changes of basis in $K^p$. Over a general base scheme this is formulated using the corresponding étale sheaf of trivializations, rather than choosing bases pointwise.

> [!example] Example 2.1 (Principal tame level)
> For $K^p$ the prime-to-$p$ principal congruence subgroup of level $N$, the orbit amounts to specifying a full symplectic-similitude level-$N$ structure. In Zhu's explicit convention, this is a pair
>
> $$
> \eta_N:A[N]\xrightarrow{\sim}(\mathbf Z/N\mathbf Z)^{2g},
> \qquad t_N:\mu_N\xrightarrow{\sim}\mathbf Z/N\mathbf Z,
> $$
>
> such that $\eta_N$ identifies $t_N\circ e_{\lambda,N}$ with the standard pairing $\psi$ modulo $N$. See Zhu, Definition 3.4.2.
>
> The choice of $t_N$ is the cyclotomic component; suppressing it is convenient shorthand but is not literally the same moduli problem over the original base.

Fix this tame level $K^p$ from now on. With hyperspecial level $G(\mathbf Z_p)$ at $p$, we write simply $X=X_{g,K^p}$.

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
