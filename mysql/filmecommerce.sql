-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 18, 2019 at 05:59 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `filmecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `actors`
--

CREATE TABLE `actors` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `middle_name` varchar(40) DEFAULT NULL,
  `last_name` varchar(40) NOT NULL,
  `gender` char(1) NOT NULL,
  `about` text NOT NULL,
  `img` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `actors`
--

INSERT INTO `actors` (`id`, `first_name`, `middle_name`, `last_name`, `gender`, `about`, `img`) VALUES
(1, 'Aaron', '', 'Paul', 'M', '<p>Aaron Paul Sturtevant was born in Emmett, Idaho, on August 27, 1979, the youngest of four children born to Darla (<i>née</i>) and Robert Sturtevant, a Baptist minister. He was born a month premature in his parents\' bathroom. Paul attended Centennial High School in Boise, Idaho, graduating in 1997. After graduation, he drove to Los Angeles in his 1982 Toyota Corolla with his mother and $6,000 in savings. Prior to gaining fame, he appeared on an episode of <i>The Price is Right</i>, which aired on January 3, 2000. Appearing under his real name, he played and lost Dice Game and overbid $132 on the Showcase. He also worked as a movie theater usher at Universal Studios in Hollywood.</p>\r\n<p>Mr. Paul is best known for portraying Jesse Pinkman in the AMC series <i>Breaking Bad</i>, for which he won several awards, including the Critics\' Choice Television Award for Best Supporting Actor in a Drama Series (2014), the Satellite Award for Best Supporting Actor - Series, Miniseries, or Television Film (2013), and the Primetime Emmy Award for Outstanding Supporting Actor in a Drama Series. This made him one of only two actors to win the latter category three times (2010, 2012, 2014), since its separation into drama and comedy. He has also won the Saturn Award for Best Supporting Actor on Television three times (2009, 2011, 2013), more than any other actor in that category.</p>', 'artists/aaron-paul_Cover.jpg'),
(5, 'Alicia', '', 'Vikander', 'F', '<p>Alicia Amanda Vikander was born in Gothenburg, the daughter of Maria Fahl Vikander, a stage actress, and Svante Vikander, a psychiatrist. Her parents are from small villages in the north and south of Sweden, respectively. They separated when Vikander was two months old, and she was mostly raised by her single mother. She has five half-siblings on her father\'s side. Vikander has said that she had the best of both worlds growing up, being an only child to her mother and being surrounded by a big family when she went to her father\'s house every second week. Her ancestry is Swedish and one quarter Finnish.</p>\r\n<p>Vikander started her career as an actor at the age of seven, starring in a production of <i>Kristina från Duvemåla</i> at The Göteborg Opera, which was written by Björn Ulvaeus and Benny Andersson from ABBA, performing in the play for three-and-a-half years. She appeared in several musicals at the Opera, such as <i>The Sound of Music</i> and <i>Les Misérables</i>. In 1997 she participated in the TV4 kids\' singing show <i>Småstjärnorna</i>; she performed the Helen Sjöholms song \"Du måste finnas\". She won her episode with praise by the judges for her stage presence.</p>\r\n<p>Vikander trained in ballet from the age of nine with the <i>Svenska Balettskolan i Göteborg</i> (1998-2004). At the age of 15, Vikander moved from Gothenburg to train at the ballet\'s upper school (Royal Swedish Ballet School) in Stockholm and she lived on her own, working to become a principal dancer. She travelled around the world for summer courses, training one summer at the School of American Ballet in New York City.</p>\r\n<p>At the age of 16, she almost left school to commit fully to the television series she worked on with director Tomas Alfredson, realizing her passion for acting. Her dance career was sidelined by injuries in her late teens. She auditioned for drama school but was turned down twice. At one point, Vikander was admitted to law school but she never attended, following her dreams to become an actress instead.</p>\r\n<p>She began her professional acting career by appearing in Swedish short films and television series and first gained recognition for her role as Josefin Björn-Tegebrandt in the drama series <i>Andra Avenyn</i> (2008-2010). Vikander made her feature film debut in <i>Pure</i> (2010), for which she won the Guldbagge Award for Best Actress. She gained wider recognition in 2012 for playing Kitty in Joe Wright\'s adaptation of <i>Anna Karenina</i> and Queen Caroline Mathilde in the Danish film <i>A Royal Affair</i>.</p>\r\n<p>In 2014 and 2015, Ms. Vikander achieved global recognition for her roles as activist Vera Brittain in <i>Testament of Youth</i>, a humanoid robot in <i>Ex Machina</i>, for which she was nominated for the Golden Globe Award and BAFTA Award for Best Supporting Actress, and painter Gerda Wegener in <i>The Danish Girl</i>, for which she received the Academy Award, Screen Actors Guild Award, and Critics\' Choice Movie Award for Best Supporting Actress. In 2016, Vikander was listed by <i>Forbes</i> in its 30 Under 30 list. She has since held a supporting role in the action film <i>Jason Bourne</i> (2016) and starred as Lara Croft in the adventure film <i>Tomb Raider</i> (2018).</p>', 'artists/alicia-vikander_Cover.jpg'),
(7, 'Anna', '', 'Gunn', 'F', '<p>Anna Gunn was born in Cleveland, Ohio, but moved at an early age and was raised in Santa Fe, New Mexico, the daughter of Sharon Anna Kathryn \"Shana\" Gunn (née Peters), an interior designer, and Clemens Earl Gunn Jr., who worked in real estate. She graduated from Santa Fe Preparatory School in 1986. She attended Northwestern University, where she majored in theater and gradauted in 1990. During fall of 1988, Gunn spent a semester abroad to study at the British American Drama Academy. After moving to Laurel Canyon, Los Angeles, she shared a house with Pamela Adlon.</p>\r\n<p>Ms. Gunn is known for her role as Skyler White in the AMC drama series <i>Breaking Bad</i>. In 2012, 2013, and 2014, she was nominated for the Primetime Emmy Award for Outstanding Supporting Actress in a Drama Series for her performance, winning in 2013 and 2014. In August 2013, she wrote an op-ed piece for <i>The New York Times</i> examining the public dislike toward her character.</p>\r\n<p>Gunn played a recurring role as Assistant District Attorney Jean Ward on the ABC series <i>The Practice</i> from 1997 to 2002, and was a regular as Martha Bullock on HBO\'s <i>Deadwood</i> from 2005 to 2006. She appeared on <i>Seinfeld</i> in the episode \"The Glasses\", in the <i>Six Feet Under</i> episode \"Parallel Play\", and on the first season of <i>Murder One</i>.</p>\r\n<p>Gunn provided the voice for Ariel in the <i>Legacy of Kain</i> series of video games. She also appeared in the <i>Quantum Leap</i> episode \"The Play\'s The Thing\". In 2011, she played a lead role in the Lifetime movie <i>Secrets of Eden</i>, opposite John Stamos. Her other film credits include <i>Without Evidence</i>, <i>Enemy of the State</i>, <i>Treading Water</i>, <i>Twelve Mile Road</i>, and <i>Red State</i>.</p>\r\n<p>In February 2013, the cable network Bravo announced Gunn would star in a television pilot for a one-hour drama, <i>Rita</i>, based on a Danish TV series about a private-school teacher and mother. The Fox TV Studios pilot was to be written by Krista Vernoff and directed by Miguel Arteta.</p>\r\n<p>In 2014, Gunn starred Off-Broadway with Billy Magnussen in <i>Sex With Strangers</i>, directed by David Schwimmer at Second Stage Theatre.</p>\r\n<p>Gunn starred in the 2016 film <i>Equity</i>. Billed as the first female-driven Wall Street movie, the film premiered at the 2016 Sundance Film Festival.</p>', 'artists/anna-gunn_Cover.jpg'),
(9, 'Anne', '', 'Hathaway', 'F', '<p>Anne Jacqueline Hathaway was born in the Brooklyn borough of New York City on November 12, 1982. Her father, Gerald, is a labor attorney, and her mother, Kate (<i>née</i> McCauley), is a former actress. Hathaway\'s maternal grandfather was WIP-AM Philadelphia radio personality Joe McCauley. Kate is of Irish descent, and Gerald is of Irish, French, English and German ancestry. Hathaway\'s surname originates in England, and she was named after Shakespeare\'s wife. She is the second of three children, with two brothers, one older, Michael, and one younger, Thomas. When she was six, her family moved to the Short Hills neighborhood of Millburn, New Jersey, where she then grew up.</p>\r\n<p>At age six, when Hathaway watched her mother perform in <i>Les Misérables</i> as Fantine, she instantly became fascinated with the stage, but her parents were not keen on allowing her to pursue an acting career. After this, Kate quit acting to raise Hathaway and her brothers. Hathaway was raised as Roman Catholic with what she considers \"really strong values\" and stated that she wished to be a nun during her childhood, but acting was always a high priority for her. At the age of 15, her relationship with the Catholic Church changed, after learning that Michael was gay. Her family left the church due to its intolerance of homosexuality, converting to Episcopalianism, but left that too. In 2009, Hathaway stated that her religious beliefs are \"a work in progress\".</p>\r\n<p>Hathaway attended Brooklyn Heights Montessori School and Wyoming Elementary School in Millburn. She graduated from Millburn High School, where she played soccer and participated in many plays, including <i>Once Upon a Mattress</i>, in which she portrayed Winnifred. Later, she appeared in other plays like <i>Jane Eyre</i> and <i>Gigi</i>, at New Jersey\'s Paper Mill Playhouse. She studied at the American Academy of Dramatic Arts in 1993 and became the first teenager admitted into the Barrow GroupTheater Company\'s acting program. She spent several semesters studying as an English major and political science minor at Vassar College in Poughkeepsie, New York, before transferring to New York University\'s Gallatin School of Individualized Study. She has stated that she would have become either an English teacher or psychologist if she were not acting.</p>\r\n<p>Between 1998 and 1999, Hathaway sang soprano with the All-Eastern U.S. High School Honors Chorus at Carnegie Hall and in plays at Seton Hall Preparatory School in West Orange, New Jersey. At the start of her film career, her acting style and beauty were compared to the likes of Judy Garland-whom she cites as one of her favorite actresses-and Audrey Hepburn. Three days after her performance at Carnegie Hall, Hathaway was cast in the short-lived Fox television series <i>Get Real</i>. Hathaway played the teenager Meghan Green alongside Jon Tenney, Debrah Farentino and Jesse Eisenberg. Despite her early success, Hathaway suffered from depression and anxiety as a teenager; she says she has since grown from it. She missed her first college semester for the filming of her cinematic debut <i>The Princess Diaries</i> (2001). She says she never regretted not finishing her degree, as she enjoyed being with others who \"were trying to grow up\".</p>\r\n<p>Hathaway made a transition to adult roles with the 2005 dramas <i>Havoc</i> and <i>Brokeback Mountain</i>. The comedy film <i>The Devil Wears Prada</i> (2006), in which she played an assistant to a fashion magazine editor, was her biggest commercial success to that point. She played a recovering alcoholic in the drama <i>Rachel Getting Married</i> (2008), which garnered her a nomination for the Academy Award for Best Actress. She followed this with roles in the commercially successful romantic films <i>Bride Wars</i> (2009), <i>Valentine\'s Day</i> (2010) and <i>Love & Other Drugs</i> (2010).</p>\r\n<p>In 2012, Hathaway starred as Selina Kyle in her highest-grossing film <i>The Dark Knight Rises</i>, the final installment in <i>The Dark Knight</i> trilogy. That year, she also played Fantine, a prostitute dying of tuberculosis, in the musical romantic drama <i>Les Misérables</i>, for which she earned multiple accolades, including an Academy Award for Best Supporting Actress. She went on to play a scientist in the science fiction film <i>Interstellar</i> (2014), the owner of an online fashion site in the comedy film <i>The Intern</i> (2015), the White Queen-a role she first played in <i>Alice in Wonderland</i> (2010)-in <i>Alice Through the Looking Glass</i> (2016) and a haughty actress in the heist film <i>Ocean\'s 8</i> (2018). Hathaway has also won an Emmy Award for providing her voice in <i>The Simpsons</i>, sung for soundtracks, appeared on stage, and hosted events.</p>\r\n<p>Ms. Hathaway supports several charities. A board member of the Lollipop Theatre Network, an organization that brings films to sick children in hospitals, she advocates gender equality as a UN Women goodwill ambassador. She is married to businessman Adam Shulman, with whom she has a son.</p>', 'artists/anne-hathaway_Cover.jpg'),
(10, 'Benedict', '', 'Cumberbatch', 'M', '<p>Benedict Timothy Carlton Cumberbatch was born at Queen Charlotte\'s and Chelsea Hospital in the White City district of West London\'s Hammersmith and Fulham borough, to actors Timothy Carlton (born Timothy Carlton Congdon Cumberbatch) and Wanda Ventham. He grew up in the Royal Borough of Kensington and Chelsea. He has a half-sister, Tracy Peacock, from his mother\'s first marriage. His grandfather, Henry Carlton Cumberbatch, was a submarine officer of both World Wars, and a prominent figure of London high society. His great-grandfather, Henry Arnold Cumberbatch, was a diplomat who served as consul in Turkey and Lebanon. His great-great-grandfather, Robert William Cumberbatch, also was a British consul in Turkey and the Russian Empire. Cumberbatch is third cousin 16 times removed of King Richard III, whom he portrayed in <i>The Hollow Crown</i>. Motivated by this connection, he attended Richard III\'s 2015 reburial and read a poem.</p>\r\n<p>Mr. Cumberbatch attended boarding schools from the age of 8; he was educated at Brambletye School in West Sussex and was an arts scholar at Harrow School. He was a member of The Rattigan Society, Harrow\'s principal club for the dramatic arts, which was named after Old Harrovian and playwright Terence Rattigan. He was involved in numerous Shakespearean works at school and made his acting debut as Titania, Queen of the Fairies, in <i>A Midsummer Night\'s Dream</i> when he was 12. Cumberbatch\'s drama teacher, Martin Tyrell, called him \"the best schoolboy actor\" he had ever worked with.</p>\r\n<p>After leaving Harrow, Cumberbatch took a gap year to volunteer as an English teacher at a Tibetan monastery in Darjeeling, India. He then attended the Victoria University of Manchester (now the University of Manchester), where he studied Drama. He continued his training as an actor at the London Academy of Music and Dramatic Art (LAMDA) graduating with an MA in Classical Acting. On 16 January 2018, it was announced that Cumberbatch would succeed Timothy West as President of LAMDA. On being appointed Cumberbatch stated it would be \"an honour to watch the next generation of actors, directors and technicians blossom\".</p>\r\n<p>He first performed at the Open Air Theatre, Regent\'s Park in Shakespearean productions and made his West End debut in Richard Eyre\'s revival of <i>Hedda Gabler</i> in 2005. Since then he has starred in the Royal National Theatre productions <i>After the Dance</i> (2010) and <i>Frankenstein</i> (2011). In 2015, he played William Shakespeare\'s <i>Hamlet</i> at the Barbican Theatre.</p>\r\n<p>Cumberbatch\'s television work includes appearances in <i>Silent Witness</i> (2002) and <i>Fortysomething</i> (2003) before playing Stephen Hawking in the television film <i>Hawking</i> in 2004. He has starred as Sherlock Holmes in the series <i>Sherlock</i> since 2010. He has also headlined Tom Stoppard\'s adaptation of <i>Parade\'s End</i> (2012), <i>The Hollow Crown: The Wars of the Roses</i> (2016) and <i>Patrick Melrose</i> (2018). In film, Cumberbatch has starred in <i>Amazing Grace</i> (2006) as William Pitt the Younger, <i>Star Trek Into Darkness</i> (2013) as Khan, <i>12 Years a Slave</i> (2013) as William Prince Ford, <i>The Fifth Estate</i> (2013) as Julian Assange and <i>The Imitation Game</i> (2014) as Alan Turing. From 2012 to 2014, through voice and motion capture, he played the characters of Smaug and the Necromancer in <i>The Hobbit</i> film series. Cumberbatch portrays the Marvel Comics character Dr. Stephen Strange in the Marvel Cinematic Universe, appearing in <i>Doctor Strange</i> (2016), <i>Thor: Ragnarok</i> (2017), <i>Avengers: Infinity War</i> (2018) and <i>Avengers: Endgame</i> (2019).</p>\r\n<p>Cumberbatch has received numerous awards and nominations for acting including three Laurence Olivier Award nominations, winning Best Actor in a Play for <i>Frankenstein</i>. He has also received six Primetime Emmy Award nominations, winning Outstanding Lead Actor in a Miniseries or a Movie for <i>Sherlock</i>. His performance in <i>The Imitation Game</i> earned him an Academy Award nomination for Best Actor. In addition, he has received seven BAFTA nominations, five Screen Actors Guild Award nominations and two Golden Globe Award nominations among others. In 2014, Time magazine included him in its annual <i>Time</i> 100 as one of the \"Most Influential People in the World\". He was appointed with a Commander of the Order of the British Empire by Queen Elizabeth II in June 2015 for his services to the performing arts and to charity.</p>', 'artists/benedictcumberbatch_Cover.jpg'),
(12, 'Ben', '', 'Mendelsohn', 'M', '<p>Paul Benjamin Mendelsohn was born in Melbourne, Victoria, the son of Carole Ann (née Ferguson) and Frederick Arthur Oscar Mendelsohn. His father is a prominent medical researcher who previously headed the Howard Florey Institute in Melbourne, where he maintains the status of Professor Emeritus. Ben and his two brothers, Tom and David, as well as his mother (deceased), a registered nurse, lived in Europe and the US for long periods of time, and returned to Melbourne when he was in high school. He attended Heidelberg Primary School and Eltham High and Banyule High schools. He took drama because he thought it was an easy class.</p>\r\n<p>In October 2009, he was featured in an episode of the Australian series <i>Who Do You Think You Are?</i>, which traced the ancestry of his paternal grandfather, who was from a Jewish family, as well as of convicts on his mother\'s side. Searching for a connection to composer Felix Mendelssohn, which was eventually dismissed, he discovered links to 19th-century Prussia. His ancestors were among the first Prussian Jews to be naturalised in Schneideühl in the province of Posen, now Pila in modern Poland. He also has Greek, German, and British Isles ancestry.</p>\r\n<p>After several early television roles, including <i>The Henderson Kids</i> alongside Kylie Minogue, he attracted notice in his breakout film, <i>The Year My Voice Broke</i> (1987), and won the Australian Film Institute Award for Best Supporting Actor. His next major role was in <i>The Big Steal</i> (1990), and <i>Spotswood</i> (1992), co-starring with Anthony Hopkins; this was followed in 1994 by <i>Metal Skin</i> and in 1996 by <i>Cosi</i> and <i>Idiot Box</i>.</p>\r\n<p>In 2005, he was preparing to play Mark Antony in the Sydney Theatre Company-produced <i>Julius Caesar</i>, and he was in the Terrence Malick-directed film <i>The New World</i>.</p>\r\n<p>In 2007, Mendelsohn starred in the third season of the TV series <i>Love My Way</i> and in 2008, he appeared in Baz Luhrmann\'s <i>Australia</i>. He filmed the 10-part Melbourne series <i>Tangle</i> which premiered on Showcase in 2009. In 2009, he appeared in the American science fiction film <i>Knowing</i> directed by Alex Proyas. The same year, Mendelsohn starred as Ned in <i>Beautiful Kate</i>, directed by Rachel Ward, opposite Bryan Brown and Rachel Griffiths.</p>\r\n<p>In 2010, he appeared in <i>Animal Kingdom</i>, starring in the film as Andrew \"Pope\" Cody, a criminal on the run from the law living in the notorious Melbourne Underworld. The role won him many awards, including IF Award\'s Best Actor and the AFI\'s award for Best Actor in a Leading Role. He was also named by GQ Australia as Actor of the Year for 2010.</p>\r\n<p>Mendelsohn was selected as one of the subjects in the <i>Who\'s Who in Australia</i> 2012 edition. In 2012, Mendelsohn played the supporting roles of John Daggett in Christopher Nolan\'s <i>The Dark Knight Rises</i> and Robin Van Der Hook in Derek Cianfrance\'s <i>The Place Beyond the Pines</i>.</p>\r\n<p>In 2012, he appeared in Florence + the Machine\'s music video for \"Lover to Lover\". The video was directed by Vincent Haycock. In 2013, he guest starred in the TV series <i>Girls</i> as the father of Jessa, played by Jemima Kirke.</p>\r\n<p>In 2014, Mr. Mendelsohn joined the cast of <i>Bloodline</i>, a Netflix original from the creators of <i>Damages</i>. The first season premiered on the site on 20 March 2015 and was well received. Mendelsohn\'s performance on the series was lauded by critics, resulting in a Primetime Emmy Award win as well as a Golden Globe Award nomination. In September 2016, Netflix announced that the show had been cancelled, and that it would end after its third season in 2017. Season 3 of <i>Bloodline</i> received negative reviews, and Mendelsohn appeared in two episodes of it.</p>\r\n<p>In 2016, he appeared in video as an onstage \"stand-in\" during the Nostalgia For the Present concert tour of Australian singer Sia Furler for his song, \"Breathe Me\".</p>\r\n<p>In December 2016, he had a supporting role in the <i>Star Wars</i> franchise\'s <i>Rogue One</i>, portraying villain Director Krennic. He called the opportunity to act in a <i>Star Wars</i> film a \"a childhood dream come true\". Mendelsohn also narrated the virtual band Gorillaz\' fifth album <i>Humanz</i>.</p>\r\n<p>He has also starred in <i>Darkest Hour</i> (2017) and Steven Spielberg\'s <i>Ready Player One</i> (2018). In 2017, he joined the Marvel Cinematic Universe as Talos in <i>Captain Marvel</i> (2019).</p>', 'artists/ben-mendelsohn_Cover.jpg'),
(16, 'Bryan', '', 'Cranston', 'M', '<p>Bryan Lee Cranston was born on March 7, 1956, in Hollywood, California, the second of three children born to radio actress Annalisa (née Sell; 1923-2004) and actor and former amateur boxer Joseph Louis Cranston (1924-2014). His father was of Austrian-Jewish, German, and Irish descent, while his mother was the daughter of German immigrants. He has an older brother, Kyle, and a younger sister, Amy. Cranston was raised in Canoga Park, California. Cranston\'s father held many jobs before deciding to become an actor, but did not secure enough roles to provide for his family. He eventually walked out on the family when Cranston was 11 years old, and they did not see each other again until a 22-year-old Cranston and his brother decided to track their father down. He then maintained a relationship with his father until his father\'s death in 2014.</p>\r\n<p>Cranston has claimed that he based his portrayal of Walter White on his own father, who had a slumped posture \"like the weight of the world was on his shoulders\". After his father left, he was raised partly by his grandparents, living on their poultry farm in Yucaipa, California. He has called his parents \"broken people\" who were \"incapacitated as far as parenting\" and caused the family to lose their house in a foreclosure. In 1968, when he was 12 years old, he encountered a young Charles Manson while riding horses with his teenage cousin at the Spahn Ranch. This happened about a year before Manson ordered the Tate-LaBianca murders. Cranston graduated from Canoga Park High School, where he was a member of the school\'s chemistry club, and earned an associate\'s degree in police science from Los Angeles Valley College in 1976.</p>\r\n<p>Mr. Cranston is best known for his roles as Walter White on the AMC crime drama <i>Breaking Bad</i>, Hal on the Fox sitcom <i>Malcolm in the Middle</i>, and Dr. Tim Whatley on the NBC sitcom <i>Seinfeld</i>. Cranston\'s performance as Walter White on <i>Breaking Bad</i> is widely regarded as one of the best performances in television history.</p>\r\n<p>For <i>Breaking Bad</i>, Cranston won the Primetime Emmy Award for Outstanding Lead Actor in a Drama Series four times (2008-2010, 2014), including three consecutive wins, the second time in television history after Bill Cosby in <i>I Spy</i> during the 1960s. After becoming one of the producers of <i>Breaking Bad</i> in 2011, he also won the award for Outstanding Drama Series twice. Cranston was also nominated three times for the Outstanding Supporting Actor in a Comedy Series for his role in <i>Malcolm in the Middle</i>. His role in <i>Breaking Bad</i> also earned him five Golden Globe nominations, with one win in 2014, nine Screen Actors Guild Award nominations, with four wins, and six Satellite Award nominations, with four wins. In June 2014, he won a Tony Award for Best Actor in a Play for his portrayal of Lyndon B. Johnson in the play <i>All the Way</i> on Broadway, a role he reprised in the television film of the same name, which debuted on HBO in May 2016. In April 2018, he won the Laurence Olivier Award for Best Actor for his portrayal of Howard Beale in <i>Network</i> at the National Theatre, London. For the film <i>Trumbo</i> (2015), he received widespread acclaim and was nominated for the Academy Award for Best Actor.</p>\r\n<p>Cranston has directed episodes of various television series, including seven episodes of <i>Malcolm in the Middle</i>, three episodes of <i>Breaking Bad</i>, two episodes of <i>Modern Family</i>, one episode of <i>The Office</i>, and ten episodes of <i>Sneaky Pete</i>. He has also appeared in several acclaimed films, such as <i>Saving Private Ryan</i> (1998), <i>Little Miss Sunshine</i> (2006), <i>Drive</i> (2011), <i>Argo</i> (2012), and <i>Godzilla</i> (2014). In 2015, Cranston, together with David Shore, executive produced and wrote the story for the Amazon Studios original crime drama <i>Sneaky Pete</i>.</p>', 'artists/bryan-cranston_Cover.jpg'),
(29, 'Gary', '', 'Oldman', 'M', '<p>Known for his versatility and expressive acting style, Oldman is regarded as one of the greatest actors of his generation. Among other accolades, he has won an Academy Award, three BAFTA Awards, two Critics\' Choice Awards, a Golden Globe Award and a Screen Actors Guild Award, along with nominations for an Emmy Award and the Palme d\'Or. In 2011, <i>Empire</i> readers voted him the recipient of the Empire Icon Award.</p>\r\n<p>Gary Leonard Oldman was born in London, the son of Leonard Bertram Oldman (1921-1985), a former sailor who also worked as a welder, and Kathleen (née Cheriton; 1919-2018). He has stated that Leonard was an alcoholic who left the family when Oldman was seven years old. Oldman attended West Greenwich School in Deptford, leaving school at the age of 16 to work in a sports shop. He was a pianist as a child, and later a singer, but gave up his musical aspirations to pursue an acting career after seeing Malcolm McDowell\'s performance in the 1971 film <i>The Raging Moon</i>. In a 1995 interview with Charlie Rose, Oldman said: \"Something about Malcolm just arrested me, and I connected, and I said, \'I wanna do that\'.\"</p>\r\n<p>Growing up in south London, Oldman supported his local football club Millwall, and also followed Manchester United so that he could watch his idol, George Best. In 2011, Oldman would learn from his mother that his father represented Millwall after World War II, with Oldman stating: \"Just after the war, she ran a boarding house, for football players, Millwall players. And I knew that my dad was involved somehow with the reserve team. But two weeks ago my mum said, \'Oh yeah, your dad played for Millwall. When he was young he had a couple of first team games\'.\"</p>\r\n<p>Mr. Oldman studied with the Young People\'s Theatre in Greenwich during the mid-1970s, while working jobs on assembly lines, as a porter in an operating theatre, selling shoes and beheading pigs in an abattoir. He unsuccessfully applied to the Royal Academy of Dramatic Art (RADA), which welcomed him to try again the following year, but advised him to find something else to do for a living. When asked by Charlie Rose if he had reminded RADA of this, Oldman joked that \"the work speaks for itself\".</p>\r\n<p>He won a scholarship to attend the Rose Bruford College in Sidcup, Southeast London, from which he graduated with a BA in Acting in 1979. Oldman describes himself as \'shy but diligent worker\' during his time there, where he performed roles such as Puck in Shakespeare\'s <i>A Midsummer Night\'s Dream</i>.</p>\r\n<p>Oldman began acting in theatre in 1979, and made his earliest screen appearances in <i>Remembrance</i> (1982) and <i>Meantime</i> (1983). He continued to lead a stage career, during which he performed at London\'s Royal Court and was a member of the Royal Shakespeare Company, with credits including <i>Cabaret</i> (1979), <i>The Massacre at Paris</i> (1980), <i>Entertaining Mr Sloane</i> (1983), <i>Saved</i> (1983), <i>The Country Wife</i> (1987) and <i>Hamlet</i> (1987). Oldman rose to prominence in British film with his portrayals of Sid Vicious in <i>Sid and Nancy</i> (1986), Joe Orton in <i>Prick Up Your Ears</i> (1987), a football firm leader in <i>The Firm</i> (1989) and Rosencrantz in <i>Rosencrantz & Guildenstern Are Dead</i> (1990). Identified with the \"Brit Pack\", he achieved greater renown as a Hell\'s Kitchen gangster in <i>State of Grace</i> (1990), Lee Harvey Oswald in <i>JFK</i> (1991) and Count Dracula in <i>Bram Stoker\'s Dracula</i> (1992).</p>\r\n<p>Oldman went on to star as the antagonists of several films, including <i>True Romance</i> (1993), <i>The Fifth Element</i> (1997), <i>Air Force One</i> (1997) and <i>The Contender</i> (2000); corrupt DEA agent Norman Stansfield, whom Oldman portrayed in <i>Léon: The Professional</i> (1994), has been ranked as one of cinema\'s best villains. He meanwhile played Ludwig van Beethoven in <i>Immortal Beloved</i> (1994). In the 21st century, Oldman is known for his roles as Sirius Black in the <i>Harry Potter</i> series, James Gordon in <i>The Dark Knight Trilogy</i>, George Smiley in <i>Tinker Tailor Soldier Spy</i> (2011), a human leader in <i>Dawn of the Planet of the Apes</i> (2014), and Winston Churchill in <i>Darkest Hour</i> (2017), which earned him the Academy Award for Best Actor. Films in which he has appeared have grossed over $11 billion.</p>\r\n<p>In addition to acting in film, Oldman wrote and directed <i>Nil by Mouth</i> (1997); featured in television shows, such as <i>Fallen Angels</i>, <i>Tracey Takes On.</i> and <i>Friends</i>; appeared in music videos for David Bowie, Guns N\' Roses and Annie Lennox; and provided the voice of Viktor Reznov in the <i>Call of Duty</i> video game series.</p>', 'artists/gary-oldman_Cover.jpg'),
(49, 'Maggie', '', 'Smith', 'F', '<p>Has had an extensive, varied career on stage, film, and television, spanning over 67 years. Smith has appeared in more than 50 films, and is one of Britain\'s most recognisable actresses. A prominent figure in British culture for decades, she was made a Dame by Queen Elizabeth II in 1990 for contributions to the performing arts, and received the Companion of Honour from the Queen in 2014 for services to drama. She won an Emmy Award in 2003 for <i>My House in Umbria</i>, to become one of the few actresses to have achieved the Triple Crown of Acting, and starred as Lady Violet Crawley, Dowager Countess of Grantham, on <i>Downton Abbey</i> (2010-2015), for which she won three Emmys, her first non-ensemble Screen Actors Guild Award, and her third Golden Globe. Her honorary awards include the BAFTA Special Award in 1993, the BAFTA Fellowship in 1996, and the Special Olivier Award in 2011. She received the Stratford Shakespeare Festival\'s Legacy Award in 2012, and the Bodley Medal by the University of Oxford\'s Bodleian Libraries in 2016.</p>\r\n<p>Dame Margaret Natalie Smith was born in Ilford, Essex, on 28 December 1934. Her father, Nathaniel Smith (1902-1991), was a public health pathologist from Newcastle upon Tyne who worked at Oxford University; her mother, Margaret Hutton (<i>née</i> Little; 1896-1977), was a Scottish secretary from Glasgow. During her childhood, Smith\'s parents told her the romantic story of how they had met on the train from Glasgow to London via Newcastle. She moved with her family to Oxford when she was four years old. She had older twin brothers, Alistair (died 1981) and Ian. The latter went to architecture school. Smith attended Oxford High School until age 16, when she left to study acting at the Oxford Playhouse.</p>\r\n<p>In 1952, aged 17, under the auspices of the Oxford University Dramatic Society, Smith began her career as Viola in <i>Twelfth Night</i> at the Oxford Playhouse. In 1954, she appeared in the television programme <i>Oxford Accents</i> produced by Ned Sherrin. She appeared in her first film in 1956, in an uncredited role in <i>Child in the House</i>, and made her Broadway debut the same year playing several roles in the review <i>New Faces of \'56</i>, at the Ethel Barrymore Theatre from June to December 1956. In 1957, she starred opposite Kenneth Williams in the musical comedy <i>Share My Lettuce</i>, written by Bamber Gascoigne. In 1958, she received the first of her 18 BAFTA Film and TV nominations for her role in the film <i>Nowhere to Go</i>.</p>\r\n<p>In 1962, Smith won the first of a record five Best Actress Evening Standard Awards for her roles in Peter Shaffer\'s plays <i>The Private Ear and The Public Eye</i>, again opposite Kenneth Williams. She became a fixture at the Royal National Theatre in the 1960s, most notably for playing Desdemona in <i>Othello</i> opposite Laurence Olivier and earning her first Oscar nomination for her performance in the 1965 film version. She appeared opposite Olivier in Ibsen\'s <i>The Master Builder</i>, and played comedic roles in <i>The Recruiting Officer</i> and <i>Much Ado About Nothing</i>. Her other films at this time included <i>Go to Blazes</i> (1962), <i>The V.I.P.s</i> (1963), <i>The Pumpkin Eater</i> (1964), <i>Young Cassidy</i> (1965), <i>Hot Millions</i> (1968), and <i>Oh! What A Lovely War</i> (1969).</p>\r\n<p>Smith won the Academy Award for Best Actress for her performance in the title role of the 1969 film <i>The Prime of Miss Jean Brodie</i>. Vanessa Redgrave had originated the role on stage in London, and Zoe Caldwell won the Tony Award for Best Actress in a Play, when she played the role in New York. The role also won Smith her first BAFTA Award. In 1970, she played the title role in Ingmar Bergman\'s London production of the Ibsen play <i>Hedda Gabler</i>, winning her second Evening Standard award for Best Actress. She received her third Academy Award nomination for the 1972 film <i>Travels with My Aunt</i>. She also appeared in the film <i>Love and Pain and the Whole Damn Thing</i> (1973). In the mid-1970s, she made several guest appearances on <i>The Carol Burnett Show</i>.</p>\r\n<p>From 1976 to 1980, she appeared in numerous productions at the Stratford Shakespeare Festival in Stratford, Ontario, to acclaim; her roles included Queen Elizabeth in <i>Richard III</i>, Cleopatra, Lady Macbeth, Virginia Woolf in <i>Virginia</i>, and opposite Brian Bedford in the Noël Coward comedy <i>Private Lives</i>. Also during this time, she starred on Broadway in <i>Private Lives</i> in 1975 and <i>Night and Day</i> in 1979, receiving Tony Award nominations for both. Smith received the 1978 Academy Award for Best Supporting Actress for her role as Diana Barrie in <i>California Suite</i>. For this role, she also won her first Golden Globe Award. Afterward, upon hearing that Michael Palin was about to embark on the film <i>The Missionary</i> (1982) with Smith, her co-star Michael Caine is supposed to have humorously telephoned Palin, warning him that she would steal the film. Her other films at this time include <i>Murder by Death</i> (1976) and <i>Death on the Nile</i> (1978).</p>\r\n<p>In 1981, Smith played the goddess Thetis in <i>Clash of the Titans</i>. For her role on television as <i>Mrs Silly</i>, she received the first of her four Best Actress BAFTA TV Award nominations. On stage, she won her third and fourth Evening Standard awards for Best actress, for <i>Virginia</i> in 1981 and <i>The Way of the World</i> in 1984. She won three more Best Actress BAFTA Awards for her roles as Joyce Chilvers in the 1984 black comedy <i>A Private Function</i>, Charlotte Bartlett in the 1986 Merchant Ivory production of <i>A Room with a View</i>, and the title role in the 1987 film <i>The Lonely Passion of Judith Hearne</i>. For <i>A Room With a View</i>, she also received her fifth Academy Award nomination, and won her second Golden Globe Award. In 1987, she starred in <i>A Bed Among the Lentils</i>, part of Alan Bennett\'s Talking Heads series, receiving a second BAFTA TV nomination. She starred in the 1987 London production of <i>Lettice and Lovage</i> alongside Margaret Tyzack, receiving an Olivier Award nomination, and reprised the role in 1990, when it transferred to Broadway, and won the Tony Award for Best Actress in a Play. The play was written specifically for her by the playwright Peter Shaffer.</p>\r\n<p>In the 1990s, Smith appeared as Wendy Darling in the 1991 hit movie <i>Hook</i>, and also appeared in the hit comedy films <i>Sister Act</i> in 1992 and <i>The First Wives Club</i> in 1996. She also received a third BAFTA TV nomination for the 1992 TV film <i>Memento Mori</i>, and her first Emmy nomination for her role in the 1993 TV film <i>Suddenly, Last Summer</i>. She won a BAFTA for Best Supporting Actress for the 1999 film <i>Tea with Mussolini</i>, in which she played Lady Hester. She also appeared in the films <i>The Secret Garden</i> (1993), <i>Richard III</i> (1995), and <i>Washington Square</i> (1997). Her 1990s stage roles included <i>Three Tall Women</i> in 1994, which won her a fifth Evening Standard award, Claire in <i>A Delicate Balance</i> opposite Eileen Atkins in 1997, and <i>The Lady in the Van</i> in 1999.</p>\r\n<p>Due to the international success of the <i>Harry Potter</i> movies, she is now widely known for playing Professor Minerva McGonagall, opposite Daniel Radcliffe in the title role. She has appeared in seven of the eight films in the series from 2001 to 2011. She and Radcliffe had worked together previously in the 1999 BBC television adaptation of <i>David Copperfield</i>, in which she played Betsey Trotwood and received a BAFTA TV Award nomination. She received her sixth Academy Award nomination for the 2001 film <i>Gosford Park</i>, directed by Robert Altman, and won her first Emmy Award for the 2003 TV film <i>My House in Umbria</i>. On stage, she starred as Madeleine Palmer, opposite Judi Dench, in the David Hare play <i>The Breath of Life</i> in 2002, toured Australia in Alan Bennett\'s <i>Talking Heads</i> in 2004, and starred in <i>The Lady from Dubuque</i> in 2007.</p>\r\n<p>Beginning in 2010, Smith appeared as Violet Crawley, Dowager Countess of Grantham, in the British period drama <i>Downton Abbey</i>. This role won her a Golden Globe Award and two Emmy Awards. In 2014, the role also won her a Screen Actors Guild Award. In 2012, she played Muriel in the British comedy <i>The Best Exotic Marigold Hotel</i>, and starred as Jean Horton in <i>Quartet</i>, based on Ronald Harwood\'s play, directed by actor Dustin Hoffman.</p>\r\n<p>In a March 2015 interview with Joe Utichi in <i>The Sunday Times</i>, Smith announced that the sixth season of <i>Downton Abbey</i> would be her last (it was in fact the last to be produced). On 30 October 2015, Smith appeared on BBC\'s <i>The Graham Norton Show</i>, her first appearance on a chat show in 42 years. During the show, Smith discussed her appearance in the comedy-drama film <i>The Lady in the Van</i>, which was directed by Nicholas Hytner.</p>\r\n<p>In February 2019, it was announced that Smith would return to the London stage for the first time in twelve years in A German Life. The new play by Christopher Hampton was drawn from the life and testimony of Brunhilde Pomsel (1911-2017), in which Smith was alone on stage, performing a 100 minute long monolouge to the audience. Jonathan Kent took the directorial role.</p>\r\n<p>Ms. Smith was appointed a Commander of the Order of the British Empire (CBE) in the 1970 New Year Honours, and was raised to Dame Commander of the Order of the British Empire (DBE) in the 1990 New Year Honours, for services to the performing arts. Smith was made a Member of the Order of the Companions of Honour (CH) for services to drama in the 2014 Queen\'s Birthday Honours, becoming the third actress to receive the honour, after Sybil Thorndike (1970) and Judi Dench (2005).</p>\r\n<p>In 1971, Smith was conferred an honorary Doctor of Letters (DLitt) by University of St Andrews. In 1986, she was awarded an honorary Doctor of Letters (DLitt) from the University of Bath. In 1994, Smith received an honorary Doctor of Letters (DLitt) from the University of Cambridge. In October 2017, Smith was conferred with an Honorary Fellowship of Mansfield College, Oxford.</p>\r\n<p>She was awarded the Shakespeare Prize by the Hamburg Alfred Toepfer Foundation in 1991. Smith was made a Fellow of the British Film Institute in recognition of her outstanding contribution to film culture in 1992. She was elected to the American Theatre Hall of Fame in 1994. On 10 April 1999 Smith received the William Shakespeare Award for Classical Theatre (The Will Award) presented by the Shakespeare Theatre Company in Washington, D.C. in recognition of her significant contribution to classical theatre in the US. On 9 February 2014 she was inducted into the Actors Hall of Fame. Smith had a star on the London Avenue of Stars until all of the stars were removed in 2006.</p>\r\n<p>In 1993, she was awarded with the BAFTA Special Award by the British Academy of Film and Television Arts. In 1996, the British Academy of Film and Television Arts presented her with the BAFTA Fellowship, the highest honour the Academy can bestow. At the 2010 Laurence Olivier Awards, she was celebrated with the Society of London Theatre Special Award. In 2013, she was awarded with the Evening Standard Icon Award.</p>\r\n<p>On 10 September 2012, she was honoured with the Stratford Shakespeare Festival\'s Legacy Award. She accepted the award, presented to her by Christopher Plummer, in a ceremony at the Fairmont Royal York Hotel. In March 2016, Smith was awarded the Critics\' Circle Award for Distinguished Service to the Arts. In April 2016, she was awarded the Bodley Medal by the University of Oxford\'s Bodleian Libraries in recognition of her outstanding contribution to the performing arts.</p>', 'artists/maggie-smith_Cover.jpg'),
(52, 'Martin', '', 'Freeman', 'M', '<p>Among other accolades, he has won an Emmy Award, a BAFTA Award, an Empire Award, and a Screen Actor Guild Award, with nominations including two other Emmy Awards, two other BAFTA Awards, a Saturn Award, and a Golden Globe Award.</p>\r\n<p>Martin John Christopher Freeman was born in Aldershot, Hampshire, the youngest of five children. His parents, Philomena (née Norris) and Geoffrey Freeman, a naval officer, separated when Freeman was a child. When Freeman was 10 years old, his father died of a heart attack. Freeman attended the Salesian School, Chertsey before attending Brooklands College for media studies. His older brother Tim became a musician with the group Frazier Chorus.</p>\r\n<p>Freeman attended the Central School of Speech and Drama and has appeared in at least 18 TV shows, 14 theatre productions, and several radio productions. He is notable for his role as Tim Canterbury in <i>The Office</i>, a role which, he said in 2004, \"cast a very long shadow\" for him as an actor. He appeared in the sitcom <i>Hardware</i>. He also appeared in several films, including <i>Ali G Indahouse</i> (2002) and <i>Love Actually</i> (2003).</p>\r\n<p>He began to move into more serious dramatic roles on television with his appearance as Lord Shaftesbury in the 2003 BBC historical drama <i>Charles II: The Power and The Passion</i>. He can also be seen making a brief appearance in the first episode of the second series of <i>This Life</i>. Freeman also starred in the BBC television series <i>The Robinsons</i> and had a cameo in episode 1 of <i>Black Books</i>. In 2007, he appeared in <i>The All Together</i> written and directed by Gavin Claxton, as well as the Bill Kenwright theatre production of <i>The Last Laugh</i>. He is featured in the video for Faith No More\'s cover of \"I Started a Joke\". In May 2009, he starred in <i>Boy Meets Girl</i>, a four-part drama that charts the progress of characters Veronica and Danny after an accident which causes them to swap bodies.</p>\r\n<p>He plays Dr. John Watson in <i>Sherlock</i>, the BBC contemporary adaptation of the Sherlock Holmes detective stories. The first episode of <i>Sherlock</i>, \"A Study in Pink\", was broadcast on 25 July 2010 to critical acclaim. For his performance in the role he won the BAFTA award for Best Supporting Actor, 2011 and the Primetime Emmy Award for Outstanding Supporting Actor in a Miniseries or a Movie.</p>\r\n<p>He played Bilbo Baggins, the main character, in the three-part Peter Jackson film series <i>The Hobbit</i>. Accolades that his performance in the first part, <i>The Hobbit: An Unexpected Journey</i>, garnered him include Best Hero at the 2013 MTV Movie Awards and Best Actor at the 18th Empire Awards. Freeman appeared in all three of Simon Pegg and Edgar Wright\'s comedic <i>Three Flavours Cornetto trilogy</i>, commencing with a brief non-speaking role in <i>Shaun of the Dead</i> as Yvonne\'s boyfriend, Declan, followed by a brief cameo in <i>Hot Fuzz</i> as a police officer. He was a main cast member in the 2013 finale to the trilogy, <i>The World\'s End</i>. On 5 October 2013, he was presented with a fellowship bearing his name by the members of University College Dublin\'s Literary & Historical Society. In April 2014, Freeman began playing insurance salesman Lester Nygaard in the dark comedy-crime drama series <i>Fargo</i>. For his performance in this series, he was nominated for a Primetime Emmy Award, a Golden Globe Award, and a Critics\' Choice Television Award. He opened in the title role in Shakespeare\'s play <i>Richard III</i> in July 2014 at Trafalgar Studios.</p>\r\n<p>In 2015, Freeman starred as producer Milton Fruchtman in the television film <i>The Eichmann Show</i>, based on the filming, by blacklisted TV director Leo Hurwitz, of the 1961 trial of Nazi war criminal Adolf Eichmann. The film intercut dramatic scenes with historical footage from the trial. <i>The Daily Telegraph</i> described the film as \"absolutely enthralling\". He also played Everett Ross in <i>Captain America: Civil War</i>, which released in May 2016.</p>\r\n<p>In 2017, Freeman starred in <i>Cargo</i>, which premiered at the Adelaide Film Festival on 6 August 2017. The film is a feature length remake of a 2013 short film of the same name. Later in the year he appeared opposite Tamsin Greig in <i>Labour of Love</i>, a political comedy by James Graham, at the Noël Coward Theatre. <i>Labour of Love</i> charts both the evolution of the UK Labour Party in recent decades, and its presence in a tight-knit Nottinghamshire community. Freeman portrays fictional Labour MP David Lyons, whose modernising ideas pit him against the traditional left-wing constituency agent Jean Whittaker (Greig).</p>', 'artists/martin-freeman_Cover.jpg');
INSERT INTO `actors` (`id`, `first_name`, `middle_name`, `last_name`, `gender`, `about`, `img`) VALUES
(60, 'Peter', '', 'Dinklage', 'M', '<p>Peter Hayden Dinklage was born on June 11, 1969, in Morristown, New Jersey, to John Carl Dinklage, an insurance salesman, and Diane Dinklage, an elementary-school music teacher. He was born with achondroplasia, a common form of dwarfism. Dinklage grew up as the only dwarf in his family in the historic Brookside section of Mendham Township, New Jersey, with his parents and older brother, Jonathan. His older brother Jonathan Dinklage graduated from the Mason Gross School of the Arts at Rutgers University and is a violinist for the play Hamilton. He is of German and Irish descent. As a child, Dinklage and his brother performed puppet musicals for people in their neighborhood. Dinklage has described his brother Jonathan, who is a violinist, as being the \"real performer of the family,\" saying that his brother\'s passion for the violin was the only thing that kept him from pursuing acting.</p>\r\n<p>Dinklage had his first theatrical success in a fifth-grade production of <i>The Velveteen Rabbit</i>. Playing the lead, he was delighted by the audience\'s response to the show. Dinklage attended Delbarton School, a Catholic preparatory school for boys, where he developed his acting. In 1984, Dinklage was inspired by a production of the play <i>True West</i>, written by American playwright Sam Shepard, to pursue a career in acting.</p>\r\n<p>Dinklage then attended Bennington College, where he studied for a drama degree and also appeared in numerous productions before graduating in 1991. After that he moved to New York City with his friend Ian Bell to build a theater company. Failing to pay the rent, they moved out of their apartment. (He lived in New York for twenty years in Williamsburg and the West Village). Dinklage then worked at a data processing company for six years before pursuing a career as a full-time actor.</p>\r\n<p>Dinklage initially struggled to find work as an actor, partially because he refused to take the roles typically offered to actors with his condition, such as \"elves or leprechauns.\" He made his credited film debut in the low-budget independent comedy-drama <i>Living in Oblivion</i> (1995) where he performed alongside Steve Buscemi. The film tells the story of a director, crew, and cast filming a low-budget independent film in the middle of New York City. Dinklage\'s role was that of a frustrated actor with dwarfism who complains about his clichéd roles. The film has been well received by critics. The following year he appeared as a building manager in the crime drama <i>Bullet</i> starring rapper Tupac Shakur. Even after his well-received performance in <i>Living in Oblivion</i>, Dinklage still could not find someone willing to be his agent. After a recommendation from Buscemi to the director Alexandre Rockwell, Dinklage was cast in the comedy <i>13 Moons</i> (2002). When later interviewed for a theater website, he was asked what his ideal role was, and he replied \"the romantic lead\" who gets the girl.</p>\r\n<p>Dinklage found his breakthrough playing Finbar McBride, who is a quiet, withdrawn, unmarried man in the 2003 Tom McCarthy-directed film <i>The Station Agent</i>. According to co-star Bobby Cannavale, the film took three years to make and was not at first written with Dinklage in mind, Cannavale said McCarthy \"set out to tell a story about a guy who was a train enthusiast who had chosen to isolate himself from the world,\" but when McCarthy actually started \"putting pen to paper\" for the screenplay he decided to write the role for him. Speaking about the role, Dinklage noted that usually \"roles written for someone my size are a little flat\"-often either comical or \"sort of <i>Lord of the Rings</i>\" type characters filled with wisdom; further: \"They\'re not sexual, they\'re not romantic\" and \"they\'re not flawed.\" What attracted him to the character McCarthy had written was that it was not one of the stereotypical roles people with dwarfism play; rather, McBride has \"romantic feelings\" as well as \"anger and ... flaws.\" The role earned him the Independent Spirit Award and Screen Actors Guild Award for Best Actor nominations. In the <i>New York Observer</i>, reviewer Andrew Sarris wrote, \"Dinklage projects both size and intelligence in the fascinating reticence of his face.\" Besides being Dinklage\'s highest-rated film on the review aggregator Rotten Tomatoes, <i>The Station Agent</i> was modestly successful at the box office, earning over $8 million against its small budget.</p>\r\n<p>Dinklage later appeared in the direct-to-DVD film <i>Tiptoes</i> (2003) with Gary Oldman and Matthew McConaughey. The film met with negative reviews, particularly Oldman\'s role as a person with dwarfism. According to Dinklage, the original cut of the film was \"gorgeous,\" but the director was fired shortly after turning it in, and the film was re-cut into a \"rom-com with dwarves.\" Speaking on the Oldman controversy, Dinklage said, \"There was some flak: Why would you put Gary Oldman on his knees? That\'s almost like blackface. And I have my own opinions about political correctness, but I was just like, It\'s Gary Oldman. He can do whatever he wants, and I\'m so happy to be here.\"</p>\r\n<p>That year, Dinklage also starred in several Off-Broadway productions, such as <i>Richard III</i>. Dinklage appeared in the Christmas comedy film <i>Elf</i> as Miles Finch, an irritable children\'s author who beats up Buddy Hobbs (Will Ferrell) after he mistakes him for an elf. In 2005, he starred in the short-lived CBS science fiction series <i>Threshold</i> and appeared as a wedding planner in the comedy film <i>The Baxter</i>. He also made an appearance in the adventure comedy-drama <i>Lassie</i> as a traveling circus performer. The film received highly positive reviews, though it did not fare well at the box office.</p>\r\n<p>In 2006, Dinklage co-starred with Vin Diesel in <i>Find Me Guilty</i>, a courtroom drama directed by Sidney Lumet. The film tells the true story of the longest Mafia trial in American history; Dinklage played Ben Klandis, the lead defense attorney. Critical reaction to the film was mostly positive, though it was a commercial failure. Writing for <i>Chicago Sun-Times</i>, film critic Roger Ebert praised Dinklage\'s performance, saying that the character he plays stands apart as \"concise, articulate and professional.\" The same year, he portrayed the character Marlowe Sawyer in episodes of <i>Nip/Tuck</i>. He played a fictionalized version of himself in an episode of the HBO series <i>Entourage</i> and appeared in NBC\'s <i>30 Rock</i> as Stewart. The same year, Dinklage appeared in the British romantic comedy <i>Penelope</i> playing Lemon, a tabloid reporter. The film received mixed reviews from critics.</p>\r\n<p>Dinklage appeared in the 2007 British comedy film <i>Death at a Funeral</i>, reprising the role in the 2010 American remake; the films tell the story of a family trying to deal with a variety of issues after the death of their father. Later in 2007, he played the villainous Simon Bar Sinister in <i>Underdog</i>, which was poorly received but had some commercial success.</p>\r\n<p>Dinklage played Trumpkin in the 2008 film <i>The Chronicles of Narnia: Prince Caspian</i>. The film was a box office disappointment, with global revenues of $419.7 million, and film critic Bill Gibron described Dinklage\'s role as a \"cutesy stereotype he has tried to avoid.\" Later that year, he played the title role in <i>Uncle Vanya</i> (directed by his wife, Erica Schmidt) in Bard College\'s annual Bard SummerScape, the Upstate New York summer stage on the Annandale-on-Hudson campus. In 2010, he appeared in the Australian movie <i>I Love You Too</i> alongside Brendan Cowell and Peter Helliar.</p>\r\n<p>Since 2011, Dinklage has portrayed Tyrion Lannister in HBO\'s fantasy drama <i>Game of Thrones</i>, an adaptation of author George R. R. Martin\'s <i>A Song of Ice and Fire</i> novels. <i>Game of Thrones</i> takes place on the fictional continents of Westeros and Essos and chronicles the power struggles among noble families as they fight for control of the Iron Throne of the Seven Kingdoms. Tyrion is a member of House Lannister, one of the wealthiest and most powerful families in Westeros, and uses his status as a Lannister to mitigate the impact of the marginalization and derision he has received all of his life. In May 2009, he was the first actor to be cast, as showrunners David Benioff and D. B. Weiss noted that Dinklage, whom he described as funny, smart and witty, was their first choice for the role, as the actor\'s \"core of humanity, covered by a shell of sardonic dry wit, is pretty well in keeping with the character.\" Unfamiliar with the source material, Dinklage was cautious in his first meeting with the producers; as a dwarf, \"he wouldn\'t play elves or leprechauns\" and was choosy about genre roles. Benioff and Weiss told Dinklage that the character was \"a different kind of fantasy little person,\" or in the actor\'s words, \"No beard, no pointy shoes, a romantic, real human being.\" Dinklage signed on to play Tyrion before the meeting was half over, in part because, he said, \"They told me how popular he was.\" Martin said of Dinklage\'s casting, \"If he hadn\'t accepted the part, oh, boy, I don\'t know what we would have done.\" The series proved to be a commercial success; it has been renewed for multiple seasons and is about to conclude with its eighth season in 2019.</p>\r\n<p>Dinklage has received widespread praise for his performance, with Matthew Gilbert from <i>The Boston Globe</i> saying that Dinklage \"gives a winning performance that is charming, morally ambiguous, and self-aware.\" Dan Kois of <i>The New York Times</i> noted that Dinklage\'s performance has made the character \"all the more popular.\" The <i>Los Angeles Times</i> wrote \"In many ways, <i>Game of Thrones</i> belongs to Dinklage.\" Tyrion has been called the \"most quotable\" character and \"one of the most beloved characters\" of the series. For his performance, he has gone on to win a Emmy Award for Outstanding Supporting Actor in a Drama Series in 2011, 2015, and 2018, as well as the 2012 Golden Globe Award for Best Supporting Actor. As a result of his performance and increased screen time, Dinklage was given top billing starting in the series\' second season. In 2014, he said on <i>The Late Show with David Letterman</i> that he had once tried to read the books the show is based upon, but had found them confusing. He joked, \"George Martin, our author, is probably going to kill my character soon because I mentioned that.\" In 2014, Dinklage and four of his <i>Game of Thrones</i> co-stars became some of the highest paid actors on television, although sources differ on the actors\' per-episode salaries as of 2017. In 2015, Dinklage lent his voice for the role of Tyrion in <i>Game of Thrones: A Telltale Games Series</i>, a video game based on the show.</p>\r\n<p>In 2012, Dinklage voiced Captain Gutt in <i>Ice Age: Continental Drift</i>, which earned over $877 million. Dinklage has said that because this was his first voiceover role, he prepared himself by making sure to rest his voice before the recording sessions, and that he prefers doing roles he has not done before. After appearing in an episode of NBC\'s late-night sketch comedy <i>Saturday Night Live</i> in 2013, Dinklage hosted an episode of the show in April 2016; his appearances included a sketch of him and Gwen Stefani singing a new song called \"Space Pants.\" He received praise for his performance.</p>\r\n<p>In 2014, Dinklage starred in the comedy horror film <i>Knights of Badassdom</i> opposite Ryan Kwanten and Steve Zahn. The film is about three best friends that go to the woods and reenact a live action <i>Dungeons & Dragons</i> role play, when they mistakenly conjure up a demon from Hell. The same year, he played the villain Bolivar Trask in the superhero film <i>X-Men: Days of Future Past</i>. The movie was the sixth highest-grossing film of 2014 with global revenues of $747.9 million. In preparation for his role, Dinklage stated that he did not want to approach the character necessarily as a villain, saying that Trask \"actually sees what he\'s doing as a good thing.\" He also voiced the AI Ghost in the 2014 video game <i>Destiny</i>, but was replaced by Nolan North in August 2015.</p>\r\n<p>In 2015, Dinklage starred in the science fiction comedy film <i>Pixels</i> as a former arcade champion named Eddie Plant, which was poorly received by critics. The movie had a global revenues of $244.9 million. In 2016, Dinklage provided the voice of The Mighty Eagle in <i>The Angry Birds Movie</i>, and recorded a song for the musical\'s soundtrack. The film went on to become the second highest-grossing video game film of all-time, with a global revenues of $349.8 million, only behind <i>Warcraft</i> ($433.5 million). It also became the most successful Finnish film to date. His next release, the independent film <i>Rememory</i> (2017), failed to impress reviewers, but his role of Sam Bloom was praised. Freelance film critic Yasmin Kleinbart stated that \"Dinklage deserves better than this film\" and John DeFore in <i>The Hollywood Reporter</i> said that he \"delivers a soulful lead performance that will attract fans\' attention.\" Also in 2017, Dinklage had a supporting role in the drama-dark comedy film <i>Three Billboards Outside Ebbing, Missouri</i>, from director Martin McDonagh, and the drama <i>Three Christs</i>, both of which played at the Toronto International Film Festival, with the former receiving widespread critical success. In 2018, Dinklage produced and starred in <i>I Think We\'re Alone Now</i>, a post-apocalyptic drama based on the companionship between Del, played by Dinklage, and Grace, played by Elle Fanning. The film premiered at the 2018 Sundance Film Festival, and was later released to theaters on September 14, 2018.</p>\r\n<p>Dinklage appeared in the 2018 Marvel Studios film <i>Avengers: Infinity War</i> as the character Eitri, a giant dwarf, which became the fastest-grossing film to gross over $1 billion, and grossed $2.045 billion-his highest grossing release as of 2018.</p>\r\n<p>Dinklage and writer-director Sacha Gervasi spent several years writing and producing a film based on the final days of actor Hervé Villechaize, who died by suicide shortly after his 1993 interview with Gervasi. In 2018, Dinklage starred and played the title role in <i>My Dinner with Hervé</i>. The movie was approved by HBO, with Dinklage co-starring alongside Jamie Dornan.</p>\r\n<p>In 2017, it was announced that Dinklage has been attached to star in the American comedy <i>O Lucky Day</i>, which is to be directed by Jon S. Baird where he will play a con-man who pretends to be a Leprechaun.</p>\r\n<p>On October 5, 2017, Dinklage purchased the rights to the film adaptation of Joe R. Lansdale\'s novel, <i>The Thicket</i>.</p>', 'artists/peter-dinklage_Cover.jpg'),
(65, 'Riz', '', 'Ahmed', 'M', '<p>Rizwan Ahmed was born in Wembley, London, in 1982, to a British Pakistani family. His parents are of Muhajir background; his grandparents migrated from India to Pakistan during the 1947 partition of India. His father is a shipping broker. His parents moved to England from Karachi, Sindh, Pakistan, during the 1970s. He is a descendant of Sir Shah Muhammad Sulaiman, the first Indian to become the Chief Justice of the Allahabad High Court in Uttar Pradesh during the colonial era. He also composed Urdu poetry, penned some of the first critical articles on Einstein\'s theory of relativity, and was related to Mulla Mahmud Jaunpuri (d. 1652), one of the most important philosopher-scientists produced in the region during the Mughal Empire.</p>\r\n<p>Ahmed attended Merchant Taylors\' School, Northwood, through a scholarship programme. He graduated from Christ Church, Oxford University, with a degree in PPE (Philosophy, Politics and Economics), which he has said he found to be a bizarre experience. He later studied acting at the Central School of Speech and Drama.</p>\r\n<p>As an actor, he has won one Emmy Award, out of two Emmy nominations, and was also nominated for a Golden Globe, Screen Actors Guild Award, and three British Independent Film Awards. He was initially known for his work in independent films such as <i>The Road to Guantanamo</i> (2006), <i>Shifty</i> (2008), <i>Four Lions</i> (2010), <i>Trishna</i> (2011), <i>Ill Manors</i> (2012), and <i>The Reluctant Fundamentalist</i> (2013), before his break-out role in <i>Nightcrawler</i> (2014).</p>\r\n<p>In 2016, he starred in <i>Una</i>, <i>Jason Bourne</i>, and as Bodhi Rook in the <i>Star Wars</i> Anthology film <i>Rogue One</i>, as well as in the HBO miniseries <i>The Night Of</i>, receiving critical acclaim for his performance as Nasir Khan. At the 2017 Emmy Awards, he received two nominations, for his performance in <i>The Night Of</i> and his guest spot in <i>Girls</i>; he won the award for Outstanding Lead Actor in a Limited Series or Movie for <i>The Night Of</i>, becoming the first South Asian male to win an acting Emmy, and the first Muslim and first South Asian to win a lead acting Emmy. He also stars as Carlton Drake/Riot in <i>Venom</i> (2018).</p>\r\n<p>As a rapper, he is a member of the Swet Shop Boys, earned critical acclaim with the hip hop albums <i>Microscope</i> and <i>Cashmere</i>, and earned commercial success featuring in the <i>Billboard</i> 200 chart topping <i>Hamilton Mixtape</i>, with his song \"Immigrants (We Get the Job Done)\" winning an MTV Video Music Award. As an activist, he is known for his political rap music, has been involved in raising awareness and funds for Rohingya and Syrian refugee children, and has advocated representation at the House of Commons. In 2017, he was included on the front cover of the annual <i>Time</i> 100 list of the most influential people in the world.</p>', 'artists/riz-ahmed_Cover.jpg'),
(70, 'Thandie', '', 'Newton', 'F', '<p>Appointed Officer of the Order of the British Empire (OBE) in the 2019 New Year Honours for services to film and to charity.</p>\r\n<p>Melanie Thandiwe Newton was born in Westminster, London, England, the daughter of Zimbabwean, Nyasha and Nick Newton, an English laboratory technician and artist. Her birthplace has been incorrectly reported to be Zambia in some biographies, but she has confirmed in interviews that she was born in London. The name \"Thandiwe\" means \"beloved\" in Ndebele, Zulu, Xhosa or Swati, and \"Thandie\" is pronounced /\'tændi/ in English.</p>\r\n<p>Regarding her childhood, Newton remarked at a TED conference, \"From about the age of 5, I was aware that I didn\'t fit. I was the black, atheist kid in the all-white, Catholic school run by nuns. I was an anomaly.\" Newton was brought up in London and Penzance, Cornwall and studied dance at the Tring Park School for the Performing Arts. Between 1992 and 1995, Newton attended Downing College, Cambridge, where she studied social anthropology.</p>\r\n<p>After the film <i>Flirting</i> (1991), Newton played a faithful house slave \"Yvette\" in the Brad Pitt/Tom Cruise film <i>Interview with the Vampire</i> (1994). Newton appeared in the Merchant Ivory production of <i>Jefferson in Paris</i> as Sally Hemings, followed by Jonathan Demme\'s drama <i>Beloved</i>, based on Toni Morrison\'s novel (1998), in which she played the title character, the ghost of a young slave girl whose mother murders her to save her from slavery. The film also starred Oprah Winfrey and Danny Glover. Newton then starred as Nyah Hall, again opposite Cruise, in <i>Mission: Impossible 2</i>. Her next role was in the low-budget film <i>It Was an Accident</i>, written by her husband, screenwriter Ol Parker.</p>\r\n<p>Between 2003 and 2005, Newton played Makemba \"Kem\" Likasu, love interest of Dr. John Carter on the American television series <i>ER</i>. She reprised the role for the series finale in 2009. In 2004, she also appeared in <i>The Chronicles of Riddick</i> and <i>Crash</i>. Newton won a BAFTA award for Best Supporting Actress in 2006 for her role in <i>Crash</i>. She played Chris Gardner\'s wife, Linda Gardner, in <i>The Pursuit of Happyness</i>. Also in 2006, Newton performed on radio in a pantomime version of <i>Cinderella</i>.</p>\r\n<p>In 2007, Newton co-starred with Eddie Murphy in the comedy <i>Norbit</i> as his love interest, and then opposite Simon Pegg as his ex-girlfriend in the 2008 comedy <i>Run Fatboy Run</i>. Newton next portrayed US National Security Advisor-turned Secretary of State Condoleezza Rice in <i>W.</i>, Oliver Stone\'s film biography of President George W. Bush. The film was released 17 October 2008.</p>\r\n<p>Newton was an introducer at Wembley Stadium on 7 July 2007, for the UK leg of Live Earth. She was due to introduce Al Gore to the concert, but he was delayed, leaving Newton to tell jokes in an attempt to entertain the audience. Newton next portrayed fictional US First Daughter Laura Wilson in <i>2012</i>, a disaster film directed by Roland Emmerich and released 13 November 2009.</p>\r\n<p>In July 2011, Newton delivered a TED Talk on \"Embracing otherness, embracing myself.\" She discussed finding her \"otherness\" as a child growing up in two distinct cultures, and as an actress playing many different selves. In 2012, she starred alongside Tyler Perry in the romantic drama film <i>Good Deeds</i>. In 2013, Newton starred in <i>Rogue</i>, the first original drama series for DirecTV\'s Audience Network. She left <i>Rogue</i> during the third season. In 2015, she starred in the US miniseries <i>The Slap</i>.</p>\r\n<p>In 2016, Newton began portraying Maeve Millay in HBO science fiction drama series <i>Westworld</i>, for which she won the Primetime Emmy Award for Outstanding Supporting Actress in a Drama Series, among other accolades. In 2017, she served as a narrator for the documentary entitled <i>Bill Cosby: Fall of an American Icon</i>, an expose on the sexual assault charges laid on Cosby, which aired on BBC One. Newton appeared as Val in the <i>Star Wars</i> film <i>Solo: A Star Wars Story</i>, which was released in May 2018.</p>', 'artists/thandie-newton_Cover.jpg'),
(76, 'Christian', '', 'Bale', 'M', '', 'artists/christian-bale_Cover.jpg'),
(77, 'Michael', '', 'Caine', 'M', '', 'artists/michael-caine_Cover.jpg'),
(78, 'Liam', '', 'Neeson', 'M', '', 'artists/liam-neeson_Cover.jpg'),
(79, 'Katie', '', 'Holmes', 'F', '', 'artists/katie-holmes_Cover.jpg'),
(80, '', '', 'Murphy', 'M', '', 'artists/cillian-murphy_Cover.jpg'),
(81, 'Tom', '', 'Wilkinson', 'M', '', 'artists/tom-wilkinson_Cover.jpg'),
(82, 'Rutger', '', 'Hauer', 'M', '', 'artists/rutger-hauer_Cover.jpg'),
(83, 'Ken', '', 'Watanabe', 'M', '', 'artists/ken-watanabe_Cover.jpg'),
(84, 'Mark', 'Boone', 'Junior', 'M', '', 'artists/mark-boone-junior_Cover.jpg'),
(85, 'Linus', '', 'Roache', 'M', '', 'artists/linus-roache_Cover.jpg'),
(86, 'Morgan', '', 'Freeman', 'M', '', 'artists/morgan-freeman_Cover.jpg'),
(87, 'Larry', '', 'Holden', 'M', '', 'artists/larry-holden_Cover.jpg'),
(88, 'Gerard', '', 'Murphy', 'M', '', 'artists/gerard-murphy_Cover.jpg'),
(89, 'Colin', '', 'McFarlane', 'M', '', 'artists/colin-mcfarlane_Cover.jpg'),
(90, 'Matt', '', 'Damon', 'M', '', 'artists/matt-damon_Cover.jpg'),
(91, 'Franka', '', 'Potente', 'F', '', 'artists/franka-potente_Cover.jpg'),
(92, 'Chris', '', 'Cooper', 'M', '', 'artists/chris-cooper_Cover.jpeg'),
(93, 'Clive', '', 'Owen', 'M', '', 'artists/clive-owen_Cover.jpg'),
(94, 'Brian', '', 'Cox', 'M', '', 'artists/brian-cox_Cover.jpg'),
(95, 'Adewale', '', 'Akinnuoye-Agbaje', 'M', '', 'artists/adewale-akinnuoyeagbaje_Cover.jpg'),
(96, 'Gabriel', '', 'Mann', 'M', '', 'artists/gabriel-mann_Cover.jpg'),
(97, 'Walton', '', 'Goggins', 'M', '', 'artists/walton-goggins_Cover.jpg'),
(98, 'Josh', '', 'Hamilton', 'M', '', 'artists/josh-hamilton_Cover.jpg'),
(99, 'Julia', '', 'Stiles', 'F', '', 'artists/julia-stiles_Cover.jpg'),
(100, 'Orso', 'Maria', 'Guerrini', 'M', '', 'artists/orso-maria-guerrini_Cover.jpg'),
(101, 'Tim', '', 'Dutton', 'M', '', 'artists/tim-dutton_Cover.jpg'),
(102, 'Denis', '', 'Braccini', 'M', '', 'artists/denis-braccini_Cover.jpg'),
(103, 'Jeremy', '', 'Renner', 'M', '', 'artists/jeremy-renner_Cover.jpeg'),
(104, 'Scott', '', 'Glenn', 'M', '', 'artists/scott-glenn_Cover.jpg'),
(105, 'Stacy', '', 'Keach', 'M', '', 'artists/stacy-keach_Cover.jpeg'),
(106, 'Edward', '', 'Norton', 'M', '', 'artists/edward-norton_Cover.jpg'),
(107, 'Donna', '', 'Murphy', 'F', '', 'artists/donna-murphy_Cover.jpg'),
(108, 'Michael', '', 'Chernus', 'M', '', 'artists/michael-chernus_Cover.jpg'),
(109, 'Corey', '', 'Stoll', 'M', '', 'artists/corey-stoll_Cover.jpg'),
(110, 'Alice', '', 'Gainer', 'F', '', 'artists/alice-gainer_Cover.jpg'),
(111, 'Prue', '', 'Lewarne', 'F', '', 'artists/prue-lewarne_Cover.jpg'),
(112, 'Howard', '', 'Leader', 'M', '', 'artists/howard-leader_Cover.jpg'),
(113, 'James', 'Joseph', 'O\'Neil', 'M', '', 'artists/james-joseph-oneil_Cover.jpg'),
(114, 'Rachel', '', 'Weisz', 'F', '', 'artists/rachel-weisz_Cover.jpg'),
(115, 'Tony', '', 'Guida', 'M', '', 'artists/tony-guida_Cover.jpg'),
(116, 'Sonnie', '', 'Brown', 'F', '', 'artists/sonnie-brown_Cover.jpg'),
(117, 'Neil', 'Brooks', 'Cunningham', 'M', '', 'artists/neil-brooks-cunningham_Cover.jpg'),
(118, 'Karl', '', 'Urban', 'M', '', 'artists/karl-urban_Cover.jpg'),
(119, 'Joan', '', 'Allen', 'F', '', 'artists/joan-allen_Cover.jpg'),
(120, 'Marton', '', 'Csokas', 'M', '', 'artists/marton-csokas_Cover.jpg'),
(121, 'Tom', '', 'Gallop', 'M', '', 'artists/tom-gallop_Cover.jpg'),
(122, 'John', 'Bedford', 'Lloyd', 'M', '', 'artists/john-bedford-lloyd_Cover.jpg'),
(123, 'Ethan', '', 'Sandler', 'M', '', 'artists/ethan-sandler_Cover.jpg'),
(124, 'Michelle', '', 'Monaghan', 'F', '', 'artists/michelle-monaghan_Cover.jpg'),
(125, 'Karel', '', 'Roden', 'M', '', 'artists/karel-roden_Cover.jpg'),
(126, 'Tomas', '', 'Arana', 'M', '', 'artists/tomas-arana_Cover.jpg'),
(127, 'Oksana', '', 'Akinshina', 'F', '', 'artists/oksana-akinshina_Cover.jpg'),
(128, 'Heath', '', 'Ledger', 'M', '', 'artists/heath-ledger_Cover.jpg'),
(129, 'Aaron', '', 'Eckhart', 'M', '', 'artists/aaron-eckhart_Cover.jpg'),
(130, 'Maggie', '', 'Gyllenhaal', 'F', '', 'artists/maggie-gyllenhaal_Cover.jpg'),
(131, 'Monique', 'Gabriela', 'Curnen', 'F', '', 'artists/monique-gabriela-curnen_Cover.jpg'),
(132, 'Ron', '', 'Dean', 'M', '', 'artists/ron-dean_Cover.jpg'),
(133, 'Chin', '', 'Han', 'M', '', 'artists/chin-han_Cover.jpg'),
(134, 'Nestor', '', 'Carbonell', 'M', '', 'artists/nestor-carbonell_Cover.jpg'),
(135, 'Eric', '', 'Roberts', 'M', '', 'artists/eric-roberts_Cover.jpg'),
(136, 'Ritchie', '', 'Coster', 'M', '', 'artists/ritchie-coster_Cover.jpg'),
(137, 'Anthony', 'Michael', 'Hall', 'M', '', 'artists/anthony-michael-hall_Cover.jpg'),
(138, 'David', '', 'Strathairn', 'M', '', 'artists/david-strathairn_Cover.jpg'),
(139, 'Paddy', '', 'Considine', 'M', '', 'artists/paddy-considine_Cover.jpg'),
(140, 'Edgar', '', 'Ramírez', 'M', '', 'artists/edgar-ramirez_Cover.jpg'),
(141, 'Albert', '', 'Finney', 'M', '', 'artists/albert-finney_Cover.jpg'),
(142, 'Corey', '', 'Johnson', 'M', '', 'artists/corey-johnson_Cover.jpg'),
(143, 'Daniel', '', 'Brühl', 'M', '', 'artists/daniel-bruhl_Cover.jpg'),
(144, 'Joey', '', 'Ansah', 'M', '', 'artists/joey-ansah_Cover.jpg'),
(145, 'Colin', '', 'Stinton', 'M', '', 'artists/colin-stinton_Cover.jpg'),
(146, 'Dan', '', 'Fredenburgh', 'M', '', 'artists/dan-fredenburgh_Cover.jpg'),
(147, 'Lucy', '', 'Liemann', 'F', '', 'artists/lucy-liemann_Cover.jpg'),
(148, 'Tom', '', 'Hardy', 'M', '', 'artists/tom-hardy_Cover.jpg'),
(149, 'Joseph', '', 'Gordon-Levitt', 'M', '', 'artists/joseph-gordonlevitt_Cover.jpg'),
(150, 'Marion', '', 'Cotillard', 'F', '', 'artists/marion-cotillard_Cover.jpg'),
(151, 'Matthew', '', 'Modine', 'M', '', 'artists/matthew-modine_Cover.jpg'),
(152, 'Alon', '', 'Aboutboul', 'M', '', 'artists/alon-aboutboul_Cover.jpg'),
(153, 'Burn', '', 'Gorman', 'M', '', 'artists/burn-gorman_Cover.jpg'),
(154, 'Daniel', '', 'Sunjata', 'M', '', 'artists/daniel-sunjata_Cover.jpg'),
(155, 'Aidan', '', 'Gillen', 'M', '', 'artists/aidan-gillen_Cover.jpg'),
(156, 'Sam', '', 'Kennard', 'M', '', 'artists/sam-kennard_Cover.jpeg'),
(157, 'Ryan', '', 'Reynolds', 'M', '', 'artists/ryan-reynolds_Cover.jpg'),
(158, 'Karan', '', 'Soni', 'M', '', 'artists/karan-soni_Cover.jpeg'),
(159, 'Ed', '', 'Skrein', 'M', '', 'artists/ed-skrein_Cover.jpg'),
(160, 'Michael', '', 'Benyaer', 'M', '', 'artists/michael-benyaer_Cover.jpg'),
(161, 'Stefan', '', 'Kapicic', 'M', '', 'artists/stefan-kapicic_Cover.jpg'),
(162, 'Brianna', '', 'Hildebrand', 'F', '', 'artists/brianna-hildebrand_Cover.jpg'),
(163, 'Style', '', 'Dayne', 'M', '', 'artists/style-dayne_Cover.jpg'),
(164, 'Kyle', '', 'Cassie', 'M', '', 'artists/kyle-cassie_Cover.jpg'),
(165, 'Taylor', '', 'Hickson', 'F', '', 'artists/taylor-hickson_Cover.jpg'),
(166, 'Naika', '', 'Toussaint', 'F', '', 'artists/naika-toussaint_Cover.jpg'),
(167, 'Randal', '', 'Reeder', 'M', '', 'artists/randal-reeder_Cover.jpg'),
(168, 'T.J.', '', 'Miller', 'M', '', 'artists/tj-miller_Cover.jpg'),
(169, 'Isaac', 'C.', 'Singleton Jr.', 'M', '', 'artists/isaac-c-singleton-jr_Cover.jpg'),
(170, 'Morena', '', 'Baccarin', 'F', '', 'artists/morena-baccarin_Cover.jpg'),
(171, 'Josh', '', 'Brolin', 'M', '', 'artists/josh-brolin_Cover.jpg'),
(172, 'Julian', '', 'Dennison', 'M', '', 'artists/julian-dennison_Cover.jpg'),
(173, 'Zazie', '', 'Beetz', 'F', '', 'artists/zazie-beetz_Cover.jpg'),
(174, 'Leslie', '', 'Uggams', 'F', '', 'artists/leslie-uggams_Cover.jpg'),
(175, 'Jack', '', 'Kesy', 'M', '', 'artists/jack-kesy_Cover.jpg'),
(176, 'Eddie', '', 'Marsan', 'M', '', 'artists/eddie-marsan_Cover.jpg'),
(177, 'Shioli', '', 'Kutsuna', 'F', '', 'artists/shioli-kutsuna_Cover.jpg'),
(178, 'Nikolai', '', 'Witschl', 'M', '', 'artists/nikolai-witschl_Cover.jpg'),
(179, 'Richard', '', 'Harris', 'M', '', 'artists/richard-harris_Cover.jpg'),
(180, 'Robbie', '', 'Coltrane', 'M', '', 'artists/robbie-coltrane_Cover.jpg'),
(181, 'Daniel', '', 'Radcliffe', 'M', '', 'artists/daniel-radcliffe_Cover.jpg'),
(182, 'Fiona', '', 'Shaw', 'F', '', 'artists/fiona-shaw_Cover.jpg'),
(183, 'Harry', '', 'Melling', 'M', '', 'artists/harry-melling_Cover.jpg'),
(184, 'Richard', '', 'Griffiths', 'M', '', 'artists/richard-griffiths_Cover.jpg'),
(185, 'Ian', '', 'Hart', 'M', '', 'artists/ian-hart_Cover.jpg'),
(186, 'Warwick', '', 'Davis', 'M', '', 'artists/warwick-davis_Cover.jpg'),
(187, 'Verne', '', 'Troyer', 'M', '', 'artists/verne-troyer_Cover.jpg'),
(188, 'John', '', 'Hurt', 'M', '', 'artists/john-hurt_Cover.jpg'),
(189, 'Richard', '', 'Bremmer', 'M', '', 'artists/richard-bremmer_Cover.jpg'),
(190, 'Rupert', '', 'Grint', 'M', '', 'artists/rupert-grint_Cover.jpg'),
(191, 'Emma', '', 'Watson', 'F', '', 'artists/emma-watson_Cover.jpg'),
(192, 'Toby', '', 'Jones', 'M', '', 'artists/toby-jones_Cover.jpg'),
(193, 'Jim', '', 'Norton', 'M', '', 'artists/jim-norton_Cover.jpg'),
(194, 'Veronica', '', 'Clifford', 'F', '', 'artists/veronica-clifford_Cover.jpg'),
(195, 'James', '', 'Phelps', 'M', '', 'artists/james-phelps_Cover.jpg'),
(196, 'Oliver', '', 'Phelps', 'M', '', 'artists/oliver-phelps_Cover.jpg'),
(197, 'Julie', '', 'Walters', 'F', '', 'artists/julie-walters_Cover.jpg'),
(198, 'Bonnie', '', 'Wright', 'F', '', 'artists/bonnie-wright_Cover.jpg'),
(199, 'Mark', '', 'Williams', 'M', '', 'artists/mark-williams_Cover.jpg'),
(200, 'Chris', '', 'Rankin', 'M', '', 'artists/chris-rankin_Cover.jpg'),
(201, 'Pam', '', 'Ferris', 'F', '', 'artists/pam-ferris_Cover.jpg'),
(202, 'Adrian', '', 'Rawlins', 'M', '', 'artists/adrian-rawlins_Cover.jpg'),
(203, 'Geraldine', '', 'Somerville', 'F', '', 'artists/geraldine-somerville_Cover.jpg'),
(204, 'Lee', '', 'Ingleby', 'M', '', 'artists/lee-ingleby_Cover.jpg'),
(205, 'Lenny', '', 'Henry', 'M', '', 'artists/lenny-henry_Cover.jpg'),
(206, 'Jim', '', 'Tavaré', 'M', '', 'artists/jim-tavare_Cover.jpg'),
(207, 'Robert', '', 'Hardy', 'M', '', 'artists/robert-hardy_Cover.jpg'),
(208, 'Abby', '', 'Ford', 'F', '', 'artists/abby-ford_Cover.jpg'),
(209, 'Jimmy', '', 'Gardner', 'M', '', 'artists/jimmy-gardner_Cover.jpg'),
(210, 'Eric', '', 'Sykes', 'M', '', 'artists/eric-sykes_Cover.jpg'),
(211, 'Timothy', '', 'Spall', 'M', '', 'artists/timothy-spall_Cover.jpg'),
(212, 'David', '', 'Tennant', 'M', '', 'artists/david-tennant_Cover.jpg'),
(213, 'Jeff', '', 'Rawle', 'M', '', 'artists/jeff-rawle_Cover.jpg'),
(214, 'Robert', '', 'Pattinson', 'M', '', 'artists/robert-pattinson_Cover.jpg'),
(215, 'Jason', '', 'Isaacs', 'M', '', 'artists/jason-isaacs_Cover.jpg'),
(216, 'Tom', '', 'Felton', 'M', '', 'artists/tom-felton_Cover.jpg'),
(217, 'Stanislav', '', 'Yanevski', 'M', '', 'artists/stanislav-yanevski_Cover.jpg'),
(218, 'Jason', '', 'Boyd', 'M', '', 'artists/jason-boyd_Cover.jpg'),
(219, 'Kathryn', '', 'Hunter', 'F', '', 'artists/kathryn-hunter_Cover.jpg'),
(220, 'Miles', '', 'Jupp', 'M', '', 'artists/miles-jupp_Cover.jpg'),
(221, 'Jessica', '', 'Hynes', 'F', '', 'artists/jessica-hynes_Cover.jpg'),
(222, 'Natalia', '', 'Tena', 'F', '', 'artists/natalia-tena_Cover.jpg'),
(223, 'Brendan', '', 'Gleeson', 'M', '', 'artists/brendan-gleeson_Cover.jpg'),
(224, 'Ralph', '', 'Fiennes', 'M', '', 'artists/ralph-fiennes_Cover.jpg'),
(225, 'Alan', '', 'Rickman', 'M', '', 'artists/alan-rickman_Cover.jpg'),
(226, 'Dave', '', 'Legeno', 'M', '', 'artists/dave-legeno_Cover.jpg'),
(227, 'Michael', '', 'Gambon', 'M', '', 'artists/michael-gambon_Cover.jpg'),
(228, 'Elarica', '', 'Johnson', 'F', '', 'artists/elarica-johnson_Cover.jpg'),
(229, 'Jim', '', 'Broadbent', 'M', '', 'artists/jim-broadbent_Cover.jpeg'),
(230, 'Helena', 'Bonham', 'Carter', 'F', '', 'artists/helena-bonham-carter_Cover.jpg'),
(231, 'Helen', '', 'McCrory', 'F', '', 'artists/helen-mccrory_Cover.jpg'),
(232, 'Bill', '', 'Nighy', 'M', '', 'artists/bill-nighy_Cover.jpg'),
(233, 'Ian', '', 'Kelly', 'M', '', 'artists/ian-kelly_Cover.png'),
(234, 'Michelle', '', 'Fairley', 'F', '', 'artists/michelle-fairley_Cover.jpg'),
(235, 'Carolyn', '', 'Pickles', 'F', '', 'artists/carolyn-pickles_Cover.jpg'),
(236, 'Evanna', '', 'Lynch', 'F', '', 'artists/evanna-lynch_Cover.jpg'),
(237, 'Clémence', '', 'Poésy', 'F', '', 'artists/clemence-poesy_Cover.jpg'),
(238, 'Graham', '', 'Duff', 'M', '', 'artists/graham-duff_Cover.jpeg'),
(239, 'Anthony', '', 'Allgood', 'M', '', 'artists/anthony-allgood_Cover.jpg'),
(240, 'Rusty', '', 'Goffe', 'M', '', 'artists/rusty-goffe_Cover.jpg'),
(241, 'Domhnall', '', 'Gleeson', 'M', '', 'artists/domhnall-gleeson_Cover.jpg'),
(242, 'Tommy', 'Lee', 'Jones', 'M', '', 'artists/tommy-lee-jones_Cover.jpg'),
(243, 'Vincent', '', 'Cassel', 'M', '', 'artists/vincent-cassel_Cover.jpg'),
(244, 'Ato', '', 'Essandoh', 'M', '', 'artists/ato-essandoh_Cover.jpg'),
(245, 'Scott', '', 'Shepherd', 'M', '', 'artists/scott-shepherd_Cover.jpg'),
(246, 'Bill', '', 'Camp', 'M', '', 'artists/bill-camp_Cover.jpg'),
(247, 'Vinzenz', '', 'Kiefer', 'M', '', 'artists/vinzenz-kiefer_Cover.jpg'),
(248, 'Stephen', '', 'Kunken', 'M', '', 'artists/stephen-kunken_Cover.jpg'),
(249, 'Ben', '', 'Stylianou', 'M', '', 'artists/ben-stylianou_Cover.jpg'),
(250, 'Kaya', '', 'Yuzuki', 'F', '', 'artists/kaya-yuzuki_Cover.jpg'),
(251, 'Matthew', '', 'O\'Neill', 'M', '', 'artists/matthew-oneill_Cover.jpg'),
(252, 'Keanu', '', 'Reeves', 'M', '', 'artists/keanu-reeves_Cover.jpg'),
(253, 'Michael', '', 'Nyqvist', 'M', '', 'artists/michael-nyqvist_Cover.jpg'),
(254, 'Alfie', '', 'Allen', 'M', '', 'artists/alfie-allen_Cover.jpg'),
(255, 'Willem', '', 'Dafoe', 'M', '', 'artists/willem-dafoe_Cover.jpg'),
(256, 'Dean', '', 'Winters', 'M', '', 'artists/dean-winters_Cover.jpg'),
(257, 'Adrianne', '', 'Palicki', 'F', '', 'artists/adrianne-palicki_Cover.jpg'),
(258, 'Omer', '', 'Barnea', 'M', '', 'artists/omer-barnea_Cover.jpg'),
(259, 'Toby', 'Leonard', 'Moore', 'M', '', 'artists/toby-leonard-Moore_Cover.jpg'),
(260, 'Daniel', '', 'Bernhardt', 'M', '', 'artists/daniel-bernhardt_Cover.jpg'),
(261, 'Bridget', '', 'Moynahan', 'F', '', 'artists/bridget-moynahan_Cover.jpg'),
(262, 'John', '', 'Leguizamo', 'M', '', 'artists/john-leguizamo_Cover.jpg'),
(263, 'Ian', '', 'McShane', 'M', '', 'artists/ian-mcshane_Cover.jpeg'),
(264, 'Bridget', '', 'Regan', 'F', '', 'artists/bridget-regan_Cover.jpg'),
(265, 'Lance', '', 'Reddick', 'M', '', 'artists/lance-reddick_Cover.jpg'),
(266, 'Keith', '', 'Jardine', 'M', '', 'artists/keith-jardine_Cover.jpg'),
(267, 'Riccardo', '', 'Scamarcio', 'M', '', 'artists/riccardo-scamarcio_Cover.jpg'),
(268, 'Ruby', '', 'Rose', 'F', '', 'artists/ruby-rose_Cover.jpg'),
(269, 'Common', '', '', 'M', '', 'artists/common_Cover.jpg'),
(270, 'Claudia', '', 'Gerini', 'F', '', 'artists/claudia-gerini_Cover.jpg'),
(271, 'Laurence', '', 'Fishburne', 'M', '', 'artists/laurence-fishburne_Cover.jpg'),
(272, 'Tobias', '', 'Segal', 'M', '', 'artists/tobias-segal_Cover.jpg'),
(273, 'Thomas', '', 'Sadoski', 'M', '', 'artists/thomas-sadoski_Cover.jpg'),
(274, 'Erik', '', 'Frandsen', 'M', '', 'artists/erik-frandsen_Cover.jpg'),
(275, 'David', 'Patrick', 'Kelly', 'M', '', 'artists/david-patrick-kelly_Cover.jpg'),
(276, 'Perry', '', 'Yung', 'M', '', 'artists/perry-yung_Cover.jpg'),
(277, 'Tom', '', 'Cruise', 'M', '', 'artists/tom-cruise_Cover.png'),
(278, 'Jon', '', 'Voight', 'M', '', 'artists/jon-voight_Cover.jpg'),
(279, 'Emmanuelle', '', 'Béart', 'F', '', 'artists/emmanuelle-beart_Cover.jpg'),
(280, 'Henry', '', 'Czerny', 'M', '', 'artists/henry-czerny_Cover.jpg'),
(281, 'Jean', '', 'Reno', 'M', '', 'artists/jean-reno_Cover.jpg'),
(282, 'Ving', '', 'Rhames', 'M', '', 'artists/ving-rhames_Cover.jpg'),
(283, 'Kristin', 'Scott', 'Thomas', 'F', '', 'artists/kristin-scott-thomas_Cover.jpg'),
(284, 'Vanessa', '', 'Redgrave', 'F', '', 'artists/vanessa-redgrave_Cover.png'),
(285, 'Ingeborga', '', 'Dapkunaite', 'F', '', 'artists/ingeborga-dapkunaite_Cover.jpg'),
(286, 'Valentina', '', 'Yakunina', 'F', '', 'artists/valentina-yakunina_Cover.jpg'),
(287, 'Marek', '', 'Vasut', 'M', '', 'artists/marek-vasut_Cover.jpg'),
(288, 'Nathan', '', 'Osgood', 'M', '', 'artists/nathan-osgood_Cover.jpg'),
(289, 'John', '', 'McLaughlin', 'M', '', 'artists/john-mclaughlin_Cover.jpg'),
(290, 'Rolf', '', 'Saxon', 'M', '', 'artists/rolf-saxon_Cover.jpg'),
(291, 'Karel', '', 'Dobry', 'M', '', 'artists/karel-dobry_Cover.jpg'),
(292, 'Dougray', '', 'Scott', 'M', '', 'artists/dougray-scott_Cover.jpg'),
(293, 'Richard', '', 'Roxburgh', 'M', '', 'artists/richard-roxburgh_Cover.jpg'),
(294, 'John', '', 'Polson', 'M', '', 'artists/john-polson_Cover.jpg'),
(295, 'Rade', '', 'Serbedzija', 'M', '', 'artists/rade-serbedzija_Cover.jpg'),
(296, 'William', '', 'Mapother', 'M', '', 'artists/william-mapother_Cover.jpg'),
(297, 'Dominic', '', 'Purcell', 'M', '', 'artists/dominic-purcell_Cover.jpg'),
(298, 'Mathew', '', 'Wilkinson', 'M', '', 'artists/mathew-wilkinson_Cover.jpeg'),
(299, 'Nicholas', '', 'Bell', 'M', '', 'artists/nicholas-bell_Cover.jpg'),
(300, 'Kee', '', 'Chan', 'M', '', 'artists/kee-chan_Cover.jpg'),
(301, 'Philip', 'Seymour', 'Hoffman', 'M', '', 'artists/philip-seymour-hoffman_Cover.jpg'),
(302, 'Billy', '', 'Crudup', 'M', '', 'artists/billy-crudup_Cover.jpg'),
(303, 'Jonathan', 'Rhys', 'Meyers', 'M', '', 'artists/jonathan-rhys-meyers_Cover.jpg'),
(304, 'Keri', '', 'Russell', 'F', '', 'artists/keri-russell_Cover.jpg'),
(305, 'Maggie', '', 'Q', 'F', '', 'artists/maggie-q_Cover.jpeg'),
(306, 'Simon', '', 'Pegg', 'M', '', 'artists/simon-pegg_Cover.jpg'),
(307, 'Bahar', '', 'Soomekh', 'M', '', 'artists/bahar-soomekh_Cover.jpg'),
(308, 'Jeff', '', 'Chase', 'M', '', 'artists/jeff-chase_Cover.jpg'),
(309, 'Michael', '', 'Berry Jr.', 'M', '', 'artists/michael-berry-jr_Cover.jpg'),
(310, 'Carla', '', 'Gallo', 'F', '', 'artists/carla-gallo_Cover.jpg'),
(311, 'Paula', '', 'Patton', 'M', '', 'artists/paula-patton_Cover.jpg'),
(312, 'Vladimir', '', 'Mashkov', 'M', '', 'artists/vladimir-mashkov_Cover.jpg'),
(313, 'Samuli', '', 'Edelmann', 'M', '', 'artists/samuli-edelmann_Cover.jpg'),
(314, 'Ivan', '', 'Shvedoff', 'M', '', 'artists/ivan-shvedoff_Cover.jpg'),
(315, 'Anil', '', 'Kapoor', 'M', '', 'artists/anil-kapoor_Cover.jpg'),
(316, 'Léa', '', 'Seydoux', 'F', '', 'artists/lea-seydoux_Cover.jpg'),
(317, 'Josh', '', 'Holloway', 'M', '', 'artists/josh-holloway_Cover.jpg'),
(318, 'Pavel', '', 'Kríz', 'M', '', 'artists/pavel-kriz_Cover.jpg'),
(319, 'Miraj', '', 'Grbic', 'M', '', 'artists/miraj-grbic_Cover.jpg'),
(320, 'Ilia', '', 'Volok', 'F', '', 'artists/ilia-volok_Cover.jpg'),
(321, 'Goran', '', 'Navojec', 'M', '', 'artists/goran-navojec_Cover.jpeg'),
(322, 'Sean', '', 'Bean', 'M', '', 'artists/sean-bean_Cover.jpg'),
(323, 'Mark', '', 'Addy', 'M', '', 'artists/mark-addy_Cover.jpg'),
(324, 'Nikolaj', '', 'Coster-Waldau', 'M', '', 'artists/nikolaj-costerwaldau_Cover.jpg'),
(325, 'Lena', '', 'Headey', 'F', '', 'artists/lena-headey_Cover.jpg'),
(326, 'Emilia', '', 'Clarke', 'F', '', 'artists/emilia-clarke_Cover.jpg'),
(327, 'Iain', '', 'Glen', 'M', '', 'artists/iain-glen_Cover.jpg'),
(328, 'Harry', '', 'Lloyd', 'M', '', 'artists/harry-lloyd_Cover.jpg'),
(329, 'Kit', '', 'Harington', 'M', '', 'artists/kit-harington_Cover.jpg'),
(330, 'Sophie', '', 'Turner', 'F', '', 'artists/sophie-turner_Cover.jpg'),
(331, 'Maisie', '', 'Williams', 'F', '', 'artists/maisie-williams_Cover.jpg'),
(332, 'Richard', '', 'Madden', 'M', '', 'artists/richard-madden_Cover.jpg'),
(333, 'Isaac', 'Hempstead', 'Wright', 'M', '', 'artists/isaac-hempstead-wright_Cover.jpg'),
(334, 'Jack', '', 'Gleeson', 'M', '', 'artists/jack-gleeson_Cover.png'),
(335, 'Rory', '', 'McCann', 'M', '', 'artists/rory-mccann_Cover.jpg'),
(336, 'Donald', '', 'Sumpter', 'M', '', 'artists/donald-sumpter_Cover.jpg'),
(337, 'Conleth', '', 'Hill', 'M', '', 'artists/conleth-hill_Cover.jpg'),
(338, 'James', '', 'Cosmo', 'M', '', 'artists/james-cosmo_Cover.jpg'),
(339, 'Owen', '', 'Teale', 'M', '', 'artists/owen-teale_Cover.jpg'),
(340, 'André', '', 'Holland', 'M', '', 'artists/andre-holland_Cover.jpg'),
(341, 'Melanie', '', 'Lynskey', 'F', '', 'artists/melanie-lynskey_Cover.jpg'),
(342, 'Bill', '', 'Skarsgård', 'M', '', 'artists/bill-skarsgard_Cover.jpg'),
(343, 'Jane', '', 'Levy', 'F', '', 'artists/jane-levy_Cover.jpg'),
(344, 'Sissy', '', 'Spacek', 'F', '', 'artists/sissy-spacek_Cover.jpg'),
(345, 'Noel', '', 'Fisher', 'M', '', 'artists/noel-fisher_Cover.jpg'),
(346, 'Frances', '', 'Conroy', 'F', '', 'artists/frances-conroy_Cover.jpg'),
(347, 'Ann', '', 'Cusack', 'F', '', 'artists/ann-cusack_Cover.jpg'),
(348, 'Phyllis', '', 'Somerville', 'F', '', 'artists/phyllis-somerville_Cover.jpg'),
(349, 'Chris', '', 'Coy', 'M', '', 'artists/chris-coy_Cover.jpeg'),
(350, 'Josh', '', 'Cooke', 'M', '', 'artists/josh-cooke_Cover.jpg'),
(351, 'Caleel', '', 'Harris', 'M', '', 'artists/caleel-harris_Cover.jpg'),
(352, 'Schuyler', '', 'Fisk', 'F', '', 'artists/schuyler-fisk_Cover.jpg'),
(353, 'Jeffrey', '', 'Pierce', 'M', '', 'artists/jeffrey-pierce_Cover.jpg'),
(354, 'Allison', '', 'Tolman', 'F', '', 'artists/allison-tolman_Cover.jpg'),
(355, 'Adam', '', 'Rothenberg', 'M', '', 'artists/adam-rothenberg_Cover.jpg'),
(356, 'Aaron', '', 'Staton', 'M', '', 'artists/aaron-staton_Cover.jpg'),
(357, 'Charlie', '', 'Tahan', 'M', '', 'artists/charlie-tahan_Cover.jpg'),
(358, 'Cassady', '', 'McClincy', 'F', '', 'artists/cassady-mcclincy_Cover.jpg'),
(359, 'Russell', '', 'Posner', 'M', '', 'artists/russell-posner_Cover.jpg'),
(360, 'Burke', '', 'Moses', 'M', '', 'artists/burke-moses_Cover.jpg'),
(361, 'Mark', '', 'Zeisler', 'M', '', 'artists/mark-zeisler_Cover.jpg'),
(362, 'Mark', '', 'Harelik', 'M', '', 'artists/mark-harelik_Cover.jpg'),
(363, 'Lauren', '', 'Bowles', 'F', '', 'artists/lauren-bowles_Cover.jpg'),
(364, 'David', '', 'Selby', 'M', '', 'artists/david-selby_Cover.jpg'),
(365, 'Joseph', '', 'Bonamico', 'M', '', 'artists/joseph-bonamico_Cover.jpg'),
(366, 'Richard', '', 'Schiff', 'M', '', 'artists/richard-schiff_Cover.jpg'),
(367, 'Zabryna', '', 'Guevara', 'F', '', 'artists/zabryna-guevara_Cover.jpg'),
(368, 'James', 'Le', 'Gros', 'M', '', 'artists/james-le-gros_Cover.png'),
(369, 'Peta', '', 'Sergeant', 'F', '', 'artists/peta-sergeant_Cover.jpg'),
(370, 'Amanda', '', 'Brooks', 'F', '', 'artists/amanda-brooks_Cover.jpg'),
(371, 'Chosen', '', 'Jacobs', 'M', '', 'artists/chosen-jacobs_Cover.jpg'),
(372, 'Rory', '', 'Culkin', 'M', '', 'artists/rory-culkin_Cover.jpg'),
(373, 'CJ', '', 'Jones', 'M', '', 'artists/cj-jones_Cover.jpg'),
(374, 'William', '', 'Xifaras', 'M', '', 'artists/william-xifaras_Cover.jpg'),
(375, 'Caroline', '', 'Lawton', 'F', '', 'artists/caroline-lawton_Cover.jpg'),
(376, 'Andrea', '', 'Higgins', 'F', '', 'artists/andrea-higgins_Cover.jpg'),
(377, 'Michael', '', 'Rodrick', 'M', '', 'artists/michael-rodrick_Cover.jpg'),
(378, 'Jayne', '', 'Atkinson', 'F', '', 'artists/jayne-atkinson_Cover.jpg'),
(379, 'Rodrigo', '', 'Lopresti', 'M', '', 'artists/rodrigo-lopresti_Cover.jpg'),
(380, 'Julienne', 'Hanzelka', 'Kim', 'F', '', 'artists/julienne-hanzelka-kim_Cover.jpg'),
(381, 'Mamie', '', 'Gummer', 'F', '', 'artists/mamie-gummer_Cover.jpg'),
(382, 'Brett', '', 'Rickaby', 'M', '', 'artists/brett-rickaby_Cover.jpg'),
(383, 'Evan', 'Rachel', 'Wood', 'F', '', 'artists/evan-rachel-wood_Cover.jpg'),
(384, 'Jeffrey', '', 'Wright', 'M', '', 'artists/jeffrey-wright_Cover.jpg'),
(385, 'James', '', 'Marsden', 'M', '', 'artists/james-marsden_Cover.jpg'),
(386, 'Ingrid', 'Bolso', 'Berdal', 'F', '', 'artists/ingrid-bolso-berdal_Cover.jpg'),
(387, 'Luke', '', 'Hemsworth', 'M', '', 'artists/luke-hemsworth_Cover.jpg'),
(388, 'Sidse', 'Babett', 'Knudsen', 'F', '', 'artists/sidse-babett-knudsen_Cover.jpg'),
(389, 'Simon', '', 'Quarterman', 'M', '', 'artists/simon-quarterman_Cover.png'),
(390, 'Rodrigo', '', 'Santoro', 'M', '', 'artists/rodrigo-santoro_Cover.jpg'),
(391, 'Angela', '', 'Sarafyan', 'F', '', 'artists/angela-sarafyan_Cover.jpg'),
(392, 'Shannon', '', 'Woodward', 'F', '', 'artists/shannon-woodward_Cover.jpg'),
(393, 'Ed', '', 'Harris', 'M', '', 'artists/ed-harris_Cover.jpg'),
(394, 'Anthony', '', 'Hopkins', 'M', '', 'artists/anthony-hopkins_Cover.jpg'),
(395, 'Louis', '', 'Herthum', 'M', '', 'artists/louis-herthum_Cover.jpg'),
(396, 'Steven', '', 'Ogg', 'M', '', 'artists/steven-ogg_Cover.jpg'),
(397, 'Ben', '', 'Barnes', 'M', '', 'artists/ben-barnes_Cover.jpg'),
(398, 'Clifton', '', 'Collins Jr.', 'M', '', 'artists/clifton-collins-jr_Cover.jpg'),
(399, 'Jimmi', '', 'Simpson', 'M', '', 'artists/jimmi-simpson_Cover.jpg'),
(400, 'Ptolemy', '', 'Slocum', 'M', '', 'artists/ptolemy-slocum_Cover.jpg'),
(401, 'Bradford', '', 'Tatum', 'M', '', 'artists/bradford-tatum_Cover.jpg'),
(402, 'Michael', '', 'Wincott', 'M', '', 'artists/michael-wincott_Cover.jpg'),
(403, 'Leonardo', '', 'Nam', 'M', '', 'artists/leonardo-nam_Cover.jpg'),
(404, 'James', 'Landry', 'Hébert', 'M', '', 'artists/james-landry-hebert_Cover.jpg'),
(405, 'Oliver', '', 'Bell', 'M', '', 'artists/oliver-bell_Cover.jpg'),
(406, 'Tessa', '', 'Thompson', 'F', '', 'artists/tessa-thompson_Cover.jpg'),
(407, 'Talulah', '', 'Riley', 'F', '', 'artists/talulah-riley_Cover.jpg'),
(408, 'Fares', '', 'Fares', 'M', '', 'artists/fares-fares_Cover.jpg'),
(409, 'Gustaf', '', 'Skarsgård', 'M', '', 'artists/gustaf-skarsgard_Cover.jpg'),
(410, 'Betty', '', 'Gabriel', 'F', '', 'artists/betty-gabriel_Cover.jpg'),
(411, 'Zahn', '', 'McClarnon', 'M', '', 'artists/zahn-mcclarnon_Cover.jpg'),
(412, 'Katja', '', 'Herbers', 'F', '', 'artists/katja-herbers_Cover.jpg'),
(413, 'Peter', '', 'Mullan', 'M', '', 'artists/peter-mullan_Cover.jpg'),
(414, 'Jonathan', '', 'Tucker', 'M', '', 'artists/jonathan-tucker_Cover.jpg'),
(415, 'Rinko', '', 'Kikuchi', 'F', '', 'artists/rinko-kikuchi_Cover.jpg'),
(416, 'Julia', '', 'Jones', 'F', '', 'artists/julia-jones_Cover.jpg'),
(417, 'Martin', '', 'Sensmeier', 'M', '', 'artists/martin-sensmeier_Cover.png'),
(418, 'Irene', '', 'Bedard', 'F', '', 'artists/irene-bedard_Cover.jpg'),
(419, 'Booboo', '', 'Stewart', 'M', '', 'artists/booboo-stewart_Cover.jpg'),
(420, 'Sela', '', 'Ward', 'F', '', 'artists/sela-ward_Cover.jpg'),
(421, 'Jack', '', 'Conley', 'M', '', 'artists/jack-conley_Cover.jpg'),
(422, 'Rupert', '', 'Graves', 'M', '', 'artists/rupert-graves_Cover.jpg'),
(423, 'Una', '', 'Stubbs', 'F', '', 'artists/una-stubbs_Cover.jpg'),
(424, 'Jonathan', '', 'Aris', 'M', '', 'artists/jonathan-aris_Cover.jpg'),
(425, 'Louise', '', 'Brealey', 'F', '', 'artists/louise-brealey_Cover.jpg'),
(426, 'Zawe', '', 'Ashton', 'F', '', 'artists/zawe-ashton_Cover.jpg'),
(427, 'Joseph', '', 'Long', 'M', '', 'artists/joseph-long_Cover.jpg'),
(428, 'David', '', 'Nellist', 'M', '', 'artists/david-nellist_Cover.jpg'),
(429, 'Tanya', '', 'Moodie', 'F', '', 'artists/tanya-moodie_Cover.jpg'),
(430, 'James', '', 'Harper', 'M', '', 'artists/james-harper_Cover.jpg'),
(431, 'Phil', '', 'Davis', 'M', '', 'artists/phil-davis_Cover.jpg'),
(432, 'Vinette', '', 'Robinson', 'F', '', 'artists/vinette-robinson_Cover.jpg'),
(433, 'Siobhan', '', 'Hewlett', 'F', '', 'artists/siobhan-hewlett_Cover.jpg'),
(434, 'William', '', 'Scott-Masson', 'M', '', 'artists/william-scottmasson_Cover.jpg'),
(435, 'Victoria', '', 'Wicks', 'F', '', 'artists/victoria-wicks_Cover.jpg'),
(436, 'Sean', 'Joseph', 'Young', 'M', '', 'artists/sean-joseph-young_Cover.jpg'),
(437, 'Syrus', '', 'Lowe', 'M', '', 'artists/syrus-lowe_Cover.jpg'),
(438, 'Katy', '', 'Maw', 'F', '', 'artists/katy-maw_Cover.jpg'),
(439, 'Zoe', '', 'Telford', 'F', '', 'artists/zoe-telford_Cover.jpg'),
(440, 'Gemma', '', 'Chan', 'F', '', 'artists/gemma-chan_Cover.jpg'),
(441, 'Al', '', 'Weaver', 'M', '', 'artists/al-weaver_Cover.jpg'),
(442, 'Bertie', '', 'Carvel', 'M', '', 'artists/bertie-carvel_Cover.jpg'),
(443, 'Daniel', '', 'Percival', 'M', '', 'artists/daniel-percival_Cover.jpg'),
(444, 'Paul', '', 'Chequer', 'M', '', 'artists/paul-chequer_Cover.jpg'),
(445, 'Howard', '', 'Coggins', 'M', '', 'artists/howard-coggins_Cover.jpg'),
(446, 'Janice', '', 'Acquah', 'F', '', 'artists/janice-acquah_Cover.jpg'),
(447, 'Jack', '', 'Bence', 'M', '', 'artists/jack-bence_Cover.jpg'),
(448, 'John', '', 'Macmillan', 'M', '', 'artists/john-macmillan_Cover.jpg'),
(449, 'Olivia', '', 'Poulet', 'F', '', 'artists/olivia-poulet_Cover.jpg'),
(450, 'Andrew', '', 'Scott', 'M', '', 'artists/andrew-scott_Cover.jpg'),
(451, 'Matthew', '', 'Needham', 'M', '', 'artists/matthew-needham_Cover.jpg');
INSERT INTO `actors` (`id`, `first_name`, `middle_name`, `last_name`, `gender`, `about`, `img`) VALUES
(452, 'Kemal', '', 'Sylvester', 'M', '', 'artists/kemal-sylvester_Cover.jpg'),
(453, 'San', '', 'Shella', 'M', '', 'artists/san-shella_Cover.jpg'),
(454, 'Deborah', '', 'Moore', 'F', '', 'artists/deborah-moore_Cover.jpg'),
(455, 'Lauren', '', 'Crace', 'F', '', 'artists/lauren-crace_Cover.jpg'),
(456, 'Caroline', '', 'Trowbridge', 'F', '', 'artists/caroline-trowbridge_Cover.jpg'),
(457, 'Dean', '', 'Norris', 'M', '', 'artists/dean-norris_Cover.jpg'),
(458, 'Betsy', '', 'Brandt', 'F', '', 'artists/betsy-brandt_Cover.jpeg'),
(459, 'RJ', '', 'Mitte', 'M', '', 'artists/rj-mitte_Cover.jpg'),
(460, 'Max', '', 'Arciniega', 'M', '', 'artists/max-arciniega_Cover.jpg'),
(461, 'John', '', 'Koyama', 'M', '', 'artists/john-koyama_Cover.jpg'),
(462, 'Steven', 'Michael', 'Quezada', 'M', '', 'artists/steven-michael-quezada_Cover.jpg'),
(463, 'Marius', '', 'Stan', 'M', '', 'artists/marius-stan_Cover.jpg'),
(464, 'Aaron', '', 'Hill', 'M', '', 'artists/aaron-hill_Cover.jpg'),
(465, 'Carmen', '', 'Serano', 'F', '', 'artists/carmen-serano_Cover.jpg'),
(466, 'Jessica', '', 'Hecht', 'F', '', 'artists/jessica-hecht_Cover.jpg'),
(467, 'Julia', '', 'Minesci', 'F', '', 'artists/julia-minesci_Cover.jpg'),
(468, 'Tess', '', 'Harper', 'F', '', 'artists/tess-harper_Cover.jpg'),
(469, 'Michael', '', 'Bofshever', 'M', '', 'artists/michael-bofshever_Cover.jpg'),
(470, 'Kyle', '', 'Bornheimer', 'M', '', 'artists/kyle-bornheimer_Cover.jpg'),
(471, 'Benjamin', '', 'Petry', 'M', '', 'artists/benjamin-petry_Cover.jpg'),
(472, 'David', '', 'House', 'M', '', 'artists/david-house_Cover.jpg'),
(473, 'Jon', 'Kristian', 'Moore', 'M', '', 'artists/jon-kristian-moore_Cover.jpg'),
(474, 'Charles', '', 'Baker', 'M', '', 'artists/charles-baker_Cover.jpg'),
(475, 'Adam', '', 'Godley', 'M', '', 'artists/adam-godley_Cover.jpg'),
(476, 'Matt', '', 'Jones', 'M', '', 'artists/matt-jones_Cover.jpg'),
(477, 'William', '', 'Sterchi', 'M', '', 'artists/william-sterchi_Cover.jpg'),
(478, 'Kiira', '', 'Arai', 'F', '', 'artists/kiira-arai_Cover.jpg'),
(479, 'Bill', '', 'Allen', 'M', '', 'artists/bill-allen_Cover.jpg'),
(480, 'Loren', '', 'Haynes', 'M', '', 'artists/loren-haynes_Cover.jpg'),
(481, 'Raymond', '', 'Cruz', 'M', '', 'artists/raymond-cruz_Cover.jpg'),
(482, 'Pierre', '', 'Barrera', 'M', '', 'artists/pierre-barrera_Cover.jpg'),
(483, 'Cesar', '', 'Garcia', 'M', '', 'artists/cesar-garcia_Cover.jpg'),
(484, 'Vivian', '', 'Nesbitt', 'F', '', 'artists/vivian-nesbitt_Cover.jpg'),
(485, 'Beth', '', 'Bailey', 'F', '', 'artists/beth-bailey_Cover.jpg'),
(486, 'Geoffrey', '', 'Rivas', 'M', '', 'artists/geoffrey-rivas_Cover.jpg'),
(487, 'Lorri', '', 'Oliver', 'F', '', 'artists/lorri-oliver_Cover.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` mediumint(8) UNSIGNED NOT NULL,
  `product_department` varchar(35) NOT NULL,
  `product_format` varchar(10) NOT NULL,
  `quantity` tinyint(3) UNSIGNED NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `department` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `department`) VALUES
(1, 'Movies'),
(2, 'TV');

-- --------------------------------------------------------

--
-- Table structure for table `directors`
--

CREATE TABLE `directors` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `middle_name` varchar(40) DEFAULT NULL,
  `last_name` varchar(40) NOT NULL,
  `gender` char(1) NOT NULL,
  `about` text NOT NULL,
  `img` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `directors`
--

INSERT INTO `directors` (`id`, `first_name`, `middle_name`, `last_name`, `gender`, `about`, `img`) VALUES
(4, 'Alfonso', '', 'Cuarón', 'M', '', 'artists/alfonso-cuaron_Cover.jpg'),
(18, 'Christopher', '', 'Nolan', 'M', '', 'artists/chris-nolan_Cover.jpeg'),
(76, 'Doug', '', 'Liman', 'M', '', 'artists/doug-liman_Cover.jpeg'),
(77, 'Tony', '', 'Gilroy', 'M', '', 'artists/tony-gilroy_Cover.jpg'),
(78, 'Paul', '', 'Greengrass', 'M', '', 'artists/paul-greengrass_Cover.jpg'),
(79, 'Tim', '', 'Miller', 'M', '', 'artists/tim-miller_Cover.png'),
(80, 'David', '', 'Leitch', 'M', '', 'artists/david-leitch_Cover.jpg'),
(81, 'Chris', '', 'Columbus', 'M', '', 'artists/chris-columbus_Cover.jpg'),
(82, 'Mike', '', 'Newell', 'M', '', 'artists/mike-newell_Cover.jpg'),
(83, 'David', '', 'Yates', 'M', '', 'artists/david-yates_Cover.png'),
(84, 'Chad', '', 'Stahelski', 'M', '', 'artists/chad-stahelski_Cover.jpg'),
(85, 'Brian', 'De', 'Palma', 'M', '', 'artists/brian-de-palma_Cover.jpg'),
(86, 'John', '', 'Woo', 'M', '', 'artists/john-woo_Cover.jpg'),
(87, 'J.J.', '', 'Abrams', 'M', '', 'artists/jj-abrams_Cover.jpeg'),
(88, 'Brad', '', 'Bird', 'M', '', 'artists/brad-bird_Cover.jpg'),
(89, 'Timothy', 'Van', 'Patten', 'M', '', 'artists/timothy-van-patten_Cover.jpg'),
(90, 'Brian', '', 'Kirk', 'M', '', 'artists/brian-kirk_Cover.jpg'),
(91, 'Daniel', '', 'Minahan', 'M', '', 'artists/daniel-minahan_Cover.jpg'),
(92, 'Alan', '', 'Taylor', 'M', '', 'artists/alan-taylor_Cover.jpg'),
(93, 'Michael', '', 'Uppendahl', 'M', '', 'artists/michael-uppendahl_Cover.jpg'),
(94, 'Daniel', '', 'Attias', 'M', '', 'artists/daniel-attias_Cover.jpg'),
(95, 'Andrew', '', 'Bernstein', 'M', '', 'artists/andrew-bernstein_Cover.jpg'),
(96, 'Kevin', '', 'Hooks', 'M', '', 'artists/kevin-hooks_Cover.jpg'),
(97, 'Greg', '', 'Yaitanes', 'M', '', 'artists/greg-yaitanes_Cover.jpg'),
(98, 'Ana', 'Lily', 'Amirpour', 'F', '', 'artists/ana-lily-amirpour_Cover.jpg'),
(99, 'Julie', 'Anne', 'Robinson', 'F', '', 'artists/julie-anne-robinson_Cover.jpg'),
(100, 'Nicole', '', 'Kassell', 'F', '', 'artists/nicole-kassell_Cover.jpg'),
(101, 'Jonathan', '', 'Nolan', 'M', '', 'artists/jonathan-nolan_Cover.jpg'),
(102, 'Richard', 'J.', 'Lewis', 'M', '', 'artists/richard-j-lewis_Cover.jpg'),
(103, 'Neil', '', 'Marshall', 'M', '', 'artists/neil-marshall_Cover.jpg'),
(104, 'Vincenzo', '', 'Natali', 'M', '', 'artists/vincenzo-natali_Cover.jpg'),
(105, 'Jonny', '', 'Campbell', 'M', '', 'artists/jonny-campbell_Cover.jpg'),
(106, 'Frederick', 'E.O.', 'Toye', 'M', '', 'artists/frederick-eo-toye_Cover.jpg'),
(107, 'Stephen', '', 'Williams', 'M', '', 'artists/stephen-williams_Cover.png'),
(108, 'Michelle', '', 'MacLaren', 'F', '', 'artists/michelle-maclaren_Cover.jpg'),
(109, 'Lisa', '', 'Joy', 'F', '', 'artists/lisa-joy_Cover.jpeg'),
(110, 'Craig', '', 'Zobel', 'M', '', 'artists/craig-zobel_Cover.jpg'),
(111, 'Tarik', '', 'Saleh', 'M', '', 'artists/tarik-saleh_Cover.jpg'),
(112, 'Uta', '', 'Briesewitz', 'F', '', 'artists/uta-briesewitz_Cover.jpg'),
(113, 'Coky', '', 'Giedroyc', 'F', '', 'artists/coky-giedroyc_Cover.jpg'),
(114, 'Paul', '', 'McGuigan', 'M', '', 'artists/paul-mcguigan_Cover.jpg'),
(115, 'Euros', '', 'Lyn', 'M', '', 'artists/euros-lyn_Cover.jpg'),
(116, 'Vince', '', 'Gilligan', 'M', '', 'artists/vince-gilligan_Cover.png'),
(117, 'Adam', '', 'Bernstein', 'M', '', 'artists/adam-bernstein_Cover.jpg'),
(118, 'Jim', '', 'McKay', 'M', '', 'artists/jim-mckay_Cover.jpg'),
(119, 'Tricia', '', 'Brock', 'F', '', 'artists/tricia-brock_Cover.jpg'),
(120, 'Bronwen', '', 'Hughes', 'F', '', 'artists/bronwen-hughes_Cover.jpg'),
(121, 'Tim', '', 'Hunter', 'M', '', 'artists/tim-hunter_Cover.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `dps`
--

CREATE TABLE `dps` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `middle_name` varchar(40) DEFAULT NULL,
  `last_name` varchar(40) NOT NULL,
  `gender` char(1) NOT NULL,
  `about` text NOT NULL,
  `img` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dps`
--

INSERT INTO `dps` (`id`, `first_name`, `middle_name`, `last_name`, `gender`, `about`, `img`) VALUES
(9, 'Bruno', '', 'Delbonnel', 'M', '', 'artists/brunodelbonnel_Cover.jpg'),
(16, 'Dan', '', 'Laustsen', 'M', '', 'artists/danlaustsen_Cover.jpg'),
(39, 'John', '', 'Seale', 'M', '', 'artists/johnseale_Cover.jpg'),
(40, 'John', '', 'Toll', 'M', '', 'artists/johntoll_Cover.jpg'),
(60, 'Robert', '', 'Elswit', 'M', '', 'artists/robertelswit_Cover.jpg'),
(73, 'Wally', '', 'Pfister', 'M', '', 'artists/wallypfister_Cover.jpg'),
(75, 'Oliver', '', 'Wood', 'M', '', 'artists/oliver-wood_Cover.jpg'),
(76, 'Ken', '', 'Seng', 'M', '', 'artists/ken-seng_Cover.jpg'),
(77, 'Jonathan', '', 'Sela', 'M', '', 'artists/jonathan-sela_Cover.jpg'),
(78, 'Roger', '', 'Pratt', 'M', '', 'artists/roger-pratt_Cover.jpg'),
(79, 'Michael', '', 'Seresin', 'M', '', 'artists/michael-seresin_Cover.jpg'),
(80, 'Slawomir', '', 'Idziak', 'M', '', 'artists/slawomir-idziak_Cover.jpg'),
(81, 'Eduardo', '', 'Serra', 'M', '', 'artists/eduardo-serra_Cover.jpg'),
(82, 'Barry', '', 'Ackroyd', 'M', '', 'artists/barry-ackroyd_Cover.jpg'),
(83, 'Stephen', 'H.', 'Burum', 'M', '', 'artists/stephen-h-burum_Cover.jpg'),
(84, 'Jeffrey', 'L.', 'Kimball', 'M', '', 'artists/jeffrey-l-kimball_Cover.jpg'),
(85, 'Dan', '', 'Mindel', 'M', '', 'artists/dan-mindel_Cover.jpg'),
(86, 'Alik', '', 'Sakharov', 'M', '', 'artists/alik-sakharov_Cover.jpeg'),
(87, 'Marco', '', 'Pontecorvo', 'M', '', 'artists/marco-pontecorvo_Cover.jpg'),
(88, 'Matthew', '', 'Jensen', 'M', '', 'artists/matthew-jensen_Cover.jpg'),
(89, 'Richard', '', 'Rutkowski', 'M', '', 'artists/richard-rutkowski_Cover.jpg'),
(90, 'Paul', '', 'Cameron', 'M', '', 'artists/paul-cameron_Cover.jpg'),
(91, 'Brendan', '', 'Galvin', 'M', '', 'artists/brendan-galvin_Cover.jpg'),
(92, 'Robert', '', 'McLachlan', 'M', '', 'artists/robert-mclachlan_Cover.jpg'),
(93, 'Jeffrey', '', 'Jur', 'M', '', 'artists/jeffrey-jur_Cover.jpg'),
(94, 'David', '', 'Franco', 'M', '', 'artists/david-franco_Cover.jpg'),
(95, 'Darran', '', 'Tiernan', 'M', '', 'artists/darran-tiernan_Cover.jpg'),
(96, 'John', '', 'Grillo', 'M', '', 'artists/john-grillo_Cover.jpg'),
(97, 'M.', 'David', 'Mullen', 'M', '', 'artists/m-david-mullen_Cover.jpg'),
(98, 'Matt', '', 'Gray', 'M', '', 'artists/matt-gray_Cover.jpg'),
(99, 'Steve', '', 'Lawes', 'M', '', 'artists/steve-lawes_Cover.jpg'),
(100, 'Reynaldo', '', 'Villalobos', 'M', '', 'artists/reynaldo-villalobos_Cover.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `formats`
--

CREATE TABLE `formats` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `format` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `formats`
--

INSERT INTO `formats` (`id`, `format`) VALUES
(2, '4K-UHD'),
(1, 'Blu-ray'),
(3, 'DVD');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `genre` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `genre`) VALUES
(1, 'Action'),
(2, 'Adventure'),
(3, 'Animation'),
(4, 'Biography'),
(5, 'Comedy'),
(6, 'Crime'),
(7, 'Documentary'),
(8, 'Drama'),
(9, 'Family'),
(10, 'Fantasy'),
(11, 'Film Noir'),
(12, 'Game Show'),
(13, 'History'),
(14, 'Horror'),
(15, 'Music'),
(16, 'Musical'),
(17, 'Mystery'),
(18, 'News'),
(19, 'Reality-TV'),
(20, 'Sci-Fi'),
(21, 'Short'),
(22, 'Sport'),
(23, 'Superhero'),
(24, 'Talk Show'),
(25, 'Thriller'),
(26, 'War'),
(27, 'Western');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` mediumint(8) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_department` varchar(35) NOT NULL,
  `product_format` varchar(10) NOT NULL,
  `quantity` tinyint(3) UNSIGNED NOT NULL,
  `unit_price` decimal(5,2) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `shipper_id` int(10) UNSIGNED NOT NULL,
  `ordered_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `total` decimal(5,2) UNSIGNED DEFAULT NULL,
  `credit_card_num` mediumint(4) UNSIGNED ZEROFILL NOT NULL,
  `shipping` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `producers`
--

CREATE TABLE `producers` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `middle_name` varchar(40) DEFAULT NULL,
  `last_name` varchar(40) NOT NULL,
  `gender` char(1) NOT NULL,
  `about` text NOT NULL,
  `img` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `producers`
--

INSERT INTO `producers` (`id`, `first_name`, `middle_name`, `last_name`, `gender`, `about`, `img`) VALUES
(19, 'Christopher', '', 'Nolan', 'M', '', 'artists/chris-nolan_Cover.jpeg'),
(24, 'David', '', 'Benioff', 'M', '', 'artists/david_benioff_Cover.png'),
(26, 'D.B.', '', 'Weiss', 'M', '', 'artists/d-b-weiss_Cover.png'),
(32, 'Emma', '', 'Thomas', 'F', '', 'artists/emma-thomas_Cover.jpg'),
(34, 'Frank', '', 'Doelger', 'M', '', 'artists/frank_doelger_Cover.jpg'),
(35, 'George', 'R. R.', 'Martin', 'M', '', 'artists/george-r-r-martin_Cover.jpg'),
(56, 'Mark', '', 'Johnson', 'M', '', 'artists/mark-johnson_Cover.png'),
(66, 'Patty', '', 'Lin', 'F', '', 'artists/patty-lin_Cover.jpg'),
(73, 'Vince', '', 'Gilligan', 'M', '', 'artists/vince-gilligan_Cover.png'),
(76, 'Larry', '', 'Franco', 'M', '', 'artists/larry-franco_Cover.jpg'),
(77, 'Benjamin', '', 'Melniker', 'M', '', 'artists/benjamin-melniker_Cover.jpg'),
(78, 'Lorne', '', 'Orleans', 'M', '', 'artists/lorne-orleans_Cover.jpg'),
(79, 'Charles', '', 'Roven', 'M', '', 'artists/charles-roven_Cover.png'),
(80, 'Michael', 'E.', 'Uslan', 'M', '', 'artists/michael-e-uslan_Cover.jpg'),
(81, 'Patrick', '', 'Crowley', 'M', '', 'artists/patrick-crowley_Cover.jpg'),
(82, 'Richard', 'N.', 'Gladstein', 'M', '', 'artists/richard-n-gladstein_Cover.jpg'),
(83, 'Doug', '', 'Liman', 'M', '', 'artists/doug-liman_Cover.jpeg'),
(84, 'Robert', '', 'Ludlum', 'M', '', 'artists/robert-ludlum_Cover.jpg'),
(85, 'Frank', '', 'Marshall', 'M', '', 'artists/frank-marshall_cover.png'),
(86, 'Jennifer', '', 'Fox', 'F', '', 'artists/jennifer-fox_Cover.jpg'),
(87, 'Daniel', 'M.', 'Stillman', 'M', '', 'artists/daniel-m-stillman_Cover.jpg'),
(88, 'Jeffrey', 'M.', 'Weiner', 'M', '', 'artists/jeffrey-m-weiner_Cover.jpg'),
(89, 'Henning', '', 'Molfenter', 'M', '', 'artists/henning-molfenter_Cover.jpg'),
(90, 'Thierry', '', 'Potok', 'M', '', 'artists/thierry-potok_Cover.jpg'),
(91, 'Paul', '', 'Sandberg', 'M', '', 'artists/paul-sandberg_Cover.jpg'),
(92, 'Kevin', 'De La', 'Noy', 'M', '', 'artists/kevin-de-la-noy_Cover.jpg'),
(93, 'Jordan', '', 'Goldberg', 'M', '', 'artists/jordan-goldberg_Cover.jpg'),
(94, 'Philip', '', 'Lee', 'M', '', 'artists/philip-lee_Cover.jpg'),
(95, 'Thomas', '', 'Tull', 'M', '', 'artists/thomas-tull_Cover.jpg'),
(96, 'Zakaria', '', 'Alaoui', 'M', '', 'artists/zakaria-alaoui_Cover.png'),
(97, 'John', '', 'Bernard', 'M', '', 'artists/john-bernard_Cover.jpeg'),
(98, 'John', 'J.', 'Kelly', 'M', '', 'artists/john-j-kelly_Cover.jpg'),
(99, 'Simon', '', 'Kinberg', 'M', '', 'artists/simon-kinberg_Cover.jpg'),
(100, 'Jonathon', 'Komack', 'Martin', 'M', '', 'artists/jonathon-komack-martin_Cover.jpg'),
(101, 'Rhett', '', 'Reese', 'M', '', 'artists/rhett-reese_Cover.jpg'),
(102, 'Ryan', '', 'Reynolds', 'M', '', 'artists/ryan-reynolds_Cover.jpg'),
(103, 'Lauren', 'Shuler', 'Donner', 'F', '', 'artists/lauren-shuler-donner_Cover.jpg'),
(104, 'Aditya', '', 'Sood', 'M', '', 'artists/aditya-sood_Cover.jpg'),
(105, 'Paul', '', 'Wernick', 'M', '', 'artists/paul-wernick_Cover.jpg'),
(106, 'Stan', '', 'Lee', 'M', '', 'artists/stan-lee_Cover.jpg'),
(108, 'Todd', '', 'Arnow', 'M', '', 'artists/todd-arnow_Cover.jpg'),
(109, 'Michael', '', 'Barnathan', 'M', '', 'artists/michael-barnathan_Cover.jpg'),
(110, 'Chris', '', 'Columbus', 'M', '', 'artists/chris-columbus_Cover.jpg'),
(111, 'Paula', 'DuPré', 'Pesmen', 'F', '', 'artists/paula-dupre-pesmen_Cover.jpg'),
(112, 'Duncan', '', 'Henderson', 'M', '', 'artists/duncan-henderson_Cover.jpg'),
(113, 'David', '', 'Heyman', 'M', '', 'artists/david-heyman_Cover.jpg'),
(114, 'Mark', '', 'Radcliffe', 'M', '', 'artists/mark-radcliffe_Cover.jpg'),
(115, 'Tanya', '', 'Seghatchian', 'F', '', 'artists/tanya-seghatchian_Cover.jpg'),
(116, 'David', '', 'Barron', 'M', '', 'artists/david-barron_Cover.jpg'),
(117, 'Chris', '', 'Carreras', 'M', '', 'artists/chris-carreras_Cover.jpg'),
(118, 'Callum', '', 'McDougall', 'M', '', 'artists/callum-mcdougall_Cover.jpg'),
(119, 'Peter', '', 'MacDonald', 'M', '', 'artists/peter-macdonald_Cover.jpg'),
(120, 'Geraldine', '', 'Patten', 'F', '', 'artists/geraldine-patten_Cover.jpg'),
(121, 'Lionel', '', 'Wigram', 'M', '', 'artists/lional-wigram_Cover.jpg'),
(122, 'J.K.', '', 'Rowling', 'F', '', 'artists/jk-rowling_Cover.jpg'),
(123, 'Debbi', '', 'Bossi', 'F', '', 'artists/debbi-bossi_Cover.jpeg'),
(124, 'Roy', '', 'Button', 'M', '', 'artists/roy-button_Cover.jpg'),
(125, 'Matt', '', 'Damon', 'M', '', 'artists/matt-damon_Cover.jpg'),
(126, 'Gregory', '', 'Goodman', 'M', '', 'artists/gregory-goodman_Cover.jpg'),
(127, 'Paul', '', 'Greengrass', 'M', '', 'artists/paul-greengrass_Cover.jpg'),
(128, 'Juan', 'Cano', 'Nono', 'M', '', 'artists/juan-cano-nono_Cover.jpg'),
(129, 'Christopher', '', 'Rouse', 'M', '', 'artists/christopher-rouse_Cover.jpg'),
(130, 'Jennifer', '', 'Todd', 'F', '', 'artists/jennifer-todd_Cover.jpg'),
(131, 'Andreas', '', 'Wentz', 'M', '', 'artists/andreas-wentz_Cover.jpg'),
(132, 'Tara', '', 'Finegan', 'F', '', 'artists/tara-finegan_Cover.jpg'),
(133, 'Kevin', 'Scott', 'Frakes', 'M', '', 'artists/kevin-scott-frakes_Cover.jpg'),
(134, 'Basil', '', 'Iwanyk', 'M', '', 'artists/basil-iwanyk_Cover.jpg'),
(135, 'Peter', '', 'Lawson', 'M', '', 'artists/peter-lawson_Cover.jpg'),
(136, 'Erica', '', 'Lee', 'F', '', 'artists/erica-lee_Cover.jpg'),
(137, 'David', '', 'Leitch', 'M', '', 'artists/david-leitch_Cover.jpg'),
(138, 'Eva', '', 'Longoria', 'F', '', 'artists/eva-longoria_Cover.jpg'),
(139, 'Raj', 'Brinder', 'Singh', 'M', '', 'artists/raj-brinder-singh_Cover.jpg'),
(140, 'Jared', '', 'Underwood', 'M', '', 'artists/jared-underwood_Cover.jpg'),
(141, 'Joseph', '', 'Vincenti', 'M', '', 'artists/joseph-vincenti_Cover.jpg'),
(142, 'Stephen', '', 'Hamel', 'M', '', 'artists/stephen-hamel_Cover.jpg'),
(143, 'Robert', '', 'Bernacchi', 'M', '', 'artists/robert-bernacchi_Cover.jpg'),
(144, 'Marco', 'Valerio', 'Pugini', 'M', '', 'artists/marco-valerio-pugini_Cover.jpg'),
(145, 'Vishal', '', 'Rungta', 'M', '', 'artists/vishal-rungta_Cover.jpg'),
(146, 'Jeff', 'G.', 'Waxman', 'M', '', 'artists/jeff-g-waxman_Cover.jpeg'),
(147, 'Shixing', '', 'Zhou', 'M', '', 'artists/shixing-zhou_Cover.jpg'),
(148, 'J.C.', '', 'Calciano', 'M', '', 'artists/jc-calciano_Cover.jpg'),
(149, 'Paula', '', 'Wagner', 'F', '', 'artists/paula-wagner_Cover.jpg'),
(150, 'Tom', '', 'Cruise', 'M', '', 'artists/tom-cruise_Cover.png'),
(151, 'Terence', '', 'Chang', 'M', '', 'artists/terence-chang_Cover.jpg'),
(152, 'Michael', '', 'Doven', 'M', '', 'artists/michael-doven_Cover.jpg'),
(153, 'Arthur', '', 'Anderson', 'M', '', 'artists/arthur-anderson_Cover.jpg'),
(154, 'Bill', '', 'Borden', 'M', '', 'artists/bill-borden_Cover.jpeg'),
(155, 'Sanping', '', 'Han', 'M', '', 'artists/sanping-han_Cover.jpg'),
(156, 'Stratton', '', 'Leopold', 'M', '', 'artists/stratton-leopold_Cover.jpg'),
(157, 'Enzo', '', 'Sisti', 'M', '', 'artists/enzo-sisti_Cover.jpg'),
(158, 'Haicheng', '', 'Zhao', 'M', '', 'artists/haicheng-zhao_Cover.jpg'),
(159, 'J.J.', '', 'Abrams', 'M', '', 'artists/jj-abrams_Cover.jpeg'),
(160, 'Josh', '', 'Appelbaum', 'M', '', 'artists/josh-appelbaum_Cover.jpg'),
(161, 'Bryan', '', 'Burk', 'M', '', 'artists/bryan-burk_Cover.jpg'),
(162, 'Jeffrey', '', 'Chernov', 'M', '', 'artists/jeffrey-chernov_Cover.jpg'),
(163, 'David', '', 'Ellison', 'M', '', 'artists/david-ellison_Cover.png'),
(164, 'Dana', '', 'Goldberg', 'F', '', 'artists/dana-goldberg_Cover.jpg'),
(165, 'Tommy', '', 'Harper', 'M', '', 'artists/tommy-harper_Cover.jpg'),
(166, 'David', '', 'Minkowski', 'M', '', 'artists/david-minkowski_Cover.jpg'),
(167, 'André', '', 'Nemec', 'M', '', 'artists/andre-nemec_Cover.jpg'),
(168, 'Tabrez', '', 'Noorani', 'M', '', 'artists/tabrez-noorani_Cover.jpeg'),
(169, 'Tom', 'C.', 'Peitzman', 'M', '', 'artists/tom-c-peitzman_Cover.jpg'),
(170, 'Ben', '', 'Rosenblatt', 'M', '', 'artists/ben-rosenblatt_Cover.jpg'),
(171, 'Pravesh', '', 'Sahni', 'M', '', 'artists/pravesh-sahni_Cover.jpg'),
(172, 'Paul', '', 'Schwake', 'M', '', 'artists/paul-schwake_Cover.jpg'),
(173, 'Tim', '', 'Smythe', 'M', '', 'artists/tim-smythe_Cover.jpg'),
(174, 'Matthew', '', 'Stillman', 'M', '', 'artists/matthew-stillman_Cover.jpeg'),
(175, 'Guymon', '', 'Casady', 'M', '', 'artists/guymon-casady_Cover.jpg'),
(176, 'Vince', '', 'Gerardis', 'M', '', 'artists/vince-gerardis_Cover.jpg'),
(177, 'Mark', '', 'Huffam', 'M', '', 'artists/mark-huffam_Cover.jpg'),
(178, 'Tom', '', 'McCarthy', 'M', '', 'artists/tom-mccarthy_Cover.jpg'),
(179, 'Christopher', '', 'Newman', 'M', '', 'artists/christopher-newman_Cover.jpg'),
(180, 'Greg', '', 'Spence', 'M', '', 'artists/greg-spence_Cover.jpg'),
(181, 'Ralph', '', 'Vicinanza', 'M', '', 'artists/ralph-vicinanza_Cover.jpg'),
(182, 'Scott', '', 'Brown', 'M', '', 'artists/scott-brown_Cover.jpg'),
(183, 'Lila', '', 'Byock', 'F', '', 'artists/lila-byock_Cover.jpg'),
(184, 'Stephen', '', 'King', 'M', '', 'artists/stephen-king_Cover.jpg'),
(185, 'Mark', '', 'Lafferty', 'M', '', 'artists/mark-lafferty_Cover.jpg'),
(186, 'Sam', '', 'Shaw', 'M', '', 'artists/sam-shaw_Cover.jpg'),
(187, 'Tom', '', 'Spezialy', 'M', '', 'artists/tom-spezialy_Cover.jpg'),
(188, 'Ben', '', 'Stephenson', 'M', '', 'artists/ben-stephenson_Cover.jpg'),
(189, 'Robin', '', 'Sweet', 'F', '', 'artists/robin-sweet_Cover.jpg'),
(190, 'Dustin', '', 'Thomason', 'M', '', 'artists/dustin-thomason_Cover.jpg'),
(191, 'Michael', '', 'Uppendahl', 'M', '', 'artists/michael-uppendahl_Cover.jpg'),
(192, 'Vinnie', '', 'Wilhelm', 'M', '', 'artists/vinnie_wilhelm_Cover.jpg'),
(193, 'Liz', '', 'Glotzer', 'F', '', 'artists/liz-glotzer_Cover.jpg'),
(194, 'David', '', 'Coatsworth', 'M', '', 'artists/david-coatsworth_Cover.jpg'),
(195, 'Susan', '', 'Ekins', 'F', '', 'artists/susan-ekins_Cover.jpg'),
(196, 'Lisa', '', 'Joy', 'F', '', 'artists/lisa-joy_Cover.jpeg'),
(197, 'Kathy', '', 'Lingg', 'F', '', 'artists/kathy-lingg_Cover.jpg'),
(198, 'Jonathan', '', 'Nolan', 'M', '', 'artists/jonathan-nolan_Cover.jpg'),
(199, 'Stephen', '', 'Semel', 'M', '', 'artists/stephen-semel_Cover.jpeg'),
(200, 'Jerry', '', 'Weintraub', 'M', '', 'artists/jerry-weintraub_Cover.jpg'),
(201, 'Athena', '', 'Wickham', 'F', '', 'artists/athena-wickham_Cover.png'),
(202, 'Ed', '', 'Brubaker', 'M', '', 'artists/ed-brubaker_Cover.png'),
(203, 'Richard', 'J.', 'Lewis', 'M', '', 'artists/richard-j-lewis_Cover.jpg'),
(204, 'Kath', '', 'Lingenfelter', 'F', '', 'artists/kath-lingenfelter_Cover.jpg'),
(205, 'Cherylanne', '', 'Martin', 'F', '', 'artists/cherylanne-martin_Cover.jpg'),
(206, 'Dominic', '', 'Mitchell', 'M', '', 'artists/dominic-mitchell_Cover.jpg'),
(207, 'Roberto', '', 'Patino', 'M', '', 'artists/roberto-patino_Cover.jpg'),
(208, 'Alan', '', 'Poul', 'M', '', 'artists/alan-poul_Cover.jpeg'),
(209, 'Daniel', 'T.', 'Thomsen', 'M', '', 'artists/daniel-t-thomsen_Cover.jpg'),
(210, 'Bridget', '', 'Carpenter', 'F', '', 'artists/bridget-carpenter_Cover.jpg'),
(211, 'Howard', '', 'Cummings', 'M', '', 'artists/howard-cummings_Cover.jpg'),
(212, 'Dan', '', 'Dietz', 'M', '', 'artists/dan-dietz_Cover.jpg'),
(213, 'Ron', '', 'Fitzgerald', 'M', '', 'artists/ron-fitzgerald_Cover.jpg'),
(214, 'Eugene', '', 'Kelly', 'M', '', 'artists/eugene-kelly_Cover.jpg'),
(215, 'Michael', '', 'Polaire', 'M', '', 'artists/michael-polaire_Cover.jpg'),
(216, 'Frederick', 'E.O.', 'Toye', 'M', '', 'artists/frederick-eo-toye_Cover.jpg'),
(217, 'Carly', '', 'Wray', 'F', '', 'artists/carly-wray_Cover.jpg'),
(218, 'Kelly', '', 'Calligan', 'F', '', 'artists/kelly-calligan_Cover.jpg'),
(219, 'Chevy', '', 'Chen', 'M', '', 'artists/chevy-chen_Cover.jpg'),
(220, 'Mark', '', 'Gatiss', 'M', '', 'artists/mark-gatiss_Cover.jpeg'),
(221, 'Steven', '', 'Moffat', 'M', '', 'artists/steven-moffat_Cover.jpg'),
(222, 'Beryl', '', 'Vertue', 'F', '', 'artists/beryl-vertue_Cover.jpg'),
(223, 'Sue', '', 'Vertue', 'F', '', 'artists/sue-vertue_Cover.jpg'),
(224, 'Rebecca', '', 'Eaton', 'F', '', 'artists/rebecca-eaton_Cover.jpeg'),
(225, 'Bethan', '', 'Jones', 'F', '', 'artists/bethan-jones_Cover.png'),
(226, 'Melissa', '', 'Bernstein', 'F', '', 'artists/melissa-bernstein_Cover.jpg'),
(227, 'Stewart', '', 'Lyons', 'M', '', 'artists/stewart-lyons_Cover.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `productdetails`
--

CREATE TABLE `productdetails` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `rated_id` tinyint(3) UNSIGNED NOT NULL,
  `spec_id` tinyint(3) UNSIGNED NOT NULL,
  `edition` varchar(30) DEFAULT NULL,
  `discs` tinyint(3) UNSIGNED DEFAULT NULL,
  `runtime` smallint(5) UNSIGNED NOT NULL,
  `media_date` varchar(10) DEFAULT NULL,
  `more_description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `productdetails`
--

INSERT INTO `productdetails` (`id`, `rated_id`, `spec_id`, `edition`, `discs`, `runtime`, `media_date`, `more_description`) VALUES
(1, 3, 1, 'Standard Edition', 3, 140, '2017-12-19', 'Includes UltraViolet so you can enjoy the film on many different compatible devices. MUST ENTER REDEMPTION CODE BY 2018-12-31 TO REDEEM ULTRAVIOLET OFFER. DOES NOT INCLUDE iTUNES FILE.'),
(2, 3, 2, '4K Ultra HD+Blu-ray+Digital', 2, 119, '2016-12-06', ''),
(3, 3, 3, '4K Ultra HD+Blu-ray+Digital', 2, 135, '2016-12-06', ''),
(4, 3, 4, '4K Ultra HD+Blu-ray+Digital', 2, 108, '2016-12-06', ''),
(5, 3, 5, 'Standard Edition', 3, 152, '2017-12-19', ''),
(6, 3, 6, '4K Ultra HD+Blu-ray+Digital', 2, 115, '2016-12-06', ''),
(7, 3, 7, 'Standard Edition', 3, 165, '2017-12-19', ''),
(8, 4, 8, '', 2, 108, '2016-05-10', ''),
(9, 7, 9, '4K+ Blu-Ray + Digital', 4, 134, '2018-08-21', '4K BLU RAY DISC ONLY! DOES NOT INCLUDE CASE OR ARTWORK OR DIGITAL CODES. JUST THE BLU RAY DISC SHIPPED IN A PLASTIC SNAP CASE. FEEL FREE TO ASK ANY QUESTIONS AND THANK YOU FOR LOOKING!'),
(10, 2, 10, '', 3, 152, '2017-11-07', 'Harry Potter and the Sorcerer\'s Stone (4K Ultra HD + Blu-ray + Digital)'),
(11, 2, 11, '', 3, 161, '2017-11-07', 'Harry Potter and the Chamber of Secrets (4K Ultra HD + Blu-ray + Digital)'),
(12, 2, 12, '', 3, 142, '2017-11-07', 'Harry Potter and the Prisoner of Azkaban (4K Ultra HD + Blu-ray + Digital)'),
(13, 3, 13, '', 3, 157, '2017-11-07', 'Harry Potter and the Goblet of Fire (4K Ultra HD + Blu-ray + Digital)'),
(14, 3, 14, '', 3, 138, '2017-03-28', 'Harry Potter and the Order of the Phoenix (4K Ultra HD + Blu-ray)'),
(15, 2, 15, 'Standard Edition', 3, 153, '2017-03-28', 'The customer may or may not receive the slip cover. Harry Potter and the Half Blood Prince (4K Ultra HD + Blu-ray + Digital)'),
(16, 3, 16, '', 3, 146, '2017-03-28', 'Harry Potter and the Deathly Hallows Part 1 (4K Ultra HD + Blu-ray). Comes without Slip Cover'),
(17, 3, 17, 'Standard Edition', 3, 130, '2017-03-28', 'Harry Potter and the Deathly Hallows Part 2 (4K Ultra HD + Blu-ray)'),
(18, 3, 18, '4K Ultra HD+Blu-ray+Digital', 2, 123, '2016-12-06', 'Includes a digital copy of Jason Bourne (Subject to expiration. Go to NBCUCodes.com for details.). Features High Dynamic Range (HDR10) for Brighter, Deeper, More Lifelike Color.'),
(19, 4, 19, '', 2, 101, '2017-02-07', 'An ex-hitman comes out of retirement to track down the gangsters that took everything from him.'),
(20, 4, 20, '', 2, 122, '2017-06-13', 'After returning to the criminal underworld to repay a debt, John Wick discovers that a large bounty has been put on his life.'),
(21, 3, 21, '', 1, 110, '2018-06-26', ''),
(22, 3, 22, '', 1, 123, '2018-06-26', ''),
(23, 3, 23, '', 1, 125, '2018-06-26', ''),
(24, 3, 24, '', 1, 132, '2018-06-26', ''),
(25, 13, 25, '4K Ultra HD', 4, 561, '2018-06-05', 'Nine noble families fight for control over the mythical lands of Westeros.'),
(26, 13, 26, 'Blu-Ray+4K', 4, 500, '2019-01-08', 'Castle Rock: The Complete First Season (4K Ultra HD/Blu-ray/Digital Copy). A psychological-horror series set in the Stephen King multiverse, Castle Rock is an original story that combines the mythological scale and intimate character storytelling of King\''),
(27, 13, 27, 'New Box Art', 6, 619, '2018-02-13', 'Westworld: The Complete First Season (Repackaged/4K UHD/BD/Digital Copy)'),
(28, 13, 28, 'Limited Edition', 6, 619, '2017-11-07', 'Westworld: The Complete First Season (Limited Edition) (4K UHD/BD/Digital Copy) (4K Ultra HD)'),
(29, 13, 29, '4K Ultra HD+Blu-ray+Digital HD', 6, 631, '2018-12-04', 'Your Digital Copy redemption code is printed on an insert inside your Blu-ray/DVD package. A Digital Copy is a digital version of the full-length movie that you get when you own specially-marked Blu-ray/DVD discs bearing the “Digital” logo.'),
(30, 13, 30, 'Best Buy Exclusive SteelBook', 3, 631, '2018-12-04', 'SteelBook, 4K Ultra HD Blu-ray'),
(31, 12, 33, '', 2, 461, '2018-11-06', 'Sherlock: Season One (4K Ultra HD)'),
(32, 13, 34, '', 2, 346, '2010-03-16', 'Cast and Crew Commentaries. Deleted/Extended Scenes. Making of Breaking Bad. AMC Shootout - Interview with Vince Gilligan and Bryan Cranston. Screen Tests. Inside Breaking Bad. Vince Gilligan\'s Photo Gallery'),
(33, 13, 35, 'Blu-ray', 5, 561, '2012-07-24', 'Kings, queens, knights and renegades use schemes and swords to battle for the throne.');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `department_id` tinyint(3) UNSIGNED NOT NULL,
  `format_id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `year` varchar(4) NOT NULL,
  `release_date` varchar(10) NOT NULL,
  `description` varchar(1100) NOT NULL,
  `isd` varchar(10) NOT NULL,
  `sku` varchar(15) NOT NULL,
  `unit_price` decimal(4,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `stock` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `image_1` varchar(50) NOT NULL,
  `image_2` varchar(50) DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `department_id`, `format_id`, `name`, `year`, `release_date`, `description`, `isd`, `sku`, `unit_price`, `stock`, `image_1`, `image_2`, `date_created`) VALUES
(1, 1, 2, 'Batman Begins Ultra HD', '', '2005-06-17', 'Acclaimed director Christopher Nolan explores the origins of the legendary Dark Knight. After his parents\' murders, disillusioned heir Bruce Wayne (Christian Bale) travels the world seeking the means to fight injustice. With the help of his trusted butler Alfred (Michael Caine), Detective Jim Gordon (Gary Oldman) and his ally Lucius Fox (Morgan Freeman), Wayne returns to Gotham and unleashes his alter ego: Batman, a masked crusader who uses strength, intellect and high-tech weaponry to fight evil.', '26592a6474', 'BB05CN4KU1217WB', '24.99', 25, '5d265a019b21c0.59826717.jpg', '5d265a019b2216.25287495.jpg', '2019-07-10 21:31:22'),
(2, 1, 2, 'The Bourne Identity Ultra HD', '', '2002-06-14', 'Academy Award winner Matt Damon stars as Jason Bourne in The Bourne Identity, an explosive and action-packed hit filled with incredible fight sequences. Found with two bullets in his back, Bourne discovers he has the skills of a very dangerous man with no memory of his violent past. Racing to unlock the secret of his own identity, he discovers the deadly truth: he\'s an elite government agent; a 30 million dollar weapon that the government no longer trusts. Lethally trained and built to disappear, Bourne is the government\'s top operative who has become its number one target in this super-charged, thrill-a-minute spectacular loaded with &quot;non-stop action!&quot; (Bill Zwecker, FOX-TV)', '6cdd02e7e0', 'BI02DI4KU1216UP', '14.39', 20, '5d26cef20e2609.25210339.jpg', '5d26cef20e2741.80695765.jpg', '2019-07-11 05:49:04'),
(3, 1, 2, 'The Bourne Legacy', '', '2012-08-10', 'The Bourne Legacy takes the action-packed Bourne series to an explosive new level. On the verge of having their conspiracy exposed, members of the government\'s intelligence community will stop at nothing to erase all evidence of their top secret programs - even the agents involved. Aaron Cross (Jeremy Renner) must use his genetically-engineered skills to survive the ultimate game of cat-and-mouse and finish what Jason Bourne started. Also starring Academy Award winner Rachel Weisz and Academy Award nominee Edward Norton, critics are calling this a &quot;thrilling, edge-of-your-seat heart-pounder&quot; (Meg Porter Berns, WSVN-TV (FOX)).', '277f166c68', 'BL12TG4KU1216UP', '19.96', 23, '5d277f48a24647.05067124.jpg', '5d277f48a246a9.48861334.jpg', '2019-07-11 18:25:26'),
(4, 1, 2, 'The Bourne Supremacy', '', '2004-07-23', 'They should have left him alone... Academy Award winner Matt Damon returns as expert assassin Jason Bourne in the next chapter of the stunning, non-stop action hit, The Bourne Supremacy. The haunting past that Bourne hoped to have escaped from, catches up to him once again as the CIA threatens to ruin his new, anonymous life - forcing Bourne to resume his former life as a trained assassin to survive. Fuelled by awesome fight scenes and some of the most breathtaking chase sequences ever filmed, it\'s a state-of-the-art espionage thriller that explodes into action and never lets up!', '2804dac2d6', 'BS04PG4KU1216UP', '14.99', 30, '5d2804ed7088f2.79464843.jpg', '5d2804ed708967.23700854.jpg', '2019-07-12 03:56:10'),
(5, 1, 2, 'The Dark Knight Ultra HD', '', '2008-07-18', 'The follow-up to Batman Begins, The Dark Knight reunites director Christopher Nolan and star Christian Bale, who reprises the role of Batman/Bruce Wayne in his continuing war on crime. With the help of Lt. Jim Gordon and District Attorney Harvey Dent, Batman sets out to destroy organized crime in Gotham for good. The triumvirate proves effective. But soon the three find themselves prey to a rising criminal mastermind known as The Joker, who thrusts Gotham into anarchy and forces Batman closer to crossing the fine line between hero and vigilante.', '28389403df', 'DK08CN4KU1217WB', '21.93', 50, '5d2838c5471cb5.95441124.jpg', '5d2838c5471d15.89636931.jpg', '2019-07-12 07:36:52'),
(6, 1, 2, 'The Bourne Ultimatum 4K', '', '2007-08-03', 'Highly trained assassin Jason Bourne (Matt Damon) is on the hunt for the agents who stole his memory and true identity in The Bourne Ultimatum, the third installment of the epic-espionage Bourne series. With a new generation of skilled CIA operatives tracking his evey move, Bourne is in a non-stop race around the globe as he finally learns the truth behind his mysterious past. Loaded with incredible fight and chase sequences, it\'s the exhilarating movie with &quot;mind-blowing action&quot; (Roger Ebert, Chicago Sun-Times) that you can\'t afford to miss!', '28e64b0946', 'BU07PG4KU1216UP', '14.99', 27, '5d28e677c80126.28380893.jpg', '5d28e677c801e5.05180957.jpg', '2019-07-12 19:58:03'),
(7, 1, 2, 'The Dark Knight Rises 4K', '', '2012-07-20', 'Eight years ago, after assuming the blame for D.A. Harvey Dent\'s death, a disgraced Batman (Christian Bale) mysteriously vanished. But everything changes with the appearance of a cunning cat burglar (Anne Hathaway) and the arrival of Bane (Tom Hardy), a ruthless madman. Bane\'s reign of terror forces Bruce out of his self-imposed exile and into the ultimate battle for Gotham City\'s survival...and his own.', '912ca913e4', 'DKR12CN4K1217WB', '21.93', 33, '5d2912eb6ac434.41475985.jpg', '5d2912eb6ac485.04636904.jpg', '2019-07-12 23:07:54'),
(8, 1, 2, 'Deadpool 4K', '', '2016-02-12', 'Hold onto your chimichangas, folks. From the studio that brought you all 3 Taken films comes Deadpool, the block-busting, fourth-wall-breaking masterpiece about Marvel Comics\' sexiest anti-hero: ME! Go deep inside (I love that) my origin story...typical stuff...rogue experiment, accelerated healing powers, horrible disfigurement, red spandex, imminent revenge. Directed by overpaid tool Tim Miller, and starring God\'s perfect idiot Ryan Reynolds, Ed Skrein, Morena Baccarin, T.J. Miller and Gina Carano, Deadpool is a giddy slice of awesomeness packed with more twists than my enemies\' intestines and more action than prom night. Amazeballs!', '2d345794cf', 'DP116TM4K0516FX', '14.96', 23, '5d2d4695eec819.20161660.jpg', NULL, '2019-07-16 02:20:07'),
(9, 1, 2, 'Deadpool 2 4K', '', '2018-05-18', 'After surviving a near fatal bovine attack, a disfigured cafeteria chef (Wade Wilson) struggles to fulfill his dream of becoming Mayberry’s hottest bartender while also learning to cope with his lost sense of taste. Searching to regain his spice for life, as well as a flux capacitor, Wade must battle ninjas, the yakuza, and a pack of sexually aggressive canines, as he journeys around the world to discover the importance of family, friendship, and flavor – finding a new taste for adventure and earning the coveted coffee mug title of World’s Best Lover.', '2e2fdf51e7', 'DP218DL4K0818FX', '21.56', 34, '5d2e2ff5086850.04237188.jpg', NULL, '2019-07-16 20:13:19'),
(10, 1, 2, 'HP1: Sorcerer\'s Stone (4K Ultra HD)', '', '2001-11-16', 'The magical adventure begins when Harry Potter is invited to attend Hogwarts School of Witchcraft and Wizardry.', 'e72b142312', 'HP101CC4K1117WB', '19.99', 52, '5d2e72ca862f81.64953360.jpg', '5d2e72ca8630d8.61443507.jpg', '2019-07-17 00:58:25'),
(11, 1, 2, 'HP2: Chamber of Secrets (4K)', '', '2002-11-15', 'Cars fly, trees attack and a mysterious house-elf warns Harry of great danger as he returns for his second year.', '2e91ebd84c', 'HP202CC4K1117WB', '19.99', 57, '5d2e920b7477e3.04861738.jpg', '5d2e920b747884.26218194.jpg', '2019-07-17 03:11:39'),
(12, 1, 2, 'HP3: Prisoner of Azkaban (4K)', '', '2004-06-04', 'Harry must confront soul-sucking Dementors, outsmart a werewolf and learn the truth about the escaped prisoner of Azkaban - Sirius Black.', '2f4c490235', 'HP304AC4K1117WB', '19.99', 47, '5d2f4c6576bd21.89459845.jpg', '5d2f4c6576bde9.78938343.jpg', '2019-07-17 16:26:49'),
(13, 1, 2, 'HP4: Goblet of Fire (4K)', '', '2005-11-18', 'Harry must overcome a deadly dragon, fierce water demons and an enchanted maze only to find himself in the cruel grasp of He Who Must Not Be Named.', '2f65e01303', 'HP405MN4K1117WB', '19.99', 51, '5d2f65f83e4018.04386945.jpg', '5d2f65f83e40d1.15828792.jpg', '2019-07-17 18:16:00'),
(14, 1, 2, 'HP5: Order of the Phoenix (4K)', '', '2007-07-11', 'When few believe that Lord Voldemort has returned, Harry must secretly train his friends for the wizarding war ahead.', 'f89666d028', 'HP507DY4K0317WB', '21.43', 49, '5d2f897c7b6c75.36640698.jpg', '5d2f897c7b6d05.51723140.jpg', '2019-07-17 20:47:34'),
(15, 1, 2, 'HP6: Half-Blood Prince (4K)', '', '2009-07-15', 'As Lord Voldemort tightens his grip on both Muggle and wizarding worlds, Harry and Dumbledore work to find the key to unlock Voldemort\'s defenses.', 'e6dab19949', 'HP609DY4K0317WB', '24.39', 60, '5d7e71a11c89a2.96548268.jpg', '5d7e71a11c8a35.73129527.jpg', '2019-09-15 16:58:19'),
(16, 1, 2, 'HP7: Deathly Hollows Part 1 (4K)', '', '2010-11-19', 'Harry, Ron and Hermione set out to track down and destroy the secret to Voldemort\'s power - the Horcruxes. The three must rely on one another more than ever...but Dark Forces threaten to tear them apart.', '7eb8e5e00f', 'HP710DY4K0317WB', '25.36', 52, '5d7eb90314d384.11420839.jpg', '5d7eb90314d3e0.00020338.jpg', '2019-09-15 22:19:17'),
(17, 1, 2, 'HP7: Deathly Hollows Part 2 (4K)', '', '2011-07-15', 'In the epic finale, the battle between the good and evil forces of the wizarding world escalates into an all-out war. The stakes have never been higher and no one is safe. But it is Harry who may be called upon to make the ultimate sacrifice as he draws closer to the climactic showdown with Lord Voldemort.', 'ed294d2715', 'HP811DY4K0317WB', '25.29', 40, '5d7ed2b27e94b8.36762925.jpg', '5d7ed2b27e9549.96760957.jpg', '2019-09-16 00:08:52'),
(18, 1, 2, 'Jason Bourne (4K)', '', '2016-07-29', 'Matt Damon returns to his most iconic role in &lt;i&gt;Jason Bourne&lt;/i&gt;. Paul Greengrass, the director of &lt;i&gt;The Bourne Supremacy&lt;/i&gt; and &lt;i&gt;The Bourne Ultimatum&lt;/i&gt;, once again joins Damon for the next chapter of Universal Pictures\' &lt;i&gt;Bourne&lt;/i&gt; franchise, which finds the CIA\'s most lethal operative drawn out of the shadows. Damon is joined by Alicia Vikander, Vincent Cassel and Tommy Lee Jones, while Julia Stiles reprises her role in the series.', '7efab6c8a2', 'JB16PG4KU1216UP', '15.29', 25, '5d7efae43929d5.32410396.jpg', '5d7efae4392a57.04262054.jpg', '2019-09-16 03:00:06'),
(19, 1, 2, 'John Wick (4K)', '', '2014-10-24', 'When sadistic young thugs senselessly attack John Wick - a brilliantly lethal ex-assassin - they have no idea that they\'ve just awakened the boogeyman. With New York City as his bullet-riddled playground, Wick embarks on a merciless rampage, hunting down his adversaries with the skill and ruthlessness that made him an underworld legend.', '06a2b62549', 'JW114CS4K0217SE', '15.00', 34, '5d806a56f2ea63.01833923.jpg', NULL, '2019-09-17 05:07:55'),
(20, 1, 2, 'John Wick: Chapter 2 (4K)', '', '2017-02-10', 'Legendary hit man John Wick is forced out of retirement again by a former associate plotting to seize control of a shadowy international assassins\' guild. Bound by a blood oath to help him, John travels to Rome, where he squares off against some of the world\'s deadliest killers.', '80f22ec6c6', 'JW217CS4K0617SE', '15.00', 47, '5d80f28ebb1fe1.52208249.jpg', NULL, '2019-09-17 14:48:14'),
(21, 1, 2, 'Mission: Impossible (4K)', '', '1996-05-22', 'Tom Cruise ignites the screen in this runaway smash hit that &quot;holds you on the edge of your seat before blasting you out of it&quot; (Howard Rosenberg, Los Angeles Times). Cruise stars as Ethan Hunt, a secret agent framed for the deaths of his espionage team. Fleeing from government assassins, breaking into the CIA\'s most impenetrable vault, clinging to the roof of a speeding bullet train, Hunt races like a burning fuse to stay one step ahead of his pursuers...and draw one step closer to discovering the shocking truth.', '8199855a7a', 'MI196BP4K0618PP', '22.99', 26, '5d81999d3adad2.06450368.jpg', NULL, '2019-09-18 02:42:13'),
(22, 1, 2, 'Mission: Impossible II (4K)', '', '2000-05-24', 'The world\'s greatest spy returns in the movie event of the year, M:I-2. This mission finds Ethan Hunt partnering up with the beautiful Nyah Hall to stop renegade agent Sean Ambrose from releasing a new kind of terror on an unsuspecting world. But before the mission is complete, they\'ll traverse the globe and have to choose between everything they love and everything they believe in.', '2e5639f41d', 'MI200JW4K0618PP', '20.40', 26, '5d82e5984fb1c9.65722839.jpg', NULL, '2019-09-19 02:18:11'),
(23, 1, 2, 'Mission: Impossible III (4K)', '', '2006-05-05', 'Lured back into action by his agency superiors, Ethan Hunt faces his deadliest adversary yet - a sadistic weapons dealer named Owen Davian. With the support of his IMF team, Ethan leaps into spectacular adventure from Rome to Shanghai as he races to rescue a captured agent and stop Davian from eliminating his next target: Ethan\'s wife, Julia.', '42d7e66d5b', 'MI306JA4K0618PP', '18.57', 27, '5d842d90438cf5.94487167.jpg', NULL, '2019-09-20 01:38:06'),
(24, 1, 2, 'Mission: Impossible - Ghost Protocol (4K)', '', '2011-12-21', 'Blamed for the terrorist bombing of the Kremlin, IMF operative Ethan Hunt is disavowed along with the rest of the agency when the President initiates &quot;Ghost Protocol&quot;. Left without any resources or backup, Ethan must find a way to clear his agency\'s name and prevent another attack. To complicate matters further, Ethan is forced to embark on this mission with a team of fellow IMF fugitives whose personal motives he does not fully know.', '5827cae6d3', 'MI411BB4K0618PP', '22.99', 37, '5d858291026894.70252170.jpg', NULL, '2019-09-21 01:53:00'),
(25, 2, 2, 'Game Of Thrones: Season 1 (4K)', '', '2011-04-17', 'Summers span decades. Winters can last a lifetime. And the struggle for the Iron Throne has begun. It will stretch from the south, where heat breeds plots, lusts and intrigues; to the vast and savage eastern lands; and all the way to the frozen north, where an 800-foot wall of ice protects the kingdom from the dark forces that lie beyond. Kings and queens, knights and renegades, liars, lords, and honest men...all will play the “Game of Thrones.”', '667d9c2f10', 'GG111VA4K0618HB', '31.99', 71, '5d8667f41d6d07.97911126.jpg', NULL, '2019-09-21 18:11:37'),
(26, 2, 2, 'Castle Rock: Season 1 (4K)', '', '2018-07-25', 'Attorney Henry Deaver is called back to the town of Castle Rock, Maine -- where he was raised by foster parents -- after a mysterious death at Shawshank Prison reveals a secret prisoner with no name or history locked in a disused wing of the crumbling facility.', '6d3152dcb0', 'CR118VA4K0118HB', '26.99', 17, '5d86d5bf85c523.28765362.jpg', NULL, '2019-09-22 01:49:09'),
(27, 2, 2, 'Westworld: Season 1 (4K)', '', '2016-10-02', 'Visitors to a futuristic theme park populated by artificial beings experience Wild West adventures -- and more. Based on the 1973 film by Michael Crichton.', '87d3dd8396', 'WW116VA4K0218WB', '31.99', 49, '5d87d3f50392d9.61094910.jpg', NULL, '2019-09-22 20:04:45'),
(28, 2, 2, 'Westworld: Season 1 - Steelbook (4K)', '', '2016-10-02', 'Visitors to a futuristic theme park populated by artificial beings experience Wild West adventures -- and more. Based on the 1973 film by Michael Crichton.', '7dc2d2bdb1', 'WW1SBVA4K0218WB', '42.99', 46, '5d87dc3fee9f58.55783079.jpg', '5d87dc3fee9f96.79207596.jpg', '2019-09-22 20:40:13'),
(29, 2, 2, 'Westworld: Season 2 (4K)', '', '2018-04-22', 'In the series\' second season, the newly awakened &quot;hosts&quot; explore their new reality, and flashbacks dig deeper into the origins of the world\'s most sophisticated theme park.', '880f0d1772', 'WW218VA4K1018WB', '32.47', 41, '5d880f8ad1c9e4.91920755.jpg', NULL, '2019-09-23 00:17:17'),
(30, 2, 2, 'Westworld: Season 2 - Steelbook (4K)', '', '2018-04-22', 'In the series\' second season, the newly awakened &quot;hosts&quot; explore their new reality, and flashbacks dig deeper into the origins of the world\'s most sophisticated theme park.', '8157668b6e', 'WW2SBVA4K1218WB', '59.95', 13, '5d8815815dc5e4.66661086.jpg', NULL, '2019-09-23 00:44:38'),
(31, 2, 2, 'Sherlock: Season 1 (4K)', '', '2011-06-05', 'Sherlock Holmes stalks again in contemporary versions of the classic detective stories, translated to 21st century London, where the world\'s first &quot;consulting detective&quot; advises Scotland Yard with the aid of his friend and comrade, Dr. John Watson, a soldier recently returned from deployment to Afghanistan.', 'a1b86b3631', 'SH111VA4K1118BB', '17.97', 22, '5d8a1c02391e65.40873170.jpg', NULL, '2019-09-24 13:35:02'),
(32, 2, 1, 'Breaking Bad: Season 1 (Blu-ray)', '', '2008-01-20', 'Walter White is a down-on-his-luck chemistry teacher struggling to make ends meet for his wife and physically challenged son. Everything changes when Walter receives a startling diagnosis: terminal lung cancer. With only a few years to live and nothing to lose, Walter uses his training as a chemist to cook and sell crystal meth with one of his former students. As his status grows, so do his lies, but Walt will stop at nothing to make sure his family is taken care of after he\'s gone, even if it means putting all their lives on the line.', 'c4840956b4', 'BB1VGBRY0310AMC', '13.26', 33, '5d8c4850cec6d7.82641621.jpg', NULL, '2019-09-26 05:10:24'),
(33, 2, 1, 'Game Of Thrones: Season 1 (Blu-ray)', '', '2011-04-17', 'Summers span decades. Winters can last a lifetime. And the struggle for the Iron Throne has begun. It will stretch from the south, where heat breeds plots, lusts and intrigues; to the vast and savage eastern lands; and all the way to the frozen north, where an 800-foot wall of ice protects the kingdom from the dark forces that lie beyond. Kings and queens, knights and renegades, liars, lords, and honest men...all will play the “Game of Thrones.”', '8ce096a2b1', 'GG1VABRY0618HBO', '32.91', 43, '5d8ce0bd40e8f2.69154186.jpg', NULL, '2019-09-26 16:00:22');

-- --------------------------------------------------------

--
-- Table structure for table `products_actors`
--

CREATE TABLE `products_actors` (
  `product_id` mediumint(8) UNSIGNED NOT NULL,
  `actor_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products_actors`
--

INSERT INTO `products_actors` (`product_id`, `actor_id`) VALUES
(1, 29),
(1, 76),
(1, 77),
(1, 78),
(1, 79),
(1, 80),
(1, 81),
(1, 82),
(1, 83),
(1, 84),
(1, 85),
(1, 86),
(1, 87),
(1, 88),
(1, 89),
(2, 90),
(2, 91),
(2, 92),
(2, 93),
(2, 94),
(2, 95),
(2, 96),
(2, 97),
(2, 98),
(2, 99),
(2, 100),
(2, 101),
(2, 102),
(3, 103),
(3, 104),
(3, 105),
(3, 106),
(3, 107),
(3, 108),
(3, 109),
(3, 110),
(3, 111),
(3, 112),
(3, 113),
(3, 114),
(3, 115),
(3, 116),
(3, 117),
(4, 90),
(4, 91),
(4, 94),
(4, 96),
(4, 99),
(4, 118),
(4, 119),
(4, 120),
(4, 121),
(4, 122),
(4, 123),
(4, 124),
(4, 125),
(4, 126),
(4, 127),
(5, 29),
(5, 76),
(5, 77),
(5, 80),
(5, 86),
(5, 128),
(5, 129),
(5, 130),
(5, 131),
(5, 132),
(5, 133),
(5, 134),
(5, 135),
(5, 136),
(5, 137),
(6, 90),
(6, 99),
(6, 104),
(6, 119),
(6, 121),
(6, 138),
(6, 139),
(6, 140),
(6, 141),
(6, 142),
(6, 143),
(6, 144),
(6, 145),
(6, 146),
(6, 147),
(7, 9),
(7, 12),
(7, 29),
(7, 76),
(7, 77),
(7, 86),
(7, 148),
(7, 149),
(7, 150),
(7, 151),
(7, 152),
(7, 153),
(7, 154),
(7, 155),
(7, 156),
(8, 157),
(8, 158),
(8, 159),
(8, 160),
(8, 161),
(8, 162),
(8, 163),
(8, 164),
(8, 165),
(8, 166),
(8, 167),
(8, 168),
(8, 169),
(8, 170),
(9, 157),
(9, 158),
(9, 161),
(9, 162),
(9, 167),
(9, 168),
(9, 170),
(9, 171),
(9, 172),
(9, 173),
(9, 174),
(9, 175),
(9, 176),
(9, 177),
(9, 178),
(10, 49),
(10, 179),
(10, 180),
(10, 181),
(10, 182),
(10, 183),
(10, 184),
(10, 185),
(10, 186),
(10, 187),
(10, 188),
(10, 189),
(11, 181),
(11, 182),
(11, 183),
(11, 184),
(11, 190),
(11, 191),
(11, 192),
(11, 193),
(11, 194),
(11, 195),
(11, 196),
(11, 197),
(11, 198),
(11, 199),
(11, 200),
(12, 29),
(12, 181),
(12, 182),
(12, 183),
(12, 184),
(12, 190),
(12, 201),
(12, 202),
(12, 203),
(12, 204),
(12, 205),
(12, 206),
(12, 207),
(12, 208),
(12, 209),
(13, 181),
(13, 190),
(13, 191),
(13, 195),
(13, 196),
(13, 198),
(13, 199),
(13, 210),
(13, 211),
(13, 212),
(13, 213),
(13, 214),
(13, 215),
(13, 216),
(13, 217),
(14, 181),
(14, 182),
(14, 183),
(14, 184),
(14, 202),
(14, 203),
(14, 214),
(14, 218),
(14, 219),
(14, 220),
(14, 221),
(14, 222),
(14, 223),
(14, 224),
(15, 181),
(15, 190),
(15, 191),
(15, 196),
(15, 197),
(15, 198),
(15, 203),
(15, 211),
(15, 225),
(15, 226),
(15, 227),
(15, 228),
(15, 229),
(15, 230),
(15, 231),
(16, 181),
(16, 182),
(16, 183),
(16, 184),
(16, 190),
(16, 191),
(16, 197),
(16, 198),
(16, 224),
(16, 225),
(16, 230),
(16, 232),
(16, 233),
(16, 234),
(16, 235),
(17, 181),
(17, 186),
(17, 188),
(17, 190),
(17, 191),
(17, 224),
(17, 225),
(17, 227),
(17, 230),
(17, 236),
(17, 237),
(17, 238),
(17, 239),
(17, 240),
(17, 241),
(18, 5),
(18, 65),
(18, 90),
(18, 99),
(18, 242),
(18, 243),
(18, 244),
(18, 245),
(18, 246),
(18, 247),
(18, 248),
(18, 249),
(18, 250),
(18, 251),
(19, 252),
(19, 253),
(19, 254),
(19, 255),
(19, 256),
(19, 257),
(19, 258),
(19, 259),
(19, 260),
(19, 261),
(19, 262),
(19, 263),
(19, 264),
(19, 265),
(19, 266),
(20, 233),
(20, 252),
(20, 261),
(20, 262),
(20, 263),
(20, 265),
(20, 267),
(20, 268),
(20, 269),
(20, 270),
(20, 271),
(20, 272),
(20, 273),
(20, 274),
(20, 275),
(20, 276),
(21, 277),
(21, 278),
(21, 279),
(21, 280),
(21, 281),
(21, 282),
(21, 283),
(21, 284),
(21, 285),
(21, 286),
(21, 287),
(21, 288),
(21, 289),
(21, 290),
(21, 291),
(22, 70),
(22, 81),
(22, 223),
(22, 277),
(22, 282),
(22, 292),
(22, 293),
(22, 294),
(22, 295),
(22, 296),
(22, 297),
(22, 298),
(22, 299),
(22, 300),
(23, 124),
(23, 176),
(23, 271),
(23, 277),
(23, 282),
(23, 301),
(23, 302),
(23, 303),
(23, 304),
(23, 305),
(23, 306),
(23, 307),
(23, 308),
(23, 309),
(23, 310),
(24, 103),
(24, 253),
(24, 277),
(24, 306),
(24, 311),
(24, 312),
(24, 313),
(24, 314),
(24, 315),
(24, 316),
(24, 317),
(24, 318),
(24, 319),
(24, 320),
(24, 321),
(25, 60),
(25, 155),
(25, 199),
(25, 234),
(25, 254),
(25, 322),
(25, 323),
(25, 324),
(25, 325),
(25, 326),
(25, 327),
(25, 328),
(25, 329),
(25, 330),
(25, 331),
(25, 332),
(25, 333),
(25, 334),
(25, 335),
(25, 336),
(25, 337),
(25, 338),
(25, 339),
(26, 104),
(26, 179),
(26, 340),
(26, 341),
(26, 342),
(26, 343),
(26, 344),
(26, 345),
(26, 346),
(26, 347),
(26, 348),
(26, 349),
(26, 350),
(26, 351),
(26, 352),
(26, 353),
(26, 354),
(26, 355),
(26, 356),
(26, 357),
(26, 358),
(26, 359),
(26, 360),
(26, 361),
(26, 362),
(26, 363),
(26, 364),
(26, 365),
(26, 366),
(26, 367),
(26, 368),
(26, 369),
(26, 370),
(26, 371),
(26, 372),
(26, 373),
(26, 374),
(26, 375),
(26, 376),
(26, 377),
(26, 378),
(26, 379),
(26, 380),
(26, 381),
(26, 382),
(27, 70),
(27, 383),
(27, 384),
(27, 385),
(27, 386),
(27, 387),
(27, 388),
(27, 389),
(27, 390),
(27, 391),
(27, 392),
(27, 393),
(27, 394),
(27, 395),
(27, 396),
(27, 397),
(27, 398),
(27, 399),
(27, 400),
(27, 401),
(27, 402),
(27, 403),
(27, 404),
(27, 405),
(27, 406),
(27, 407),
(28, 70),
(28, 383),
(28, 384),
(28, 385),
(28, 386),
(28, 387),
(28, 388),
(28, 389),
(28, 390),
(28, 391),
(28, 392),
(28, 393),
(28, 394),
(28, 395),
(28, 396),
(28, 397),
(28, 398),
(28, 399),
(28, 400),
(28, 401),
(28, 402),
(28, 403),
(28, 404),
(28, 405),
(28, 406),
(28, 407),
(29, 70),
(29, 383),
(29, 384),
(29, 385),
(29, 386),
(29, 387),
(29, 389),
(29, 390),
(29, 391),
(29, 392),
(29, 393),
(29, 394),
(29, 395),
(29, 396),
(29, 397),
(29, 398),
(29, 399),
(29, 406),
(29, 407),
(29, 408),
(29, 409),
(29, 410),
(29, 411),
(29, 412),
(29, 413),
(29, 414),
(29, 415),
(29, 416),
(29, 417),
(29, 418),
(29, 419),
(29, 420),
(29, 421),
(30, 70),
(30, 383),
(30, 384),
(30, 385),
(30, 386),
(30, 387),
(30, 389),
(30, 390),
(30, 391),
(30, 392),
(30, 393),
(30, 394),
(30, 395),
(30, 396),
(30, 397),
(30, 398),
(30, 399),
(30, 406),
(30, 407),
(30, 408),
(30, 409),
(30, 410),
(30, 411),
(30, 412),
(30, 413),
(30, 414),
(30, 415),
(30, 416),
(30, 417),
(30, 418),
(30, 419),
(30, 420),
(30, 421),
(31, 10),
(31, 52),
(31, 422),
(31, 423),
(31, 424),
(31, 425),
(31, 426),
(31, 427),
(31, 428),
(31, 429),
(31, 430),
(31, 431),
(31, 432),
(31, 433),
(31, 434),
(31, 435),
(31, 436),
(31, 437),
(31, 438),
(31, 439),
(31, 440),
(31, 441),
(31, 442),
(31, 443),
(31, 444),
(31, 445),
(31, 446),
(31, 447),
(31, 448),
(31, 449),
(31, 450),
(31, 451),
(31, 452),
(31, 453),
(31, 454),
(31, 455),
(31, 456),
(32, 1),
(32, 7),
(32, 16),
(32, 416),
(32, 457),
(32, 458),
(32, 459),
(32, 460),
(32, 461),
(32, 462),
(32, 463),
(32, 464),
(32, 465),
(32, 466),
(32, 467),
(32, 468),
(32, 469),
(32, 470),
(32, 471),
(32, 472),
(32, 473),
(32, 474),
(32, 475),
(32, 476),
(32, 477),
(32, 478),
(32, 479),
(32, 480),
(32, 481),
(32, 482),
(32, 483),
(32, 484),
(32, 485),
(32, 486),
(32, 487),
(33, 60),
(33, 155),
(33, 199),
(33, 234),
(33, 254),
(33, 322),
(33, 323),
(33, 324),
(33, 325),
(33, 326),
(33, 327),
(33, 328),
(33, 329),
(33, 330),
(33, 331),
(33, 332),
(33, 333),
(33, 334),
(33, 335),
(33, 336),
(33, 337),
(33, 338),
(33, 339);

-- --------------------------------------------------------

--
-- Table structure for table `products_directors`
--

CREATE TABLE `products_directors` (
  `product_id` mediumint(8) UNSIGNED NOT NULL,
  `director_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products_directors`
--

INSERT INTO `products_directors` (`product_id`, `director_id`) VALUES
(1, 18),
(2, 76),
(3, 77),
(4, 78),
(5, 18),
(6, 78),
(7, 18),
(8, 79),
(9, 80),
(10, 81),
(11, 81),
(12, 4),
(13, 82),
(14, 83),
(15, 83),
(16, 83),
(17, 83),
(18, 78),
(19, 80),
(19, 84),
(20, 84),
(21, 85),
(22, 86),
(23, 87),
(24, 88),
(25, 89),
(25, 90),
(25, 91),
(25, 92),
(26, 93),
(26, 94),
(26, 95),
(26, 96),
(26, 97),
(26, 98),
(26, 99),
(26, 100),
(27, 101),
(27, 102),
(27, 103),
(27, 104),
(27, 105),
(27, 106),
(27, 107),
(27, 108),
(28, 101),
(28, 102),
(28, 103),
(28, 104),
(28, 105),
(28, 106),
(28, 107),
(28, 108),
(29, 100),
(29, 102),
(29, 104),
(29, 106),
(29, 107),
(29, 109),
(29, 110),
(29, 111),
(29, 112),
(30, 100),
(30, 102),
(30, 104),
(30, 106),
(30, 107),
(30, 109),
(30, 110),
(30, 111),
(30, 112),
(31, 113),
(31, 114),
(31, 115),
(32, 116),
(32, 117),
(32, 118),
(32, 119),
(32, 120),
(32, 121),
(33, 89),
(33, 90),
(33, 91),
(33, 92);

-- --------------------------------------------------------

--
-- Table structure for table `products_dps`
--

CREATE TABLE `products_dps` (
  `product_id` mediumint(8) UNSIGNED NOT NULL,
  `dp_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products_dps`
--

INSERT INTO `products_dps` (`product_id`, `dp_id`) VALUES
(1, 73),
(2, 75),
(3, 60),
(4, 75),
(5, 73),
(6, 75),
(7, 73),
(8, 76),
(9, 77),
(10, 39),
(11, 78),
(12, 79),
(13, 78),
(14, 80),
(15, 9),
(16, 81),
(17, 81),
(18, 82),
(19, 77),
(20, 16),
(21, 83),
(22, 84),
(23, 85),
(24, 60),
(25, 86),
(25, 87),
(25, 88),
(26, 89),
(27, 90),
(27, 91),
(27, 92),
(27, 93),
(27, 94),
(28, 90),
(28, 91),
(28, 92),
(28, 93),
(28, 94),
(29, 95),
(29, 96),
(29, 97),
(30, 95),
(30, 96),
(30, 97),
(31, 98),
(31, 99),
(32, 40),
(32, 100),
(33, 86),
(33, 87),
(33, 88);

-- --------------------------------------------------------

--
-- Table structure for table `products_genres`
--

CREATE TABLE `products_genres` (
  `product_id` mediumint(8) UNSIGNED NOT NULL,
  `genre_id` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products_genres`
--

INSERT INTO `products_genres` (`product_id`, `genre_id`) VALUES
(1, 1),
(1, 2),
(1, 6),
(1, 20),
(1, 23),
(1, 25),
(2, 1),
(2, 2),
(2, 17),
(2, 25),
(3, 1),
(3, 2),
(3, 17),
(3, 25),
(4, 1),
(4, 2),
(4, 17),
(4, 25),
(5, 1),
(5, 2),
(5, 6),
(5, 20),
(5, 23),
(5, 25),
(6, 1),
(6, 2),
(6, 17),
(6, 25),
(7, 1),
(7, 2),
(7, 6),
(7, 20),
(7, 23),
(7, 25),
(8, 1),
(8, 5),
(8, 10),
(8, 20),
(8, 23),
(9, 1),
(9, 2),
(9, 5),
(9, 6),
(9, 23),
(10, 2),
(10, 9),
(10, 10),
(10, 17),
(11, 2),
(11, 9),
(11, 10),
(11, 17),
(12, 2),
(12, 9),
(12, 10),
(12, 17),
(13, 2),
(13, 9),
(13, 10),
(13, 17),
(14, 2),
(14, 9),
(14, 10),
(14, 17),
(15, 2),
(15, 9),
(15, 10),
(15, 17),
(16, 2),
(16, 9),
(16, 10),
(16, 17),
(17, 2),
(17, 9),
(17, 10),
(17, 17),
(18, 1),
(18, 25),
(19, 1),
(19, 6),
(19, 25),
(20, 1),
(20, 6),
(20, 25),
(21, 1),
(21, 2),
(21, 25),
(22, 1),
(22, 2),
(22, 25),
(23, 1),
(23, 2),
(23, 25),
(24, 1),
(24, 2),
(24, 25),
(25, 1),
(25, 2),
(25, 8),
(25, 10),
(26, 8),
(26, 10),
(26, 14),
(27, 8),
(27, 17),
(27, 20),
(27, 27),
(28, 8),
(28, 17),
(28, 20),
(28, 27),
(29, 8),
(29, 17),
(29, 20),
(29, 27),
(30, 8),
(30, 17),
(30, 20),
(30, 27),
(31, 6),
(31, 8),
(31, 17),
(32, 6),
(32, 8),
(32, 25),
(33, 1),
(33, 2),
(33, 8),
(33, 10);

-- --------------------------------------------------------

--
-- Table structure for table `products_producers`
--

CREATE TABLE `products_producers` (
  `product_id` mediumint(8) UNSIGNED NOT NULL,
  `producer_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products_producers`
--

INSERT INTO `products_producers` (`product_id`, `producer_id`) VALUES
(1, 32),
(1, 76),
(1, 77),
(1, 78),
(1, 79),
(1, 80),
(2, 81),
(2, 82),
(2, 83),
(2, 84),
(2, 85),
(3, 81),
(3, 85),
(3, 86),
(3, 87),
(3, 88),
(4, 81),
(4, 83),
(4, 85),
(4, 88),
(4, 89),
(4, 90),
(4, 91),
(5, 19),
(5, 32),
(5, 77),
(5, 78),
(5, 79),
(5, 80),
(5, 92),
(5, 93),
(5, 94),
(5, 95),
(6, 81),
(6, 83),
(6, 85),
(6, 88),
(6, 91),
(6, 96),
(6, 97),
(7, 19),
(7, 32),
(7, 77),
(7, 79),
(7, 80),
(7, 92),
(7, 93),
(7, 95),
(8, 98),
(8, 99),
(8, 100),
(8, 101),
(8, 102),
(8, 103),
(8, 104),
(8, 105),
(8, 106),
(9, 99),
(9, 100),
(9, 101),
(9, 102),
(9, 103),
(9, 104),
(9, 105),
(9, 106),
(10, 108),
(10, 109),
(10, 110),
(10, 111),
(10, 112),
(10, 113),
(10, 114),
(10, 115),
(11, 109),
(11, 110),
(11, 111),
(11, 113),
(11, 114),
(11, 115),
(11, 116),
(12, 78),
(12, 109),
(12, 110),
(12, 111),
(12, 113),
(12, 114),
(12, 115),
(12, 117),
(12, 118),
(13, 78),
(13, 113),
(13, 115),
(13, 116),
(13, 117),
(13, 119),
(14, 78),
(14, 113),
(14, 116),
(14, 120),
(14, 121),
(15, 113),
(15, 116),
(15, 121),
(16, 113),
(16, 116),
(16, 121),
(16, 122),
(17, 113),
(17, 116),
(17, 121),
(17, 122),
(17, 123),
(17, 124),
(18, 83),
(18, 85),
(18, 88),
(18, 117),
(18, 125),
(18, 126),
(18, 127),
(18, 128),
(18, 129),
(18, 130),
(18, 131),
(19, 132),
(19, 133),
(19, 134),
(19, 135),
(19, 136),
(19, 137),
(19, 138),
(19, 139),
(19, 140),
(19, 141),
(19, 142),
(20, 133),
(20, 134),
(20, 136),
(20, 137),
(20, 143),
(20, 144),
(20, 145),
(20, 146),
(20, 147),
(21, 148),
(21, 149),
(21, 150),
(22, 149),
(22, 150),
(22, 151),
(22, 152),
(23, 149),
(23, 150),
(23, 153),
(23, 154),
(23, 155),
(23, 156),
(23, 157),
(23, 158),
(24, 150),
(24, 159),
(24, 160),
(24, 161),
(24, 162),
(24, 163),
(24, 164),
(24, 165),
(24, 166),
(24, 167),
(24, 168),
(24, 169),
(24, 170),
(24, 171),
(24, 172),
(24, 173),
(24, 174),
(25, 24),
(25, 26),
(25, 34),
(25, 35),
(25, 175),
(25, 176),
(25, 177),
(25, 178),
(25, 179),
(25, 180),
(25, 181),
(26, 159),
(26, 182),
(26, 183),
(26, 184),
(26, 185),
(26, 186),
(26, 187),
(26, 188),
(26, 189),
(26, 190),
(26, 191),
(26, 192),
(26, 193),
(27, 159),
(27, 161),
(27, 194),
(27, 195),
(27, 196),
(27, 197),
(27, 198),
(27, 199),
(27, 200),
(27, 202),
(27, 203),
(27, 204),
(27, 205),
(27, 206),
(27, 207),
(27, 208),
(27, 209),
(27, 210),
(28, 159),
(28, 161),
(28, 194),
(28, 195),
(28, 196),
(28, 197),
(28, 198),
(28, 199),
(28, 200),
(28, 202),
(28, 203),
(28, 204),
(28, 205),
(28, 206),
(28, 207),
(28, 208),
(28, 209),
(28, 210),
(29, 93),
(29, 159),
(29, 161),
(29, 188),
(29, 195),
(29, 196),
(29, 198),
(29, 199),
(29, 200),
(29, 201),
(29, 203),
(29, 207),
(29, 211),
(29, 212),
(29, 213),
(29, 214),
(29, 215),
(29, 216),
(29, 217),
(29, 218),
(29, 219),
(30, 93),
(30, 159),
(30, 161),
(30, 188),
(30, 195),
(30, 196),
(30, 198),
(30, 199),
(30, 200),
(30, 201),
(30, 203),
(30, 207),
(30, 211),
(30, 212),
(30, 213),
(30, 214),
(30, 215),
(30, 216),
(30, 217),
(30, 218),
(30, 219),
(31, 220),
(31, 221),
(31, 222),
(31, 223),
(31, 224),
(31, 225),
(32, 56),
(32, 66),
(32, 73),
(32, 226),
(32, 227),
(33, 24),
(33, 26),
(33, 34),
(33, 35),
(33, 175),
(33, 176),
(33, 177),
(33, 178),
(33, 179),
(33, 180),
(33, 181);

-- --------------------------------------------------------

--
-- Table structure for table `products_studios`
--

CREATE TABLE `products_studios` (
  `product_id` mediumint(8) UNSIGNED NOT NULL,
  `studio_id` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products_studios`
--

INSERT INTO `products_studios` (`product_id`, `studio_id`) VALUES
(1, 19),
(1, 70),
(1, 73),
(1, 74),
(2, 64),
(2, 75),
(2, 76),
(3, 64),
(3, 75),
(3, 77),
(3, 78),
(4, 64),
(4, 75),
(5, 19),
(5, 70),
(5, 73),
(5, 74),
(6, 64),
(6, 75),
(6, 79),
(6, 80),
(7, 19),
(7, 70),
(7, 73),
(7, 74),
(8, 1),
(8, 39),
(8, 81),
(8, 82),
(9, 1),
(9, 39),
(9, 81),
(9, 82),
(10, 70),
(10, 83),
(10, 84),
(11, 70),
(11, 83),
(11, 84),
(12, 70),
(12, 83),
(12, 84),
(13, 70),
(13, 83),
(14, 70),
(14, 83),
(15, 70),
(15, 83),
(16, 70),
(16, 83),
(17, 70),
(17, 83),
(17, 85),
(18, 64),
(18, 75),
(18, 78),
(18, 86),
(18, 87),
(18, 88),
(18, 89),
(19, 90),
(19, 91),
(19, 92),
(19, 93),
(19, 94),
(20, 35),
(20, 90),
(20, 91),
(20, 92),
(20, 95),
(21, 47),
(21, 96),
(22, 47),
(22, 96),
(23, 47),
(23, 80),
(23, 96),
(23, 97),
(23, 98),
(23, 99),
(24, 47),
(24, 100),
(24, 101),
(25, 102),
(25, 103),
(26, 70),
(26, 101),
(26, 104),
(27, 101),
(27, 102),
(27, 105),
(28, 101),
(28, 102),
(28, 105),
(29, 101),
(29, 102),
(29, 105),
(30, 101),
(30, 102),
(30, 105),
(31, 106),
(31, 107),
(31, 108),
(32, 109),
(32, 110),
(32, 111),
(32, 112),
(33, 102),
(33, 103);

-- --------------------------------------------------------

--
-- Table structure for table `products_writers`
--

CREATE TABLE `products_writers` (
  `product_id` mediumint(8) UNSIGNED NOT NULL,
  `writer_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products_writers`
--

INSERT INTO `products_writers` (`product_id`, `writer_id`) VALUES
(1, 76),
(1, 77),
(1, 78),
(2, 79),
(2, 80),
(2, 81),
(3, 79),
(3, 81),
(3, 82),
(4, 79),
(4, 81),
(5, 76),
(5, 77),
(5, 78),
(5, 83),
(6, 79),
(6, 81),
(6, 84),
(6, 85),
(7, 76),
(7, 77),
(7, 78),
(7, 83),
(8, 86),
(8, 87),
(9, 86),
(9, 87),
(9, 88),
(9, 89),
(9, 90),
(10, 91),
(10, 92),
(11, 91),
(11, 92),
(12, 91),
(12, 92),
(13, 91),
(13, 92),
(14, 91),
(14, 93),
(15, 91),
(15, 92),
(16, 91),
(16, 92),
(17, 91),
(17, 92),
(18, 81),
(18, 94),
(18, 95),
(19, 96),
(20, 96),
(21, 97),
(21, 98),
(21, 99),
(21, 100),
(22, 97),
(22, 100),
(22, 101),
(22, 102),
(23, 97),
(23, 103),
(23, 104),
(23, 105),
(24, 97),
(24, 106),
(24, 107),
(25, 18),
(25, 21),
(25, 108),
(26, 109),
(26, 110),
(26, 111),
(26, 112),
(26, 113),
(26, 114),
(26, 115),
(26, 116),
(27, 83),
(27, 117),
(27, 118),
(27, 119),
(27, 120),
(27, 121),
(27, 122),
(27, 123),
(27, 124),
(27, 125),
(28, 83),
(28, 117),
(28, 118),
(28, 119),
(28, 120),
(28, 121),
(28, 122),
(28, 123),
(28, 124),
(28, 125),
(29, 83),
(29, 117),
(29, 118),
(29, 124),
(29, 126),
(29, 127),
(29, 128),
(29, 129),
(29, 130),
(30, 83),
(30, 117),
(30, 118),
(30, 124),
(30, 126),
(30, 127),
(30, 128),
(30, 129),
(30, 130),
(31, 131),
(31, 132),
(31, 133),
(31, 134),
(32, 135),
(32, 136),
(32, 137),
(32, 138),
(33, 18),
(33, 21),
(33, 108);

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `rated` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `rated`) VALUES
(1, 'G'),
(5, 'NC-17'),
(6, 'NR'),
(2, 'PG'),
(3, 'PG-13'),
(4, 'R'),
(12, 'TV-14'),
(10, 'TV-G'),
(13, 'TV-MA'),
(11, 'TV-PG'),
(8, 'TV-Y'),
(9, 'TV-Y7'),
(7, 'Unrated');

-- --------------------------------------------------------

--
-- Table structure for table `shippers`
--

CREATE TABLE `shippers` (
  `id` int(10) UNSIGNED NOT NULL,
  `shipper_name` varchar(55) NOT NULL,
  `contact_name` varchar(100) NOT NULL,
  `phone_num` varchar(15) NOT NULL,
  `email` varchar(80) NOT NULL,
  `ship_date` date DEFAULT NULL,
  `tracking_num` varchar(20) DEFAULT NULL,
  `confirmation_num` varchar(34) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `shippingaddress`
--

CREATE TABLE `shippingaddress` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `address_1` varchar(46) NOT NULL,
  `address_2` varchar(46) DEFAULT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `zip` varchar(10) NOT NULL,
  `country` varchar(27) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `specs`
--

CREATE TABLE `specs` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `spec_format_type` varchar(30) NOT NULL,
  `video_desc` varchar(35) NOT NULL,
  `audio_desc` tinytext NOT NULL,
  `subtitles_desc` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `specs`
--

INSERT INTO `specs` (`id`, `spec_format_type`, `video_desc`, `audio_desc`, `subtitles_desc`) VALUES
(1, '4K UHD Main Feature', '2160p UHD 16x9 2.4:1', 'DTS-HD MA: English 5.1, Dolby Digital: Français 5.1 (Dubbed in Quebec), Español 5.1', 'English SDH, Français, and Español'),
(2, '4K ULTRA HD Main Feature', 'UHD HDR10 Widescreen 2.35:1', 'English DTS:X Immersive Audio, DTS Headphone:X; Español, Français DTS Digital Surround 5.1', 'English SDH, Français, and Español'),
(3, '4K ULTRA HD Main Feature', 'UHD HDR10 Widescreen 2.40:1', 'English DTS:X Immersive Audio, DTS Headphone:X 2.0; Español, Français, Japanese, Brazilian Portuguese DTS Digital Surround 5.1', 'English SDH, Español, Français, Japanese, Brazilian Portuguese'),
(4, '4K ULTRA HD Main Feature', 'UHD HDR10 Widescreen 2.35:1', 'English DTS:X Immersive Audio, DTS Headphone:X 2.0; Español, Français, Japanese, Brazilian Portuguese DTS Digital Surround 5.1', 'English SDH, Español, Français, Japanese, Brazilian Portuguese'),
(5, '4K UHD MAIN FEATURE', '2160p UHD 16x9 2.4:1 and 1.78:1', 'DTS-HD MA: English 5.1, Dolby Digital: Français 5.1 (Dubbed in Quebec), Español 5.1', 'English SDH, Français, and Español'),
(6, '4K ULTRA HD Main Feature', 'UHD HDR10 Widescreen 2.40:1', 'English DTS:X Immersive Audio, DTS Headphone:X 2.0; Español, Français DTS Digital Surround 5.1', 'English SDH, Español, Français'),
(7, '4K UHD MAIN FEATURE', '2160p UHD 16x9 2.4:1 and 1.78:1', 'DTS-HD MA: English 5.1, Français 5.1 (Parisian), English Descriptive Audio 5.1, Dolby Digital:  Français 5.1 (Dubbed in Quebec), Español 5.1 (Both Castilian and Latin)', 'English SDH, Français, and Español'),
(8, '4K ULTRA HD', 'Widescreen 2.40:1', 'English Dolby Atmos, English Descriptive Audio 5.1, Spanish Dolby Digital 5.1, French Dolby Digital 5.1', 'English SDH, Spanish, French'),
(9, '4K ULTRA HD', 'Widescreen 2.39:1', 'English Dolby Atmos, English Descriptive Audio 5.1, Spanish Dolby Digital 5.1, French Dolby Digital 5.1', 'English SDH, Spanish, French'),
(10, '4K UHD MAIN FEATURE', '2160p UHD 16x9 2.4:1', 'DTS:X English, English Descriptive Autdio 2.0, Dolby Digital: Español 5.1 EX', 'English SDH &amp; Español'),
(11, '4K UHD MAIN FEATURE', '2160p UHD 16x9 2.4:1', 'DTS:X English, English Descriptive Audio 5.1 EX, Dolby Digital: Français 5.1 EX (Dubbed in Quebec) &amp; Español 5.1 EX (Both Castilian &amp; Latin)', 'English SDH, Français, &amp; Español'),
(12, '4K UHD MAIN FEATURE', '2160p UHD 16x9 2.41:1', 'DTS:X English, English Descriptive Audio 5.1 EX, Dolby Digital: Français 5.1 (Dubbed in Quebec) &amp; Español 5.1 EX (Both Castilian &amp; Latin)', 'English SDH, Français, &amp; Español'),
(13, '4K UHD MAIN FEATURE', '2160p UHD 16x9 2.4:1', 'DTS:X English, English Descriptive Audio 5.1, Dolby Digital: Français 5.1 (Dubbed in Quebec) &amp; Español 5.1 (Both Castilian &amp; Latin)', 'English SDH, Français, &amp; Español'),
(14, '4K UHD MAIN FEATURE', '2160p UHD 16x9 2.4:1', 'DTS:X English, English Descriptive Audio 2.0, Dolby Digital: Français 5.1 (Dubbed in Quebec) &amp; Español 5.1', 'English SDH, Français, &amp; Español'),
(15, '4K UHD MAIN FEATURE', '2160p UHD 16x9 2.4:1', 'DTS:X English, DTS-HD MA: Français 5.1, English Descriptive Audio 2.0, Dolby Digital: Français 5.1 (Dubbed in Quebec) &amp; Español 5.1 (Both Castilian &amp; Latin)', 'English SDH, Français, and Español'),
(16, '4K UHD MAIN FEATURE', '2160p UHD 16x9 2.4:1', 'DTS:X: English, Dolby Digital: Español 5.1', 'English SDH &amp; Español'),
(17, '4K UHD MAIN FEATURE', '2160p UHD 16x9 2.4:1', 'DTS:X English, English Descriptive Audio 2.0, Dolby Digital: Français 5.1 (Dubbed in Quebec), Español 5.1', 'English SDH, Français, and Español'),
(18, '4K UHD MAIN FEATURE', 'UHD HDR10 Widescreen 2.40:1', 'English DTS:X Immersive Audio, DTS Headphone:X 2.0; Español DTS-HD 7.1; Français DTS Digital Surround 5.1', 'English SDH, Español, Français'),
(19, '4K UHD MAIN FEATURE', '2160p Ultra High Definition', 'English Dolby Atmos, Spanish 5.1 Dolby Digital Audio, French 5.1 Dolby Digital Audio, English 2.0 Dolby Digital AUdio Optimized for Late-Night Listening, English Descriptive Audio', 'English and Spanish Subtitles, English SDH'),
(20, '4K UHD MAIN FEATURE', '2160p Ultra High Definition', 'English Dolby Atmos, Spanish and French 5.1 Dolby Digital Audio, English 2.0 Dolby Digital Audio Optimized for Late-Night Listening', 'English and Spanish Subtitles, English SDH'),
(21, '4K UHD FEATURE FILM', 'Native 4K 2160p', 'ENGLISH 5.1 DOLBY TRUEHD, FRENCH 5.1 DOLBY DIGITAL, SPANISH 5.1 DOLBY DIGITAL, PORTUGUESE 5.1 DOLBY DIGITAL, ENGLISH AUDIO DESCRIPTION', 'ENGLISH, ENGLISH SDH, FRENCH, SPANISH, PORTUGUESE'),
(22, '4K UHD FEATURE FILM', 'Native 4K 2160p', 'English: Dolby TrueHD 5.1 (48kHz, 24-bit), German: Dolby Digital 5.1 (640 kbps), Spanish: Dolby Digital 5.1 (640 kbps), French: Dolby Digital 5.1 (640 kbps), Italian: Dolby Digital 5.1 (640 kbps), Japanese: Dolby Digital 5.1, Portuguese: Dolby Digital 2.0', 'English, English SDH, French, German, Italian, Japanese, Portuguese, Spanish, Danish, Dutch, Finnish'),
(23, '4K UHD FEATURE FILM', 'Upscaled 4K 2160p', 'English: Dolby TrueHD 5.1 (48kHz, 24-bit), German: Dolby Digital 5.1 (640 kbps), Spanish: Dolby Digital 5.1 (640 kbps), French: Dolby Digital 5.1 (640 kbps), Italian: Dolby Digital 5.1 (640 kbps), Japanese: Dolby Digital 5.1, Portuguese: Dolby Digital 5.1', 'English, English SDH, French, German, Italian, Japanese, Portuguese, Spanish, Danish, Dutch, Finnish'),
(24, '4K UHD FEATURE FILM', 'Native 4K 2160p Dolby Vision HDR10', 'English: Dolby TrueHD 7.1 (48kHz, 24-bit), German: Dolby Digital 5.1, Spanish: Dolby Digital 5.1, French: Dolby Digital 5.1, French (Canada): Dolby Digital 5.1, Italian: Dolby Digital 5.1, Japanese: Dolby Digital 5.1, Portuguese: Dolby Digital 5.1', 'English, English SDH, French, German, Italian, Japanese, Portuguese, Spanish, Danish, Dutch, Finnish'),
(25, '4K UHD FEATURE TV', 'Upscaled 4K 2160p', 'English: Dolby Atmos, Dolby TrueHD 7.1, Dolby Digital 5.1; French: Dolby Digital 5.1; Spanish: Dolby Digital 2.0, Dolby Digital 5.1; German: Dolby Digital 5.1; Italian: Dolby Digital 5.1; Portuguese: DTS 2.0; Czech: DTS 2.0; Hungarian: DTS 2.0', 'English SDH, French, German, Italian, Portuguese, Spanish, Croatian, Czech, Danish, Dutch, Finnish'),
(26, '4K UHD FEATURE TV', 'Upscaled 4K 2160p', 'English: DTS-HD Master Audio 5.1 (48kHz, 16-bit)', 'English SDH, French, Danish, Dutch, Finnish, Norwegian, Swedish'),
(27, '4K UHD FEATURE TV', 'Upscaled 4K 2160p HDR 10', 'English: Dolby Atmos, English: Dolby TrueHD 7.1, German: Dolby Digital 5.1, Italian: Dolby Digital 5.1, Spanish: Dolby Digital 5.1, Portuguese: Dolby Digital 5.1, Czech: Dolby Digital 5.1, Polish: Dolby Digital 5.1', 'English SDH, French, German SDH, Italian SDH, Portuguese, Spanish, Arabic, Danish, Dutch, Finnish'),
(28, '4K UHD EPISODES', '2160p UHD 16x9 1.78:1', 'English: Dolby Atmos, English: Dolby TrueHD 7.1, German: Dolby Digital 5.1, Italian: Dolby Digital 5.1, Spanish: Dolby Digital 5.1, Portuguese: Dolby Digital 5.1, Czech: Dolby Digital 5.1, Polish: Dolby Digital 5.1', 'English SDH, French, German SDH, Italian SDH, Portuguese, Spanish, Arabic, Danish, Dutch, Finnish'),
(29, '4K UHD EPISODES', 'Native 4K 2160p 16x9 1.78:1', 'English: Dolby Atmos, Dolby TrueHD 7.1; French: Dolby Digital 5.1 (640 kbps); German: Dolby Digital 5.1 (640 kbps); Italian: Dolby Digital 5.1 (640 kbps); Spanish: Dolby Digital 5.1 (640 kbps); Portuguese: Dolby Digital 5.1; Czech: Dolby Digital 5.1', 'English SDH, French, German SDH, Italian SDH, Portuguese, Spanish, Czech, Danish, Dutch, Finnish'),
(30, '4K UHD EPISODES', '4K 2160p 1.78:1 HDR10', 'English: Dolby Atmos', 'English SDH, French, Spanish'),
(33, '4K UHD EPISODES', 'Upscaled 4K 2160p 1.78:1', 'English: DTS-HD Master Audio 5.1', 'English SDH'),
(34, 'BLU-RAY EPISODES', '1080p High Definition', 'English: DTS-HD Master Audio 5.1 (48kHz, 24-bit)', 'English SDH, French'),
(35, 'BLU-RAY EPISODES', '1080p High Definition', 'English: DTS-HD Master Audio 5.1 (48kHz, 24-bit); French: DTS 5.1; Spanish: DTS 5.1; Polish: DTS 2.0; Spanish: DTS 2.0', 'English SDH, French, Spanish, Portuguese, Danish, Dutch, Finnish, Norwegian, Polish, Swedish');

-- --------------------------------------------------------

--
-- Table structure for table `studios`
--

CREATE TABLE `studios` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `studio_name` varchar(55) NOT NULL,
  `about` text NOT NULL,
  `img` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `studios`
--

INSERT INTO `studios` (`id`, `studio_name`, `about`, `img`) VALUES
(1, '20th Century Fox', '', 'studios/20th-century-fox_Cover.png'),
(19, 'DC Films', '', 'studios/dc-films_Cover.png'),
(35, 'Lionsgate', '', 'studios/lionsgate_Cover.png'),
(39, 'Marvel Studios', '', 'studios/marvel-studios_Cover.png'),
(47, 'Paramount Pictures', '', 'studios/paramount-pictures_Cover.png'),
(64, 'Universal Pictures', '', 'studios/universal-pictures_Cover.png'),
(70, 'Warner Bros.', '', 'studios/warner-bros_Cover.png'),
(73, 'Syncopy', '', 'studios/syncopy_Cover.png'),
(74, 'Legendary Entertainment', '', 'studios/legendary-entertainment_Cover.png'),
(75, 'The Kennedy/Marshall Company', '', 'studios/the-kennedymarshall-company_Cover.png'),
(76, 'Stillking Films', '', 'studios/stillking-films_Cover.jpg'),
(77, 'Relativity Media', '', 'studios/relativity-media_Cover.png'),
(78, 'Captivate Entertainment', '', 'studios/captivate-entertainment_Cover.jpg'),
(79, 'KanZaman Films', '', 'studios/kanzaman-films_Cover.png'),
(80, 'Studio Babelsberg', '', 'studios/studio-babelsberg_Cover.png'),
(81, 'Kinberg Genre', '', 'studios/kinberg-genre_Cover.jpg'),
(82, 'TSG Entertainment', '', 'studios/tsg-entertainment_Cover.jpg'),
(83, 'Heyday Films', '', 'studios/heyday-films_Cover.png'),
(84, '1492 Pictures', '', 'studios/1492-pictures_Cover.png'),
(85, 'Moving Picture Company (MPC)', '', 'studios/moving-picture-company_Cover.jpg'),
(86, 'Perfect World Pictures', '', 'studios/perfect-world-pictures_Cover.png'),
(87, 'Pearl Street Films', '', 'studios/pearl-street-films_Cover.png'),
(88, 'Double Negative (DNEG)', '', 'studios/double-negative_Cover.png'),
(89, 'Sur-Film', '', 'studios/sur-film_Cover.png'),
(90, 'Summit Entertainment', '', 'studios/summit-entertainment_Cover.png'),
(91, 'Thunder Road Pictures', '', 'studios/thunder-road-pictures_Cover.jpg'),
(92, '87Eleven', '', 'studios/87-eleven_Cover.jpg'),
(93, 'MJW Films', '', 'studios/mjw-films_Cover.jpg'),
(94, 'Huayi Brothers Media', '', 'studios/huayi-brothers-media_Cover.png'),
(95, 'TIK Films', '', 'studios/tik-films_Cover.png'),
(96, 'Cruise/Wagner Productions', '', 'studios/cruise-wagner-productions_Cover.png'),
(97, 'China Film Co-Production Corporation', '', 'studios/china-film-coproduction-corporation_Cover.png'),
(98, 'China Film Group Corporation', '', 'studios/china-film-group-corporation_Cover.png'),
(99, 'Luce Cinecittà', '', 'studios/luce-cinecitta_Cover.png'),
(100, 'Skydance Media', '', 'studios/skydance-media_Cover.png'),
(101, 'Bad Robot', '', 'studios/bad-robot_Cover.png'),
(102, 'Home Box Office (HBO)', '', 'studios/home-box-office_Cover.png'),
(103, 'Generator Entertainment', '', 'studios/generator-entertainment_Cover.jpg'),
(104, 'Darkbloom Productions', '', 'studios/darkbloom-productions_Cover.png'),
(105, 'Warner Bros. Television', '', 'studios/warner-bros-television_Cover.png'),
(106, 'Hartswood Films', '', 'studios/hartswood-films_Cover.jpg'),
(107, 'BBC Cymru Wales', '', 'studios/bbc-cymru-wales_Cover.png'),
(108, 'Masterpiece Theatre', '', 'studios/masterpiece-theatre_Cover.jpg'),
(109, 'High Bridge Productions', '', 'studios/high-bridge-productions_Cover.jpg'),
(110, 'Gran Via Productions', '', 'studios/gran-via-productions_Cover.png'),
(111, 'Sony Pictures Television', '', 'studios/sony-pictures-television_Cover.png'),
(112, 'American Movie Classics (AMC)', '', 'studios/american-movie-classics_Cover.png');

-- --------------------------------------------------------

--
-- Table structure for table `supplieraddress`
--

CREATE TABLE `supplieraddress` (
  `id` int(10) UNSIGNED NOT NULL,
  `supplier_id` int(10) UNSIGNED NOT NULL,
  `address_1` varchar(46) NOT NULL,
  `address_2` varchar(46) DEFAULT NULL,
  `city` varchar(50) NOT NULL,
  `zip` varchar(10) NOT NULL,
  `state` varchar(50) NOT NULL,
  `country` varchar(27) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supplieraddress`
--

INSERT INTO `supplieraddress` (`id`, `supplier_id`, `address_1`, `address_2`, `city`, `zip`, `state`, `country`) VALUES
(1, 5, '1372 S. Reed Ave.', '', 'Reedley', '93654', 'California', 'United States');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(10) UNSIGNED NOT NULL,
  `legal_name` varchar(150) NOT NULL,
  `company_name` varchar(55) NOT NULL,
  `website_url` varchar(2083) DEFAULT NULL,
  `phone_num` varchar(15) NOT NULL,
  `email` varchar(80) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `verify_code` char(32) DEFAULT NULL,
  `company_logo_img` varchar(50) DEFAULT NULL,
  `registration_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `legal_name`, `company_name`, `website_url`, `phone_num`, `email`, `pass`, `verify_code`, `company_logo_img`, `registration_date`) VALUES
(5, 'Elias Thomas Gutierrez', 'Warner Shippers', '', '559-595-3839', 'gutierrezelias1991@gmail.com', '$2y$10$hGXASSGk6MlNu7d1kH/26uheCl1SeAE02XMNktgbptMjEsQAxphDi', NULL, NULL, '2019-06-15 07:27:22');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers_products`
--

CREATE TABLE `suppliers_products` (
  `supplier_id` int(10) UNSIGNED NOT NULL,
  `product_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `suppliers_products`
--

INSERT INTO `suppliers_products` (`supplier_id`, `product_id`) VALUES
(5, 1),
(5, 2),
(5, 3),
(5, 4),
(5, 5),
(5, 6),
(5, 7),
(5, 8),
(5, 9),
(5, 10),
(5, 11),
(5, 12),
(5, 13),
(5, 14),
(5, 15),
(5, 16),
(5, 17),
(5, 18),
(5, 19),
(5, 20),
(5, 21),
(5, 22),
(5, 23),
(5, 24),
(5, 25),
(5, 26),
(5, 27),
(5, 28),
(5, 29),
(5, 30),
(5, 31),
(5, 32),
(5, 33);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(18) NOT NULL,
  `amount` decimal(5,2) UNSIGNED NOT NULL,
  `response_code` tinyint(1) UNSIGNED NOT NULL,
  `response_reason` tinytext DEFAULT NULL,
  `transaction_id` bigint(20) UNSIGNED NOT NULL,
  `response` text NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `middle_name` varchar(40) DEFAULT NULL,
  `last_name` varchar(40) NOT NULL,
  `email` varchar(80) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `phone_num` varchar(15) DEFAULT NULL,
  `profile_pic` varchar(50) DEFAULT NULL,
  `verify_code` char(32) DEFAULT NULL,
  `registration_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` mediumint(8) UNSIGNED NOT NULL,
  `product_department` varchar(35) NOT NULL,
  `product_format` varchar(10) NOT NULL,
  `quantity` tinyint(3) UNSIGNED NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `writers`
--

CREATE TABLE `writers` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `middle_name` varchar(40) DEFAULT NULL,
  `last_name` varchar(40) NOT NULL,
  `gender` char(1) NOT NULL,
  `about` text NOT NULL,
  `img` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `writers`
--

INSERT INTO `writers` (`id`, `first_name`, `middle_name`, `last_name`, `gender`, `about`, `img`) VALUES
(18, 'David', '', 'Benioff', 'M', '', 'artists/david_benioff_Cover.png'),
(21, 'D.B.', '', 'Weiss', 'M', '', 'artists/d-b-weiss_Cover.png'),
(76, 'Christopher', '', 'Nolan', 'M', '', 'artists/chris-nolan_Cover.jpeg'),
(77, 'Bob', '', 'Kane', 'M', '', 'artists/bob-kane_Cover.jpg'),
(78, 'David', 'S.', 'Goyer', 'M', '', 'artists/david-s-goyer_Cover.png'),
(79, 'Tony', '', 'Gilroy', 'M', '', 'artists/tony-gilroy_Cover.jpg'),
(80, 'William', 'Blake', 'Herron', 'M', '', 'artists/william-blake-herron_Cover.jpg'),
(81, 'Robert', '', 'Ludlum', 'M', '', 'artists/robert-ludlum_Cover.jpg'),
(82, 'Dan', '', 'Gilroy', 'M', '', 'artists/dan-gilroy_Cover.jpg'),
(83, 'Jonathan', '', 'Nolan', 'M', '', 'artists/jonathan-nolan_Cover.jpg'),
(84, 'Scott', 'Z.', 'Burns', 'M', '', 'artists/scott-z-burns_Cover.jpg'),
(85, 'George', '', 'Nolfi', 'M', '', 'artists/george-nolfi_Cover.jpg'),
(86, 'Rhett', '', 'Reese', 'M', '', 'artists/rhett-reese_Cover.jpg'),
(87, 'Paul', '', 'Wernick', 'M', '', 'artists/paul-wernick_Cover.jpg'),
(88, 'Ryan', '', 'Reynolds', 'M', '', 'artists/ryan-reynolds_Cover.jpg'),
(89, 'Rob', '', 'Liefeld', 'M', '', 'artists/rob-liefeld_Cover.jpg'),
(90, 'Fabian', '', 'Nicieza', 'M', '', 'artists/fabian-nicieza_Cover.jpg'),
(91, 'J.K.', '', 'Rowling', 'F', '', 'artists/jk-rowling_Cover.jpg'),
(92, 'Steve', '', 'Kloves', 'M', '', 'artists/steve-kloves_Cover.jpg'),
(93, 'Michael', '', 'Goldenberg', 'M', '', 'artists/michael-goldenberg_Cover.jpg'),
(94, 'Paul', '', 'Greengrass', 'M', '', 'artists/paul-greengrass_Cover.jpg'),
(95, 'Christopher', '', 'Rouse', 'M', '', 'artists/christopher-rouse_Cover.jpg'),
(96, 'Derek', '', 'Kolstad', 'M', '', 'artists/derek-kolstad_Cover.jpg'),
(97, 'Bruce', '', 'Geller', 'M', '', 'artists/bruce-geller_Cover.jpg'),
(98, 'David', '', 'Koepp', 'M', '', 'artists/david-koepp_Cover.jpg'),
(99, 'Steven', '', 'Zaillian', 'M', '', 'artists/steven-zaillian_Cover.jpg'),
(100, 'Robert', '', 'Towne', 'M', '', 'artists/robert-towne_Cover.jpg'),
(101, 'Ronald', 'D.', 'Moore', 'M', '', 'artists/ronald-d-moore_Cover.jpg'),
(102, 'Brannon', '', 'Braga', 'M', '', 'artists/brannon-braga_Cover.jpg'),
(103, 'Alex', '', 'Kurtzman', 'M', '', 'artists/alex-kurtzman_Cover.png'),
(104, 'Roberto', '', 'Orci', 'M', '', 'artists/roberto-orci_Cover.jpg'),
(105, 'J.J.', '', 'Abrams', 'M', '', 'artists/jj-abrams_Cover.jpeg'),
(106, 'Josh', '', 'Appelbaum', 'M', '', 'artists/josh-appelbaum_Cover.jpg'),
(107, 'André', '', 'Nemec', 'M', '', 'artists/andre-nemec_Cover.jpg'),
(108, 'George', 'R.R.', 'Martin', 'M', '', 'artists/george-r-r-martin_Cover.jpg'),
(109, 'Sam', '', 'Shaw', 'M', '', 'artists/sam-shaw_Cover.jpg'),
(110, 'Dustin', '', 'Thomason', 'M', '', 'artists/dustin-thomason_Cover.jpg'),
(111, 'Stephen', '', 'King', 'M', '', 'artists/stephen-king_Cover.jpg'),
(112, 'Scott', '', 'Brown', 'M', '', 'artists/scott-brown_Cover.jpg'),
(113, 'Lila', '', 'Byock', 'F', '', 'artists/lila-byock_Cover.jpg'),
(114, 'Vinnie', '', 'Wilhelm', 'M', '', 'artists/vinnie_wilhelm_Cover.jpg'),
(115, 'Marc', '', 'Bernardin', 'M', '', 'artists/marc-bernardin_Cover.png'),
(116, 'Mark', '', 'Lafferty', 'M', '', 'artists/mark-lafferty_Cover.jpg'),
(117, 'Lisa', '', 'Joy', 'F', '', 'artists/lisa-joy_Cover.jpeg'),
(118, 'Michael', '', 'Crichton', 'M', '', 'artists/michael-crichton_Cover.jpg'),
(119, 'Charles', '', 'Yu', 'M', '', 'artists/charles-yu_Cover.jpg'),
(120, 'Halley', 'Wegryn', 'Gross', 'F', '', 'artists/halley-wegryn-gross_Cover.jpg'),
(121, 'Daniel', 'T.', 'Thomsen', 'M', '', 'artists/daniel-t-thomsen_Cover.jpg'),
(122, 'Ed', '', 'Brubaker', 'M', '', 'artists/ed-brubaker_Cover.png'),
(123, 'Dominic', '', 'Mitchell', 'M', '', 'artists/dominic-mitchell_Cover.jpg'),
(124, 'Dan', '', 'Dietz', 'M', '', 'artists/dan-dietz_Cover.jpg'),
(125, 'Kath', '', 'Lingenfelter', 'F', '', 'artists/kath-lingenfelter_Cover.jpg'),
(126, 'Roberto', '', 'Patino', 'M', '', 'artists/roberto-patino_Cover.jpg'),
(127, 'Gina', '', 'Atwater', 'F', '', 'artists/gina-atwater_Cover.jpg'),
(128, 'Carly', '', 'Wray', 'F', '', 'artists/carly-wray_Cover.jpg'),
(129, 'Ron', '', 'Fitzgerald', 'M', '', 'artists/ron-fitzgerald_Cover.jpg'),
(130, 'Jordan', '', 'Goldberg', 'M', '', 'artists/jordan-goldberg_Cover.jpg'),
(131, 'Steven', '', 'Moffat', 'M', '', 'artists/steven-moffat_Cover.jpg'),
(132, 'Mark', '', 'Gatiss', 'M', '', 'artists/mark-gatiss_Cover.jpeg'),
(133, 'Arthur', 'Conan', 'Doyle', 'M', '', 'artists/arthur-conan-doyle_Cover.jpg'),
(134, 'Steve', '', 'Thompson', 'M', '', 'artists/steve-thompson_Cover.jpeg'),
(135, 'Vince', '', 'Gilligan', 'M', '', 'artists/vince-gilligan_Cover.png'),
(136, 'Patty', '', 'Lin', 'F', '', 'artists/patty-lin_Cover.jpg'),
(137, 'George', '', 'Mastras', 'M', '', 'artists/george-mastras_Cover.jpg'),
(138, 'Peter', '', 'Gould', 'M', '', 'artists/peter-gould_Cover.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `product_department` (`product_department`),
  ADD KEY `product_format` (`product_format`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `department` (`department`);

--
-- Indexes for table `directors`
--
ALTER TABLE `directors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dps`
--
ALTER TABLE `dps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `formats`
--
ALTER TABLE `formats`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `format` (`format`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `genre` (`genre`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_department` (`product_department`),
  ADD KEY `product_format` (`product_format`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `shipper_id` (`shipper_id`);

--
-- Indexes for table `producers`
--
ALTER TABLE `producers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productdetails`
--
ALTER TABLE `productdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `rated_id` (`rated_id`),
  ADD KEY `spec_id` (`spec_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `isd` (`isd`),
  ADD KEY `department_id` (`department_id`),
  ADD KEY `format_id` (`format_id`);

--
-- Indexes for table `products_actors`
--
ALTER TABLE `products_actors`
  ADD PRIMARY KEY (`product_id`,`actor_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `actor_id` (`actor_id`);

--
-- Indexes for table `products_directors`
--
ALTER TABLE `products_directors`
  ADD PRIMARY KEY (`product_id`,`director_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `director_id` (`director_id`);

--
-- Indexes for table `products_dps`
--
ALTER TABLE `products_dps`
  ADD PRIMARY KEY (`product_id`,`dp_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `dp_id` (`dp_id`);

--
-- Indexes for table `products_genres`
--
ALTER TABLE `products_genres`
  ADD PRIMARY KEY (`product_id`,`genre_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `genre_id` (`genre_id`);

--
-- Indexes for table `products_producers`
--
ALTER TABLE `products_producers`
  ADD PRIMARY KEY (`product_id`,`producer_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `producer_id` (`producer_id`);

--
-- Indexes for table `products_studios`
--
ALTER TABLE `products_studios`
  ADD PRIMARY KEY (`product_id`,`studio_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `studio_id` (`studio_id`);

--
-- Indexes for table `products_writers`
--
ALTER TABLE `products_writers`
  ADD PRIMARY KEY (`product_id`,`writer_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `writer_id` (`writer_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rated` (`rated`);

--
-- Indexes for table `shippers`
--
ALTER TABLE `shippers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippingaddress`
--
ALTER TABLE `shippingaddress`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `specs`
--
ALTER TABLE `specs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studios`
--
ALTER TABLE `studios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `studio_name` (`studio_name`);

--
-- Indexes for table `supplieraddress`
--
ALTER TABLE `supplieraddress`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `pass` (`pass`);

--
-- Indexes for table `suppliers_products`
--
ALTER TABLE `suppliers_products`
  ADD PRIMARY KEY (`supplier_id`,`product_id`),
  ADD KEY `supplier_id` (`supplier_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `pass` (`pass`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `product_department` (`product_department`),
  ADD KEY `product_format` (`product_format`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `writers`
--
ALTER TABLE `writers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actors`
--
ALTER TABLE `actors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=488;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `directors`
--
ALTER TABLE `directors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `dps`
--
ALTER TABLE `dps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `formats`
--
ALTER TABLE `formats`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `producers`
--
ALTER TABLE `producers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;

--
-- AUTO_INCREMENT for table `productdetails`
--
ALTER TABLE `productdetails`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `shippers`
--
ALTER TABLE `shippers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shippingaddress`
--
ALTER TABLE `shippingaddress`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `specs`
--
ALTER TABLE `specs`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `studios`
--
ALTER TABLE `studios`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `supplieraddress`
--
ALTER TABLE `supplieraddress`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `writers`
--
ALTER TABLE `writers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `carts_ibfk_2` FOREIGN KEY (`product_department`) REFERENCES `departments` (`department`),
  ADD CONSTRAINT `carts_ibfk_3` FOREIGN KEY (`product_format`) REFERENCES `formats` (`format`),
  ADD CONSTRAINT `carts_ibfk_4` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `orderdetails_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `orderdetails_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `orderdetails_ibfk_3` FOREIGN KEY (`product_department`) REFERENCES `departments` (`department`),
  ADD CONSTRAINT `orderdetails_ibfk_4` FOREIGN KEY (`product_format`) REFERENCES `formats` (`format`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`shipper_id`) REFERENCES `shippers` (`id`);

--
-- Constraints for table `productdetails`
--
ALTER TABLE `productdetails`
  ADD CONSTRAINT `productdetails_ibfk_1` FOREIGN KEY (`id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `productdetails_ibfk_2` FOREIGN KEY (`rated_id`) REFERENCES `ratings` (`id`),
  ADD CONSTRAINT `productdetails_ibfk_3` FOREIGN KEY (`spec_id`) REFERENCES `specs` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`format_id`) REFERENCES `formats` (`id`);

--
-- Constraints for table `products_actors`
--
ALTER TABLE `products_actors`
  ADD CONSTRAINT `products_actors_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `products_actors_ibfk_2` FOREIGN KEY (`actor_id`) REFERENCES `actors` (`id`);

--
-- Constraints for table `products_directors`
--
ALTER TABLE `products_directors`
  ADD CONSTRAINT `products_directors_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `products_directors_ibfk_2` FOREIGN KEY (`director_id`) REFERENCES `directors` (`id`);

--
-- Constraints for table `products_dps`
--
ALTER TABLE `products_dps`
  ADD CONSTRAINT `products_dps_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `products_dps_ibfk_2` FOREIGN KEY (`dp_id`) REFERENCES `dps` (`id`);

--
-- Constraints for table `products_genres`
--
ALTER TABLE `products_genres`
  ADD CONSTRAINT `products_genres_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `products_genres_ibfk_2` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`);

--
-- Constraints for table `products_producers`
--
ALTER TABLE `products_producers`
  ADD CONSTRAINT `products_producers_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `products_producers_ibfk_2` FOREIGN KEY (`producer_id`) REFERENCES `producers` (`id`);

--
-- Constraints for table `products_studios`
--
ALTER TABLE `products_studios`
  ADD CONSTRAINT `products_studios_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `products_studios_ibfk_2` FOREIGN KEY (`studio_id`) REFERENCES `studios` (`id`);

--
-- Constraints for table `products_writers`
--
ALTER TABLE `products_writers`
  ADD CONSTRAINT `products_writers_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `products_writers_ibfk_2` FOREIGN KEY (`writer_id`) REFERENCES `writers` (`id`);

--
-- Constraints for table `shippingaddress`
--
ALTER TABLE `shippingaddress`
  ADD CONSTRAINT `shippingaddress_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `supplieraddress`
--
ALTER TABLE `supplieraddress`
  ADD CONSTRAINT `supplieraddress_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`);

--
-- Constraints for table `suppliers_products`
--
ALTER TABLE `suppliers_products`
  ADD CONSTRAINT `suppliers_products_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`),
  ADD CONSTRAINT `suppliers_products_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `wishlists_ibfk_2` FOREIGN KEY (`product_department`) REFERENCES `departments` (`department`),
  ADD CONSTRAINT `wishlists_ibfk_3` FOREIGN KEY (`product_format`) REFERENCES `formats` (`format`),
  ADD CONSTRAINT `wishlists_ibfk_4` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
