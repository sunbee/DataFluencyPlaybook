survey_writeUp_in <- tags$p(tags$ol(
  tags$li("List of technologies to include in the scope of data fluency"),
  tags$li("Crew listing paired with supervisor"),
  tags$li("Pitch with the WHY-WHAT-HOW of the data fluency program and survey"),
  tags$li("Calendar of events")
))
survey_writeUp_prc <- tags$p(tags$ul(
  tags$li(tags$u("Build"), "the survey using appropriate software, e.g. SurveyMonkey or Microsoft Teams to include technologies determined to be of interest (1)."),
  tags$li(tags$u("Pitch"), "the survey and explain WHY it is needed, WHAT information will be collected and HOW it will be used (3)."),
  tags$li(tags$u("Run"), "the survey at team events (2, 4) and analyze the results.")
))
survey_writeUp_out <- tags$p(tags$ol(
  tags$li("A", tags$b("baseline", style="color:red"), "data fluency as a reference point for measuring and reporting progress."),
  tags$li("Information about", tags$b("focus areas", style="color:red"), "for data fluency - 4 Quadrants."),
  tags$li("List of potential", tags$b("mentors", style="color:red"), ".")
))

quadrants_writeUp_in <- tags$p(tags$ol(
  tags$li("Survey summary - Likert plots")
))
quadrants_writeUp_prc <- tags$p(tags$ul(
  tags$li(tags$u("Organize"), "the technologies identified as relevant into four quadrants based on ability (low/high) and interest (low/high) as assessed from survey responses (1)."),
  tags$li(tags$u("Use"), "the survey results visualized as Likert plots to assess placement of technologies in the 4 quadrants."),
  tags$li(tags$u("Leverage"), "technologies in high-interest quadrants as a 'gateway drug' to technologies that are relevant but in low-low quadrant.")
))
quadrants_writeUp_out <- tags$p(tags$ol(
  tags$li("Execution", tags$b("strategy", style="color:red"), "for technologies deemed to be relevant"), tags$ul(
    tags$li("High ability and high interest - support!"),
    tags$li("Low ability and high interest - enable!"),
    tags$li("Low ability and low interest - watch!"),
    tags$li("High ability and low interest - ignore!")
)))

personas_writeUp_in <- tags$p(tags$ol(
  tags$li("Survey responses - 'How can data science help improve how you work?'"),
  tags$li("Four Quadrants"),
  tags$li("Inputs from 1-1 interviews with", tags$ul(
    tags$li("A random sample across the organization"), 
    tags$li("supervisory staff"),
    tags$li("data scientists formally or informally engaged with the crew")))
))
personas_writeUp_prc <- tags$p(tags$ul(
  tags$li(tags$u("Build"), "one-line statements expressing the needs and aspiration of a group of people, clustering similar responses (1, 3)."),
  tags$li(tags$u("How"), "fine-granular to get? The correct answer lies between 'Each one is unique' to 'Everyone learn to code'. A good thumb-rule is to go fine-granular until a persona fits the 'two pizza' criteria of Steve Jobs and no further.")
))
personas_writeUp_out <- tags$p(tags$ol(
  tags$li("A set of", tags$b("learner personas", style="color:red"), "representing learners with similar needs, for example:"), 
  tags$ul(
    tags$li("I want to summarize and visualize data effectively without coding."),
    tags$li("I want to summarize and visualize data effectively and am okay to code."),
    tags$li("I want to access and connect data in corporate systems for use in analysis."),
    tags$li("I want to do basic statistical analysis.")
)))

curricula_writeUp_in <- tags$p(tags$ol(
  tags$li("Learner personas"),
  tags$li("Subscription to MOOCs (Massively Open Online Courses)", tags$ul(
    tags$li("Coursera"),
    tags$li("EdX"),
    tags$li("Udacity, etc")
  ))
))
curricula_writeUp_prc <- tags$p(tags$ul(
  tags$li(tags$u("Build"), "a curriculum lasting 4-5 months with a weekly commitment of 15% time (4-6 hours) for learners, referring to each learner persona (1) and making a selection from available courses (2)."),
  tags$li(tags$u("Include"), "mandatory and optional (honors) courses.")
))
curricula_writeUp_out <- tags$p(tags$ol(
  tags$li("A", tags$b("curated catalog", style="color:red"), "of courses matched to learner personas")
))

boilerplate_writeUp_in <- tags$p(tags$ol(
  tags$li("Org. Culture")
))
boilerplate_writeUp_prc <- tags$p(tags$ul(
  tags$li(tags$u("Prepare"), "email boilerplate for communications that go out in sequential order, accounting for org. culture (1) in the communication pattern."),
  tags$ul(tags$li(
    "For example, we determined it is best to reach out to supervisors about involving their crew so that they can manage workload and factor in performance issues, etc."
  ))
))
boilerplate_writeUp_out <- tags$p(tags$ol(
  tags$li(tags$b("Email boilerplate", style="color:red")),
  tags$ul(
    tags$li(tags$b("Sub:", style="color:blue"), "Launch of Data Fluency program - your inputs needed by <date> (", tags$b("To:", style="color:blue"), "Supervisors)"),
    tags$li(tags$b("Sub:", style="color:blue"), "Invitation to mentor a cohort in <name of org.>'s Data Fluency initiative (", tags$b("To:", style="color:blue"), "Candidate mentors)"),
    tags$li(tags$b("Sub:", style="color:blue"), "Embarking on your Data Fluency journey (", tags$b("To:", style="color:blue"), "Learners)"),
    tags$li(tags$b("Sub:", style="color:blue"), "Survey completion for cohort formation (", tags$b("To:", style="color:blue"), "Missing respondents)")
  )
))

mentor_writeUp_in <- tags$p(tags$ol(
  tags$li("Survey responses - abilities (self-assessed)"),
  tags$li("Learner personas"),
  tags$li("Curricula"),
  tags$li("Email boilerplate"),
  tags$li("FAQs")
))
mentor_writeUp_prc <- tags$p(tags$ul(
  tags$li(tags$u("Scan"), "survey responses (1) for matchmaking mentors and learner personas (2), referring to the curricula (3) as applicable."),
  tags$li(tags$u("Invite"), "matches to accept the role of mentor by email (4) and supply the FAQ (5).")
))
mentor_writeUp_out <- tags$p(tags$ol(
  tags$li("A list of", tags$b("mentors", style="color:red"), "for each learner persona with tentative schedule reflecting mentor availability."),
))

cohort_writeUp_in <- tags$p(tags$ol(
  tags$li("Survey responses - needs and abilities (self-assessed)"),
  tags$li("Learner personas"),
  tags$li("Mentors"),
  tags$li("Crew listing paired with supervisor"),
  tags$li("Email boilerplate")
))
cohort_writeUp_prc <- tags$p(tags$ul(
  tags$li(tags$u("Assign"), "a learner persona (2) to each individual by scanning survey responses (1) to gauge needs and abilities.",
          tags$ul("Some individuals may have a back-up persona and supervisor can take the final call.")),
  tags$li(tags$u("Email"), "supervisors (4) with the crew assignment using boilerplate (5) and request inputs and alignment on the selected profile and schedule."),
  tags$li(tags$u("Form"), "cohorts taking into account mentor availability (3) and set start date for each.")
))
cohort_writeUp_out <- tags$p(tags$ol(
  tags$li("Crew assignment to", tags$b("cohorts", style="color:red"), "with a",
          tags$ul(
            tags$li("learner profile"),
            tags$li("set curriculum"),
            tags$li("mentor"),
            tags$li("start date")
          )),
))

tracker_writeUp_in <- tags$p(tags$ol(
  tags$li("Survey audit"),
  tags$li("Cohorts"),
  tags$li("Crew listing with supervisor"),
  tags$li("Email boilerplate")
))
tracker_writeUp_prc <- tags$p(tags$ul(
  tags$li(tags$u("Record"), "enrollment status and progress for each individual (3), tracking cohorts (2) formed from survey respondents and using survey audit (1) for email follow-ups (4) to enroll non-respondents"),
))
tracker_writeUp_out <- tags$p(tags$ol(
  tags$li("A", tags$b("spreadsheet", style="color:red"), "for managing enrollment and tracking progress through the steps", 
          tags$ul(
            tags$li("Surveyed"),
            tags$li("Assigned cohort"),
            tags$li("Started"),
            tags$li("Checked-in (1, 2, 3)"),
            tags$li("Completed"),
            tags$li("Certified")))
))

kanban_writeUp_in <- tags$p(tags$ol(
  tags$li("Org. IT assets"),
))
kanban_writeUp_prc <- tags$p(tags$ul(
  tags$li(tags$u("Build"), "out a kanban board in a digital asset for each cohort to organize and manage their work.", 
          tags$ul(tags$li("E.g. MS Teams, JIRA, etc."))),
))
kanban_writeUp_out <- tags$p(tags$ol(
  tags$li("A", tags$b("visual system", style="color:red"), "for organizing and managing work in a cohort."),
))

checkIn_writeUp_in <- tags$p(tags$ol(
  tags$li("Master tracker"),
))
checkIn_writeUp_prc <- tags$p(tags$ul(
  tags$li(tags$u("Organize"), "events for cohorts and mentors to come together and share experiences and lessons learned."),
))
checkIn_writeUp_out <- tags$p(tags$ol(
  tags$li("Master tracker (updated)"),
))

certificate_writeUp_in <- tags$p(tags$ol(
  tags$li("Org. culture"),
))
certificate_writeUp_prc <- tags$p(tags$ul(
  tags$li(tags$u("Design"), "and print 'License to Innovate' certificates to hand out to learners who have successfully completed the journey with their cohort and turned in project work."),
))
certificate_writeUp_out <- tags$p(tags$ol(
  tags$li("A", tags$b("proforma certificate", style="color:red"), "with the appropriate branding and message."),
))
