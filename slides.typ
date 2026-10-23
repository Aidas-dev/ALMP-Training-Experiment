#import "@preview/touying:0.8.0": *
#import themes.metropolis: *

#show: metropolis-theme.with(
  aspect-ratio: "16-9",
  config-info(
    title: [Stepping Stone or Exit Path?],
    subtitle: [Training the long-term unemployed, and what it means for Lithuania],
    author: [Aidas Kriščiūnas · Jokūbas Narvydas · Domas Pitrėnas],
    date: datetime(year: 2026, month: 11, day: 11),
    institution: [Applied Microeconomics: Group Assignment],
  ),
)

#set text(size: 18pt)
#show raw: set text(size: 14pt)

#title-slide(
  extra: [Arendt and Bolvig (2026), IZA Discussion Paper No. 18618],
)

== The question

Can a year of intensive support move the hardest-to-place claimants into work?

#v(0.6em)

- Denmark already spends heavily on activation, and it targets the claimants caseworkers judge furthest from the labour market.
- The policy bet is that counselling and supervised work placements end benefit dependence.
- The counter-possibility: the same year of supervised activity also documents what a claimant *cannot* do, and that record decides a permanent disability pension.

#v(0.4em)

#text(size: 0.85em)[A randomised trial in 15 Danish job centres tests both margins at once.]

== The Danish setting

- Welfare claimants receive about USD 2,100 per month as a single provider, against a full-time minimum wage near USD 3,500.
- A permanent disability pension pays about USD 3,200 per month for a single person, more than welfare and close to a low full-time wage.
- The municipal rehabilitation team decides eligibility, and it must see that rehabilitation and activation were attempted first.

#v(0.5em)

#text(size: 0.85em)[The gatekeeping rule matters. It turns a year of activation into evidence in a disability case.]

== The experiment

#grid(
  columns: (1fr, 1fr),
  gutter: 1.4em,
  [
    *Design*

    - 3,727 claimants randomised in 2016
    - 15 job centres
    - 1,833 treated, 1,858 controls
    - Eligibility: aged 30+, out of work a year or more, assessed as having limited employability
  ],
  [
    *Treatment, one year*

    - Six weeks of intensive counselling
    - An internship in a regular workplace
    - Encouragement for the host firm to offer a few contracted paid hours while benefits continue
  ],
)

#v(0.6em)

#text(size: 0.85em)[No pre-analysis plan. The disability result is exploratory.]

== Who is in the sample

#align(center)[
  #table(
    columns: (2.4fr, 1fr, 1fr),
    align: (left, center, center),
    inset: 7pt,
    stroke: 0.5pt + rgb("#b9c6c9"),
    fill: (x, y) => if y == 0 { rgb("#23373b") } else if calc.odd(y) { rgb("#f3f5f6") } else { white },
    table.header(
      text(fill: white, weight: "bold")[Characteristic],
      text(fill: white, weight: "bold")[Treatment],
      text(fill: white, weight: "bold")[Control],
    ),
    [Mean age], [43.8], [44.3],
    [Female], [51%], [51%],
    [Immigrant], [25%], [25%],
    [Any employment, prior 5 years], [41.5%], [42.1%],
    [Hospitalised, prior 5 years], [49%], [49%],
    [Welfare recipient], [98.3%], [98.3%],
  )
]

#v(0.7em)

#align(center)[#text(size: 0.85em)[Weak labour-market attachment and poor health are the norm in this group.]]

== What randomisation buys

- Assignment was random, so later differences between the two groups are causal.
- The estimand is the intention-to-treat effect: the offer of the programme, not compliance with it.
- Someone assessed as unable to work may still be pushed toward a disability pension by the programme. That is an outcome, not a nuisance.

#v(0.8em)

#text(size: 0.85em)[Effects are reported month by month, with 95 percent confidence intervals.]

== Participation and employment

#align(center)[#image("figures/fig1_almp_employment.png", width: 74%)]

#align(center)[#text(size: 0.8em)[Job-training and classroom-training take-up rises for the treated, and so does employment.]]

== Employment without benefits

#align(center)[#image("figures/fig2b_employment_no_benefit.png", width: 70%)]

#align(center)[#text(size: 0.8em)[A peak near 2 percentage points at about two years, then a return to zero by year four.]]

== Hours and earnings

#grid(
  columns: (1fr, 1fr),
  gutter: 1.2em,
  align(center)[#image("figures/fig2c_work_hours.png", width: 100%)],
  align(left + horizon)[
    #text(size: 0.9em)[
      *Modest, temporary gains*

      - Work hours peak near 3 extra hours per month.
      - Labour income peaks near USD 100 per month.
      - Both fade to insignificance by year four.
      - The programme did not produce sustained full-time work.
    ]
  ],
)

== The unintended channel

#align(center)[#image("figures/fig2d_disability_pension.png", width: 70%)]

#align(center)[#text(size: 0.8em)[Disability pension take-up rises about 3 percentage points within three years, from 6 to 9 percent.]]

== Who gains and who exits

#grid(
  columns: (1fr, 1fr),
  gutter: 1em,
  align(center)[#image("figures/fig3a_emp_by_prev_work.png", width: 100%)],
  align(center)[#image("figures/fig3b_dp_by_prev_work.png", width: 100%)],
)

#align(center)[#text(size: 0.8em)[Left: employment. Right: disability pension. Claimants with no recent work gain little employment and exit more.]]

== Reading the pattern

- Employment gains concentrate among Danish-born claimants and those with recent work experience.
- Disability exits concentrate among immigrants and the weakest-attached.
- No difference by gender or by single-provider status.

#v(0.6em)

#text(size: 0.9em)[Financial incentives do not explain the split. Productivity and prior attachment do. A year of supervised activity both raises employability and supplies the documentation of limited capacity that a disability case needs.]

== Is it worth the money?

#align(center)[
  #table(
    columns: (2.6fr, 1fr),
    align: (left, right),
    inset: 7pt,
    stroke: 0.5pt + rgb("#b9c6c9"),
    fill: (x, y) => if y == 0 { rgb("#23373b") } else if calc.odd(y) { rgb("#f3f5f6") } else { white },
    table.header(
      text(fill: white, weight: "bold")[Item],
      text(fill: white, weight: "bold")[USD, 2016],
    ),
    [Pre-tax income gain], [+3,193],
    [Direct programme cost], [4,560],
    [Net societal benefit], [−1,367],
    [Net societal benefit, with deadweight loss], [−1,836],
    [Fiscal impact], [−937],
    [MVPF, overall], [−0.43],
  )
]

#v(0.6em)

#align(center)[#text(size: 0.8em)[Immigrant subgroup: MVPF about 0.72, mostly through higher pension income, and at fiscal cost.]]

== Lithuania has the same target group

- Long-term unemployment reached 2.5 percent of the labour force in 2025, up from 2.3 percent, and long-term claimants are 36 percent of all unemployed (Eurostat).
- The Danish rate is 0.9 percent.
- Lithuanian activation spends 0.21 percent of GDP, against 0.45 percent across the OECD, and reaches about 1 percent of the labour force against 5 percent (OECD, 2022).
- In 2024 the long-term unemployed were 9.4 percent of activation participants and about 700 of 12,800 subsidised placements.

#v(0.4em)

#text(size: 0.85em)[The group the Danish programme served is the group Lithuanian policy reaches least.]

== The exit risk is larger here

- Since January 2024 the Agency for the Rights of Persons with Disabilities assesses a participation level, weighting medical criteria at 60 percent and individual needs at 40 percent.
- A treating physician refers, and municipalities and Sodra pay. No rule requires proof that activation was attempted.
- Average lost-capacity pension: EUR 420 per month in 2025. Average social assistance: about EUR 148 in 2024.
- That premium is roughly 2.2 to 2.8 times social assistance. In Denmark the comparable ratio was about 1.5.

#v(0.4em)

#text(size: 0.85em)[Lithuania pays more for exiting through disability, and its assessment has no equivalent of the Danish documentation gate.]

== What follows

#grid(
  columns: (1fr, 1fr),
  gutter: 1.4em,
  [
    *For policy*

    - Pilot counselling plus a subsidised internship for long-term claimants.
    - Record participation as evidence of what a claimant *can* do.
    - Link Employment Service records to Sodra and ANTA data.
    - Expand the part-time margin: only 6.3 percent of Lithuanian employment is part-time.
  ],
  [
    *For evaluation*

    - Randomise, and pre-register the analysis.
    - Treat disability applications as an outcome.
    - Do not promise savings: the Danish net societal benefit is negative.
    - The case rests on reaching a group current policy misses.
  ],
)

== Takeaway

Three findings travel.

- Activation for the hardest-to-place raises employment for about three years, and the gain fades.
- The same programme raises permanent disability exits, because it produces the documentation those cases need.
- Where disability pay sits far above social assistance, and where assessment does not require proof of activation, the exit channel should be expected to dominate.

#v(0.6em)

#align(center)[#text(size: 0.95em)[Lithuania sits on both of those conditions.]]

== Thank you

#align(center + horizon)[
  #text(size: 1.1em)[*Stepping Stone or Exit Path?*]

  #v(0.8em)

  #text(size: 0.9em)[Arendt, J. N., and Bolvig, I. (2026). IZA Discussion Paper No. 18618. _Scandinavian Journal of Economics_, doi 10.1111/sjoe.70042.]

  #v(0.8em)

  #text(size: 0.9em)[Aidas Kriščiūnas · Jokūbas Narvydas · Domas Pitrėnas]

  #v(0.6em)

  #text(size: 0.85em)[Questions and discussion welcome.]
]
