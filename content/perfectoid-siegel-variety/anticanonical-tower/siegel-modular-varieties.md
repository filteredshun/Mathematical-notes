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

These conventions follow [Scholze, Chapter III, §III.1](https://www.math.uni-bonn.de/people/scholze/Torsion.pdf) and [Zhu, §3.4](https://ymsc.tsinghua.edu.cn/__local/D/72/98/0BE6DF2EB56ABADC7E9F0EC6804_5E438507_11E279.pdf). Our §2 expands the general orbit language (which Zhu does not spell out) and follows Zhu's precise principal-level formulation in Definition 3.4.2. For $p$-level structures we use Zhu's notation $\Gamma_0$ and $\Gamma_s$ throughout.

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

### 1.1 The Siegel Shimura datum and its complex points

The familiar genus-$g$ Siegel upper half space is

$$
\mathfrak H_g=
\{Z\in M_g(\mathbf C):Z^t=Z,\ \operatorname{Im}Z>0\}.
$$

It is a complex manifold of dimension $g(g+1)/2$. For the Shimura datum of $G=\operatorname{GSp}_{2g}$, we use the **two-component** symmetric domain

$$
\mathfrak H_g^\pm=\mathfrak H_g\sqcup\overline{\mathfrak H_g},
$$

which may equivalently be described by compatible positive and negative complex structures on $V_{\mathbf R}$, or by the corresponding conjugacy class of morphisms $h:\mathbb S\to G_{\mathbf R}$. The positive component yields principally polarized complex abelian varieties as complex tori. The two components are useful when describing the full action of $G(\mathbf Q)$.

Fix a sufficiently small compact open subgroup

$$
K=K^pK_p\subset G(\mathbf A_f),\qquad
K_p=G(\mathbf Z_p),\qquad
K^p\subset G(\mathbf A_f^p).
$$

> [!theorem] Theorem 1.1 (Shimura–Deligne; complex uniformization)
> The Siegel Shimura datum $(G,\mathfrak H_g^\pm)$ has reflex field $\mathbf Q$ and a canonical model $X_{K,\mathbf Q}$ over $\mathbf Q$. Its complex analytification satisfies
>
> $$
> \boxed{\quad
> X_{K,\mathbf Q}(\mathbf C)
> \simeq
> G(\mathbf Q)\backslash
> \bigl(\mathfrak H_g^\pm\times G(\mathbf A_f)/K\bigr).
> \quad}
> \tag{1.1}
> $$
>
> Here $G(\mathbf Q)$ acts diagonally on both factors. The algebraic variety $X_{K,\mathbf Q}$ is identified with the characteristic-zero Siegel moduli variety described below.

> [!remark]- Remark 1.2 (What does a complex point represent?)
> A point of $\mathfrak H_g$ yields a principally polarized complex torus $A_Z=\mathbf C^g/(\mathbf Z^g+Z\mathbf Z^g)$. The finite-adelic coordinate $g_fK$ records the finite-adelic level (up to the $K$-action); quotienting by $G(\mathbf Q)$ accounts for changing the rational symplectic coordinates. This is a conceptual description of (1.1), not a replacement for the scheme-theoretic moduli problem over a general base.

### 1.2 The smooth integral model at hyperspecial $p$-level

The preceding Shimura–Deligne statement concerns a variety **over $\mathbf Q$**. Its extension over $\mathbf Z_{(p)}$ uses the algebraic geometry of the Siegel moduli problem; it is not simply a consequence of complex uniformization.

> [!theorem] Theorem 1.3 (Mumford; Siegel moduli over $\mathbf Z_{(p)}$)
> Suppose $K^p\subset G(\widehat{\mathbf Z}^{\,p})$ is sufficiently small, for instance contained in the principal tame congruence subgroup of some level $N\geq3$ prime to $p$, and take $K_p=G(\mathbf Z_p)$. Then there is a smooth quasi-projective scheme
>
> $$
> X_{K,\mathbf Z_{(p)}}\longrightarrow\operatorname{Spec}\mathbf Z_{(p)},
> \qquad
> \dim_{\mathrm{rel}}X_{K,\mathbf Z_{(p)}}=\frac{g(g+1)}2,
> $$
>
> representing the functor
>
> $$
> \boxed{\quad
> S\longmapsto
> \{(A,\lambda,\eta^p)/S\}/\cong,
> \quad}
> \tag{1.2}
> $$
>
> where $A/S$ is a projective abelian scheme of relative dimension $g$, $\lambda:A\xrightarrow{\sim}A^\vee$ is a principal polarization, and $\eta^p$ is a $K^p$-level structure. Its generic fibre is $X_{K,\mathbf Q}$.

> [!proof]- Reference and scope
> We use this representability and smoothness theorem as a standard input, following Zhu, Theorem 3.4.1. For principal tame level $N\geq3$ it is the fine moduli scheme of principally polarized abelian schemes with full prime-to-$p$ level-$N$ data; its deformation theory gives smoothness and the stated dimension. The identification of its generic fibre with the Shimura variety of Theorem 1.1 is Zhu, Theorem 3.4.3, attributed to Shimura and Deligne.
>
> The hypothesis $K_p=G(\mathbf Z_p)$ is essential in the present discussion: it is the **hyperspecial** level at $p$. When we later impose $\Gamma_0(p^m)$, $\Gamma_s(p^m)$, or $\Gamma(p^m)$, we first work with the corresponding **generic-fibre** covers. A smooth integral model over $\mathbf Z_{(p)}$ is not being asserted for those levels.

Thus the notation $X_{K,\mathbf Z_{(p)}}$ refers to the integral moduli scheme, whereas $X_{K,\mathbf Q}$ is its generic fibre and admits the adelic uniformization (1.1).

**Our next task** is to explain the symbol $\eta^p$ in (1.2). This is a $K^p$-orbit of prime-to-$p$ symplectic-similitude trivializations, and in the principal tame-level case Zhu writes it explicitly as $(\eta_N,t_N)$.

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

## 3. Changing the $p$-level: first over $\mathbf Q$

Fix the prime-to-$p$ subgroup $K^p$ and put $K_p=G(\mathbf Z_p)$. In this section the deep $p$-level schemes are **defined over $\mathbf Q$ (or over $\mathbf Q_p$ after base change)**, not over $\mathbf Z_{(p)}$. Over characteristic $0$, $A[p^m]$ is finite étale. A full $p^m$-level trivialization identifies the standard symplectic module

$$
M_m=(\mathbf Z/p^m\mathbf Z)^{2g}
$$

with $A[p^m]$, compatibly with the Weil pairing up to its cyclotomic similitude. It is convenient to regard such trivializations as a torsor under $G(\mathbf Z/p^m\mathbf Z)$ (with the cyclotomic component understood).

For an open subgroup $U\subseteq G(\mathbf Z_p)$ containing $\Gamma(p^m)$, a **$U$-level structure** is the $U$-orbit of a full trivialization. The corresponding smooth Shimura variety $X_{K^pU,\mathbf Q}$ is a **finite étale cover of the hyperspecial generic fibre** $X_{K^pG(\mathbf Z_p),\mathbf Q}$, as in Zhu §3.4. This does not assert that the same moduli functor has a smooth model over $\mathbf Z_{(p)}$.

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
\Gamma_0(p^m)
 &=\left\{\gamma\in G(\mathbf Z_p):\gamma\equiv
 \begin{pmatrix}*&*\\0&*\end{pmatrix}\pmod{p^m}\right\},\\[2mm]
\Gamma_s(p^m)
 &=\left\{\gamma\in\Gamma_0(p^m):\nu(\gamma)\equiv1\pmod{p^m}\right\}.
\end{aligned}
$$

> [!proposition] Proposition 3.1 (What the levels parametrize)
> On geometric points in characteristic $0$, together with the fixed prime-to-$p$ structure $\eta^p$, the corresponding information is:
>
> 1. **Full level $\Gamma(p^m)$:** a complete symplectic-similitude frame of $A[p^m]$, including the cyclotomic pairing identification.
> 2. **Parahoric level $\Gamma_0(p^m)$:** a maximal isotropic finite étale subgroup $D\subset A[p^m]$, geometrically isomorphic to $(\mathbf Z/p^m\mathbf Z)^g$.
> 3. **Cyclotomic refinement $\Gamma_s(p^m)$:** the pair $(D,t_p)$, where $t_p:\mu_{p^m}\xrightarrow{\sim}\mathbf Z/p^m\mathbf Z$ trivializes the Weil-pairing target.

> [!proof]- Why this follows from the orbit description
> Under a full level trivialization $\alpha_m:M_m\xrightarrow{\sim}A[p^m]$, let $D=\alpha_m(L_0)$. A matrix stabilizes $L_0$ precisely when its lower-left block is zero: this gives $\Gamma_0$.
>
> Modulo $\Gamma_s$, the subgroup $D$ is fixed and the similitude character is $1$ modulo $p^m$, so the induced cyclotomic trivialization $t_p$ is fixed as well.
>
> Modulo $\Gamma(p^m)$ no such change remains; the whole frame is remembered. $\square$

For $g=1$, $\Gamma_0(p^m)$ remembers a cyclic subgroup of order $p^m$, while $\Gamma_s(p^m)$ also remembers a primitive $p^m$-th root of unity (or equivalently $t_p$).

## 4. Forgetting level and the reason for the tower

The inclusions of groups give maps of modular varieties. In particular,

$$
X_{\Gamma(p^m)}
 \longrightarrow X_{\Gamma_s(p^m)}
 \longrightarrow X_{\Gamma_0(p^m)}
 \longrightarrow X.
$$

These are finite étale maps **over the generic fibre** (write $X_U=X_{K^pU,\mathbf Q}$). In the $\Gamma_0$-tower the transition map has the especially simple moduli description

$$
(A,\lambda,\eta^p,D_{m+1})
\longmapsto
(A,\lambda,\eta^p,D_{m+1}[p^m]).
$$

The corresponding full-level map reduces a basis modulo $p^m$. These maps become the inverse system in which Scholze constructs a perfectoid space.

> [!remark]- Remark 4.1 (Why $\Gamma_0$ comes first)
> The anticanonical tower is initially constructed at $\Gamma_0$-level because the distinguished subgroup $D_m$ can be compared directly with the canonical subgroup of $A[p^m]$. The crucial anticanonical condition says that its first-level part is transverse to the canonical subgroup. This is much more transparent in terms of subgroups than in terms of full symplectic bases.

## 5. Deep $p$-level structures on the generic fibre

In the construction under discussion, the $p$-level moduli spaces are introduced **over $\mathbf Q$**, or after base change over $\mathbf Q_p$. For $U=\Gamma(p^m),\Gamma_s(p^m),\Gamma_0(p^m)$, the levels give finite étale maps

$$
X_{K^p\Gamma(p^m),\mathbf Q}
\longrightarrow X_{K^p\Gamma_s(p^m),\mathbf Q}
\longrightarrow X_{K^p\Gamma_0(p^m),\mathbf Q}
\longrightarrow X_{K^pG(\mathbf Z_p),\mathbf Q}.
$$

Their moduli data respectively consist of a full $p^m$-level frame (with its Weil-pairing trivialization), a Lagrangian subgroup $D$ together with cyclotomic trivialization $t_{p^m}$, and just $D$. These descriptions are straightforward because $A[p^m]$ is finite étale in characteristic zero.

**We are not asserting that deep-level integral models do not exist.** Rather, a naive full-level isomorphism from a constant étale group fails to describe $A[p^m]$ in characteristic $p$. Scholze's approach uses the analytic generic-fibre covers over the good-reduction locus, instead of requiring a detailed study of their entire integral models.

> [!remark]- Remark 5.1 (Drinfeld integral level structures)
> To see how full $p$-level can nevertheless be extended integrally, consider an elliptic curve $E/S$ where $p$ may not be invertible. A **Drinfeld full level-$p^m$ structure** is a homomorphism
>
> $$
> \alpha:(\mathbf Z/p^m\mathbf Z)^2\to E[p^m](S),
> \qquad (a,b)\mapsto aP+bQ,
> $$
>
> for which, as effective relative Cartier divisors,
>
> $$
> \boxed{\quad
> E[p^m]=\sum_{(a,b)\in(\mathbf Z/p^m\mathbf Z)^2}[aP+bQ].
> \quad}
> $$
>
> When $p$ is invertible, this says precisely that $P,Q$ form a full basis of the étale torsion. In characteristic $p$, repeated sections are permitted: for an ordinary elliptic curve over an algebraically closed field, $E[p]\simeq\mu_p\oplus\mathbf Z/p\mathbf Z$, and with $Q$ generating the étale factor, the map $(a,b)\mapsto bQ$ satisfies
>
> $$
> \sum_{a,b\in\mathbf F_p}[bQ]
> =p\sum_{b\in\mathbf F_p}[bQ]=E[p].
> $$
>
> Thus scheme-theoretic multiplicities replace distinct geometric torsion points. The Cartier-divisor formula is special to dimension one; higher-dimensional integral level structures require a different formulation. See Katz–Mazur, *Arithmetic Moduli of Elliptic Curves*.

## 6. Transition to the good-reduction locus

The hyperspecial variety $X=X_{K^pG(\mathbf Z_p)}$ has a smooth integral model at $p$. The deeper $p$-level varieties in §§3–5, by contrast, have deliberately been introduced on their characteristic-zero generic fibres. This is a choice of setup, not a nonexistence assertion for integral models.

We will next work with the $p$-adic completion $\mathfrak X$ of the integral Siegel moduli space and its adic generic fibre $\mathcal X$. Its geometric points are precisely those for which the underlying abelian variety has good reduction. This is explained in [[perfectoid-siegel-variety/anticanonical-tower/good-reduction-locus|Good Reduction and the Formal Generic Fibre]].

For the higher $p$-levels, **good reduction means good reduction of the underlying abelian variety**, not extension of the chosen full $p^m$-level trivialization as a constant étale group scheme.

---

**References.** See also A. Caraiani, [*Perfectoid Shimura Varieties*](https://www.ma.imperial.ac.uk/~acaraian/papers/arizona_notes.pdf), §4, and Katz–Mazur, *Arithmetic Moduli of Elliptic Curves*, for the integral Drinfeld-level comparison. P. Scholze, [*On torsion in the cohomology of locally symmetric varieties*](https://www.math.uni-bonn.de/people/scholze/Torsion.pdf), §III.1, Definition III.1.1; Y. Zhu, [*The Hodge–Tate period map on perfectoid Shimura variety*](https://ymsc.tsinghua.edu.cn/__local/D/72/98/0BE6DF2EB56ABADC7E9F0EC6804_5E438507_11E279.pdf), §3.4, especially Theorem 3.4.1, Definition 3.4.2, and the discussion following Theorem 3.4.3.

[[perfectoid-siegel-variety/anticanonical-tower/index|Back to Anticanonical Tower]]
