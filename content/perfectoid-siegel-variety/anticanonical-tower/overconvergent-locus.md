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

The first section follows **Yihang Zhu, [*The Hodge–Tate Period Map on Perfectoid Shimura Variety*, §3.9.1](https://yhzhumath.github.io/HT%20final.pdf)** (PDF pp. 44–48). We retain Zhu's original numbering **3.9.1–3.9.11**. This is a *statement-only reference sheet*: **no proofs are included yet**. The subsequent construction of canonical Frobenius lifts (§3.9.2 in Zhu) belongs to a later section of these notes.

## 1. Canonical Subgroups over the Overconvergent Locus

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
> **(2) Characterization by sections.** For every $p$-adically complete flat $\mathcal O_K$-algebra $R'$ with a morphism $R\to R'$,
>
> $$
> \boxed{\quad
> C_n(R')
> =
> \left\{
> s\in A[p^n](R'):
> s\equiv0\pmod{p^{(1-\epsilon)/p^n}}
> \right\}.
> \quad}
> $$
>
> In other words, the congruence is evaluated after reducing the **point** $s$ in $A(R'/p^{(1-\epsilon)/p^n})$.

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

> [!remark] Remark 3.9.11 (Principal polarization and isotropy)
> If $A/R$ carries a **principal polarization**, uniqueness of the canonical subgroup and duality imply that $C_n(A)$ is **totally isotropic** for the induced Weil pairing. In particular, on each geometric generic fibre, $C_n(\bar x)[p]\subset A[p](\bar x)$ is isotropic and therefore has at most $p^g$ elements.
>
> Zhu notes that this gives a shorter route to Proposition 3.9.10 in the principally polarized setting.

---

**Next section (not written yet):** canonical Frobenius lifts on Hasse-invariant neighborhoods (Zhu §3.9.2), followed by the overconvergent anticanonical tower. No proofs from §3.9.1 have been added here.

[[perfectoid-siegel-variety/anticanonical-tower/index|Back to Anticanonical Tower]]
