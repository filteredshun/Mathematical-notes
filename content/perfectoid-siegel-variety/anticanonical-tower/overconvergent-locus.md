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


## 2. Hasse-Invariant Neighborhoods

In the ordinary note, we restricted the formal hyperspecial moduli space to the *nonvanishing locus* of the Hasse invariant. We now retain a **strict neighborhood** where the Hasse invariant need not be a unit but is sufficiently close to one. Our principal sources are [Zhu, Definition–Proposition 3.9.15](https://yhzhumath.github.io/HT%20final.pdf), [Scholze, Lemma III.2.13](https://www.math.uni-bonn.de/people/scholze/Torsion.pdf), and [Caraiani, §4.3](https://www.ma.imperial.ac.uk/~acaraian/papers/arizona_notes.pdf).

Fix a sufficiently small tame level \(K^p\), hyperspecial \(K_p=G(\mathbf Z_p)\), and let

$$
\mathcal O_K=\mathbf Z_p^{\mathrm{cycl}},
\qquad K=\mathbf Q_p^{\mathrm{cycl}}.
$$

Write \(\mathfrak X\) for the \(p\)-adic completion of the integral hyperspecial Siegel moduli space after base change to \(\mathcal O_K\), and \(\mathcal X=\mathfrak X_\eta\) for its adic generic fibre (the **good-reduction locus**). It carries the completed universal principally polarized abelian family \(\mathfrak A\) and its determinant Hodge line \(\omega\). The Hasse section is

$$
\operatorname{Ha}\in H^0(\mathfrak X/p,\omega^{\otimes(p-1)}/p).
$$

As in §1, write \(p^\delta\in\mathcal O_K\) for a chosen element of valuation \(\delta\), defined up to a unit. We use exponents in the cyclotomic value group, stable under division by \(p\).

### 2.1 The formal Hasse neighborhood

> [!definition] Definition 2.1 (Formal Hasse neighborhood; Zhu 3.9.15)
> Fix \(0\leq\delta<1\). Define the formal moduli space \(\mathfrak X(\delta)\to\mathfrak X\) on \(p\)-adically complete, flat \(\mathcal O_K\)-algebras \(R\) as follows.
>
> A point consists of a formal moduli point \(f:\operatorname{Spf}R\to\mathfrak X\) together with a class of sections
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
> Here \(A/R\) is the abelian scheme classified by \(f\). Two choices \(u,u'\) are equivalent when they differ by the prescribed multiplicative correction \(1+p^{1-\delta}h\), \(h\in R\). This is the relative divisibility condition \(\operatorname{Ha}(A_0)\mid p^\delta\), rather than an additional choice in the final generic-fibre moduli problem.
>
> At \(\delta=0\) this construction recovers the **formal ordinary locus** \(\mathfrak X(0)\) of the preceding note.

> [!proposition] Proposition 2.2 (Local equation and adic generic fibre)
> Choose an affine formal chart \(\operatorname{Spf}R_0\subset\mathfrak X\), trivialize \(\omega\) there, and choose an integral lift \(\widetilde{\operatorname{Ha}}\in R_0\) of the Hasse invariant. Then
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
> Its adic generic fibre \(\mathcal X(\delta):=\mathfrak X(\delta)_\eta\) is the **rational open subspace**
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
> Over \(\operatorname{Spf}R_0\), choosing \(u\) corresponds to imposing \(u\widetilde{\operatorname{Ha}}=p^\delta\). The functor in Definition 2.1 determines this normalized representative uniquely: if the relation holds only modulo \(p\), multiplication by a unit of the form \(1+p^{1-\delta}h\) corrects the discrepancy. This is the local representability argument in Zhu 3.9.15 and Scholze III.2.13; \(p\)-torsion-freeness ensures uniqueness.
>
> Inverting \(p\), \(u=p^\delta/\widetilde{\operatorname{Ha}}\) is power bounded exactly where \(|p^\delta|\leq|\widetilde{\operatorname{Ha}}|\). This is a Huber rational domain. **The formal morphism** \(\mathfrak X(\delta)\to\mathfrak X\) **is generally not an open immersion**; its **adic generic-fibre morphism** \(\mathcal X(\delta)\hookrightarrow\mathcal X\) **is**.
>
> If \(\delta=0\), the equation \(u\widetilde{\operatorname{Ha}}=1\) makes the reduction of \(\operatorname{Ha}\) a unit, recovering the open formal ordinary locus. \(\square\)

> [!remark]- Remark 2.3 (Hasse height)
> On a rank-one valued point with normalized \(v(p)=1\), define the truncated Hasse height \(h(x)=\min(1,v(\widetilde{\operatorname{Ha}}(x)))\), using a local integral trivialization. Then \(\mathcal X(\delta)\) is the locus \(h(x)\leq\delta\). For \(\delta>0\), **ordinary reduction is no longer required**; its role is replaced by this small-height condition.
>
> The local chart in Proposition 2.2 is a *dilatation-type formal model*, not the restriction of \(\mathfrak X\) to an open subset of its original special fibre.

### 2.2 Frobenius twists of neighborhoods in characteristic \(p\)

> [!lemma] Lemma 2.4 (Frobenius twist of the Hasse neighborhood; Zhu 3.9.17 / Scholze III.2.14)
> For \(0\leq\delta<1\), the special fibres of the Hasse-neighborhood models satisfy a natural isomorphism
>
> $$
> \boxed{\quad
> \bigl(\mathfrak X(p^{-1}\delta)/p\bigr)^{(p)}
> \xrightarrow{\sim}
> \mathfrak X(\delta)/p.
> \quad}
> $$
>
> Here \((p)\) denotes base change by the absolute Frobenius of \(\mathcal O_K/p\), *not* a tensor power. Relative Frobenius on the universal abelian scheme is compatible with this identification.

> [!proof]- Local explanation
> The local equation for \(\mathfrak X(p^{-1}\delta)\) is \(u\widetilde{\operatorname{Ha}}=p^{\delta/p}\). In characteristic \(p\), Frobenius raises that relation to \(u^p\operatorname{Ha}^p=p^\delta\). The Hasse invariant of the Frobenius twist of an abelian scheme is the \(p\)-th power of the original Hasse section, with the corresponding Hodge-line twist. Because the hyperspecial moduli space descends from \(\mathbf Z_p\), the Frobenius of the cyclotomic coefficient ring gives the required identification of the two moduli problems, rather than merely a pointwise comparison. See the proof of Zhu 3.9.17. \(\square\)

## 3. Canonical Frobenius Lifts on Shrinking Neighborhoods

Fix from now on \(0\leq\epsilon<\frac12\). The **radius at level \(m\)** is \(p^{-m}\epsilon\). The point of this choice is that \(\mathcal X(p^{-m}\epsilon)\) carries a **strong** canonical subgroup of level \(m\), although \(\mathcal X(\epsilon)\) itself generally only carries a **weak** level-one subgroup.

### 3.1 Existence and the Hasse transformation

> [!proposition] Proposition 3.1 (Uniform strong canonical subgroup; Zhu 3.9.21(2))
> For each \(m\geq1\), the universal abelian family over \(\mathfrak X(p^{-m}\epsilon)\) is **strongly \(O(m,\epsilon)\)** in the sense of §1:
>
> $$
> \boxed{\quad
> \operatorname{Ha}^{p^m}\mid p^\epsilon.
> \quad}
> $$
>
> Consequently, it possesses a base-change-compatible, level-\(m\) canonical subgroup
>
> $$
> C_m\subseteq\mathfrak A(p^{-m}\epsilon)[p^m],
> \qquad \operatorname{rank}C_m=p^{mg}.
> $$
>
> This subgroup is isotropic for the universal principal polarization, and the quotient \(\mathfrak B_m=\mathfrak A(p^{-m}\epsilon)/C_m\) carries the induced principal polarization and transported tame level.

> [!proof]- Hasse divisibility and polarized quotient
> Locally, the defining relation of the neighborhood is
>
> $$
> u\,\operatorname{Ha}=p^{\epsilon/p^m}
> \qquad\text{modulo }p.
> $$
>
> Raising to the \(p^m\)-th power gives \(\operatorname{Ha}^{p^m}\mid p^\epsilon\), up to a unit stemming from the choice of compatible elements of the cyclotomic valuation ring. The **strong canonical subgroup theorem** in §1 therefore applies.
>
> The subgroup is Lagrangian for the polarization by canonical-subgroup duality. As in Ordinary Locus, Proposition 5.1, the quotient by a Lagrangian subgroup of order \(p^{mg}\) carries a principal polarization with \(q^\vee\lambda_Bq=p^m\lambda_A\); the prime-to-\(p\) level transports along the \(p\)-power isogeny \(q\). \(\square\)

> [!lemma] Lemma 3.2 (Hasse invariant after canonical quotient)
> Let \(A/R\) be strongly \(O(1,\epsilon)\), \(q:A\to B=A/C_1(A)\), and \(0\leq\epsilon<1/2\). Since
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
> In particular, for \(\operatorname{Ha}(A)\mid p^{\epsilon/p}\), the quotient \(B\) lies in the \(\epsilon\)-neighborhood.

> [!proof]- Functoriality under relative Frobenius
> The defining property of the canonical subgroup yields \(B\bmod p^{1-\epsilon}\simeq A^{(p)}\bmod p^{1-\epsilon}\). The Hasse invariant of \(A^{(p)}\) is the Frobenius pullback of the Hasse invariant of \(A\), which in a local trivialization is its \(p\)-th power. Thus \(\operatorname{Ha}(B)\) is congruent to \(\operatorname{Ha}(A)^p\) at the stated precision. If \(u\,\operatorname{Ha}(A)=p^{\epsilon/p}\), then its \(p\)-th power gives the required divisibility for \(B\). \(\square\)

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
> The top map is quotient by the level-one **strong canonical subgroup**. After reduction modulo \(p^{1-\epsilon}\), and the identifications of Lemma 2.4, the two maps coincide with the **relative Frobenius** of the universal abelian scheme and the moduli space.
>
> These maps are **Frobenius lifts**, not the natural inclusion morphisms between nested Hasse neighborhoods.

> [!proof]- Constructing the map on the formal moduli functor
> For a point \((A,\lambda,\eta^p,[u])\) of \(\mathfrak X(p^{-1}\epsilon)\), take \(B=A/C_1(A)\) with its quotient polarization and transported tame level. Proposition 3.1 constructs \(C_1\), and Lemma 3.2 shows \(B\) belongs to \(\mathfrak X(\epsilon)\). In Hasse coordinates, the auxiliary divisor datum is transported by the \(p\)-power operation, symbolically
>
> $$
> (A,[u])\longmapsto
> \bigl(A/C_1(A),[u^p]\bigr),
> $$
>
> with the Hodge-line identifications and the equivalence relation of Definition 2.1 understood. This determines a morphism by the formal moduli property. Uniqueness comes from the uniqueness of the canonical subgroup and the normalized Hasse-divisibility datum. The defining congruence of \(C_1\) with \(\ker F\) gives the asserted reduction modulo \(p^{1-\epsilon}\). \(\square\)

> [!proposition] Proposition 3.4 (Iterated Frobenius tower and its degrees)
> For each \(m\geq0\) put
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
> The composite \(\widetilde F^{(m)}:\mathfrak X_m(\epsilon)\to\mathfrak X_0(\epsilon)\) is induced by **quotienting by \(C_m\)**. Every transition is a finite locally free Frobenius lift of relative degree \(p^{g(g+1)/2}\) on the formal moduli spaces, and on adic generic fibres it is **finite étale**. The transition maps reduce to relative Frobenius modulo \(p^{1-\epsilon}\) with the compatible twists.
>
> The compatibility
>
> $$
> C_{m+1}(A)/C_1(A)
> =C_m(A/C_1(A))
> $$
>
> follows from §1, Proposition 3.9.9, and identifies \(m\) successive level-one quotients with one quotient by \(C_m\).

> [!proof]- Compatibility and the distinction from inclusions
> Proposition 3.9.9 of §1 identifies the successive canonical subgroups and proves the quotient compatibility. The formal finiteness/flatness and relative-Frobenius reductions are part of Scholze III.2.15; on generic fibres, the finite étale property follows also from the cartesian finite-level \(\Gamma_0(p^m)\)-diagram of Theorem 4.3 below (Zhu 3.9.21(2)). These maps are generally **not** the inclusions \(\mathcal X(p^{-(m+1)}\epsilon)\subset\mathcal X(p^{-m}\epsilon)\). \(\square\)


[[perfectoid-siegel-variety/anticanonical-tower/index|Back to Anticanonical Tower]]
