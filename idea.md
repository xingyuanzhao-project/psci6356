Me:
Former President Trump has asserted that deploying the National Guard can help “crack down on crime.” Some media media have reported that there is no evidence of extraordinary levels of violent crime in Washington, DC or Illinois. Existing academic papers have already found out the bias in newspaper crime coverage, but most of them are long time ago. I plan to use large language models to classify CNN and Fox News articles at scale, and to develop a live AI agent for continuous monitoring of partisan crime reporting.
Proposed pipeline:
Use APIs to scrape articles from media with clear partisan leanings, such as CNN and Fox News. These APIs are ready to use.
Draw a small sample and manually annotate whether each article reports a violent crime, coded as a binary variable.
Train a model on the annotated set, apply it to the remaining articles, and validate on a held-out sample.
Aggregate from article level to media-time, with regional variation, to compute the frequency or rate of violent crime coverage by period and by state. Merge actual crime rate data and regional voting records with this dataset.
Test these hypotheses:
a. Liberal-leaning media underreport violent crime, while conservative-leaning media overreport violent crime.
b. Conservative media exhibit greater bias than liberal media in crime coverage.
c. Partisan bias is more severe in regions with opposite partisan leaning, for example, conservative media may overreport violent crime in blue states such as Illinois.
d. Bias increases when the party aligned with a media’s narrative is in office.
If time permits, build an agentic AI system to continue ingesting new articles from additional sources and to visualize live results.
I believe the project is clearly doable through step 5, with step 6 contingent on time. I would greatly value your guidance on two questions.
Is this topic sufficiently connected to democratization or democratic backsliding, and if not, how would you suggest I adjust it.
Does the paper offer enough substance and originality. It would update several older studies with new techniques and data, so I am afraid that the contribution part will be hard to write, and I welcome any recommendations to strengthen its contribution.

Pinckney:
Is this topic sufficiently connected to democratization or democratic backsliding, and if not, how would you suggest I adjust it.
There isn’t a very good connection to the course content in the topic as you’ve described it here, though I think if you want to do something similar there would probably be room to do so. This is more of a research question about media than it is about democratization or democratic backsliding.
One way you could tie this more directly to democratic backsliding, while still keeping the general topic that you’re interested in, would be to connect this directly to elite rhetoric. So, for example, it could be the case that right-wing media starts reporting violent crime in left-learning cities after the president tweets or makes a public statement expressing an interest in deploying troops there. This could possibly fit into a DID framework: compare cities that the president attacks as being high on crime with other cities that have similar crime reporting trends by right-wing media. Show that the differential between actual crime and crime reporting significantly increases in the “called-out” cities as compared to the “non-called out” cities.
You could then frame the paper around how elites attempting to roll back democratic norms around the deployment of the military/national guard send out elite cues that are then picked up on and expanded on by sympathetic media.
Alternately, you could look at predictors of when the president suggests an armed intervention in an American city. Compare actual crime rates with rates of mentioning violent crime on Fox News or other right-wing media that the President is known to consume, and show that the right-wing media is a much stronger predictor than actual crime rates.
 
Does the paper offer enough substance and originality. It would update several older studies with new techniques and data, so I am afraid that the contribution part will be hard to write, and I welcome any recommendations to strengthen its contribution.

This is an issue here as well – partisan bias in the media is something that is pretty well established, and so I think that, even if you were to find an effect, the novelty of the paper would be pretty limited. An angle similar to the one I suggested above would help with this, but even so I think if you were to try and submit it for publication a big critique you’d get would be that it lacks originality.
A bigger critique on substance would be that I’m not sure what this paper would tell us about relationships between media, crime, and democratic backsliding more generally. Remember that a key aspect of what we’re looking for here is generalizability: what do any empirical findings in this particular case tell us about broader relationships? 
One way to think about this could be to frame the paper in terms of deeper relationships between media independence and democratic backsliding. So, examine the cross-national relationships between media independence, media centralization, or partisan bias in the media and democratic downturns – assuming there is a relationship there, then say that you want to examine one mechanism through which this relationship could lead to democratic backsliding, which is the partisan slanting of important public policy issues like violent crime.
Or, alternately, you could frame the paper in terms of the relationship between violent crime and democratic backsliding. Take a look at the Carothers and Hartnett piece “misunderstanding democratic backsliding,” which focuses on the relationship between crime and democratic backsliding. Then look at macro-level cross-national relationships between crime and democratic backsliding – I would imagine there probably isn’t an empirical relationship at a broad level (countries backslide even without an empirical increase in crime). This could then be framed as a puzzle (why do people support “tough on crime” populists even when there isn’t an increase in crime?), which then examining the partisan bias in coverage of crime in the United States could help illuminate.
 
A few other comments: it sounds from your e-mail like you have an initial good handle on the coding of the violent crime reporting variable. Yet I would caution you that there are likely to be some significant hurdles to overcome in turning this variable into meaningful analysis. Step 4 in particular is likely to be quite complicated, since it involves combining several disparate data sources. This kind of combining and cleaning of data often is much more time-consuming than one initially anticipates. ‘
As mentioned above, I think you’ll also have to do some significant work thinking about how to frame this in terms of theory so as to provide a novel contribution, and also specifically how to go about operationalizing your variables in a meaningful way.
 

my roadmap:
The Media Independence and Democratic Backsliding
Or
The fabricated reasons:
Tough on Crime rhetoric and Democratic Backsliding
Stage 1: Crime rate differentiation vs media bias
Stage 2: Media topic vs Admin stances
Stage 3: cross national tests
Op1:
right-wing media starts reporting violent crime in left-leaning cities after the president tweets or makes a public statement expressing an interest in deploying troops there
DV: standardized rate of crime and report of crime, IV: unit, time
Y_it = beta * X_it + D_t
Op2:
(why do people support “tough on crime” populists even when there isn’t an increase in
crime?) then examining the partisan bias in coverage of crime in the United States could help illuminate.