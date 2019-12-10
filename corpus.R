survey_writeUp_in <- tags$p(tags$ol(
  tags$li("List of technologies to include in the scope of data fluency"),
  tags$li("List of crew with their supervisor in the organization"),
  tags$li("Pitch with the WHY-WHAT-HOW of the data fluency program and survey"),
  tags$li("Calendar of events")
))
survey_writeUp_prc <- tags$p(tags$ul(
  tags$li(tags$u("Build"), "the survey using appropriate software, e.g. SurveyMonkey or Microsoft Teams."),
  tags$li(tags$u("Pitch"), "the survey and explain WHY it is needed, WHAT information will be collected and HOW it will be used."),
  tags$li(tags$u("Run"), "the survey at team events and analyze the results.")
))
survey_writeUp_out <- tags$p(tags$ol(
  tags$li("A", tags$b("baseline"), "data fluency as a reference point for measuring and reporting progress."),
  tags$li("Information about", tags$b("priority areas"), "for data fluency - 4 Quadrants."),
  tags$li("List of potential", tags$b("mentors"), ".")
))

quadrants_writeUp_in <- tags$p(tags$ol(
  tags$li("Survey results summary - Likert plots")
))
quadrants_writeUp_prc <- tags$p(tags$ul(
  tags$li(tags$u("Split"), "the technologies identified as relevant into 4 quadrants based on ability (low/high) and interest or relevance (low/high) as assessed from survey responses."),
  tags$li(tags$u("Use"), "the survey results visualized as Likert plots to assess placement of technologies in the 4 quadrants.")
))
quadrants_writeUp_out <- tags$p(tags$ul(
  tags$li("Prioritization", tags$b("guidelines")), tags$ol(
    tags$li("High ability and high interest or relevance - support!"),
    tags$li("Low ability and high interest or relevance - enable!"),
    tags$li("Low ability and low interest or relevance - watch!"),
    tags$li("High ability and low interest or relevance - phase out!")
)))

personas_writeUp_in <- tags$p(tags$ol(
  tags$li("Survey responses - 'How can data science help improve how you work?'"),
  tags$li("4 Quadrants"),
  tags$li("Inputs from 1-1 interviews with", tags$ol(
    tags$li("A random sample across the organization to probe into abilty and aspiration"), 
    tags$li("supervisory staff to probe into known choke points"),
    tags$li("data scientists formally or informally engaged with the organization's mission to probe into what's been tried and what might help")))
))
personas_writeUp_prc <- tags$p(tags$ul(
  tags$li(tags$u("Build"), "one-line statements expressing the needs and aspiration of a group of people (e.g. 'I want to summarize and visulaize data effectively.')"),
  tags$li(tags$u("How"), "granular to get? The correct answer lies between each 'Each one is a unique case' to 'Everyone learn to code'. A good guide is to go fine-granular until a persona fits the 'two pizza' criteria of Steve Jobs but no smaller than this.")
))
personas_writeUp_out <- tags$p(tags$ol(
  tags$li("A set of", tags$b("learner personas"), "representing learners with similar needs, for example:"), 
  tags$ol(
    tags$li("I want to summarize and visualize data effectively without coding."),
    tags$li("I want to summarize and visualize data effectively and am okay to code."),
    tags$li("I want to access and connect data in corporate systems for use in analysis."),
    tags$li("I want to do basic statistical analysis.")
)))

curricula_writeUp_in <- tags$p(tags$ol(
  tags$li("Learner Personas"),
  tags$li("Subscription to MOOCs (Massively Open Online Courses)", tags$ul(
    tags$li("Coursera"),
    tags$li("EdX"),
    tags$li("Udacity, etc")
  ))
))
curricula_writeUp_prc <- tags$p(tags$ul(
  tags$li(tags$u("Build"), "a curriculum lasting 4-5 months with a weekly commitment of 15% time (4-6 hours) by learners."),
  tags$li(tags$u("Include"), "mandatory and optional (honors) courses.")
))
curricula_writeUp_out <- tags$p(tags$ol(
  tags$li("A", tags$b("curated cataglog", "of courses matched to learner personas"))
))