# Reading notes — IZA DP No. 18618 (individual task: 15-min Typst slide deck)

Source: `/home/aidas/Downloads/dp18618.pdf` -> `iza_raw.txt` (pdftotext) -> `iza_clean.txt` (de-hyphenated).
Read in full 2026-10-14.

## Bibliographic
- Jacob Nielsen Arendt (Rockwool Foundation Research Unit; IZA@LISER); Iben Bolvig (VIVE – Danish Center for Social Science Research).
- "Stepping stone or exit path: Experimental evidence on training the long-term unemployed". IZA DP No. 18618, May 2026. ISSN 2365-9793.
- JEL J14, J15, J64, D61. Keywords: unemployed, active labour market policy, disability pension, immigration.
- Peer-reviewed version: Scandinavian Journal of Economics, doi 10.1111/sjoe.70042 (acknowledgements thank "reviewers at SJE").
- Data: Statistics Denmark administrative registers; not public (access via dst.dk). Funding: Rockwool Foundation grant 1225.

## Question
Can an ALMP help long-term unemployed with health **and** social problems gain a labour-market foothold — and does it have unintended effects on labour-force exit?

## Intervention ("Job-First")
- 1 year: ~6 weeks intensive job counselling (CV, goals) -> internships/on-the-job training in **regular workplaces**; firms encouraged to contract a **few paid hours** while benefits continue.
- Support rules: claimants could earn USD 5/hour without benefit deduction.
- Required supplementary training run **concurrently** with on-the-job training (not before).
- Mentors (job centre) + firm contact persons hold regular meetings.
- Budget ≈ USD 8.36m; cost per participant USD 4,560.

## Design
- RCT, 15 Danish job centres, randomisation Mar–Dec 2016 by the Ministry of Employment.
- 3,727 eligible claimants randomised: treatment 1,833 / control 1,858.
- Target: means-tested (non-insured) welfare recipients, aged 30+, unemployed ≥1 year, assessed by job-centre caseworker as having "limited employability" ("activity-ready" is the weaker category). 72.6% activity-ready at start.
- **No pre-analysis plan** (Decree 246, 2018) -> unintended-outcome results are exploratory.
- Fidelity: 8 core components, rated medium to high (Rambøll & Metrica 2018d).
- Municipalities: Aalborg, Aarhus, Haderslev, Hedensted, Hillerød, Jammerbugt, København, Lolland, Odense, Ringsted, Skanderborg, Sorø, Syddjurs, Vallensbæk-Ishøj, Viborg.
- Data: 5 years pre-programme, follow-up to mid-2021 (5-year post window). DREAM register (ALMP, transfers), BFL (labour income), health utilisation.

## Institutions
- Benefits 2016: ≈USD 2,100/mo single providers, USD 1,600 non-providers (+ housing/childcare supplements); full-time minimum wage ≈USD 3,500/mo; disability pension ≈USD 2,700/mo couples, USD 3,200/mo singles.
- Mandatory quarterly employability assessment by caseworker; "limited employability" if social/health problems would prevent employment within 3 months.
- Disability pension: initiated by claimant or caseworker but decided **outside** the job centre by a municipal **rehabilitation team** (caseworker, social services, hospital health coordinator, specialists). Team weighs interviews, medical documentation and **proof that rehabilitation/ALMP efforts were attempted**; caseworker assessments are key documentation; team recommends to municipal pension board.

## Sample (Table 1)
- Mean age 43.8 (T) / 44.3 (C); 51% female; 25% immigrants (mostly MENAPT), ~18.4 years in Denmark; 49% hospitalised in prior 5 years; ~63 GP consultations; 41.5%/42.1% any employment in prior 5 years; 98.3% welfare recipients.
- Small significant imbalances: controls slightly older, more European-origin, more likely to start later.

## Main results
- ALMP participation: on-the-job training 10–12% (control) -> >30% (treated) — below intended full participation; classroom training 15% -> >40% (mostly month 1), likely from intensive caseworker meetings -> screening/referrals.
- **Employment without benefits**: peak ≈+2pp ~2 years after start = 30–50% relative to control mean; fades to zero.
- Any employment (incl. concurrent welfare): peak +5pp at 1–2.5 years (Appendix Fig A1), insignificant after 3.5 years.
- **Work hours**: peak ≈+3 hours/month (or 15/month among the employed).
- **Labour income**: peak ≈+USD 100/month; welfare receipt down up to 10pp; both fade.
- Bottom line: accelerated **limited-hours** employment; no sustained full-time work or welfare exit -> fails as "stepping stone".
- **Unintended: disability pension** — rises nearly 3pp after programme end (6% -> 9% within 3 years; >50% relative to control level); fades to insignificant ~4 years after start.
- No effects on GP visits, hospitalisations (Appendix Fig A2), or mental-health proxies.
- Pre-treatment: some significant coefficients 21–24 months before start (essentially zero in the 18 months before) -> could bias employment down / disability up; addressed in robustness.

## Robustness
1. Dynamic event study with individual + time FE: Y_it = α_i + γ_t + Σ_{j=-24,≠0}^{60} δ_j T_i·1(t-s=j) + u_it.
2. Regression controlling start quarter; work hours 2/1.5/1/0.5 years prior; employment & on-the-job-training 18–24 months pre-start.
Both reproduce baseline => pre-treatment differences do not drive results.

## Heterogeneity (exploratory)
- Employment gains larger for **natives** and those **with prior work experience**.
- Disability transitions stronger for **immigrants** and those **without recent employment** (weakest attachment); effects persist after 5 years at 10% significance => some would not have entered disability pensions without the programme.
- No differences by gender or single-provider status (economic incentives) => productivity/pre-existing attachment, not incentives.
- Men exit welfare into employment faster than women.

## Cost–benefit (Table 2, per participant, 2016 USD, 5-year PV, 0.25%/mo discount; bootstrapped SEs 200)
- A. Labour income benefit +3,193; B. programme funding −4,560; C. NSB excl. DWL **−1,367**; J. DWL 0.5×G −469; K. NSB incl. DWL **−1,836**.
- G. Net fiscal benefits −937 (all); subgroups: natives +334; immigrants −4,801; some-employment +880; no-employment −2,248.
- H. Income gain after taxes/transfers −430 (all); natives −1,705; immigrants +3,474; some-employment −2,176; no-employment +991.
- I. MVPF: all −0.46 (reported as ratio); natives 0.20 (inverse ratio: fiscal savings per dollar of participant loss); immigrants **0.72**; some-employment 0.40; no-employment 0.44.
- Time-use sensitivity: total −USD 174 (work −216, ALMP +38, disability +3).
- Method point: **MVPF is not additive across subgroups** (unlike NSB). Immigrant MVPF driven mainly by higher disability-pension income (a transfer, hence fiscal cost).
- Comparison: no-recent-employment MVPF ≈0.4 aligns with Hendren & Sprung-Keyser US average.

## Interpretation / contribution
- ALMPs have a **dual role** for the most disadvantaged: raise employability **and** generate information/documentation on limited work capacity used in disability-pension assessment.
- Corroborated by qualitative work: Caswell et al. (2012), 11 focus groups in 4 municipalities with 4–8 caseworkers each — caseworkers assess disability eligibility informally long before formal procedures; ALMPs generate the documentation. Also Ankestyrelsen practice reviews (2007/2009/2012/2015/2025) and Arendt et al. (2018) on "Integrationspålæg"; "Flere skal med" (2017/2019); "Ny chance til alle" (2006); "Afklaring af aktivitetsparate kontanthjælpsmodtagere" (2023).
- Errors in disability assessment documented => more time/resources can reduce uncertainty about marginal cases.
- Related literature: GAIN/work-first (Riccio 1994; Freedman 2000; overturned by Hotz et al. 2006); ALMP meta-analyses (Heckman 1999; Greenberg 2003; Card et al. 2018); Bækgaard et al. 2024 PNAS (no employment effects, more prescriptive medicine for a similar group); vocational rehab + mental health (Bond 2008; Crowther 2010; Probyn 2021); disability insurance (Maestas, Mullen & Strand 2013; Burkhauser & Daly 2022; Madsen & Holm 2024; OECD 2022); screening/take-up (Deshpande & Li 2019; Homonoff & Somerville 2021; Finkelstein & Notowidigdo 2019); immigration (Edin 2003/2004; Joona 2016; Sarvimäki & Hämäläinen 2016; Foged et al. 2022/2023).
- Limitations: minor pre-treatment imbalances; no detail on caseworker assignment (clustering); no pre-analysis plan.
- Policy: balance employment promotion against risk of inadvertently facilitating permanent labour-force exit.

## Figure/table inventory (candidates for slides)
- Fig 1 ALMP participation + employment rates around t=0.
- Fig 2 main effects: (a) job training, (b) employment without benefit, (c) work hours, (d) disability pension.
- Fig 3 subgroup effects: employment/disability by previous work status and by immigrant status.
- Fig A1 additional outcomes (classroom training, any employment, welfare benefits, earnings DKK).
- Fig A2 health care utilisation (GP, hospitalisation, specialist).
- Fig A3/A4 robustness (event study; controlling pre-treatment).
- Fig A5 by gender and provider status.
- Table 1 descriptives; Table 2 CBA; Table B.1 programme components/fidelity; Table A1 control means; Table A2 time-use cost.

## Reception / policy uptake
- Peer-reviewed in Scandinavian Journal of Economics (10.1111/sjoe.70042). SSRN 4940724 (earlier title "Training the Long-Term Unemployed on the Margin for Disability Pension"); RFBerlin WP (2026); ROCKWOOL Fonden news.
- Danish Agency for Labour Market and Recruitment knowledge bank **jobeffekter.dk** lists "Job-first" as a positive-effect intervention for the non-labour-market-ready unemployed.
- Author has adjacent work: work-first for immigrants (J. Population Economics), language-first vs work-first trade-offs (Economics of Education Review 92), welfare generosity and social integration (IMR).
