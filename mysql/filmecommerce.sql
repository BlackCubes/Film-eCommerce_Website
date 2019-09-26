-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2019 at 11:06 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

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
(1, 'Aaron', '', 'Paul', 'M', '<p>Aaron Paul Sturtevant was born in Emmett, Idaho, on August 27, 1979, the youngest of four children born to Darla (<i>née</i>) and Robert Sturtevant, a Baptist minister. He was born a month premature in his parents\' bathroom. Paul attended Centennial High School in Boise, Idaho, graduating in 1997. After graduation, he drove to Los Angeles in his 1982 Toyota Corolla with his mother and $6,000 in savings. Prior to gaining fame, he appeared on an episode of <i>The Price is Right</i>, which aired on January 3, 2000. Appearing under his real name, he played and lost Dice Game and overbid $132 on the Showcase. He also worked as a movie theater usher at Universal Studios in Hollywood.</p>\r\n<p>Mr. Paul is best known for portraying Jesse Pinkman in the AMC series <i>Breaking Bad</i>, for which he won several awards, including the Critics\' Choice Television Award for Best Supporting Actor in a Drama Series (2014), the Satellite Award for Best Supporting Actor - Series, Miniseries, or Television Film (2013), and the Primetime Emmy Award for Outstanding Supporting Actor in a Drama Series. This made him one of only two actors to win the latter category three times (2010, 2012, 2014), since its separation into drama and comedy. He has also won the Saturn Award for Best Supporting Actor on Television three times (2009, 2011, 2013), more than any other actor in that category.</p>', 'actors/aaron-paul_Cover.jpg'),
(2, 'Alec', '', 'Baldwin', 'M', '<p>Alexander Rae \"Alec\" Baldwin III was born April 3, 1958, in Amityville, New York, and raised in the Nassau Shores neighborhood of nearby Massapequa, the eldest son of Carol Newcomb (née Martineau; born 1930) and Alexander Rae Baldwin Jr. (October 26, 1927 - April 15, 1983), a high school history/social studies teacher and football coach. He has three younger brothers, Daniel (born 1960), William (born 1963), and Stephen (born 1966), who also became actors. He also has two sisters, Elizabeth \"Beth\" Baldwin Keuchler (born 1955) and Jane Ann Baldwin Sasso (born 1965).<p>\r\n<p>Alec and his siblings were raised as Roman Catholics. They are of Irish, French, and English ancestry. Through his father, Baldwin is descended from <i>Mayflower</i> passenger John Howland, and through this line, is the 13th generation of his family born in North America and the 14th generation to live in North America.</p>\r\n<p>Mr. Baldwin attended Alfred G. Berner High School in Massapequa and played football there under Coach Bob Reifsnyder. In New York City, Baldwin worked as a busboy at the disco Studio 54. From 1976 to 1979, he attended George Washington University. In 1979, he lost the election for student body president and received a personal letter from former U.S. president Richard Nixon (with whom he had a common friend) encouraging him to use the loss as a learning experience.</p>\r\n<p>Afterward, he transferred to New York University\'s Tisch School of the Arts where he studied with, among others, Geoffrey Horne and Mira Rostova at the Lee Strasberg Theatre Institute. Later, he was accepted as a member of the Actors Studio. In 1994, he completed his Bachelor of Fine Arts degree at NYU.</p>\r\n<p>From 2006 to 2013, Baldwin starred as Jack Donaghy on the NBC sitcom <i>30 Rock</i>, winning two Emmy Awards, three Golden Globe Awards, and seven Screen Actors Guild Awards for his work on the show, making him the male performer with the most SAG Awards. Baldwin co-starred in <i>Mission: Impossible - Rogue Nation</i> and <i>Mission: Impossible - Fallout</i>, the fifth and sixth installments of the <i>Mission: Impossible</i> series, released in 2015 and 2018, respectively. He is also a columnist for <i>The Huffington Post</i>. Since 2016, he has been the host of <i>Match Game</i>. He has received worldwide attention and acclaim for his portrayal of Donald Trump on the long-running sketch series <i>Saturday Night Live</i>, both during the latter part of the 2016 U.S. presidential election campaign and following the inauguration, a role that won him his third Primetime Emmy in 2017. He was nominated again in 2018.</p>', 'actors/alec-baldwin_Cover.jpg'),
(3, 'Alexander', '', 'Skarsgård', 'M', '<p>Alexander Johan Hjalmar Skarsgård was born in Stockholm, Sweden. He is the eldest son of actor Stellan Skarsgård and his first wife, My Skarsgård, a physician. He has five younger siblings: Gustaf, Sam, Bill, Eija and Valter, and two half-brothers from his father\'s second wife, Megan Everett. Gustaf, Bill, and Valter are also actors.</p>\r\n<p>A friend of his father, who was a director, gave Skarsgård his first film role when he was seven years old. He played Kalle Nubb in <i>Åke och hans värld</i> (<i>Åke and His World</i>). In 1989, the lead role in the Swedish television production <i>Hunden som log</i> (<i>The Dog That Smiled</i>) made him famous in Sweden at the age of 13. Uncomfortable with being recognized, he quit acting for the next seven years.</p>\r\n<p>At age 19, he applied to do his national service. He served in the Swedish military for 18 months, in the <i>SäkJakt</i> (\"protect and hunt\") unit that dealt with anti-sabotage and anti-terrorism in the Stockholm archipelago. After completing his service in 1996 he left Sweden and attended Leeds Beckett University in England for six months. He enrolled to study English but admits he did not study much and \"had a blast\" instead.</p>\r\n<p>After seven years away from acting, he started to consider it again. In 1997, he enrolled in a theater course at Marymount Manhattan College and moved to New York City. He returned to Stockholm after six months, but the time he spent studying theater showed him that he wanted to act.</p>\r\n<p>Mr. Skarsgård is best known for his roles as vampire Eric Northman on the HBO series <i>True Blood</i>, Meekus in <i>Zoolander</i>, the title character in <i>The Legend of Tarzan</i>, Brad Colbert in the HBO miniseries <i>Generation Kill</i>, and Perry Wright in the HBO series <i>Big Little Lies</i>, for which he won a Primetime Emmy Award for Outstanding Supporting Actor in a Limited Series or Movie, a Screen Actors Guild Award for Outstanding Performance by a Male Actor in a Miniseries or Television Movie, and a Golden Globe Award for Best Supporting Actor - Series, Miniseries, or Television Film.</p>', 'actors/alexander-skarsgard_Cover.jpg'),
(4, 'Alex', '', 'Borstein', 'F', '<p>Alexandrea Borstein was born in Highland Park, Illinois, a city north of Chicago. She spent her childhood in Deerfield, Illinois, a suburb of Chicago, before moving with her family to Northridge, California, a neighborhood of Los Angeles. She graduated from Chatsworth High School in 1989. Borstein has two older brothers. Her parents, Irv and Judy Borstein, are both mental health professionals. Borstein is Jewish. Her father is from Atlanta, Georgia. Her mother, a Holocaust survivor, was born and raised in Budapest, Hungary, and moved to the United States after the Hungarian Revolution of 1956.</p>\r\n<p>Ms. Borstein attended and graduated at San Francisco State University where she studied rhetoric. She was trained in improvisational comedy at the ACME Comedy Theatre, near Hollywood, California, and was selected to join the cast of <i>MADtv</i> after being scouted by talent agents. Borstein was also a writer and voice actor for several television shows, including <i>Casper</i>, <i>Pinky and the Brain</i>, and <i>Power Rangers Zeo</i>, before joining the cast of <i>MADtv</i> in 1997 as a featured player, becoming a repertory player mid-season.</p>\r\n<p>Borstein also had lead roles as various characters on the sketch comedy series <i>MADtv</i> (1997-2009), Dawn Forchette in the medical comedy series <i>Getting On</i> (2013-15), and Susie Myerson in the historical comedy-drama series <i>The Marvelous Mrs. Maisel</i> (2017-present), the latter of which earned her a Primetime Emmy Award. She had supporting roles in numerous films, including <i>The Lizzie McGuire Movie</i> (2003), <i>Catwoman</i> (2004), <i>Good Night, and Good Luck</i> (2005), <i>Dinner for Schmucks</i> (2010), <i>Ted</i> (2012), <i>ParaNorman</i> (2012), and <i>A Million Ways to Die in the West</i> (2014). She is known for voicing Lois Griffin on the animated comedy series <i>Family Guy</i> (1999-present).</p>', 'actors/alex-borstein_Cover.jpg'),
(5, 'Alicia', '', 'Vikander', 'F', '<p>Alicia Amanda Vikander was born in Gothenburg, the daughter of Maria Fahl Vikander, a stage actress, and Svante Vikander, a psychiatrist. Her parents are from small villages in the north and south of Sweden, respectively. They separated when Vikander was two months old, and she was mostly raised by her single mother. She has five half-siblings on her father\'s side. Vikander has said that she had the best of both worlds growing up, being an only child to her mother and being surrounded by a big family when she went to her father\'s house every second week. Her ancestry is Swedish and one quarter Finnish.</p>\r\n<p>Vikander started her career as an actor at the age of seven, starring in a production of <i>Kristina från Duvemåla</i> at The Göteborg Opera, which was written by Björn Ulvaeus and Benny Andersson from ABBA, performing in the play for three-and-a-half years. She appeared in several musicals at the Opera, such as <i>The Sound of Music</i> and <i>Les Misérables</i>. In 1997 she participated in the TV4 kids\' singing show <i>Småstjärnorna</i>; she performed the Helen Sjöholms song \"Du måste finnas\". She won her episode with praise by the judges for her stage presence.</p>\r\n<p>Vikander trained in ballet from the age of nine with the <i>Svenska Balettskolan i Göteborg</i> (1998-2004). At the age of 15, Vikander moved from Gothenburg to train at the ballet\'s upper school (Royal Swedish Ballet School) in Stockholm and she lived on her own, working to become a principal dancer. She travelled around the world for summer courses, training one summer at the School of American Ballet in New York City.</p>\r\n<p>At the age of 16, she almost left school to commit fully to the television series she worked on with director Tomas Alfredson, realizing her passion for acting. Her dance career was sidelined by injuries in her late teens. She auditioned for drama school but was turned down twice. At one point, Vikander was admitted to law school but she never attended, following her dreams to become an actress instead.</p>\r\n<p>She began her professional acting career by appearing in Swedish short films and television series and first gained recognition for her role as Josefin Björn-Tegebrandt in the drama series <i>Andra Avenyn</i> (2008-2010). Vikander made her feature film debut in <i>Pure</i> (2010), for which she won the Guldbagge Award for Best Actress. She gained wider recognition in 2012 for playing Kitty in Joe Wright\'s adaptation of <i>Anna Karenina</i> and Queen Caroline Mathilde in the Danish film <i>A Royal Affair</i>.</p>\r\n<p>In 2014 and 2015, Ms. Vikander achieved global recognition for her roles as activist Vera Brittain in <i>Testament of Youth</i>, a humanoid robot in <i>Ex Machina</i>, for which she was nominated for the Golden Globe Award and BAFTA Award for Best Supporting Actress, and painter Gerda Wegener in <i>The Danish Girl</i>, for which she received the Academy Award, Screen Actors Guild Award, and Critics\' Choice Movie Award for Best Supporting Actress. In 2016, Vikander was listed by <i>Forbes</i> in its 30 Under 30 list. She has since held a supporting role in the action film <i>Jason Bourne</i> (2016) and starred as Lara Croft in the adventure film <i>Tomb Raider</i> (2018).</p>', 'actors/alicia-vikander_Cover.jpg'),
(6, 'Allison', '', 'Janney', 'F', '<p>Allison Brooks Janney was born on November 19, 1959, in Boston, Massachusetts, and raised in Dayton, Ohio. She is the daughter of Macy Brooks (née Putnam), a former actress and homemaker, and Jervis Spencer \"Jerv\" Janney, Jr., a real estate developer and jazz musician. She is one of three siblings.</p>\r\n<p>Janney attended the Miami Valley School in Dayton, where she was named a distinguished alumna in 2005, and the Hotchkiss School in Connecticut, where she was named Alumna of the Year in 2016. She then attended Kenyon College in Gambier, Ohio. At Kenyon, she studied with Paul Newman, an alumnus of Kenyon. He directed her in a play as the inaugural event of the school\'s newly dedicated Bolton Theater. Newman and his wife, Joanne Woodward, encouraged Janney to continue acting. She then went on to train at the Neighborhood Playhouse School of the Theatre in New York and did summer programs at the Royal Academy of Dramatic Art in London. She attended The Neighborhood Playhouse the same years as actor Dylan McDermott. She completed two years at the Neighborhood Playhouse along with Steven Rogers.</p>\r\n<p>After years of minor and uncredited film and television appearances, Ms. Janney\'s breakthrough came with the role of C. J. Cregg in the NBC political drama <i>The West Wing</i> (1999-2006), for which she received four Primetime Emmy Awards. The character was widely popular during the airing of the series and was later recognized as one of the greatest female characters on American television. In 2014, she won the Primetime Emmy Award for Outstanding Guest Actress in a Drama Series for her role as Margaret Scully on the Showtime period drama <i>Masters of Sex</i>. Since 2013, she has starred as a cynical recovering addict in the CBS sitcom <i>Mom</i>. Her performance on the show has gained her five consecutive Primetime Emmy Award nominations and won her two Primetime Emmy Awards for Outstanding Supporting Actress in a Comedy Series.</p>\r\n<p>Janney made her professional stage debut with the Off-Broadway production <i>Ladies</i> and followed with numerous bit parts in various similar productions, before making her Broadway debut in the 1996 revival of <i>Present Laughter</i>. She won Drama Desk Awards and received Tony Award nominations for her performance in the 1997 Broadway revival of <i>A View from the Bridge</i>, and the 2009 original Broadway production of the musical <i>9 to 5</i>.</p>\r\n<p>Her film roles include <i>Private Parts</i> (1997), <i>Primary Colors</i> (1998), <i>10 Things I Hate About You</i> (1999), <i>Drop Dead Gorgeous</i> (1999), <i>American Beauty</i> (1999), <i>The Hours</i> (2002), <i>Hairspray</i> (2007), <i>Juno</i> (2007), <i>The Help</i> (2011), <i>The Way, Way Back</i> (2013), <i>Tammy</i> (2014), <i>Spy</i> (2015), <i>Tallulah</i> (2016), and <i>The Girl on the Train</i> (2016). In 2017, her performance as LaVona Golden in the biographical film <i>I, Tonya</i> garnered widespread acclaim and earned her the Academy Award for Best Supporting Actress.</p>', 'actors/allison-janney_Cover.jpg'),
(7, 'Anna', '', 'Gunn', 'F', '<p>Anna Gunn was born in Cleveland, Ohio, but moved at an early age and was raised in Santa Fe, New Mexico, the daughter of Sharon Anna Kathryn \"Shana\" Gunn (née Peters), an interior designer, and Clemens Earl Gunn Jr., who worked in real estate. She graduated from Santa Fe Preparatory School in 1986. She attended Northwestern University, where she majored in theater and gradauted in 1990. During fall of 1988, Gunn spent a semester abroad to study at the British American Drama Academy. After moving to Laurel Canyon, Los Angeles, she shared a house with Pamela Adlon.</p>\r\n<p>Ms. Gunn is known for her role as Skyler White in the AMC drama series <i>Breaking Bad</i>. In 2012, 2013, and 2014, she was nominated for the Primetime Emmy Award for Outstanding Supporting Actress in a Drama Series for her performance, winning in 2013 and 2014. In August 2013, she wrote an op-ed piece for <i>The New York Times</i> examining the public dislike toward her character.</p>\r\n<p>Gunn played a recurring role as Assistant District Attorney Jean Ward on the ABC series <i>The Practice</i> from 1997 to 2002, and was a regular as Martha Bullock on HBO\'s <i>Deadwood</i> from 2005 to 2006. She appeared on <i>Seinfeld</i> in the episode \"The Glasses\", in the <i>Six Feet Under</i> episode \"Parallel Play\", and on the first season of <i>Murder One</i>.</p>\r\n<p>Gunn provided the voice for Ariel in the <i>Legacy of Kain</i> series of video games. She also appeared in the <i>Quantum Leap</i> episode \"The Play\'s The Thing\". In 2011, she played a lead role in the Lifetime movie <i>Secrets of Eden</i>, opposite John Stamos. Her other film credits include <i>Without Evidence</i>, <i>Enemy of the State</i>, <i>Treading Water</i>, <i>Twelve Mile Road</i>, and <i>Red State</i>.</p>\r\n<p>In February 2013, the cable network Bravo announced Gunn would star in a television pilot for a one-hour drama, <i>Rita</i>, based on a Danish TV series about a private-school teacher and mother. The Fox TV Studios pilot was to be written by Krista Vernoff and directed by Miguel Arteta.</p>\r\n<p>In 2014, Gunn starred Off-Broadway with Billy Magnussen in <i>Sex With Strangers</i>, directed by David Schwimmer at Second Stage Theatre.</p>\r\n<p>Gunn starred in the 2016 film <i>Equity</i>. Billed as the first female-driven Wall Street movie, the film premiered at the 2016 Sundance Film Festival.</p>', 'actors/anna-gunn_Cover.jpg'),
(8, 'Ann', '', 'Dowd', 'F', '<p>Ann Dowd was born on January 30, 1956, in Holyoke, Massachusetts, the daughter of John (1926-1974) and Dolores (née Clark) Dowd. She is one of seven children (siblings, Kathleen, John, Elizabeth, Clare, Deborah, and Gregory), who were raised by their mother after her father died when Ann was a senior in high school. Her mother later married Philip Dean (1929-2010), a doctor. Her brother Gregory is a doctor of veterinary medicine and another brother, John Dowd Jr., is president of The Dowd Agencies, an insurance company started by their great-grandfather. Her paternal grandfather was James \"Kip\" Dowd, a former Major League baseball player for the Pittsburgh Pirates.</p>\r\n<p>Dowd\'s family is Irish Catholic. She attended the Williston Northampton School, where she performed in school plays. Dowd became interested in acting at a young age but was dissuaded by her family at first because they did not approve of her pursuing an acting career. She graduated in 1978 from College of the Holy Cross in Worcester, Massachusetts where much of Dowd\'s family also attended and she was a premed student and took acting classes. Dowd credits her instructors and roommate at that time for persuading her to forgo medical school and follow her passion for acting. She traveled to New York City to audition for the Goodman School of Drama at Depaul University in Chicago, where she received an MFA in Acting. While at Depaul, Dowd received a prestigious scholarship from the Sarah Siddons Society, an award that had also gone to Carrie Snodgress. Dowd was classmates with Elizabeth Perkins and also worked as a waitress during this time.</p>\r\n<p>Dowd spent several years performing in regional theatre in the Chicago area, performing often at the Court Theatre, later deciding in 1988 to move to New York City to pursue a bigger stage. She pounded the pavement and her first acting gig there was with the Hartford Stage Company.</p>\r\n<p>Ms. Dowd\'s first appearance was in the 1985 television movie <i>First Steps</i> with fellow Chicago actor Megan Mullally. She has appeared in many popular television shows including <i>House</i> and <i>Louie</i>, on both of which she played a nun. Other shows include <i>Chicago Hope</i>, <i>The X-Files</i>, <i>Third Watch</i>, <i>NYPD Blue</i>, <i>Judging Amy</i> and <i>Freaks and Geeks</i>, in which she played the mother of Busy Philipps. Dowd has also appeared in many episodes of the <i>Law & Order</i> franchise. In 1995 she portrayed Rose Long, Louisiana\'s first female senator, in the television movie <i>Kingfish</i>, opposite John Goodman. In 2008 she appeared in the television movie <i>Taking Chance</i> starring Kevin Bacon. Dowd was a series regular on <i>Nothing Sacred</i>, which was filmed in Los Angeles and aired for one season (97/98), in which she played a nun. For this role she was nominated for a VQT award for Best Supporting Actress. Dowd also co-starred on <i>The Leftovers</i> as Patti Levin, leader of the group The Guilty Remnant. In 2017, Dowd began starring on the Hulu series <i>The Handmaid\'s Tale</i>, for which she won a Primetime Emmy Award.</p>\r\n<p>Dowd starred in <i>Shiloh</i> (1997) and its sequels, <i>Shiloh 2: Shiloh Season</i> (1999) and <i>Saving Shiloh</i> (2006) as Louise Preston. She appears in the 1997 cult film <i>All Over Me</i> and in the 1998 film <i>Apt Pupil</i>, in which she played the mother of Brad Renfro\'s character. Dowd has acted in two films directed by Jonathan Demme, as Jill Beckett, sister of Tom Hanks\'s character, Andrew Beckett, in <i>Philadelphia</i> (1993), and in <i>The Manchurian Candidate</i> (2004), starring Meryl Streep. Also in 2004, Dowd played the mother of Natalie Portman\'s character in <i>Garden State</i> and appeared in <i>The Forgotten</i> starring Julianne Moore. In 2005, she starred opposite Gretchen Mol in <i>The Notorious Bettie Page</i>, portraying Edna Page, Bettie Page\'s mother. She also played the role of Mrs. Strank in the 2006 Clint Eastwood film <i>Flags of Our Fathers</i>.</p>\r\n<p>In 2008, Dowd appeared in <i>Marley & Me</i> starring Jennifer Aniston. She received rave reviews for her work in the 2012 movie <i>Compliance</i>, which premiered at the Sundance Film Festival. In the film, Dowd plays Sandra, a fast food restaurant manager caught in a mysterious ethical nightmare. For this role, Dowd was nominated for an Independent Spirit Award for Best Supporting Actress and received the National Board of Review award. She has played supporting roles in two Steven Soderbergh films, <i>The Informant!</i> in 2009, and <i>Side Effects</i> in 2013, in which she played the mother of Channing Tatum\'s character. She played the supporting role of Joan in the 2018 horror film <i>Hereditary</i>.</p>\r\n<p>Ms. Dowd has appeared on Broadway three times. In 1993 she received the Clarence Derwent Award for her Broadway debut performance in the play <i>Candida</i> starring Mary Steenburgen. She next appeared in <i>Taking Sides</i> (1996) with Elizabeth Marvel, and Vera Farmiga, who was Dowd\'s understudy. In 2008 she appeared in <i>The Seagull</i> starring Carey Mulligan and Kristin Scott Thomas. Dowd has also won three Jeff Awards for her work in Chicago theatre, including a 1987 Best Supporting Actress award for her role as Emma Brookner in <i>The Normal Heart</i>. In 2007, Dowd played the role of Sister Aloysius in <i>Doubt</i> at the George Street Playhouse. <i>The New York Times</i> described her performance as \"chilling\" and said she was \"masterful in this role.\" In 2011, Dowd performed Off-Broadway in <i>Blood from a Stone</i>, playing the mother of Ethan Hawke.</p>', 'actors/ann-dowd_Cover.jpg'),
(9, 'Anne', '', 'Hathaway', 'F', '<p>Anne Jacqueline Hathaway was born in the Brooklyn borough of New York City on November 12, 1982. Her father, Gerald, is a labor attorney, and her mother, Kate (<i>née</i> McCauley), is a former actress. Hathaway\'s maternal grandfather was WIP-AM Philadelphia radio personality Joe McCauley. Kate is of Irish descent, and Gerald is of Irish, French, English and German ancestry. Hathaway\'s surname originates in England, and she was named after Shakespeare\'s wife. She is the second of three children, with two brothers, one older, Michael, and one younger, Thomas. When she was six, her family moved to the Short Hills neighborhood of Millburn, New Jersey, where she then grew up.</p>\r\n<p>At age six, when Hathaway watched her mother perform in <i>Les Misérables</i> as Fantine, she instantly became fascinated with the stage, but her parents were not keen on allowing her to pursue an acting career. After this, Kate quit acting to raise Hathaway and her brothers. Hathaway was raised as Roman Catholic with what she considers \"really strong values\" and stated that she wished to be a nun during her childhood, but acting was always a high priority for her. At the age of 15, her relationship with the Catholic Church changed, after learning that Michael was gay. Her family left the church due to its intolerance of homosexuality, converting to Episcopalianism, but left that too. In 2009, Hathaway stated that her religious beliefs are \"a work in progress\".</p>\r\n<p>Hathaway attended Brooklyn Heights Montessori School and Wyoming Elementary School in Millburn. She graduated from Millburn High School, where she played soccer and participated in many plays, including <i>Once Upon a Mattress</i>, in which she portrayed Winnifred. Later, she appeared in other plays like <i>Jane Eyre</i> and <i>Gigi</i>, at New Jersey\'s Paper Mill Playhouse. She studied at the American Academy of Dramatic Arts in 1993 and became the first teenager admitted into the Barrow GroupTheater Company\'s acting program. She spent several semesters studying as an English major and political science minor at Vassar College in Poughkeepsie, New York, before transferring to New York University\'s Gallatin School of Individualized Study. She has stated that she would have become either an English teacher or psychologist if she were not acting.</p>\r\n<p>Between 1998 and 1999, Hathaway sang soprano with the All-Eastern U.S. High School Honors Chorus at Carnegie Hall and in plays at Seton Hall Preparatory School in West Orange, New Jersey. At the start of her film career, her acting style and beauty were compared to the likes of Judy Garland-whom she cites as one of her favorite actresses-and Audrey Hepburn. Three days after her performance at Carnegie Hall, Hathaway was cast in the short-lived Fox television series <i>Get Real</i>. Hathaway played the teenager Meghan Green alongside Jon Tenney, Debrah Farentino and Jesse Eisenberg. Despite her early success, Hathaway suffered from depression and anxiety as a teenager; she says she has since grown from it. She missed her first college semester for the filming of her cinematic debut <i>The Princess Diaries</i> (2001). She says she never regretted not finishing her degree, as she enjoyed being with others who \"were trying to grow up\".</p>\r\n<p>Hathaway made a transition to adult roles with the 2005 dramas <i>Havoc</i> and <i>Brokeback Mountain</i>. The comedy film <i>The Devil Wears Prada</i> (2006), in which she played an assistant to a fashion magazine editor, was her biggest commercial success to that point. She played a recovering alcoholic in the drama <i>Rachel Getting Married</i> (2008), which garnered her a nomination for the Academy Award for Best Actress. She followed this with roles in the commercially successful romantic films <i>Bride Wars</i> (2009), <i>Valentine\'s Day</i> (2010) and <i>Love & Other Drugs</i> (2010).</p>\r\n<p>In 2012, Hathaway starred as Selina Kyle in her highest-grossing film <i>The Dark Knight Rises</i>, the final installment in <i>The Dark Knight</i> trilogy. That year, she also played Fantine, a prostitute dying of tuberculosis, in the musical romantic drama <i>Les Misérables</i>, for which she earned multiple accolades, including an Academy Award for Best Supporting Actress. She went on to play a scientist in the science fiction film <i>Interstellar</i> (2014), the owner of an online fashion site in the comedy film <i>The Intern</i> (2015), the White Queen-a role she first played in <i>Alice in Wonderland</i> (2010)-in <i>Alice Through the Looking Glass</i> (2016) and a haughty actress in the heist film <i>Ocean\'s 8</i> (2018). Hathaway has also won an Emmy Award for providing her voice in <i>The Simpsons</i>, sung for soundtracks, appeared on stage, and hosted events.</p>\r\n<p>Ms. Hathaway supports several charities. A board member of the Lollipop Theatre Network, an organization that brings films to sick children in hospitals, she advocates gender equality as a UN Women goodwill ambassador. She is married to businessman Adam Shulman, with whom she has a son.</p>', 'actors/anne-hathaway_Cover.jpg'),
(10, 'Benedict', '', 'Cumberbatch', 'M', '<p>Benedict Timothy Carlton Cumberbatch was born at Queen Charlotte\'s and Chelsea Hospital in the White City district of West London\'s Hammersmith and Fulham borough, to actors Timothy Carlton (born Timothy Carlton Congdon Cumberbatch) and Wanda Ventham. He grew up in the Royal Borough of Kensington and Chelsea. He has a half-sister, Tracy Peacock, from his mother\'s first marriage. His grandfather, Henry Carlton Cumberbatch, was a submarine officer of both World Wars, and a prominent figure of London high society. His great-grandfather, Henry Arnold Cumberbatch, was a diplomat who served as consul in Turkey and Lebanon. His great-great-grandfather, Robert William Cumberbatch, also was a British consul in Turkey and the Russian Empire. Cumberbatch is third cousin 16 times removed of King Richard III, whom he portrayed in <i>The Hollow Crown</i>. Motivated by this connection, he attended Richard III\'s 2015 reburial and read a poem.</p>\r\n<p>Mr. Cumberbatch attended boarding schools from the age of 8; he was educated at Brambletye School in West Sussex and was an arts scholar at Harrow School. He was a member of The Rattigan Society, Harrow\'s principal club for the dramatic arts, which was named after Old Harrovian and playwright Terence Rattigan. He was involved in numerous Shakespearean works at school and made his acting debut as Titania, Queen of the Fairies, in <i>A Midsummer Night\'s Dream</i> when he was 12. Cumberbatch\'s drama teacher, Martin Tyrell, called him \"the best schoolboy actor\" he had ever worked with.</p>\r\n<p>After leaving Harrow, Cumberbatch took a gap year to volunteer as an English teacher at a Tibetan monastery in Darjeeling, India. He then attended the Victoria University of Manchester (now the University of Manchester), where he studied Drama. He continued his training as an actor at the London Academy of Music and Dramatic Art (LAMDA) graduating with an MA in Classical Acting. On 16 January 2018, it was announced that Cumberbatch would succeed Timothy West as President of LAMDA. On being appointed Cumberbatch stated it would be \"an honour to watch the next generation of actors, directors and technicians blossom\".</p>\r\n<p>He first performed at the Open Air Theatre, Regent\'s Park in Shakespearean productions and made his West End debut in Richard Eyre\'s revival of <i>Hedda Gabler</i> in 2005. Since then he has starred in the Royal National Theatre productions <i>After the Dance</i> (2010) and <i>Frankenstein</i> (2011). In 2015, he played William Shakespeare\'s <i>Hamlet</i> at the Barbican Theatre.</p>\r\n<p>Cumberbatch\'s television work includes appearances in <i>Silent Witness</i> (2002) and <i>Fortysomething</i> (2003) before playing Stephen Hawking in the television film <i>Hawking</i> in 2004. He has starred as Sherlock Holmes in the series <i>Sherlock</i> since 2010. He has also headlined Tom Stoppard\'s adaptation of <i>Parade\'s End</i> (2012), <i>The Hollow Crown: The Wars of the Roses</i> (2016) and <i>Patrick Melrose</i> (2018). In film, Cumberbatch has starred in <i>Amazing Grace</i> (2006) as William Pitt the Younger, <i>Star Trek Into Darkness</i> (2013) as Khan, <i>12 Years a Slave</i> (2013) as William Prince Ford, <i>The Fifth Estate</i> (2013) as Julian Assange and <i>The Imitation Game</i> (2014) as Alan Turing. From 2012 to 2014, through voice and motion capture, he played the characters of Smaug and the Necromancer in <i>The Hobbit</i> film series. Cumberbatch portrays the Marvel Comics character Dr. Stephen Strange in the Marvel Cinematic Universe, appearing in <i>Doctor Strange</i> (2016), <i>Thor: Ragnarok</i> (2017), <i>Avengers: Infinity War</i> (2018) and <i>Avengers: Endgame</i> (2019).</p>\r\n<p>Cumberbatch has received numerous awards and nominations for acting including three Laurence Olivier Award nominations, winning Best Actor in a Play for <i>Frankenstein</i>. He has also received six Primetime Emmy Award nominations, winning Outstanding Lead Actor in a Miniseries or a Movie for <i>Sherlock</i>. His performance in <i>The Imitation Game</i> earned him an Academy Award nomination for Best Actor. In addition, he has received seven BAFTA nominations, five Screen Actors Guild Award nominations and two Golden Globe Award nominations among others. In 2014, Time magazine included him in its annual <i>Time</i> 100 as one of the \"Most Influential People in the World\". He was appointed with a Commander of the Order of the British Empire by Queen Elizabeth II in June 2015 for his services to the performing arts and to charity.</p>', 'actors/benedictcumberbatch_Cover.jpg'),
(11, 'Bill', '', 'Hader', 'M', '<p>William Thomas Hader Jr. was born and raised in Tulsa, Oklahoma, the son of Sherri Renee (née Patton) and William Thomas Hader. His father owned an air-freight company and worked as a restaurant manager, truck driver and occasional stand-up comedian; his mother was a dance teacher. He has two younger sister, Katie and Kara. His ancestry includes German, Danish, Irish, and English; his surname originates in Germany.</p>\r\n<p>Hader attended Patrick Henry Elementary School, Edison Junior High, and Cascia Hall Preparatory School. He had \"a hard time focusing on class\" and was always \"joking around\". Though he was not hated by classmates, he felt he never truly fit in and filled his time watching movies and reading. He appreciated Monty Python, British comedy, and the films of Mel Brooks and Woody Allen, many of which he was introduced to through his father. He made short films with friends and starred in a school production of <i>The Glass Menagerie</i>.</p>\r\n<p>He was unable to gain admission to top film schools because of his \"abysmal\" grades, so he instead enrolled at The Art Institute of Phoenix, and later Scottsdale Community College. Hader has mentioned that his very first job was selling Christmas trees. He also worked as an usher at a movie theater in nearby Tempe, which allowed him to see films for free. He was fired for spoiling the ending of the 1997 film <i>Titanic</i> to noisy patrons. At Scottsdale, he met Nicholas Jasenovec, the director of <i>Paper Heart</i>.</p>\r\n<p>Hader\'s aspirations of becoming a filmmaker eventually led him to drop out of college and move to Los Angeles in 1999. His parents were supportive of his decision to move, and Hader used the money they had originally saved for his college education to cover his living expenses when he arrived in Los Angeles. He found work as a production assistant (PA) while scouring the back pages of <i>The Hollywood Reporter</i>, and he hoped to advance far enough to become an assistant director. He spent much of his young adulthood \"lonely and underemployed,\" filling large amounts of spare time with movie marathons. He regularly worked 18-hour days as a PA, having little time to pursue his creative ambitions. He worked as a PA on the DVD <i>Empire of Dreams: The Story of the Star Wars Trilogy</i>; the feature films <i>James Dean</i>, <i>Spider-Man</i>, and <i>Collateral Damage</i>; as well as a post-production assistant on VH1 television\'s <i>The Surreal Life</i>. Hader briefly worked as a PA and stage manager on Playboy TV\'s <i>Night Calls</i>; he quit, as he feared it would disappoint his parents. He quit being a PA altogether after a bad experience shooting <i>The Scorpion King</i>.</p>\r\n<p>He subsequently secured a job working as a nighttime assistant editor at post-production facility Triage Entertainment. He invested money into his own short film, but was too embarrassed to release it. Shortly thereafter, Hader and his then-longtime girlfriend broke up. Desperate for a change, he began attending comedy classes with friends at improvisational comedy enterprise the Second City in March 2003. He quickly realized that comedy was the creative outlet that he had needed since he made the decision to leave higher education behind, and soon Hader, his new compatriot in comedy Matt Offerman, and their two friends and fellow humor enthusiasts Eric Filipkowski and Mel Cowan, elected to form their own sketch comedy group. Christening their group <i>Animals from the Future</i>, the four frequently appeared to small audiences at backyard shows in Van Nuys. Matt\'s brother, actor Nick Offerman, told his wife, Megan Mullally, about the group. Mullally, her interest piqued, wanted to see their work personally and, after attending one of the group\'s backyard appearances, she informed Hader of her intention to discuss him, specifically, with Lorne Michaels, creator and executive producer of <i>Saturday Night Live (SNL)</i>. Hader, as a result of Mullally\'s recommendation, was asked to audition for the show, and soon flew to New York to audition for a group of <i>SNL</i> producers. Hader, who would later receive acclaim for his excellent impressions of others while appearing on <i>SNL</i>, had no impressions prepared when he was invited to audition. Despite being nervous and struggling to display his strengths during the audition, this resulted in his spontaneous imitation of an elderly Italian man he had once overheard; this impression would later become the first of Hader\'s many recurring characters on the show: Vinny Vedecci. As a result of the audition, Hader got an agent and manager. Just before he was officially invited to begin work on <i>SNL</i>, Hader was working as an assistant editor on <i>Iron Chef America</i>.</p>\r\n<p>After his film debut <i>You, Me and Dupree</i>, Hader had a wide range of roles such as Katherine Heigl\'s character\'s editor at E! in <i>Knocked Up</i>, the acid-taking mechanic Dave in <i>Hot Rod</i> alongside SNL castmate Andy Samberg, a recumbent biker in <i>The Brothers Solomon</i> (which featured SNL castmate Will Forte in one of the film\'s co-leading roles) and, most famously, as Officer Slater in the Judd Apatow produced Superbad. His role in <i>Superbad</i> helped boost his public awareness and allowed him to appear on mainstream programs like <i>Total Request Live</i>, <i>The Tonight Show</i>, and MTV\'s <i>Video Music Awards</i>.</p>\r\n<p>In 2008, Hader appeared in two other Apatow projects: <i>Forgetting Sarah Marshall</i> and <i>Pineapple Express</i>. He also starred alongside Ben Stiller, Robert Downey, Jr. and Tom Cruise in <i>Tropic Thunder</i>. Hader has teamed up with director Greg Mottola for three feature films: <i>Superbad</i>, <i>Adventureland</i> and <i>Paul</i>.</p>\r\n<p>He made a small appearance in the 2009 film <i>Year One</i> with Jack Black and Michael Cera. Hader lent his voice to the critically acclaimed 2009 Sony Pictures Animation film <i>Cloudy with a Chance of Meatballs</i>, as well as its sequel, playing the lead role of Flint Lockwood as well as his invention in the films, the FLDSMDFR. He voiced a gazelle in <i>Ice Age: Dawn of the Dinosaurs</i>. Hader appeared in <i>Night at the Museum: Battle of the Smithsonian</i> as Major General George Armstrong Custer. In April 2009, Hader was a part of <i>Vanity Fair\'</i>s list of \"Comedy\'s New Legends\".</p>\r\n<p>He provided a voiceover in the 2010 film <i>Scott Pilgrim vs. the World</i>. He portrayed \"The Voice\", the disembodied voice that pops up during certain moments of the film\'s video game-inspired fight scenes. He also had a small cameo as the voice of the USS <i>Vengeance</i> computer in 2013\'s <i>Star Trek Into Darkness</i>. Hader starred in a dramatic role in the 2014 film <i>The Skeleton Twins</i>, opposite Kristen Wiig, with whom he worked on <i>Saturday Night Live</i>. The film won for \'Best Screenplay\' at the Sundance Film Festival. In 2015, Hader voiced the character of Fear in the critically acclaimed Disney-Pixar film, <i>Inside Out</i>, and was attached to voice a dinosaur in the Pixar film <i>The Good Dinosaur</i>. However, Hader, alongside John Lithgow, Lucas Neff, Neil Patrick Harris and Judy Greer, left the project after their characters were re-designed.</p>\r\n<p>Most recently, Hader had his first romantic-comedy leading man role opposite Amy Schumer in <i>Trainwreck</i> (2015) and as a former college boyfriend to Greta Gerwig\'s title character, Maggie\'s, now stable married best friend in <i>Maggie\'s Plan</i> (2015). Hader voiced Alpha 5 in the 2017 film version of <i>Power Rangers</i>.</p>\r\n<p>Hader will star in <i>It: Chapter Two</i> as the adult Richie Tozier in the upcoming sequel to the first <i>It</i> film, alongside Jessica Chastain and James McAvoy. The film is set to hit theaters September 2019.</p>\r\n<p>Hader has been a creative consultant and producer on <i>South Park</i> since the show\'s 12th season. His involvement in the series stems from his friendship with Matt Stone; the two held a similar sense of humor and Hader began going on writers\' retreats with the staff. He began working on the program hoping to learn story structure. Hader is among the series producers to win the 2009 Emmy Award for Best Animated Series. He also appeared on the commentary recorded for the 2009 Blu-ray edition of <i>South Park: Bigger, Longer and Uncut</i>, and the Comedy Central special <i>6 Days to Air</i>, a documentary filmed during production of the 2011 <i>South Park</i> episode \"HumancentiPad.\" Hader rejoined the writing staff for <i>South Park</i> for its 17th season. Hader won a 2008 Peabody Award in Political Satire for his participation in <i>Saturday Night Live</i>. He has also been on the MTV show <i>Punk\'d</i>. Hader voiced an array of different characters on the second season of the Adult Swim show <i>Xavier: Renegade Angel</i>.</p>\r\n<p>Hader took on the voice role of Professor Impossible on the fourth season of <i>The Venture Brothers</i>, a part originated by Stephen Colbert. In the game <i>Grand Theft Auto IV</i>, he played Wilson Taylor, Sr., (on in-game radio show: <i>Pacemaker</i>). Hader appeared on <i>Tim and Eric Awesome Show</i> impersonating the recurring character James Quall on the episode \"Jazz\".</p>\r\n<p>In July 2008, Hader starred in, and cowrote with Simon Rich, the web series <i>The Line</i> on Crackle. Hader lent his voice to the audiobook of Sarah Vowell\'s <i>The Wordy Shipmates</i>. He voiced the Pod in the <i>Aqua Teen Hunger Force</i> episode \"IAMAPOD\", as well as Hitler in the episode \"Der Inflatable Fuhrer\". Hader played Kevin, Matt Damon\'s copilot, in the live episode of <i>30 Rock</i>, recorded October 14, 2010.</p>\r\n<p>He hosted the 2011 and 2012 seasons of <i>Essentials, Jr.</i> on Turner Classic Movies. In the series premiere of <i>The Mindy Project</i>, he guest-starred as Mindy\'s ex-boyfriend. His character returned later in the first season. Hader voiced Dr. Malocchio in the original Hulu series <i>The Awesomes</i>.</p>\r\n<p>In 2015, Hader appeared in <i>Brooklyn Nine-Nine</i> as the captain of the 99th Precinct. Also in 2015, Hader reunited with fellow <i>SNL</i> alumnus Fred Armisen for the IFC mockumentary series <i>Documentary Now!</i>, wherein he was an actor and a writer.</p>\r\n<p>Drew McWeeny of HitFix reported in December 2015 that the voice of BB-8 was supplied by Hader and Ben Schwartz, both credited as \"BB-8 vocal consultants\" in the film. The voice was created by Abrams manipulating their voices through a talkbox, attached to an iPad running a sound-effects app. Hader also voiced multiple characters in YouTube channel Bad Lip Reading\'s parodies of the <i>Star Wars</i> original trilogy.</p>\r\n<p>In 2018, Hader created and began starring in the HBO series <i>Barry</i>, for which he received four Primetime Emmy Award nominations as producer, writer, director, and actor. He won the Emmy for Outstanding Lead Actor in a Comedy Series in September 2018.</p>', 'actors/bill-hader_Cover.jpg'),
(12, 'Ben', '', 'Mendelsohn', 'M', '<p>Paul Benjamin Mendelsohn was born in Melbourne, Victoria, the son of Carole Ann (née Ferguson) and Frederick Arthur Oscar Mendelsohn. His father is a prominent medical researcher who previously headed the Howard Florey Institute in Melbourne, where he maintains the status of Professor Emeritus. Ben and his two brothers, Tom and David, as well as his mother (deceased), a registered nurse, lived in Europe and the US for long periods of time, and returned to Melbourne when he was in high school. He attended Heidelberg Primary School and Eltham High and Banyule High schools. He took drama because he thought it was an easy class.</p>\r\n<p>In October 2009, he was featured in an episode of the Australian series <i>Who Do You Think You Are?</i>, which traced the ancestry of his paternal grandfather, who was from a Jewish family, as well as of convicts on his mother\'s side. Searching for a connection to composer Felix Mendelssohn, which was eventually dismissed, he discovered links to 19th-century Prussia. His ancestors were among the first Prussian Jews to be naturalised in Schneideühl in the province of Posen, now Pila in modern Poland. He also has Greek, German, and British Isles ancestry.</p>\r\n<p>After several early television roles, including <i>The Henderson Kids</i> alongside Kylie Minogue, he attracted notice in his breakout film, <i>The Year My Voice Broke</i> (1987), and won the Australian Film Institute Award for Best Supporting Actor. His next major role was in <i>The Big Steal</i> (1990), and <i>Spotswood</i> (1992), co-starring with Anthony Hopkins; this was followed in 1994 by <i>Metal Skin</i> and in 1996 by <i>Cosi</i> and <i>Idiot Box</i>.</p>\r\n<p>In 2005, he was preparing to play Mark Antony in the Sydney Theatre Company-produced <i>Julius Caesar</i>, and he was in the Terrence Malick-directed film <i>The New World</i>.</p>\r\n<p>In 2007, Mendelsohn starred in the third season of the TV series <i>Love My Way</i> and in 2008, he appeared in Baz Luhrmann\'s <i>Australia</i>. He filmed the 10-part Melbourne series <i>Tangle</i> which premiered on Showcase in 2009. In 2009, he appeared in the American science fiction film <i>Knowing</i> directed by Alex Proyas. The same year, Mendelsohn starred as Ned in <i>Beautiful Kate</i>, directed by Rachel Ward, opposite Bryan Brown and Rachel Griffiths.</p>\r\n<p>In 2010, he appeared in <i>Animal Kingdom</i>, starring in the film as Andrew \"Pope\" Cody, a criminal on the run from the law living in the notorious Melbourne Underworld. The role won him many awards, including IF Award\'s Best Actor and the AFI\'s award for Best Actor in a Leading Role. He was also named by GQ Australia as Actor of the Year for 2010.</p>\r\n<p>Mendelsohn was selected as one of the subjects in the <i>Who\'s Who in Australia</i> 2012 edition. In 2012, Mendelsohn played the supporting roles of John Daggett in Christopher Nolan\'s <i>The Dark Knight Rises</i> and Robin Van Der Hook in Derek Cianfrance\'s <i>The Place Beyond the Pines</i>.</p>\r\n<p>In 2012, he appeared in Florence + the Machine\'s music video for \"Lover to Lover\". The video was directed by Vincent Haycock. In 2013, he guest starred in the TV series <i>Girls</i> as the father of Jessa, played by Jemima Kirke.</p>\r\n<p>In 2014, Mr. Mendelsohn joined the cast of <i>Bloodline</i>, a Netflix original from the creators of <i>Damages</i>. The first season premiered on the site on 20 March 2015 and was well received. Mendelsohn\'s performance on the series was lauded by critics, resulting in a Primetime Emmy Award win as well as a Golden Globe Award nomination. In September 2016, Netflix announced that the show had been cancelled, and that it would end after its third season in 2017. Season 3 of <i>Bloodline</i> received negative reviews, and Mendelsohn appeared in two episodes of it.</p>\r\n<p>In 2016, he appeared in video as an onstage \"stand-in\" during the Nostalgia For the Present concert tour of Australian singer Sia Furler for his song, \"Breathe Me\".</p>\r\n<p>In December 2016, he had a supporting role in the <i>Star Wars</i> franchise\'s <i>Rogue One</i>, portraying villain Director Krennic. He called the opportunity to act in a <i>Star Wars</i> film a \"a childhood dream come true\". Mendelsohn also narrated the virtual band Gorillaz\' fifth album <i>Humanz</i>.</p>\r\n<p>He has also starred in <i>Darkest Hour</i> (2017) and Steven Spielberg\'s <i>Ready Player One</i> (2018). In 2017, he joined the Marvel Cinematic Universe as Talos in <i>Captain Marvel</i> (2019).</p>', 'actors/ben-mendelsohn_Cover.jpg');
INSERT INTO `actors` (`id`, `first_name`, `middle_name`, `last_name`, `gender`, `about`, `img`) VALUES
(13, 'Bill', '', 'Murray', 'M', '<p>William James Murray was born on September 21, 1950, in Evanston, Illinois, to Lucille (née Collins), a mail-room clerk, and Edward Joseph Murray II, a lumber salesman. He was raised in Wilmette, Illinois, a northern suburb of Chicago.</p>\r\n<p>Murray and his eight siblings were raised in a Roman Catholic Irish-American family. Three of his siblings, John Murray, Joel Murray, and Brian Doyle-Murray, are also actors. A sister, Nancy, is an Adrian Dominican nun in Michigan, who has traveled the United States in a one-woman program, portraying St. Catherine of Siena. Their father died in 1967 at the age of 46 from complications of diabetes when Bill was 17 years old.</p>\r\n<p>As a youth, Murray read children\'s biographies of American heroes like Kit Carson, Wild Bill Hickok, and Davy Crockett. He attended St. Joseph\'s grade school and Loyola Academy. During his teen years, he worked as a golf caddy to fund his education at the Jesuit high school. One of his sisters had polio and his mother suffered several miscarriages.</p>\r\n<p>After graduating, Murray attended Regis University in Denver, Colorado, taking pre-medical courses. He quickly dropped out, returning to Illinois. Decades later, in 2007, Regis awarded him an honorary Doctor of Humanities degree. On September 21, 1970, his 20th birthday, the police arrested Murray at Chicago\'s O\'Hare Airport for trying to smuggle 10 lb (4.5 kg) of cannabis, which he had allegedly intended to sell. The drugs were discovered after Murray joked to the passenger next to him that he had packed a bomb in his luggage. Murray was convicted and sentenced to probation.</p>\r\n<p>Mr. Murray first gained exposure on <i>Saturday Night Live</i>, a series of performances that earned him his first Emmy Award, and later starred in comedy films-including <i>Meatballs</i> (1979), <i>Caddyshack</i> (1980), <i>Stripes</i> (1981), <i>Tootsie</i> (1982), <i>Ghostbusters</i> (1984), <i>Scrooged</i> (1988), <i>Ghostbusters II</i> (1989), <i>What About Bob?</i> (1991), and <i>Groundhog Day</i> (1993). He also co-directed <i>Quick Change</i> (1990).</p>\r\n<p>Murray garnered additional critical acclaim later in his career, starring in <i>Lost in Translation</i> (2003), which earned him a Golden Globe and a BAFTA Award for Best Actor, as well as an Oscar nomination for Best Actor, and for frequently collaborating with director Wes Anderson. He also received Golden Globe nominations for his roles in <i>Ghostbusters</i>, <i>Rushmore</i> (1998), <i>Hyde Park on Hudson</i> (2012), <i>St. Vincent</i> (2014), and the HBO miniseries <i>Olive Kitteridge</i> (2014), for which he later won his second Primetime Emmy Award.</p>\r\n<p>Murray received the Mark Twain Prize for American Humor in 2016. His comedy is known for its deadpan delivery.</p>', 'actors/bill-murray_Cover.jpg'),
(14, 'Bobby', '', 'Cannavale', 'M', '<p>Robert Michael Cannavale was born and raised in Union City, New Jersey, the son of Isabel and Salvatore \"Sal\" Cannavale. His father is of Italian descent, while his mother is Cuban and moved to the U.S. in 1960. He was raised Catholic and attended St. Michael\'s Catholic School, where he participated in a number of extracurricular activities, including being an altar boy and member of the chorus. When he was eight, Cannavale secured the plum role of the lisping boy, Winthrop, in his school\'s production of <i>The Music Man</i> and later played a gangster in <i>Guys and Dolls</i>, which cemented his love for performing. Cannavale\'s parents divorced when he was 13 and his mother moved the family to Puerto Rico. After two years in the American territory, they settled in Margate, Florida. Cannavale returned to New Jersey after barely eking out a high school diploma in the late 1980s from Coconut Creek High School, in order to be closer to New York, to launch his acting career.</p>\r\n<p>Mr. Cannavale began his acting career in the theater - with no acting training - and gained early film roles in <i>Night Falls on Manhattan</i> (1997) and <i>The Bone Collector</i> (1999), Cannavale became well known when he starred as Bobby Caffey for two seasons on <i>Third Watch</i>. Following this, in 2001, he starred with Alan Arkin in <i>100 Centre Street</i> - which was written and directed by Sidney Lumet, his then-father-in-law.</p>\r\n<p>In 2002, he joined the cast of <i>Ally McBeal</i> for the last five episodes, but the show was then cancelled. Following this, he starred with Yancey Arias and Sheryl Lee in the miniseries <i>Kingpin</i>. In 2003, Cannavale briefly appeared on the last two episodes of <i>Oz</i>. He also appeared in the film <i>The Station Agent</i> as a man who befriends a little person removed from society. From 2004 to 2006, he had a recurring guest role on <i>Will & Grace</i> as Vince D\'Angelo, the boyfriend (and eventual husband) of Will Truman (Eric McCormack). However, in the reboot, they are revealed not to be married. For this role, he won the Primetime Emmy Award for Outstanding Guest Actor in a Comedy Series in 2005. He has also appeared in the films <i>Snakes on a Plane</i>, <i>The Guru</i> (2002), <i>Shall We Dance?</i> (2004) and <i>Romance & Cigarettes</i> (2005), and guest starred in <i>Sex and the City</i>, <i>Six Feet Under</i>, <i>Oz</i>, <i>Law & Order</i> - and its spin-off series <i>Law & Order: Criminal Intent</i> and <i>Law & Order: Special Victims Unit</i>. He appeared in <i>The Take</i> (2007) alongside John Leguizamo and Tyrese Gibson, as Agent Steve Perelli.</p>\r\n<p>Cannavale serves as the voice of Corado R. Ciarlo, known as \"Babe\", in the Ken Burns PBS film series <i>The War</i> (the story of World War II) from the perspective of the men who fought in combat and their loved ones at home. He also read the audiobook versions of Richard Price\'s 2008 novel <i>Lush Life</i> and Ed Falco\'s 2012 novel <i>The Family Corleone</i>. On August 25, 2008, ABC ordered his pilot <i>Cupid</i>, a remake of the 1998 program which had starred Jeremy Piven and Paula Marshall, to series. In the new version of the series, Cannavale starred opposite Sarah Paulson with script development overseen by original series creator Rob Thomas. ABC debuted <i>Cupid</i> on March 31, 2009, but it was cancelled on May 19, 2009.</p>\r\n<p>In 2008, he received a Tony Award nomination for his role as Dennis in the Broadway play, <i>Mauritius</i>. In 2009, CBS announced Cannavale would reprise his role of Det. Eddie Saccardo on the television show, <i>Cold Case</i>, for three episodes, starting with the third episode of Season 7. Cannavale was also in the film <i>Win Win</i> in 2011, as Terry Delfino. He later starred in the Broadway play <i>The Motherfucker with the Hat</i> alongside Chris Rock and Annabella Sciorra. On May 3, 2011 (his 41st birthday), he was nominated for a Tony Award for his leading role in that production.</p>\r\n<p>In 2012 and 2013, he guest starred in the fourth and fifth season of Showtime\'s <i>Nurse Jackie</i>, for which he was nominated twice again for the Primetime Emmy Award for Outstanding Guest Actor in a Comedy Series in 2012 and 2013, as well as joining the cast of HBO\'s <i>Boardwalk Empire</i>, portraying the psychopathic Sicilian gangster Gyp Rosetti in the third season. His performance on <i>Boardwalk Empire</i> won critical acclaim, earning him the Primetime Emmy Award for Outstanding Supporting Actor in a Drama Series in 2013. That same year he also played Lewis, a vengeful clown on <i>Modern Family</i> during the third season, for which he was nominated for Best Guest Performer in a Comedy Series at the 2nd Critics\' Choice Television Awards in 2012. <i>TV Guide</i>, in its \"Cheers & Jeers 2012\" issue, praised Cannavale for this \"trifecta of great performances\", commenting, \"This guy is so good at playing bad, it\'s scary.\" He played what Matt Zoller Seitz of RogerEbert.com called a \"heroically moving\" lead role in <i>Danny Collins</i> in 2015.</p>\r\n<p>Since 2015 Cannavale has been involved with voice-over work for Playing On Air, a non-profit organization that \"records short plays [for public radio and podcast] written by top playwrights and performed by outstanding actors.\" He has starred in three short plays, including <i>Crazy Eights</i> by David Lindsay-Abaire, co-starring Rosie Perez and John Leguizamo; <i>Mere Mortals</i> by David Ives; and <i>2 Dads</i> by David Auburn.</p>', 'actors/bobby-cannavale_Cover.jpg'),
(15, 'Brie', '', 'Larson', 'F', '<p>Brianne Sidonie Desaulniers was born Brianne Sidonie Desaulniers on October 1, 1989, in Sacramento, California, to Heather and Sylvain Desaulniers. Her parents were homeopathic chiropractors who ran a practice together, and they have another daughter, Milaine. Her father is French Canadian and in her childhood, Larson spoke French as her first language. She was mostly homeschooled, which she believed allowed her to explore innovative and abstract experiences. Describing her early life, Larson has said that she was \"straight-laced and square\", and that she shared a close bond with her mother but was shy and suffered from social anxiety. During the summer, she would write and direct her own home movies in which she cast her cousins and filmed in her garage. At age six, she expressed interest in becoming an actress, later remarking that the \"creative arts was just something that was always in me\". That same year, she auditioned for a training program at the American Conservatory Theater in San Francisco, where she became the youngest student admitted.</p>\r\n<p>Larson experienced trauma when her parents divorced when she was seven. She had a dysfunctional relationship with her father; she has recalled, \"As a kid I tried to understand him and understand the situation. But he didn\'t do himself any favors. I don\'t think he ever really wanted to be a parent.\" Soon after their split, Heather relocated to Los Angeles with her two daughters to fulfill Larson\'s acting ambition. They had limited financial means and lived in a small apartment near Hollywood studio lots at Burbank. Larson described her experience, \"We had a crappy one-room apartment where the bed came out of the wall and we each had three articles of clothing.\" Even so, Larson has recounted fond memories of that period and has credited her mother for doing the best she could for them.</p>\r\n<p>As her last name was difficult to pronounce, she adopted the stage name Larson from her Swedish great-grandmother as well as an American Girl doll named Kirsten Larson that she received as a child. Her first job was performing a commercial parody for Barbie, named \"Malibu Mudslide Barbie\", in a 1998 episode of <i>The Tonight Show with Jay Leno</i>. She subsequently took on guest roles in several television series, including <i>Touched by an Angel</i> and <i>Popular</i>. In 2000, she was cast in the Fox sitcom <i>Schimmel</i>, which was canceled before airing when its star, Robert Schimmel, was diagnosed with cancer.</p>\r\n<p>She appeared as a regular in the 2001 sitcom <i>Raising Dad</i> and briefly dabbled with a music career, releasing the album <i>Finally Out of P.E.</i> in 2005. Larson subsequently played supporting roles in the comedy films <i>Hoot</i> (2006), <i>Scott Pilgrim vs. the World</i> (2010), and <i>21 Jump Street</i> (2012), and appeared as a sardonic teenager in the television series <i>United States of Tara</i> (2009-2011).</p>\r\n<p>Ms. Larson\'s breakthrough came with a leading role in the acclaimed independent drama <i>Short Term 12</i> (2013), and she continued to take on supporting parts in the romance <i>The Spectacular Now</i> (2013) and the comedy <i>Trainwreck</i> (2015). For playing a kidnapping victim in the drama <i>Room</i> (2015), Larson won the Academy Award for Best Actress. The 2017 adventure film <i>Kong: Skull Island</i> marked her first big-budget release, after which she starred as Carol Danvers in the 2019 Marvel Cinematic Universe superhero films <i>Captain Marvel</i> and <i>Avengers: Endgame</i>.</p>\r\n<p>Larson has also co-written and co-directed two short films, including <i>The Arm</i> (2012), which received a special jury prize at the Sundance Film Festival. She made her feature film directorial debut in 2017 with the independent comedy-drama <i>Unicorn Store</i>. A gender equality activist and an advocate for sexual assault survivors, Larson is vocal about social and political issues.</p>\r\n<p><i>Time</i> magazine named her one of the 100 most influential people in the world in 2019.</p>', 'actors/brie-larson_Cover.jpg'),
(16, 'Bryan', '', 'Cranston', 'M', '<p>Bryan Lee Cranston was born on March 7, 1956, in Hollywood, California, the second of three children born to radio actress Annalisa (née Sell; 1923-2004) and actor and former amateur boxer Joseph Louis Cranston (1924-2014). His father was of Austrian-Jewish, German, and Irish descent, while his mother was the daughter of German immigrants. He has an older brother, Kyle, and a younger sister, Amy. Cranston was raised in Canoga Park, California. Cranston\'s father held many jobs before deciding to become an actor, but did not secure enough roles to provide for his family. He eventually walked out on the family when Cranston was 11 years old, and they did not see each other again until a 22-year-old Cranston and his brother decided to track their father down. He then maintained a relationship with his father until his father\'s death in 2014.</p>\r\n<p>Cranston has claimed that he based his portrayal of Walter White on his own father, who had a slumped posture \"like the weight of the world was on his shoulders\". After his father left, he was raised partly by his grandparents, living on their poultry farm in Yucaipa, California. He has called his parents \"broken people\" who were \"incapacitated as far as parenting\" and caused the family to lose their house in a foreclosure. In 1968, when he was 12 years old, he encountered a young Charles Manson while riding horses with his teenage cousin at the Spahn Ranch. This happened about a year before Manson ordered the Tate-LaBianca murders. Cranston graduated from Canoga Park High School, where he was a member of the school\'s chemistry club, and earned an associate\'s degree in police science from Los Angeles Valley College in 1976.</p>\r\n<p>Mr. Cranston is best known for his roles as Walter White on the AMC crime drama <i>Breaking Bad</i>, Hal on the Fox sitcom <i>Malcolm in the Middle</i>, and Dr. Tim Whatley on the NBC sitcom <i>Seinfeld</i>. Cranston\'s performance as Walter White on <i>Breaking Bad</i> is widely regarded as one of the best performances in television history.</p>\r\n<p>For <i>Breaking Bad</i>, Cranston won the Primetime Emmy Award for Outstanding Lead Actor in a Drama Series four times (2008-2010, 2014), including three consecutive wins, the second time in television history after Bill Cosby in <i>I Spy</i> during the 1960s. After becoming one of the producers of <i>Breaking Bad</i> in 2011, he also won the award for Outstanding Drama Series twice. Cranston was also nominated three times for the Outstanding Supporting Actor in a Comedy Series for his role in <i>Malcolm in the Middle</i>. His role in <i>Breaking Bad</i> also earned him five Golden Globe nominations, with one win in 2014, nine Screen Actors Guild Award nominations, with four wins, and six Satellite Award nominations, with four wins. In June 2014, he won a Tony Award for Best Actor in a Play for his portrayal of Lyndon B. Johnson in the play <i>All the Way</i> on Broadway, a role he reprised in the television film of the same name, which debuted on HBO in May 2016. In April 2018, he won the Laurence Olivier Award for Best Actor for his portrayal of Howard Beale in <i>Network</i> at the National Theatre, London. For the film <i>Trumbo</i> (2015), he received widespread acclaim and was nominated for the Academy Award for Best Actor.</p>\r\n<p>Cranston has directed episodes of various television series, including seven episodes of <i>Malcolm in the Middle</i>, three episodes of <i>Breaking Bad</i>, two episodes of <i>Modern Family</i>, one episode of <i>The Office</i>, and ten episodes of <i>Sneaky Pete</i>. He has also appeared in several acclaimed films, such as <i>Saving Private Ryan</i> (1998), <i>Little Miss Sunshine</i> (2006), <i>Drive</i> (2011), <i>Argo</i> (2012), and <i>Godzilla</i> (2014). In 2015, Cranston, together with David Shore, executive produced and wrote the story for the Amazon Studios original crime drama <i>Sneaky Pete</i>.</p>', 'actors/bryan-cranston_Cover.jpg'),
(17, 'Casey', '', 'Affleck', 'M', '<p>Caleb Casey McGuire Affleck-Boldt was born on August 12, 1975 in Falmouth, Massachusetts, to Christopher Anne \"Chris\" (née Boldt) and Timothy Byers Affleck. The surname \"Affleck\" is of Scottish origin. He also has Irish, German, English, and Swiss ancestry. Affleck\'s maternal great-great grandfather, Heinrich Boldt, who is also known for the discovery of the Curmsun Disc, emigrated from Prussia in the late 1840s. Casey\'s mother was a Radcliffe College- and Harvard-educated elementary school teacher. His father worked sporadically as an auto mechanic, a carpenter, a bookie, an electrician, a bartender, and a janitor at Harvard University. In the mid-1960s, he had been a stage manager, director, writer and actor with the Theater Company of Boston. During Affleck\'s childhood, his father was \"a disaster of a drinker\", and his first experience of acting was \"reenacting what was happening at home\" during role play exercises at Alateen meetings.</p>\r\n<p>Following his parents\' divorce when he was 9, Affleck and his older brother, Ben, lived with their mother and visited their father weekly. He learned to speak Spanish during a year spent traveling around Mexico with his mother and brother when he was 10. The two siblings spent \"all of our time together, pretty much. Obviously at school we were in different grades, but we had the same friends.\" When Affleck was 14, his father moved to Indio, California to enter a rehabilitation facility, and later worked there as an addiction counselor. Affleck reconnected with his father during visits to California as a teenager: \"I got to know him, really, because he was sober for the first time ... The man I knew before that was just completely different.\"</p>\r\n<p>Growing up in a politically active, liberal household in Central Square, Cambridge, Affleck and his brother were surrounded by people who worked in the arts, were regularly taken to the theater by their mother, and were encouraged to make their own home movies. The brothers sometimes appeared in local weather commercials and as movie extras because of their mother\'s friendship with a local casting director. Casey acted in numerous high school theater productions while a student at Cambridge Rindge and Latin School. He has said he \"wouldn\'t be an actor\" if not for his high school theater teacher Gerry Speca: \"He kind of turned me on to acting, why it can be fun, how it can be rewarding.\"</p>\r\n<p>At the age of 18, Affleck moved to Los Angeles for a year to pursue an acting career, and lived with his brother and their childhood friend Matt Damon. Despite having \"the best possible first experience\" while filming <i>To Die For</i>, he spent much of the year working as a busboy at a restaurant in Pasadena and decided to move to Washington, D.C., to study politics at George Washington University. He soon transferred to Columbia University in New York City, where he followed the core curriculum for a total of two years. However, he did not graduate: \"I would do a semester of school, go do a movie ... Opportunities kept presenting themselves that were hard for me to turn down ... By then, I didn\'t really have roots at the school or a group of friends.\"</p>\r\n<p>Mr. Affleck began his career as a child actor, appearing in the PBS television film <i>Lemon Sky</i> (1988) and the miniseries <i>The Kennedys of Massachusetts</i> (1990). He later appeared in three Gus Van Sant films - <i>To Die For</i> (1995), <i>Good Will Hunting</i> (1997), and <i>Gerry</i> (2002) - and in Steven Soderbergh\'s comedy heist trilogy <i>Ocean\'s Eleven</i> (2001), <i>Ocean\'s Twelve</i> (2004), and <i>Ocean\'s Thirteen</i> (2007). His first leading role was in Steve Buscemi\'s independent comedy-drama <i>Lonesome Jim</i> (2006).</p>\r\n<p>Affleck\'s breakthrough was in 2007, when he was nominated for the Academy Award for Best Supporting Actor for his performance in the Western drama <i>The Assassination of Jesse James by the Coward Robert Ford</i> and acted in the crime drama <i>Gone Baby Gone</i>, directed by his brother Ben Affleck. In 2010, he directed the mockumentary <i>I\'m Still Here</i>. He then had a string of successful films in the early 2010s, with <i>Tower Heist</i>, <i>ParaNorman</i>, and <i>Interstellar</i>, and received particular praise for his performance as an outlaw in the indie film <i>Ain\'t Them Bodies Saints</i>.</p>\r\n<p>In 2016, Affleck starred as the lead in the drama film <i>Manchester by the Sea</i>. For his performance as Lee Chandler, a man grieving for the loss of his children he won the Golden Globe, BAFTA and Academy Award for Best Actor, and received a Screen Actors Guild Award nomination. In 2017, Affleck received critical acclaim for his leading role in the supernatural drama film <i>A Ghost Story</i>.</p>', 'actors/casey-affleck_Cover.png'),
(18, 'Cate', '', 'Blanchett', 'F', '<p>Catherine Elise Blanchett was born on 14 May 1969 in the Melbourne suburb of Ivanhoe. Her Australian mother, June Blanchett (born Gamble), worked as a property developer and teacher, and her American father, Robert DeWitt Blanchett, Jr., a Texas native, was a United States Navy Chief Petty Officer who later worked as an advertising executive. The two met when Blanchett\'s father\'s ship broke down in Melbourne. When Blanchett was 10, her father died of a heart attack, leaving her mother to raise the family on her own. Blanchett is the middle of three children, she has an older brother Bob Blanchett (born 1968), and a younger sister Genevieve Blanchett (born 1971). Her ancestry includes English, some Scottish, and remote French roots.</p>\r\n<p>Blanchett has described herself as being \"part extrovert, part wallflower\" during childhood. She had a penchant for dressing in traditionally masculine clothing, and went through goth and punk phases during her teenage years, and shaved her head at one point. She attended primary school in Melbourne at Ivanhoe East Primary School; for her secondary education, she attended Ivanhoe Girls\' Grammar School and then Methodist Ladies\' College, where she explored her passion for the performing arts. In her late teens and early twenties, she worked at a nursing home in Victoria. She studied economics and fine arts at the University of Melbourne but dropped out after one year to travel overseas. While in Egypt, Blanchett was asked to play an American cheerleader, as an extra in the Egyptian boxing movie, <i>Kaboria</i>; in need of money, she accepted. Upon her return to Australia, she moved to Sydney and enrolled in the National Institute of Dramatic Art (NIDA) to pursue an acting career. She graduated from NIDA in 1992 with a Bachelor of Fine Arts.</p>\r\n<p>After graduating from the National Institute of Dramatic Art, Ms. Blanchett began her acting career on the Australian stage, taking on roles in <i>Electra</i> in 1992 and <i>Hamlet</i> in 1994. She came to international attention for portraying Elizabeth I of England in the drama film <i>Elizabeth</i> (1998), for which she won the BAFTA Award for Best Actress and earned her first nomination for the Academy Award for Best Actress. Her portrayal of Katharine Hepburn in the biographical drama <i>The Aviator</i> (2004), earned her the Academy Award for Best Supporting Actress, and she won Best Actress for playing a neurotic divorcée in the black comedy-drama <i>Blue Jasmine</i> (2013). Her other Oscar-nominated roles were in the dramas <i>Notes on a Scandal</i> (2006), <i>Elizabeth: The Golden Age</i> (2007), <i>I\'m Not There</i> (2007), and <i>Carol</i> (2015).</p>\r\n<p>Blanchett\'s most commercially successful films include <i>The Talented Mr. Ripley</i> (1999), Peter Jackson\'s <i>The Lord of the Rings</i> trilogy (2001-2003) and <i>The Hobbit</i> trilogy (2012-2014), <i>Babel</i> (2006), <i>The Curious Case of Benjamin Button</i> (2008), <i>Cinderella</i> (2015), <i>Thor: Ragnarok</i> (2017), and <i>Ocean\'s 8</i> (2018). From 2008 to 2013, Blanchett and her husband Andrew Upton served as the artistic directors of the Sydney Theatre Company. Some of her stage roles during this period were in revivals of <i>A Streetcar Named Desire</i>, <i>Uncle Vanya</i>, and <i>The Maids</i>. She made her Broadway debut in 2017 with <i>The Present</i>, for which she received a Tony Award nomination.</p>\r\n<p>Blanchett has been awarded the Centenary Medal by the Australian government, who made her a companion of the Order of Australia in 2017. She was appointed Chevalier of the Order of Arts and Letters by the French government in 2012. She has been presented with a Doctor of Letters from the University of New South Wales, University of Sydney, and Macquarie University. In 2015, she was honoured by the Museum of Modern Art and received the British Film Institute Fellowship.</p>\r\n<p>In total, she has received many accolades, including two Academy Awards, three Golden Globe Awards, and three BAFTA Awards. <i>Time</i> named her one of the 100 most influential people in the world in 2007, and in 2018, she was ranked among the highest-paid actresses in the world.</p>', 'actors/cate-blanchett_Cover.jpeg'),
(19, 'Claire', '', 'Foy', 'F', '<p>Claire Elizabeth Foy was born in Stockport. She has said that her mother, Caroline, comes from \"a massive Irish family\". Her maternal grandparents were from Dublin and Kildare, respectively. She grew up in Manchester and Leeds, the youngest of three children. Her family later moved to Longwick, Buckinghamshire, for her father\'s job as a salesman for Rank Xerox. Her parents divorced when she was eight.</p>\r\n<p>Foy attended Aylesbury High School, a girls\' grammar school, from the age of twelve; she then attended Liverpool John Moores University, studying drama and screen studies. She also trained in a one-year course at the Oxford School of Drama. She graduated in 2007 and moved to Peckham to share a house \"with five friends from drama school\".</p>\r\n<p>While at the Oxford School of Drama, Foy appeared in the plays <i>Top Girls</i>, <i>Watership Down</i>, <i>Easy Virtue</i> and <i>Touched</i>. After appearing on television, she made her professional stage debut in <i>DNA</i> and <i>The Miracle</i>, two of a trio of single acts directed by Paul Miller at the Royal National Theatre in London (the third was <i>Baby Girl</i>).</p>\r\n<p>Foy starred as the protagonist Amy Dorrit in BBC series <i>Little Dorrit</i>, and was nominated for an RTS Award. She went on to appear in TV film <i>Going Postal</i> and in the medieval adventure film <i>Season of the Witch</i> alongside Nicolas Cage. Foy starred in the BBC revival of <i>Upstairs Downstairs</i> as Lady Persephone, and co-starred in the Channel 4 serial <i>The Promise</i>, broadcast in February 2011.</p>\r\n<p>Foy played a lead role of Helen in the TV movie <i>The Night Watch</i>, which was based on a Sarah Waters novel. She returned to the stage in February 2013 as Lady Macbeth, alongside James McAvoy in the title role, in <i>Macbeth</i> at the Trafalgar Studios.</p>\r\n<p>In 2015, Foy played the English queen Anne Boleyn in the six-part drama serial, <i>Wolf Hall</i>. Foy\'s performance as Boleyn was met with critical praise, and compared to Geneviève Bujold\'s iconic performance in <i>Anne of the Thousand Days</i>. Foy would go on to be nominated for the 2016 British Academy Television Award for Best Actress.</p>\r\n<p>In 2016, Foy began portraying the young Queen Elizabeth II in Peter Morgan\'s Netflix biographical drama series <i>The Crown</i>, opposite Matt Smith as her consort Prince Philip, Duke of Edinburgh and John Lithgow as Sir Winston Churchill. Her performance earned her the Golden Globe Award for Best Actress - Television Series Drama and the Screen Actors Guild Award for Outstanding Performance by a Female Actor in a Drama Series. She was also nominated for the BAFTA TV Award for Best Actress and the Primetime Emmy Award for Outstanding Lead Actress in a Drama Series. She reprised the role in the second season, before the role passed to actress Olivia Colman, who will portray the queen in middle-age. In 2017, Foy starred as Diana Cavendish in the biographical drama film <i>Breathe</i>, opposite Andrew Garfield as Robin Cavendish.</p>\r\n<p>Foy then starred in Steven Soderbergh\'s psychological thriller <i>Unsane</i>; portrayed the vigilante Lisbeth Salander in the thriller <i>The Girl in the Spider\'s Web</i>; and Janet Shearon, wife of American astronaut Neil Armstrong, in Damien Chazelle\'s biopic <i>First Man</i> (all 2018). For the latter, she was nominated for the Golden Globe Award for Best Supporting Actress - Motion Picture, the Critics\' Choice Award for Best Supporting Actress, and the British Academy of Film and Television Arts Award for Best Supporting Actress.</p>', 'actors/claire-foy_Cover.jpg'),
(20, 'Courtney', 'B.', 'Vance', 'M', '<p>Courtney Bernard Vance was born on March 12, 1960 in Detroit, Michigan, the son of Leslie Anita (Daniels), a librarian and Conroy Vance, a grocery store manager and benefits administrator. He attended Detroit Country Day School and later graduated from Harvard University with a Bachelor of Arts degree. While attending Harvard, Vance was already working as an actor at the Boston Shakespeare Company. He earned a Master of Fine Arts degree later at Yale School of Drama where he met fellow student and future wife Angela Bassett.</p>\r\n<p>Vance has earned three Tony Award nominations. He won Tony Award for Best Featured Actor in a Play for his performance as Hap Hairston in Nora Ephron\'s <i>Lucky Guy</i> at the 67th Tony Awards (2013). He was nominated for Best Featured Actor in a Play for his role as Cory in August Wilson\'s Pulitzer Prize-winning and Tony Award for Best Play-winning play <i>Fences</i> at the 41st Tony Awards (1987). He was nominated for Tony Award for Best Actor in a Play for his performance as Paul in John Guare\'s <i>Six Degrees of Separation</i> at the 45th Tony Awards (1991). In 1987, he won a Clarence Derwent Award for his role as Cory Maxson in <i>Fences</i>.</p>\r\n<p>Prior to joining the cast of <i>Law & Order: Criminal Intent</i>, Vance appeared on the original <i>Law & Order</i> series twice: in a minor role in the first-season episode \"By Hooker, By Crook\", and in a major role in the fifth-season episode \"Rage\".</p>\r\n<p>His early feature film credits include <i>Hamburger Hill</i>, <i>The Hunt for Red October</i>, <i>The Last Supper</i>, <i>Dangerous Minds</i>, and <i>The Adventures of Huck Finn</i>. More recently, he appeared in Robert Altman\'s <i>Cookie\'s Fortune</i>, Penny Marshall\'s <i>The Preacher\'s Wife</i>, and in Clint Eastwood\'s <i>Space Cowboys</i>. Vance also starred in <i>Love and Action in Chicago</i>, a romantic comedy which he also co-produced. Vance played Black Panther Bobby Seale in the Melvin and Mario Van Peebles docudrama <i>Panther</i>. In 2008 and 2009, he guest starred in the final season of <i>ER</i>, alongside his wife Angela Bassett. He was also in <i>Hurricane Season</i></p>\r\n.<p>On December 2, 2008, <i>TV Guide</i> reported that Vance has been cast as the Los Angeles bureau chief of the FBI in the new ABC pilot <i>FlashForward</i>, which is based on a Robert J. Sawyer novel, and is said to be a possible \"companion show\" to <i>Lost</i>. In 2011, he starred in the American horror film <i>Final Destination 5</i>. Vance is set for the lead in the German-American apocalypse thriller <i>The Divide</i>.</p>\r\n<p>He also appeared in a Disney Channel Original Movie titled <i>Let It Shine</i>, where he played the Pastor Jacob Debarge, the main character\'s father. Vance co-starred with Tyler James Williams, Trevor Jackson, Coco Jones, Brandon Mychal Smith, and Dawnn Lewis. It was the third time Vance portrayed a pastor in a motion picture (the first being <i>The Preacher\'s Wife</i> and the second being <i>Joyful Noise</i>).</p>\r\n<p>Vance has also provided the voiceover for the National Football League\'s \"You Want the NFL, Go to the NFL\" television spots.</p>\r\n<p>He appeared as Chief Tommy Delk on the TNT series, <i>The Closer</i> from 2010 to 2011 (Season 6-7). Vance also played the role of Attorney Benjamin Brooks on four episodes of ABC\'s <i>Revenge</i>. In 2015, he portrayed Miles Dyson in <i>Terminator Genisys</i>.</p>\r\n<p>In 2016, he played the role of Johnnie Cochran in FX\'s <i>American Crime Story</i>, which tells the story of the O. J. Simpson murder case. The series premiered on February 2, 2016, and his performance was critically acclaimed by critics.</p>\r\n<p>In 2018, he appeared as Neil Beeby in the Peter Hedges film <i>Ben Is Back</i>, opposite Julia Roberts and Lucas Hedges. He has also been cast opposite Niecy Nash in Prentice Penny\'s feature film directorial debut, the Netflix Original Movie <i>Uncorked</i> set for a 2019 release.</p>', 'actors/courtney-b-vance_Cover.jpg'),
(21, 'Damian', '', 'Lewis', 'M', '<p>Damian Watcyn Lewis was born in St John\'s Wood, London, the elder son of Charlotte Mary (née Bowater) and John Watcyn Lewis, a City insurance broker with Lloyd\'s. His paternal grandparents were Welsh. His maternal grandfather was Lord Mayor of London Sir Ian Bowater and his maternal grandmother\'s ancestors include Lord Dawson of Penn (a doctor to the Royal Family) and the philanthropist and baronet Sir Alfred Yarrow, who was of partial Sephardic Jewish descent. He has stated that he \"went to English boarding schools and grew up around people very much like Soames and in a milieu very much like the Forsytes\'\".</p>\r\n<p>As a child, Lewis made several visits to the U.S. to visit relatives during his summers. He first decided to become an actor at age 16. He was educated at the independent Ashdown House School in Forest Row, East Sussex, and at Eton College. He graduated from the Guildhall School of Music and Drama in 1993, after which he served as a stage actor for the Royal Shakespeare Company.</p>\r\n<p>During his time with the RSC, he played Borgheim in Adrian Noble\'s production of Henrik Ibsen\'s <i>Little Eyolf</i> and Posthumus in William Shakespeare\'s <i>Cymbeline</i>. He also starred in another of Ibsen\'s plays, as Karsten Bernick in <i>Pillars of the Community</i> at the National Theatre in November 2005.</p>\r\n<p>Lewis once worked as a telemarketer selling car alarms, a job he detested. He appeared in <i>Robinson Crusoe</i> (1997) as Patrick Conner. He appeared in Jonathan Kent\'s production of <i>Hamlet</i>, playing Laertes. This production was seen by Steven Spielberg, who later cast Lewis as Richard Winters in <i>Band of Brothers</i>, the first role of several that required him to have a credible American accent.</p>\r\n<p>Subsequently, Lewis portrayed Soames Forsyte in the ITV series <i>The Forsyte Saga</i>, which earned him rave reviews. He returned to the US to star in <i>Dreamcatcher</i>, a Stephen King film about a man who becomes possessed by an evil alien. The character is American but when possessed he takes on a British accent. On the heels of this role, he starred in <i>Keane</i> as a Manhattanite with a fragile mental state who is searching for his missing daughter. Despite the film\'s poor box-office performance, the role won Lewis rave reviews.</p>\r\n<p>He played Jeffrey Archer in the TV special <i>Jeffrey Archer: The Truth</i>. Since 2004, he has appeared in a number of films, as well as the 2005 BBC TV adaptation of Shakespeare\'s comedy <i>Much Ado About Nothing</i>, as part of the <i>ShakespeaRe-Told</i> season. Lewis played the role of Yassen Gregorovich in the film <i>Stormbreaker</i>. In 2006, he appeared in Stephen Poliakoff\'s BBC drama <i>Friends and Crocodiles</i>. He has appeared on BBC\'s <i>Have I Got News for You</i> as guest host several times; on 10 November 2006, 1 May 2009, 18 November 2010, 27 April 9 November 2012 and 31 October 2014.</p>\r\n<p>In 2008, Lewis starred as the main character Charlie Crews in the US television series <i>Life</i> on NBC. The show premiered in the U.S. on 26 September 2007 and was affected by the 2007-08 Writers Guild of America strike. Only half of the first season\'s shows were produced. Regardless, the show won a 2008 AFI Award for best television series.</p>\r\n<p>Lewis appeared, the following year, in the lead role in <i>The Baker</i>, a film directed by his brother, Gareth. Damian took a supporting role of Rizza in <i>The Escapist</i>, which he also helped produce. He led the cast in Martin Crimp\'s version of Molière\'s comedy, <i>The Misanthrope</i>, which opened in December 2009 at the Comedy Theatre, London. Other cast members included Tara Fitzgerald, Keira Knightley and Dominic Rowan.</p>\r\n<p>Since 2010, Lewis has played Tory Prime Minister Simon Laity in two seasons of <i>Number 10</i> on BBC Radio 4.</p>\r\n<p>He played Gareth, the father of an 11-year-old Liverpool F.C. fan, in the 2011 film <i>Will</i>.</p>\r\n<p>From 2011 to 2013, Lewis had a starring role as Gunnery Sergeant Nicholas Brody in the Showtime series <i>Homeland</i>. In 2013, he narrated poetry for <i>The Love Book App</i>, an \"interactive anthology of love literature developed by Allie Byrne Esiri\".</p>\r\n<p>Since 2016, he stars as billionaire Bobby Axelrod in the Showtime series <i>Billions</i>.</p>\r\n<p>Lewis was appointed an Officer of the Order of the British Empire (OBE) in the 2014 Birthday Honours for services to drama.</p>', 'actors/damian-lewis_Cover.jpg'),
(22, 'Darren', '', 'Criss', 'M', '<p>Darren Everett Criss was born in San Francisco, California, the youngest child of Cerina and Charles William Criss, an investment banker and a patron of the arts. He has an older brother, Charles \"Chuck\" Criss, who is a member of the band Freelance Whales.</p>\r\n<p>Criss is Eurasian - his mother is a native of Cebu, Philippines, while his father, a native of Pittsburgh, Pennsylvania, is of English, German, and Irish descent. Criss was raised primarily in San Francisco, apart from 1988-92, when the family resided in Honolulu, Hawaii, where his father, Charles started EastWest Bank, serving as chairman and CEO.</p>\r\n<p>Criss attended Roman Catholic schools. He completed his elementary education at Stuart Hall for Boys, and later graduated from Saint Ignatius College Preparatory in 2005. In 2009, Criss obtained his Bachelor of Fine Arts from the University of Michigan, majoring in Theater Performance and minoring in Musicology and Italian.</p>\r\n<p>Criss\' interest in music started in early childhood; at age five, he began taking violin lessons and was classically trained for the next fifteen years. Criss taught himself how to play other instruments, including guitar, piano, mandolin, harmonica, and drums. In high school, Criss immersed himself in music - he held the position of concertmaster in the school orchestra, he fronted his own band, and was voted \"most likely to win a Grammy\" by his peers. When he was fifteen, Criss began learning music composition and wrote his first song, which he later used as the title track of his first EP <i>Human</i>, released in 2009.</p>\r\n<p>Criss also showed an interest for the performing arts. At age ten, he was accepted into the American Conservatory Theater (Young Conservatory program) where he studied theater performance throughout his formative years. At St Ignatius, he was a member of the performing arts program and acted in work, including, <i>The Music Man</i>, <i>The Diary of Anne Frank</i>, and <i>Fiddler on the Roof</i>. He was active as both an actor and director in the University of Michigan\'s student-run theater organization Basement Arts. In 2008, he spent a semester abroad studying Italian theater at the Accademia dell\'Arte in Arezzo, Italy.</p>\r\n<p>A founding member and co-owner of StarKid Productions, a musical theater company based in Chicago, Mr. Criss first garnered attention playing the lead role of Harry Potter in, and writing most of the music and lyrics for, StarKid\'s musical production of <i>A Very Potter Musical</i>. The theater troupe made <i>Billboard</i> history when their original album, <i>Me and My Dick</i>, became the first charting student-produced musical recording, debuting at number eleven on the Top Cast Albums chart in 2010. Criss has also starred on Broadway in <i>How to Succeed in Business Without Really Trying</i> and <i>Hedwig and the Angry Inch</i>. In 2015, Criss co-founded Elsie Fest which is touted as \"New York City\'s first outdoor music festival celebrating tunes from the stage and screen\".</p>\r\n<p>Criss is best known for his portrayal of Blaine Anderson on the Fox musical comedy-drama series <i>Glee</i> from 2010 until 2015. Initially appearing as the lead vocalist of <i>Glee\'s</i> Dalton Academy Warblers, Criss\' first number, a cover version of \"Teenage Dream\", became the fastest-selling <i>Glee</i> single, reached number eight on the <i>Billboard</i> Hot 100, and was certified gold in the US. The Warblers have sold over 1.3 million tracks, and the soundtrack album, <i>Glee: The Music Presents the Warblers</i> (2011), peaked at number two on the US <i>Billboard</i> 200. He was nominated for an Emmy Award in 2015 for writing the song \"This Time\" for the <i>Glee</i> finale.</p>\r\n<p>In March 2017, Criss debuted his indie pop band Computer Games along with his brother Chuck Criss. Their first album, <i>Lost Boys Life</i> EP features 4 songs written by the duo. The lead single \"Every Single Night\" debuted at #2 on Billboard\'s \"Hot Singles\". In December 2017, Criss released a 5-track solo EP titled <i>Homework</i>. The EP debuted #1 on Billboard\'s Heatseekers Chart and #7 on Billboard\'s Independent Albums Chart.</p>\r\n<p>In addition to his music endeavors, Criss starred in the second installment of Ryan Murphy\'s <i>American Crime Story</i>. Subtitled <i>The Assassination of Gianni Versace</i> (2018), Criss\'s portrayal of spree killer Andrew Cunanan received acclaim from critics, and earned him an Emmy win for Outstanding Lead Actor in a Limited Series or Movie and a Golden Globe Award for Best Actor - Miniseries, or Television Film.</p>', 'actors/darren-criss_Cover.jpg'),
(23, 'Donald', '', 'Glover', 'M', '<p>Donald McKinley Glover Jr. was born on September 25, 1983 at Edwards Air Force Base, California. He was raised in Stone Mountain, Georgia. His mother, Beverly (<i>née</i> Smith), is a retired daycare provider, and his father, Donald Glover Sr., was a retired postal worker. His parents also served as foster parents for 14 years. Glover was raised as a Jehovah\'s Witness. His younger brother, Stephen, would later become a writer and producer who collaborates with him. He also has a sister named Brianne. Glover attended Lakeside High School and DeKalb School of the Arts, and was voted \"Most Likely to Write for <i>The Simpsons</i>\" in his high school yearbook. In 2006, he graduated from the New York University Tisch School of the Arts with a degree in Dramatic Writing. While at Tisch, he self-produced the independent mixtape <i>The Younger I Get</i>, which was not released and was later disowned by Glover for being the \"too-raw ramblings\" of what he calls a \"decrepit Drake\". He also began DJing and producing electronic music under the moniker MC D-later as mcDJ-remixing Sufjan Stevens\' album <i>Illinois</i> (2005).</p>\r\n<p>After coming to public attention for his work with Derrick Comedy while a student at New York University, he was hired at age 23 by Tina Fey as a writer for the NBC sitcom <i>30 Rock</i>. He later portrayed community college student Troy Barnes on the NBC sitcom <i>Community</i>. He stars in the FX series <i>Atlanta</i>, which he created and occasionally directs. For his work on <i>Atlanta</i>, Glover won various accolades, including Primetime Emmy Awards for Outstanding Lead Actor in a Comedy Series and Outstanding Directing for a Comedy Series, and Golden Globe Awards for Best Television Series - Musical or Comedy and Best Actor - Television Series Musical or Comedy. In film, Mr. Glover has appeared in <i>Mystery Team</i> (2009), <i>The Lazarus Effect</i>, <i>Magic Mike XXL</i>, <i>The Martian</i> (2015), <i>Spider-Man: Homecoming</i> (2017) and as the young Lando Calrissian in <i>Solo: A Star Wars Story</i> (2018). Glover starred in and produced his own short film, <i>Guava Island</i> (2019). He will also provide the voice of the adult Simba in a remake of the Disney film <i>The Lion King</i> (2019).</p>\r\n<p>After several self-released albums and mixtapes, Glover signed to Glassnote Records in 2011. He released his first studio album, <i>Camp</i>, on November 15, 2011, to generally positive reviews. His second studio album, <i>Because the Internet</i>, was released on December 10, 2013. Glover\'s third album, <i>\"Awaken, My Love!\"</i>, was released on December 2, 2016, spawning the single \"Redbone\", which peaked at number 12 on the <i>Billboard</i> Hot 100, and eventually earned him a Grammy Award for Best Traditional R&B Performance. In 2017, Glover was included on the annual <i>Time</i> 100 list of the most influential people in the world. In May 2018, Glover released the song and video for \"This Is America\", which debuted at number-one on the Hot 100. The song was nominated and won four Grammy Awards at the 61st Annual Grammy Awards: Record of the Year, Song of the Year, Best Rap/Sung Performance and Best Music Video. In early July 2018, Glover\'s EP <i>Summer Pack</i> was released which included the Grammy nominated for Best R&B Song song \"Feels Like Summer\".</p>\r\n<p>He performs music under the stage name Childish Gambino and as a DJ under the name mcDJ.</p>', 'actors/donald-glover_Cover.jpeg'),
(24, 'Eddie', '', 'Redmayne', 'M', '<p>Edward John David Redmayne was born on 6 January 1982 in the London borough of Westminster. His mother, Patricia (née Burke), runs a relocation business, and his father, Richard Redmayne, is a businessman in corporate finance. His paternal great-grandfather was Sir Richard Redmayne, a civil and mining engineer. He has an older brother, a younger brother, and an older half-brother and half-sister. From the age of 10, Redmayne attended Jackie Palmer Stage School, where he found his love for acting and singing, alongside fellow star James Corden.</p>\r\n<p>He attended Eaton House, Colet Court, and then Eton College, where he was in the same year as Prince William. He went on to read History of Art at Trinity College, Cambridge, from where he graduated with 2:1 Honours in 2003. Despite being colourblind, Redmayne wrote his dissertation on Yves Klein\'s signature colour, International Klein Blue.</p>\r\n<p>Mr. Redmayne began his professional acting career as a youth in West End theatre, before making his screen debut in 1998 with guest television appearances. His first film roles came in 2006 with <i>Like Minds</i> and <i>The Good Shepherd</i>, and he went on to play supporting roles in several films.</p>\r\n<p>On stage, Redmayne starred in the productions of <i>Red</i> from 2009 to 2010 and <i>Richard II</i> from 2011 to 2012. The former won him the Tony Award for Best Featured Actor in a Play. His film breakthrough came with the roles of Colin Clark in the biographical drama <i>My Week with Marilyn</i> (2011) and Marius Pontmercy in Tom Hooper\'s musical <i>Les Misérables</i> (2012).</p>\r\n<p>In 2014, Redmayne portrayed Stephen Hawking in <i>The Theory of Everything</i>, winning the Academy Award for Best Actor. The following year, he played Lili Elbe, in Hooper\'s <i>The Danish Girl</i>, for which he received a second Oscar nomination. In 2016, he began starring as Newt Scamander in the <i>Fantastic Beasts</i> film series.</p>\r\n<p>Redmayne was appointed Officer of the Order of the British Empire (OBE) in the 2015 Birthday Honours for services to drama. In August 2014, he was appointed ambassador of film education charity Into Film.</p>', 'actors/eddie-redmayne_Cover.jpg');
INSERT INTO `actors` (`id`, `first_name`, `middle_name`, `last_name`, `gender`, `about`, `img`) VALUES
(25, 'Edie', '', 'Falco', 'F', '<p>Falco was born in New York City\'s Brooklyn borough, to Judith Anderson, an actress, and Frank Falco, a jazz drummer who later worked for an advertising agency. Her father was of Italian descent and her mother\'s ancestry was Swedish and English. Falco\'s siblings are Joseph, Paul, and Ruth. Her uncle is novelist, playwright, and poet Edward Falco, an English professor at Virginia Tech in Blacksburg, Virginia.</p>\r\n<p>From the age of four, she was raised on Long Island, moving with her family to Hicksville, followed by North Babylon, then West Islip. As a child she acted in plays at the Arena Players Repertory Theater in East Farmingdale, where her mother also performed.</p>\r\n<p>Her family eventually moved to Northport, where she attended high school and played Eliza Doolittle in a production of <i>My Fair Lady</i> during her senior year. Falco graduated from Northport High School in 1981. She attended the acting program at SUNY Purchase, along with fellow actors Stanley Tucci, Paul Schulze and Ving Rhames. She graduated in 1986 with a Bachelor of Fine Arts in acting.</p>\r\n<p>Early in her career, Falco made appearances on television shows like <i>Law & Order</i> and <i>Homicide: Life on the Street</i>. Tom Fontana, executive producer of <i>Homicide</i>, cast Falco as Eva Thormann, the wife of an injured police officer, after watching Falco\'s performance in <i>Laws of Gravity</i>, a 1992 film directed by Nick Gomez. Fontana said of her, \"She\'s an actress who\'s unadorned by any embroidery. She does everything with such simplicity and honesty, it\'s breathtaking.\" A struggling actress at the time, Falco said her salary from these television episodes paid for one month\'s worth of rent.</p>\r\n<p>Her first big break in films was a small speaking role in the 1994 Woody Allen film <i>Bullets over Broadway</i>. Her friendship with former SUNY Purchase classmate Eric Mendelsohn, who was the assistant to Allen\'s costume designer, Jeffrey Kurland, helped her to be cast in the role. Mendelsohn went on to direct Falco in his feature film <i>Judy Berlin</i>, for which he won Best Director honors at the Sundance Film Festival. Falco went on to star in Mendelsohn\'s next film <i>3 Backyards</i>, for which he won Best Director a second time.</p>\r\n<p>During this time, Falco appeared in the films <i>Trust</i>, <i>Cop Land</i>, <i>Private Parts</i> (nonspeaking part), <i>Random Hearts</i>. On Broadway, she appeared in the Tony Award-winning <i>Side Man</i> and in the revivals of <i>Frankie and Johnny in the Clair de Lune</i> opposite Stanley Tucci, and <i>\'night, Mother</i> opposite Brenda Blethyn.</p>\r\n<p>In 1997, Falco started portraying prison officer Diane Whittlesey, in the HBO series <i>Oz</i>. Falco got the role after working with Fontana on <i>Homicide</i>.</p>\r\n<p>Falco received her breakout role in the HBO drama, <i>The Sopranos</i>. The series premiered in 1999 and ended in 2007. She portrayed Carmela Soprano, wife of Mafia boss Tony Soprano. The series received wide acclaim, and is often considered to be one of the greatest television series of all time. For her role on the series, Falco won three Primetime Emmy Awards, two Golden Globe Awards, and five Screen Actors Guild Awards. As of 2008, Falco, <i>The X-Files</i> star Gillian Anderson, <i>Ugly Betty</i> star America Ferrera, and <i>30 Rock</i>\'s Tina Fey are the only actresses to have received a Golden Globe, an Emmy, and a SAG Award in the same year. Falco won these awards in 2003 for her performance as Carmela Soprano during the fourth season of <i>The Sopranos</i>. During her tenure on <i>The Sopranos</i>, Falco appeared in films such as <i>Freedomland</i>, and John Sayles\' <i>Sunshine State</i>, for which she received the Los Angeles Film Critics Award for Best Supporting Actress. She also guest starred on the television series <i>Will & Grace</i>.</p>\r\n<p>Falco starred as the title character in the Showtime dark comedy series <i>Nurse Jackie</i>, which premiered in June 8, 2009 and ended on June 28, 2015.</p>\r\n<p>In 2011, Falco played the part of Bananas in the Broadway revival of <i>House of Blue Leaves</i> in New York City with Ben Stiller and Jennifer Jason Leigh, for which she received her first and only Tony Award nomination. It was announced in January 2013 that Falco would star in Liz Flahive\'s <i>The Madrid</i> off-Broadway. The limited engagement, directed by Leigh Silverman, began previews on February 5 with an official opening February 26. Along with Falco, the play starred John Ellison, Christopher Evan Welch, Phoebe Strole, and Frances Sternhagen.</p>\r\n<p>In 2016, Falco started portraying Sylvia Wittel on the Louis CK series, <i>Horace and Pete</i>. The first episode was released on January 30, 2016, on C.K.\'s website without any prior announcements. New episodes premiered weekly until the tenth episode was released on April 2, 2016. In September 2017, she began portraying Leslie Abramson in the first season of the NBC true crime anthology series <i>Law & Order True Crime</i>, subtitled <i>The Menendez Murders</i>.</p>', 'actors/edie-falco_Cover.jpg'),
(26, 'Elisabeth', '', 'Moss', 'F', '<p>Known for her work in several television dramas, earning such accolades as two Primetime Emmy Awards and two Golden Globe Awards, which led <i>Vulture</i> to name her the \"Queen of Peak TV\".</p>\r\n<p>Elisabeth Singleton Moss was born and raised in Los Angeles, California, the daughter of Ron and Linda Moss, both of whom were musicians. Moss has one younger brother. She was raised a Scientologist. Her father is English. Her mother is of part Swedish descent.</p>\r\n<p>Initially, Moss had aspirations of becoming a professional dancer. In her adolescence, she traveled to New York City to study ballet at the School of American Ballet, after which she studied with Suzanne Farrell at the Kennedy Center in Washington, D.C. Moss continued to study dance throughout her teenage years, but began obtaining acting roles as well. In order to manage her education and career, she began homeschooling, and graduated in 1999 at age sixteen.</p>\r\n<p>Moss began acting in the early 1990s and first gained recognition for playing Zoey Bartlet, the youngest daughter of President Josiah Bartlet, in the NBC political drama series <i>The West Wing</i> (1999-2006). Wider recognition came for playing Peggy Olson, a secretary-turned-copywriter, in the AMC period drama series <i>Mad Men</i> (2007-2015). She won the Golden Globe Award for Best Actress - Miniseries or Television Film for playing a detective in the BBC miniseries <i>Top of the Lake</i> (2013), and she won the Primetime Emmy Award for Outstanding Lead Actress in a Drama Series and the Primetime Emmy Award for Outstanding Drama Series for producing and starring in the Hulu dystopian drama series <i>The Handmaid\'s Tale</i> (2017-present).</p>\r\n<p>In film, Moss has appeared in <i>Girl, Interrupted</i> (1999), <i>Virgin</i> (2003), <i>Truth</i> (2015), <i>The Square</i> (2017) and <i>Us</i> (2019). Her theatre work includes Broadway productions of David Mamet\'s <i>Speed the Plow</i> and Wendy Wasserstein\'s <i>The Heidi Chronicles</i>. For the latter, she received a nomination for the Tony Award for Best Actress in a Play. She has also appeared in the West End production of Lillian Hellman\'s <i>The Children\'s Hour</i>.</p>', 'actors/elisabeth-moss_Cover.jpg'),
(27, 'Emma', '', 'Stone', 'F', '<p>The recipient of numerous accolades, including an Oscar, a BAFTA Award, and a Golden Globe Award, she was the highest-paid actress in the world in 2017. Stone has appeared in <i>Forbes</i> Celebrity 100 in 2013 and 2017, and was featured by <i>Time</i> as one of the 100 most influential people in the world.</p>\r\n<p>Emily Jean Stone was born on November 6, 1988, in Scottsdale, Arizona, to Krista Jean Stone (<i>née</i> Yeager), a homemaker, and Jeffrey Charles Stone, the founder and CEO of a general-contracting company. Stone lived on the grounds of the Camelback Inn resort from the age of 12 to 15. She has a younger brother, Spencer. Her paternal grandfather, Conrad Ostberg Sten, was from a Swedish family that anglicized their surname to \"Stone\" when they immigrated to the United States through Ellis Island. She also has German, English, Scottish, and Irish ancestry.</p>\r\n<p>As an infant, Stone had baby colic and cried frequently; she consequently developed nodules and calluses on her vocal cords while she was a child. Stone has described herself as having been \"loud\" and \"bossy\" while growing up. She was educated at Sequoya Elementary School and attended Cocopah Middle School for the sixth grade. Although she did not like school, she has stated that her controlling nature meant that \"I made sure I got all As\". Stone suffered panic attacks as a child, which she says caused a decline in her social skills. She underwent therapy but states that it was her participation in local theater plays that helped cure the attacks.</p>\r\n<p>Stone started acting at age four; she wanted a career in sketch comedy initially, but shifted her focus toward musical theater, and took voice lessons for several years. Her acting debut, at the age of 11, came in a stage production of <i>The Wind in the Willows</i>, playing the part of Otter. The actress was homeschooled for two years, during which time she appeared in sixteen productions at Phoenix\'s Valley Youth Theatre-including <i>The Princess and the Pea</i>, </i>Alice\'s Adventures in Wonderland</i>, and <i>Joseph and the Amazing Technicolor Dreamcoat</i>-and performed with the theater\'s improvisational comedy troupe. Around this time, she traveled to Los Angeles and auditioned unsuccessfully for a role in Nickelodeon\'s <i>All That</i>. Her parents later sent her for private acting lessons with a local acting coach, who had worked at the William Morris Agency in the 1970s.</p>\r\n<p>Stone attended Xavier College Preparatory?-?an all-girl Catholic high school?-?as a freshman, but dropped out after one semester to become an actress. She prepared a PowerPoint presentation for her parents titled \"Project Hollywood\" (featuring Madonna\'s 2003 song \"Hollywood\") to convince them to let her move to California to pursue an acting career. In January 2004, she moved with her mother to an apartment in Los Angeles. She recalls: \"I went up for every single show on the Disney Channel and auditioned to play the daughter on every single sitcom\", adding, \"I ended up getting none.\" Between auditions for roles, she enrolled in online high-school classes, and worked part-time at a dog-treat bakery.</p>\r\n<p>When Stone registered for the Screen Actors Guild, the name \"Emily Stone\" was already taken. She initially chose to go by \"Riley Stone\", but after guest-starring in the NBC drama <i>Medium</i> and the Fox sitcom <i>Malcolm in the Middle</i>, she decided that she was more comfortable with \"Emma\". She chose to use \"Emma\" in honor of Emma Bunton, aka Baby Spice from the Spice Girls. She made her television debut as Laurie Partridge on the VH1 talent competition reality show <i>In Search of the New Partridge Family</i> (2004). The resulting show, retitled <i>The New Partridge Family</i> (2004), remained an unsold pilot. She followed this with a guest appearance in Louis C.K.\'s HBO series <i>Lucky Louie</i>. She auditioned to star as Claire Bennet in the NBC science fiction drama <i>Heroes</i> (2007) but was unsuccessful and later called this her \"rock bottom\" experience. In April 2007, she played Violet Trimble in the Fox action drama <i>Drive</i>, but the show was canceled after seven episodes.</p>\r\n<p>Stone made her feature film debut in Greg Mottola\'s comedy <i>Superbad</i> (2007), co-starring Michael Cera and Jonah Hill. The film tells the story of two high school students who go through a series of comic misadventures after they plan to buy alcohol for a party. To play the role of Hill\'s romantic interest, she dyed her hair red. A reviewer for <i>The Hollywood Reporter</i> found her \"appealing\", but felt that her role was poorly written. Stone has described the experience of acting in her first film as \"amazing ... [but] very different than other experiences I\'ve had since then\". The film was a commercial success, and earned her the Young Hollywood Award for Exciting New Face.</p>\r\n<p>The following year, Stone starred in the comedy <i>The Rocker</i> (2008) playing Amelia Stone, the \"straight face\" bass guitarist in a band; she learned to play the bass for the role. The actress, who describes herself as \"a big smiler and laugher\", has admitted that she found it difficult portraying a character whose personality traits were so different from her own. The film, and her performance, received negative reviews from critics and was a commercial failure. Her next release, the romantic comedy <i>The House Bunny</i>, performed better at the box-office, becoming a moderate commercial success. The film sees her play the president of a sorority, and perform a cover version of the Waitresses\' 1982 song \"I Know What Boys Like\". Reviews for the film were generally negative, though she was praised for her supporting role, and <i>TV Guide</i>\'s Ken Fox wrote of Stone that: \"She\'s positively incandescent, lighting up a movie that would be pretty dim without her.\"</p>\r\n<p>Stone appeared in three films released in 2009. The first of these was opposite Matthew McConaughey, Jennifer Garner and Michael Douglas in Mark Waters\' <i>Ghosts of Girlfriends Past</i>. Loosely based on Charles Dickens\' 1843 novella <i>A Christmas Carol</i>, the romantic comedy has her playing a ghost who haunts her former boyfriend. Critical reaction to the film was negative, though it was a modest commercial success. Her most financially profitable venture that year was Ruben Fleischer\'s $102.3 million-grossing horror comedy film <i>Zombieland</i>, in which she features alongside Jesse Eisenberg, Woody Harrelson and Abigail Breslin. In the film, she appeared as a con artist and survivor of a zombie apocalypse, in a role which <i>Empire</i>\'s Chris Hewitt found to be \"somewhat underwritten\". In a more positive review, the critic for <i>The Daily Telegraph</i> wrote: \"[T]he hugely promising Stone ... [is] a tough cookie who projects the aura of being wiser than her years.\" Stone\'s final release in 2009 was Kieran and Michelle Mulroney\'s <i>Paper Man</i>, a comedy-drama which disappointed critics.</p>\r\n<p>Stone provided the voice of an Australian Shepherd in <i>Marmaduke</i> (2010), a comedy from director Tom Dey, which is based on Brad Anderson\'s long-running comic strip of the same name. Her breakthrough came the same year with a starring role in <i>Easy A</i>, a teen comedy directed by Will Gluck. Partially based on Nathaniel Hawthorne\'s 1850 historical romance novel <i>The Scarlet Letter</i>, the film tells the story of Olive Penderghast (Stone), a high school student who becomes embroiled in a comic sex scandal after a false rumor circulates that she is sexually promiscuous. Stone read the script before the project was optioned for production, and pursued it with her manager while production details were being finalized. She found the script \"so different and unique from anything I\'d read before\", saying that it was \"funny and sweet\". When Stone discovered that the film had begun production, she met with Gluck, expressing her enthusiasm for the project. A few months later, the audition process started and she met again with Gluck, becoming one of the first actresses to audition. The film received positive critical reviews, and Stone\'s performance was considered its prime asset. Anna Smith of <i>Time Out</i> commented: \"Stone gives a terrific performance, her knowing drawl implying intellect and indifference with underlying warmth.\" With a total box office of $75 million, the film was a commercial success. Stone was nominated for a BAFTA Rising Star Award and a Golden Globe Award for Best Actress in a Musical or Comedy, and won the MTV Movie Award for Best Comedic Performance.</p>\r\n<p>In October 2010, Stone hosted an episode of NBC\'s late-night sketch comedy <i>Saturday Night Live</i>; her appearances included a sketch playing off her resemblance to Lindsay Lohan. Stone described it as \"the greatest week of my life\". She hosted it again in 2011, appeared in an episode in 2014, and in its 40th anniversary special in 2015. A brief appearance in the sex comedy <i>Friends with Benefits</i> (2011) reunited her with Gluck. She followed this with a supporting role in Glenn Ficarra and John Requa\'s romantic comedy <i>Crazy, Stupid, Love</i> (2011) alongside Steve Carell, Ryan Gosling and Julianne Moore. The film features her as a law school graduate, and the love interest of Gosling\'s character. Despite finding \"some inevitable collapses into convention\" in the film, Drew McWeeny of HitFix wrote that Stone \"ties the whole film together\". At the 2012 Teen Choice Awards, she won the Choice Movie Actress - Comedy award for her performance in the film. <i>Crazy, Stupid, Love</i> was a box office success, grossing $142.9 million worldwide with a production budget of $50 million.</p>\r\n<p>Disillusioned at being typecast as the \"sarcastic interest of the guy\", Stone co-starred with Viola Davis in Tate Taylor\'s period drama <i>The Help</i> (2011), a film she found to be challenging. The film is based on Kathryn Stockett\'s 2009 novel of the same name and is set in 1960s Jackson, Mississippi. She met with Taylor to express a desire to work in the film. Taylor has said: \"Emma was completely awkward and dorky, with her raspy voice, and she sat down and we got a little intoxicated and had a blast, and I just thought, \'God! God! This is Skeeter.\" She was cast as Eugenia \"Skeeter\" Phelan, an aspiring writer learning about the lives of the African-American maids. In preparation for the part, she trained to speak in a Southern dialect; she also educated herself on the Civil Rights Movement through literature and film. With a worldwide gross of $216 million against a budget of $25 million, <i>The Help</i> became Stone\'s most commercially successful film to that point. The film, and her performance, received positive reviews from critics. Writing for <i>Empire</i>, Anna Smith thought that Stone was \"well-meaning and hugely likable\" despite finding flaws in the character. The film was nominated for an Academy Award for Best Picture, and won Best Ensemble Cast from the Women Film Critics Circle and the Broadcast Film Critics Association.</p>\r\n<p>Stone declined a role in the action comedy film <i>21 Jump Street</i> after signing on to Marc Webb\'s 2012 film <i>The Amazing Spider-Man</i>, a reboot of Sam Raimi\'s <i>Spider-Man</i> series. She portrayed Gwen Stacy, the love interest of the title character (played by Andrew Garfield). Stone returned to a blond hair color for the role, having dyed it red previously. She told <i>The Vancouver Sun</i> that she felt responsible to educate herself about Spider-Man and admitted that she had not read the comics: \"My experience was with the Sam Raimi movies ... I always assumed that Mary Jane was his first love\", adding that she was only familiar with Stacy\'s character from Bryce Dallas Howard\'s portrayal in <i>Spider-Man 3</i>. <i>The Amazing Spider-Man</i> was a commercial success and was the seventh highest-grossing film of 2012 with global revenues of $757.9 million. <i>Entertainment Weekly</i>\'s Lisa Schwarzbaum found Stone \"irresistible\", and Ian Freer of <i>Empire</i> magazine was particularly impressed with Stone\'s and Garfield\'s performances. At the annual People\'s Choice Awards ceremony, she was nominated for three awards, including Favorite Movie Actress. Later that year, Stone voiced a role in the crime-based video game, <i>Sleeping Dogs</i>, which earned her a Spike Video Game Award for Best Performance by a Human Female nomination.</p>\r\n<p>Stone began 2013 with a voice role in DreamWorks\' <i>The Croods</i>, an animated feature nominated for an Academy Award for Best Animated Feature. This followed with an appearance in <i>Movie 43</i>, an anthology film which consists of sixteen short stories-she played the title role in the segment entitled \"Veronica\". The actress collaborated with Ryan Gosling and Sean Penn in Ruben Fleischer\'s <i>Gangster Squad</i> (2013), a crime thriller set in Los Angeles during the 1940s. <i>The New York Times</i>\' A. O. Scott dismissed the film as \"a hectic jumble of fedoras and zoot suits\", but praised her pairing with Gosling. Stone expressed a desire to work with Gosling on more projects.</p>\r\n<p>In 2014, Stone reprised the role of Gwen Stacy in <i>The Amazing Spider-Man 2</i>. In an interview with <i>Total Film</i>, the actress explained that her character was not dependent on the film\'s protagonist. \"She saves him more than he saves her. She\'s incredibly helpful to Spider-Man ... He\'s the muscle, she\'s the brains.\" Her performance was well received by critics; an <i>Empire</i> reviewer praised her for standing out in the film: \"Stone is the Heath Ledger of this series, doing something unexpected with an easily dismissed supporting character.\" The role earned her the Favorite Movie Actress award at the 2015 Kids\' Choice Awards. Later that year, Stone took on a role in Woody Allen\'s romantic comedy <i>Magic in the Moonlight</i>, a modest commercial success. A. O. Scott criticized her role, and pairing with Colin Firth, describing it as \"the kind of pedantic nonsense that is meant to signify superior intellect\".</p>\r\n<p>The black comedy-drama <i>Birdman</i>, from director Alejandro González Iñárritu, was Stone\'s final film release in 2014. Co-starring Michael Keaton and Edward Norton, the film features her in the role of Sam Thomson, the recovering-addict daughter of actor Riggan Thomson (Keaton), who becomes his assistant. Iñárritu created the character based on his experience with his daughter. <i>Birdman</i> was critically acclaimed, and was the most successful film at the 87th Academy Awards; it was nominated for nine awards, winning four, including Best Picture. The Movie Network considered it one of Stone\'s best performances to date and Robbie Collin of <i>The Daily Telegraph</i> was impressed with a monologue she delivers, which he thought was \"like a knitting needle to the gut\". She received numerous accolades for her portrayal, including nominations for an Academy, a BAFTA, a Golden Globe, a Screen Actors Guild, and a Critics\' Choice Movie award for Best Supporting Actress.</p>\r\n<p>From November 2014 to February 2015, Stone starred in a revival of the Broadway musical <i>Cabaret</i> as Sally Bowles, taking over the role from Michelle Williams. Considering it to be \"the most nerve-racking thing ever\", Stone told the <i>Entertainment Weekly</i> magazine that she listened to a French radio station to mentally prepare herself for the role. <i>Variety</i>\'s Marilyn Stasio was critical of her singing and found her performance \"a bit narrow as an emotional platform, but a smart choice for her acting skills, the perfect fit for her sharp intelligence and kinetic energy.\" Both of Stone\'s 2015 films?-?the romantic comedy-drama <i>Aloha</i>, and the mystery drama <i>Irrational Man?</i>-?were critical and commercial failures, and her roles were panned by critics. In Cameron Crowe\'s <i>Aloha</i>, she took on the role of an air force pilot alongside Bradley Cooper, and in the Woody Allen-directed <i>Irrational Man</i>, she portrayed the romantic interest of Joaquin Phoenix\'s character, a philosophy professor. The former was controversial for whitewashing the cast, as Stone\'s character was meant to be of Asian, Hawaiian, and Swedish descent; Stone later regretted the project, acknowledging whitewashing as a widespread problem in Hollywood. Despite the criticism, she was nominated for Choice Movie Actress - Comedy at the 2015 Teen Choice Awards. Stone would also in 2015 star in the music video for Win Butler\'s single \"Anna\"</p>\r\n<p>During her <i>Cabaret</i> show, Stone met director Damien Chazelle, who, impressed with her performance, cast her in his musical comedy-drama <i>La La Land</i>. The project, which marked her third collaboration with Gosling, featured Stone as Mia Dolan, an aspiring actress living in Los Angeles. Stone borrowed several real-life experiences for her character, and in preparation, watched <i>The Umbrellas of Cherbourg</i> and films of Fred Astaire and Ginger Rogers. For the musical\'s soundtrack, she recorded six songs. <i>La La Land</i> served as the opening film at the 2016 Venice Film Festival, and received highly positive reviews. Besides being Stone\'s highest-rated film on the review aggregator Rotten Tomatoes, the film was successful at the box office, earning over $440 million against its $30 million budget. Writing for <i>The Guardian</i>, Peter Bradshaw reviewed, \"Stone has never been better: superbly smart, witty, vulnerable, her huge doe eyes radiating intelligence even, or especially, when they are filling with tears.\" Stone received an Academy, BAFTA, Golden Globe and a SAG Award for Best Actress.</p>\r\n<p>Stone\'s sole film release of 2017 was the sports drama <i>Battle of the Sexes</i>, based on the 1973 eponymous match between tennis players Billie Jean King (Stone) and Bobby Riggs (Steve Carell). In preparation, Stone met with King, watched old footage and interviews of her, trained with a dialect coach to speak in King\'s accent, and drank high-calorie protein shakes to gain 15 pounds (6.8 kg). The film premiered to positive reviews at the 2017 Toronto International Film Festival, and certain critics considered Stone\'s performance to be the best of her career. Benjamin Lee of <i>The Guardian</i> praised her for playing against type, and credited her for being \"strong\" and \"convincing\" in the part. Even so, the film earned less than its $25 million budget. Stone received her fourth Golden Globe nomination for it, and attended the ceremony with King.</p>\r\n<p>In 2018, Stone and Rachel Weisz starred as Abigail Masham and Sarah Churchill, two cousins fighting for the affection of Queen Anne (Olivia Colman), in Yorgos Lanthimos\'s historical comedy-drama <i>The Favourite</i>. Stone found it challenging being an American among a British cast, and had difficulty in mastering the accent. The film premiered at the 75th Venice International Film Festival in August. Michael Nordine of IndieWire praised Stone for taking on a bold role after <i>La La Land</i>, and termed the three leading ladies \"a majestic triumvirate in a period piece that\'s as tragic as it is hilarious.\" For <i>The Favourite</i>, Stone received her fifth Golden Globe nomination and third Oscar nomination. That September, she featured in and served as an executive producer for the Netflix dark comedy miniseries <i>Maniac</i>, co-starring Jonah Hill and directed by Cary Fukunaga. Stone and Hill played two strangers, Annie Landsberg and Owen Milgrim, whose lives are transformed due to a mysterious pharmaceutical trial. An admirer of Fukunaga\'s work, Stone agreed to the project without reading the script. Lucy Mangan of <i>The Guardian</i> praised Stone and Hill for playing against type and for delivering career-best performances; Judy Berman of <i>Time</i> was similarly impressed with their growth as actors since <i>Superbad</i> and took note of the complexity in their performances. In the same year, Stone appeared alongside Paul McCartney in a music video for his song \"Who Cares\".</p>\r\n<p>Ms. Stone will next star in <i>Zombieland: Double Tap</i>, in the drama <i>Love May Fail</i>, based on Matthew Quick\'s 2015 novel, and in a live-action spin-off of <i>One Hundred and One Dalmatians</i> titled <i>Cruella</i>, directed by Craig Gillespie, in which she will portray Cruella de Vil (originally played by Glenn Close in the 1996 live-action adaptation). She is also set to return as the voice of Eep Crood in the sequel to <i>The Croods</i>.</p>', 'actors/emma-stone_Cover.jpg'),
(28, 'Frances', '', 'McDormand', 'F', '<p>A recipient of numerous accolades, including two Academy Awards, two Primetime Emmy Awards, and a Tony Award, making her one of the few performers to achieve the Triple Crown of Acting.</p>\r\n<p>Frances Louise McDormand was born Cynthia Ann Smith in Gibson City, Illinois. She was adopted at one and a half years of age by Noreen (Nickelson) and Vernon McDormand and renamed Frances Louise McDormand. Her adoptive mother was a nurse and receptionist while her adoptive father was a Disciples of Christ pastor; both were originally from Canada. McDormand has said that her biological mother, to whom she proudly referred, along with herself, as \"white trash,\" may have been one of the parishioners at Vernon\'s church. She has a sister, Dorothy A. \"Dot\" McDormand, who is an ordained Disciples of Christ minister and chaplain, as well as another sibling, both of whom were adopted by the McDormands, who had no biological children.</p>\r\n<p>Because her father specialized in restoring congregations, he frequently moved their family, and they lived in several small towns in Illinois, Georgia, Kentucky, and Tennessee, before settling in Monessen, Pennsylvania, where McDormand graduated from Monessen High School in 1975. She attended Bethany College in West Virginia, earning a Bachelor of Arts degree in theater in 1979. In 1982, she earned a Master of Fine Arts degree from the Yale School of Drama.</p>\r\n<p>Ms. McDormand\'s first professional acting job was in Derek Walcott\'s play <i>In a Fine Castle</i> also known as <i>The Last Carnival</i>, which was funded by the MacArthur Foundation and performed in Trinidad. In 1984 she made her film debut in <i>Blood Simple</i>, the first film by the Coen brothers. In 1987, she appeared as the wacky friend Dot in <i>Raising Arizona</i>, starring Holly Hunter and Nicolas Cage. In addition to her early film roles, McDormand played Connie Chapman in the fifth season of the television police drama <i>Hill Street Blues</i>. In 1988, she played Stella Kowalski in a stage production of Tennessee Williams\' <i>A Streetcar Named Desire</i>, for which she was nominated for a Tony Award. McDormand is an associate member of the experimental theater company The Wooster Group. In 2002, \"the game and talented\" McDormand performed as Oenone in the Wooster Group\'s production of an \"exhilarating dissection\" of Racine\'s tragedy <i>Phèdre</i> entitled \"To You, the Birdie!,\" at Ann\'s Warehouse in Brooklyn, New York.</p>\r\n<p>After appearing in several theatrical and television roles during the 1980s, McDormand gradually gained renown and critical acclaim for her dramatic work in film. In 1988, she was nominated for the Academy Award for Best Supporting Actress for <i>Mississippi Burning</i>. Cast alongside Gene Hackman and Willem Dafoe, McDormand was singled out for praise, with Sheila Benson, in her review for the <i>Los Angeles Times</i>, writing, \"Hackman\'s mastery reaches a peak here, but McDormand soars right with him. And since she is the film\'s sole voice of morality, it\'s right that she is so memorable.\" In 1996, she won her first Academy Award for Best Actress for her performance as a pregnant police chief Marge Gunderson in <i>Fargo</i>, written and directed by the Coen brothers. Writing for the <i>Chicago Sun-Times</i>, Roger Ebert called <i>Fargo</i> \"one of the best films I\'ve ever seen\" and felt that McDormand \"should have a lock on an Academy Award nomination with this performance, which is true in every individual moment, and yet slyly, quietly, over the top in its cumulative effect.\"</p>\r\n<p>In 2000, she was nominated for the Academy Award for Best Supporting Actress and the Golden Globe Award for Best Supporting Actress in a Motion Picture for her portrayal of an overbearing mother in <i>Almost Famous</i>. For her role in <i>Wonder Boys</i> (2000), she won Best Supporting Actress from the Broadcast Film Critics Association, the Florida Film Critics Circle, and the Los Angeles Film Critics Association. In 2006, McDormand received her fourth nomination for the Academy Award for Best Supporting Actress for her performance in <i>North Country</i> (2005). The same year she won an Independent Spirit Award for her supporting role in Nicole Holofcener\'s dark comedy <i>Friends with Money</i> (2006). She also voiced the role of the principal Melanie Upfoot in the <i>Simpsons</i> episode \"Girls Just Want to Have Sums\", which aired on April 30, 2006.</p>\r\n<p>In 2008, McDormand starred in the films <i>Burn After Reading</i> and <i>Miss Pettigrew Lives for a Day</i>. She then appeared in the action movie <i>Transformers: Dark of the Moon</i>, playing the US government\'s National Intelligence Director, alongside her <i>Burn After Reading</i> co-star John Malkovich. She returned to the stage in the David Lindsay-Abaire play <i>Good People</i>, in a limited engagement on Broadway from February 8, 2011 to May 29, 2011. Her performance earned her the Tony Award for Best Actress in a Play. In the animated film <i>Madagascar 3: Europe\'s Most Wanted</i> (2012), she voiced Capitain Chantel Dubois and also sang a version of the French song \"Non, je ne regrette rien\".</p>\r\n<p>McDormand starred in <i>Promised Land</i> with Matt Damon, filmed in April 2012 and released on December 28, 2012. In November 2014, HBO telecast a four-part mini-series based upon the series of short stories by Elizabeth Strout, <i>Olive Kitteridge</i>, co-produced by and starring McDormand. The role won her the Primetime Emmy Award and Screen Actors Guild Award for Best Actress. With her Emmy win, McDormand became the 12th actress in history to achieve the \"Triple Crown of Acting\", for competitive Oscar, Emmy, and Tony Award wins in the acting categories.</p>\r\n<p>McDormand starred in the 2017 film <i>Three Billboards Outside Ebbing, Missouri</i>, for which she won her second Academy Award for Best Actress (her statuette was stolen briefly following the awards ceremony), the Golden Globe Award for Best Actress in a Motion Picture - Drama, and the Screen Actors Guild Award for Outstanding Performance by a Female Actor in a Leading Role.</p>', 'actors/frances-mcdormand_Cover.jpg'),
(29, 'Gary', '', 'Oldman', 'M', '<p>Known for his versatility and expressive acting style, Oldman is regarded as one of the greatest actors of his generation. Among other accolades, he has won an Academy Award, three BAFTA Awards, two Critics\' Choice Awards, a Golden Globe Award and a Screen Actors Guild Award, along with nominations for an Emmy Award and the Palme d\'Or. In 2011, <i>Empire</i> readers voted him the recipient of the Empire Icon Award.</p>\r\n<p>Gary Leonard Oldman was born in London, the son of Leonard Bertram Oldman (1921-1985), a former sailor who also worked as a welder, and Kathleen (née Cheriton; 1919-2018). He has stated that Leonard was an alcoholic who left the family when Oldman was seven years old. Oldman attended West Greenwich School in Deptford, leaving school at the age of 16 to work in a sports shop. He was a pianist as a child, and later a singer, but gave up his musical aspirations to pursue an acting career after seeing Malcolm McDowell\'s performance in the 1971 film <i>The Raging Moon</i>. In a 1995 interview with Charlie Rose, Oldman said: \"Something about Malcolm just arrested me, and I connected, and I said, \'I wanna do that\'.\"</p>\r\n<p>Growing up in south London, Oldman supported his local football club Millwall, and also followed Manchester United so that he could watch his idol, George Best. In 2011, Oldman would learn from his mother that his father represented Millwall after World War II, with Oldman stating: \"Just after the war, she ran a boarding house, for football players, Millwall players. And I knew that my dad was involved somehow with the reserve team. But two weeks ago my mum said, \'Oh yeah, your dad played for Millwall. When he was young he had a couple of first team games\'.\"</p>\r\n<p>Mr. Oldman studied with the Young People\'s Theatre in Greenwich during the mid-1970s, while working jobs on assembly lines, as a porter in an operating theatre, selling shoes and beheading pigs in an abattoir. He unsuccessfully applied to the Royal Academy of Dramatic Art (RADA), which welcomed him to try again the following year, but advised him to find something else to do for a living. When asked by Charlie Rose if he had reminded RADA of this, Oldman joked that \"the work speaks for itself\".</p>\r\n<p>He won a scholarship to attend the Rose Bruford College in Sidcup, Southeast London, from which he graduated with a BA in Acting in 1979. Oldman describes himself as \'shy but diligent worker\' during his time there, where he performed roles such as Puck in Shakespeare\'s <i>A Midsummer Night\'s Dream</i>.</p>\r\n<p>Oldman began acting in theatre in 1979, and made his earliest screen appearances in <i>Remembrance</i> (1982) and <i>Meantime</i> (1983). He continued to lead a stage career, during which he performed at London\'s Royal Court and was a member of the Royal Shakespeare Company, with credits including <i>Cabaret</i> (1979), <i>The Massacre at Paris</i> (1980), <i>Entertaining Mr Sloane</i> (1983), <i>Saved</i> (1983), <i>The Country Wife</i> (1987) and <i>Hamlet</i> (1987). Oldman rose to prominence in British film with his portrayals of Sid Vicious in <i>Sid and Nancy</i> (1986), Joe Orton in <i>Prick Up Your Ears</i> (1987), a football firm leader in <i>The Firm</i> (1989) and Rosencrantz in <i>Rosencrantz & Guildenstern Are Dead</i> (1990). Identified with the \"Brit Pack\", he achieved greater renown as a Hell\'s Kitchen gangster in <i>State of Grace</i> (1990), Lee Harvey Oswald in <i>JFK</i> (1991) and Count Dracula in <i>Bram Stoker\'s Dracula</i> (1992).</p>\r\n<p>Oldman went on to star as the antagonists of several films, including <i>True Romance</i> (1993), <i>The Fifth Element</i> (1997), <i>Air Force One</i> (1997) and <i>The Contender</i> (2000); corrupt DEA agent Norman Stansfield, whom Oldman portrayed in <i>Léon: The Professional</i> (1994), has been ranked as one of cinema\'s best villains. He meanwhile played Ludwig van Beethoven in <i>Immortal Beloved</i> (1994). In the 21st century, Oldman is known for his roles as Sirius Black in the <i>Harry Potter</i> series, James Gordon in <i>The Dark Knight Trilogy</i>, George Smiley in <i>Tinker Tailor Soldier Spy</i> (2011), a human leader in <i>Dawn of the Planet of the Apes</i> (2014), and Winston Churchill in <i>Darkest Hour</i> (2017), which earned him the Academy Award for Best Actor. Films in which he has appeared have grossed over $11 billion.</p>\r\n<p>In addition to acting in film, Oldman wrote and directed <i>Nil by Mouth</i> (1997); featured in television shows, such as <i>Fallen Angels</i>, <i>Tracey Takes On.</i> and <i>Friends</i>; appeared in music videos for David Bowie, Guns N\' Roses and Annie Lennox; and provided the voice of Viktor Reznov in the <i>Call of Duty</i> video game series.</p>', 'actors/gary-oldman_Cover.jpg'),
(30, 'Henry', '', 'Winkler', 'M', '<p>Henry Franklin Winkler was born on October 30, 1945, on the West Side of Manhattan, the son of homemaker Ilse Anna Marie (<i>née</i> Hadra; 1913-2002) and lumber import-export company president Harry Irving Winkler (1903-1995). His parents were German Jews who emigrated from Berlin to the U.S. in 1939, on the eve of World War II. Winkler said that his parents came to the U.S. for a six-week business trip, but knew they were never going back. His father smuggled the only assets the family had left (family jewels disguised as a box of chocolates that he carried under his arm). Although they did not keep kosher, Winkler was raised in the traditions of Conservative Judaism, but said that he was not religious as an adult. The family attended Congregation Habonim, where his mother ran the Judaica shop. His parents were founding members of the temple. Winkler has a sister named Beatrice.</p>\r\n<p>Winkler has said that he was very anxious as a child because of his undiagnosed dyslexia, and that he was considered to be \"slow, stupid, not living up to my potential\". He also said that his relationship with his parents was strained, due at least partially to their attitude towards his undiagnosed dyslexia. As his father spoke 11 languages and could do math in his head, he did not understand Winkler\'s problems at school, and why Winkler would celebrate a C grade. His father often said to him in German \"Du bist ein dummer Hund\", which means \"you are a dumb dog\" and often punished him for his difficulties in school. Winkler attended P.S. 87 on W. 78th Street which remains in operation today, and then graduated in 1963 from McBurney School, which was located in Manhattan\'s Upper West Side neighborhood.</p>\r\n<p>Winkler said he did not graduate with his class because of his learning disability and problems with a geometry class, which he finally passed after attending summer school. In 1967, Winkler received his BA from Emerson College. At Emerson, he was a member of the Alpha Pi Theta Fraternity. In 1970, Winkler earned an MFA from the Yale School of Drama. In 1972, Winkler returned to New York City, auditioned for, and was cast in, <i>42 Seconds from Broadway</i>. In 1978, Emerson awarded Winkler an honorary DHL. He has also received an honorary DHL from Austin College. During his high school and college years, he studied in Lausanne, Switzerland, and worked in a lumber mill in a small German town.</p>\r\n<p>He played the role of greaser Arthur \"Fonzie\" Fonzarelli, the breakout character of the 1970s American sitcom <i>Happy Days</i>. He also starred as Sy Mittleman on Adult Swim\'s <i>Childrens Hospital</i>, and as Eddie R. Lawson on USA Networks\'s <i>Royal Pains</i>. Winkler also had notable guest-starring roles on <i>Arrested Development</i> as Barry Zuckerkorn and Dr. Saperstein on <i>Parks and Recreation</i>. In 2018, he began appearing as Gene Cousineau on the HBO comedy <i>Barry</i>.</p>\r\n<p>For his role on <i>Happy Days</i>, Winkler won two Golden Globe Awards and earned three Primetime Emmy Award nominations for Outstanding Lead Actor in a Comedy Series. For <i>Barry</i>, Winkler won his first Primetime Emmy Award in the category Outstanding Supporting Actor in a Comedy Series. He also was nominated for a Primetime Emmy Award for Outstanding Guest Actor in a Drama Series for his role on <i>The Practice</i> and has won two Daytime Emmy Awards.</p>', 'actors/henry-winkler_Cover.jpg'),
(31, 'Jared', '', 'Leto', 'M', '<p>Jared Joseph Leto was born on December 26, 1971, in Bossier City, Louisiana, to Constance Leto (née Metrejon). His mother has Cajun ancestry. \"Leto\" is the surname of his stepfather. His parents divorced when he was a child, and he and his older brother, Shannon Leto, lived with their mother and their maternal grandparents, Ruby (Russell) and William Lee Metrejon. His father remarried, and committed suicide when Jared was eight. Leto moved frequently with his family from Louisiana to different cities around the country. \"My mom\'s father was in the Air Force,\" Leto has explained, \"so moving around a lot was a normal way of life.\" Leto has two younger half-brothers from his father\'s second marriage.</p>\r\n<p>Constance joined the hippie movement and encouraged her sons to get involved in the arts. Leto stated he \"was raised around a lot of artists, musicians, photographers, painters and people that were in theater,\" adding that \"Just having the art communal hippie experience as a child, there wasn\'t a clear line that was drawn. We celebrated creative experience and creative expression. We didn\'t try and curtail it and stunt any of that kind of growth.\" Leto started playing music with his brother at an early age and his first musical instrument was a broken-down piano.</p>\r\n<p>After dropping out briefly in the 10th grade, Leto decided to return and focus on his education at the private Emerson Preparatory School in Washington, D.C. He was interested in large-scale visual art and enrolled at the University of the Arts in Philadelphia. After developing an interest in filmmaking, he transferred to the School of Visual Arts in New York City. While he was a student there, he wrote and starred in his own short film, <i>Crying Joy</i>. He also attended the Corcoran School of the Arts and Design, a part of George Washington University.</p>\r\n<p>After starting his career with television appearances in the early 1990s, Leto achieved recognition for his role as Jordan Catalano on the television series <i>My So-Called Life</i> (1994). He made his film debut in <i>How to Make an American Quilt</i> (1995) and received critical praise for his performance in <i>Prefontaine</i> (1997). Leto played supporting roles in <i>The Thin Red Line</i> (1998), <i>Fight Club</i> (1999) and <i>American Psycho</i> (2000), as well as the lead role in <i>Urban Legend</i> (1998), and earned critical acclaim after portraying heroin addict Harry Goldfarb in <i>Requiem for a Dream</i> (2000). He later began focusing increasingly on his music career, returning to acting with <i>Panic Room</i> (2002), <i>Alexander</i> (2004), <i>Lord of War</i> (2005), <i>Lonely Hearts</i> (2006), <i>Chapter 27</i> (2007), and <i>Mr. Nobody</i> (2009). In 2012, he directed the documentary film <i>Artifact</i>. He then appeared in <i>Suicide Squad</i> (2016) and <i>Blade Runner 2049</i> (2017).</p>\r\n<p>Leto\'s performance as a transgender woman in <i>Dallas Buyers Club</i> (2013), earned him an Academy Award, a Golden Globe Award, and a Screen Actors Guild Award for Best Supporting Actor. Mr. Leto is considered to be a method actor, known for his constant devotion to and research of his roles. He often remains completely in character for the duration of the shooting schedules of his films, even to the point of adversely affecting his health. He is also known to be selective about his film roles.</p>\r\n<p>Leto is the lead vocalist, multi-instrumentalist and main songwriter for Thirty Seconds to Mars, a band he formed in 1998 in Los Angeles, California, with his older brother Shannon Leto. Their debut album, <i>30 Seconds to Mars</i> (2002), was released to positive reviews, but only to limited commercial success. The band achieved worldwide fame with the release of their second album <i>A Beautiful Lie</i> (2005). Their following releases, <i>This Is War</i> (2009), and <i>Love, Lust, Faith and Dreams</i> (2013), received further critical and commercial success. As of September 2014, the band has sold over 15 million albums worldwide. Leto has also directed music videos, including the MTV Video Music Award-winning \"The Kill\" (2006), \"Kings and Queens\" (2009), and \"Up in the Air\" (2013).</p>', 'actors/jared-leto_Cover.jpeg');
INSERT INTO `actors` (`id`, `first_name`, `middle_name`, `last_name`, `gender`, `about`, `img`) VALUES
(32, 'Jeff', '', 'Daniels', 'M', '<p>An American actor, musician, and playwright whose career includes roles in films, stage productions, and on television, for which he has won two Emmy Awards and received several Golden Globe, Screen Actors Guild and Tony Award nominations.</p>\r\n<p>Jeffrey Warren Daniels was born in Clarke County, Georgia, to Marjorie J. (née Ferguson) and Robert Lee \"Bob\" Daniels. He spent the first six weeks of his life in Georgia, where his father was then teaching, and grew up in Chelsea, Michigan. His father owned the Chelsea Lumber Company and was also a one-time mayor of Chelsea.</p>\r\n<p>Daniels was raised Methodist. He attended Central Michigan University and participated in the school\'s theater program. In the summer of 1976, he attended the Eastern Michigan University drama school to participate in a special Bicentennial Repertory program, where he performed in <i>The Hot l Baltimore</i> and three other plays performed in repertoire. Marshall W. Mason was the guest director at EMU, and he invited Jeff to come to New York to work at the Circle Repertory Theatre, where he performed in <i>Fifth of July</i> by Lanford Wilson in the 1977-78 season. Daniels performed in New York in <i>The Shortchanged Review</i> (1979) at Second Stage Theatre. It was the first show of the inaugural season for Second Stage Theatre.</p>\r\n<p>Making his film debut in <i>Ragtime</i> (1981), Daniels\'s film credits include <i>Terms of Endearment</i> (1983), <i>Arachnophobia</i> (1990), <i>Gettysburg</i> (1993), <i>Speed</i> (1994), <i>101 Dalmatians</i> (1996), <i>Fly Away Home</i> (1996), <i>Pleasantville</i> (1998), <i>The Hours</i> (2002), <i>Gods and Generals</i> (2003), <i>Good Night, and Good Luck</i> (2005), <i>Infamous</i> (2006), <i>The Lookout</i> (2007), <i>Looper</i> (2012), <i>Steve Jobs</i> (2015), and <i>The Martian</i> (2015).</p>\r\n<p>Daniels is also known for playing Harry Dunne in the buddy comedy <i>Dumb and Dumber</i> (1994) and its sequel <i>Dumb and Dumber To</i> (2014). He received Golden Globe Award nominations for Best Actor, for his performances in <i>The Purple Rose of Cairo</i> (1985), <i>Something Wild</i> (1986), and <i>The Squid and the Whale</i> (2005).</p>\r\n<p>Mr. Daniels has received a number of award nominations for his work on stage, including Tony Award nominations for Best Actor for his roles in the plays <i>God of Carnage</i>, <i>Blackbird</i> and <i>To Kill a Mockingbird</i>. He is the founder and current executive director of the Chelsea, Michigan-based Purple Rose Theatre Company.</p>\r\n<p>From 2012 to 2014 Daniels starred as Will McAvoy in the HBO political drama series <i>The Newsroom</i>, for which he won the 2013 Primetime Emmy Award for Outstanding Lead Actor in a Drama Series and received Golden Globe and Screen Actors Guild Award nominations. He won a second Primetime Emmy Award in 2018 for his supporting performance in the Netflix miniseries <i>Godless</i> (2017), receiving an additional nomination that year for his leading performance as John P. O\'Neill in the Hulu miniseries <i>The Looming Tower</i> (2018).</p>', 'actors/jeff-daniels_Cover.jpg'),
(33, 'Jeffrey', '', 'Tambor', 'M', '<p>Jeffrey Michael Tambor was born in San Francisco, California, the son of Eileen (born Salzberg), a homemaker, and Bernard Tambor, a flooring contractor. He grew up in a Conservative Jewish family with roots in Hungary and Ukraine. Tambor is a graduate of Abraham Lincoln High School and San Francisco State University, where he studied acting and then went on to receive a master\'s degree from Wayne State University.</p>\r\n<p>Mr. Tambor is known for his television roles such as Hank Kingsley on <i>The Larry Sanders Show</i> (1992-1998), George Bluth Sr. and Oscar Bluth on <i>Arrested Development</i> (2003-2006, 2013, 2018) and Maura Pfefferman on <i>Transparent</i> (2014-2017).</p>\r\n<p>His film roles include Jay Porter in <i>...And Justice for All</i> (1979), Jinx Latham in <i>Mr. Mom</i> (1983), Sully in <i>There\'s Something About Mary</i> (1998), the Mayor of Whoville in <i>How the Grinch Stole Christmas</i> (2000), King Neptune in <i>The SpongeBob SquarePants Movie</i> (2004), Tom Manning in <i>Hellboy</i> (2004) and its sequel <i>Hellboy II: The Golden Army</i> (2008), Sid Garner in <i>The Hangover</i> trilogy (2009-2013), Francis Silverberg in <i>The Accountant</i> (2016), and Georgy Malenkov in <i>The Death of Stalin</i> (2017).</p>', 'actors/jeffrey-tambor_Cover.jpg'),
(34, 'Jennifer', '', 'Lawrence', 'F', '<p>Her films have grossed over $5.7 billion worldwide, and she was the highest-paid actress in the world in 2015 and 2016. Lawrence appeared in Time\'s 100 most influential people in the world list in 2013 and in the Forbes Celebrity 100 list in 2014 and 2016.</p>\r\n<p>Jennifer Shrader Lawrence was born on August 15, 1990 in Indian Hills, Kentucky, to Gary, a construction worker, and Karen (née Koch), a summer camp manager. She has two older brothers, Ben and Blaine, and her mother brought her up to be \"tough\" like them. Karen did not allow her daughter to play with other girls in preschool as she deemed her \"too rough\" with them. Lawrence was educated at the Kammerer Middle School in Louisville. She did not enjoy her childhood due to hyperactivity and social anxiety and considered herself a misfit among her peers. Lawrence has said that her anxieties vanished when she performed on stage and that acting gave her a sense of accomplishment.</p>\r\n<p>Lawrence\'s school activities included cheerleading, softball, field hockey and basketball, which she played on a boys\' team that was coached by her father. While growing up, she was fond of horseback riding and frequently visited a local horse farm. She has an injured tailbone as a result of being thrown from a horse. When her father worked from home, she performed for him, often dressing up as a clown or ballerina. She had her first acting assignment at age nine when she played the role of a prostitute in a church play that was based on the Book of Jonah. For the next few years, she continued to take parts in church plays and school musicals.</p>\r\n<p>Lawrence was fourteen and on a family vacation in New York City when she was spotted on the street by a talent scout who arranged for her to audition for talent agents. Karen was not keen on allowing her daughter to pursue an acting career, but she briefly moved her family to New York to let her read for roles. After Lawrence\'s first cold reading, the agents said that hers was the best they had heard from someone that young; Lawrence\'s mother convinced her that they were lying. Lawrence said her early experiences were difficult because she felt lonely and friendless. She signed on with the CESD Talent Agency, who convinced her parents to let her audition for roles in Los Angeles. While her mother encouraged her to go into modelling, Lawrence insisted on pursuing acting. At that time, she considered acting to be a natural fit for her abilities, and she turned down several offers for modeling assignments. Lawrence dropped out of school at age 14 without receiving a GED or a diploma. She has said that she was \"self-educated\" and that her career was her priority. Between her acting jobs in the city, she made regular visits to Louisville, where she served as an assistant nurse at her mother\'s camp.</p>\r\n<p>Ms. Lawrence began her acting career with a minor role in the television film <i>Company Town</i> (2006). She followed it with guest roles in several television shows, including <i>Monk</i> (2006) and <i>Medium</i> (2007). These parts led to her being cast as a series regular on the TBS sitcom <i>The Bill Engvall Show</i>, in which she played Lauren, the rebellious teenage daughter of a family living in suburban Louisville, Colorado. The series premiered in 2007 and ran for three seasons. Tom Shales of <i>The Washington Post</i> considered her a scene stealer in her part, and David Hinckley of the <i>New York Daily News</i> wrote that she was successful in \"deliver[ing] the perpetual exasperation of teenage girls\". Lawrence won a Young Artist Award for Outstanding Young Performer in a TV Series for the role in 2009.</p>\r\n<p>Lawrence made her film debut in the 2008 drama film <i>Garden Party</i>, in which she played a troubled teenager named Tiff. She then appeared in director Guillermo Arriaga\'s feature film debut <i>The Burning Plain</i> (2008), a drama narrated in a hyperlink format. She was cast as the teenage daughter of Kim Basinger\'s character who discovers her mother\'s extramarital affair-a role she shared with Charlize Theron; both actresses portrayed the role at different stages of the character\'s life. Mark Feeney for <i>The Boston Globe</i> thought of Lawrence\'s performance as \"a thankless task\", but Derek Elley from <i>Variety</i> praised her as the production\'s prime asset, writing that she \"plumbs fresher depths\" into the film. Her performance earned her the Marcello Mastroianni Award for Best Emerging Actress at the Venice Film Festival. Also that year, she appeared in the music video for the song \"The Mess I Made\" by Parachute. The following year, she starred in Lori Petty\'s drama <i>The Poker House</i> as the oldest of three sisters living with a drug-abusing mother. Stephen Farber of <i>The Hollywood Reporter</i> thought that Lawrence \"has a touching poise on camera that conveys the resilience of children\", and her role in <i>The Poker House</i> won an Outstanding Performance award from the Los Angeles Film Festival.</p>\r\n<p>Lawrence\'s breakthrough role came in the small-scale drama <i>Winter\'s Bone</i> (2010), based on Daniel Woodrell\'s novel of the same name. In Debra Granik\'s independent feature, she portrayed Ree Dolly, a poverty-stricken teenager in the Ozark Mountains who cares for her mentally ill mother and younger siblings while searching for her missing father. Lawrence traveled to the Ozarks a week before filming began to live with the family on whom the story was based, and in preparation, she learned to fight, skin squirrels, and chop wood. David Denby of <i>The New Yorker</i> said the film \"would be unimaginable with anyone less charismatic\", and Peter Travers of <i>Rolling Stone</i> wrote that \"her performance is more than acting, it\'s a gathering storm. Lawrence\'s eyes are a roadmap to what\'s tearing Ree apart.\" The production won the Grand Jury Prize at the Sundance Film Festival. The actress was awarded the National Board of Review Award for Breakthrough Performance, and with her first nomination for the Academy Award for Best Actress, she became the second youngest person to be nominated in the category.</p>\r\n<p>In 2011, Lawrence took on a supporting role in <i>Like Crazy</i>, a romantic drama about long-distance relationships, starring Anton Yelchin and Felicity Jones. Kenneth Turan of the <i>Los Angeles Times</i> considered the film to be an \"intensely wrought and immensely satisfying love story\" and credited all three performers for \"making their [characters\'] yearning palpable\". She then appeared in Jodie Foster\'s black comedy <i>The Beaver</i> alongside Foster and Mel Gibson. Filmed in 2009, the production was delayed due to controversy concerning Gibson, and earned less than half of its $21 million budget.</p>\r\n<p>After her dramatic role in <i>Winter\'s Bone</i>, Lawrence looked for something less serious, and found it with her first high-profile release-Matthew Vaughn\'s superhero film <i>X-Men: First Class</i> (2011)-a prequel to the <i>X-Men</i> film series. She portrayed the shapeshifting mutant Mystique, a role played by Rebecca Romijn in the earlier films. Vaughn cast Lawrence, as he thought that she would be able to portray the weakness and strength involved in the character\'s transformation. For the part, Lawrence lost weight and practiced yoga. For Mystique\'s blue form, she had to undergo eight hours of makeup, as Romijn had done on the other films. She was intimidated in the role as she admired Romijn. Writing for <i>USA Today</i>, Claudia Puig considered the film to be a \"classy re-boot\" of the film series, and believed that her \"high-spirited performance\" empowered the film. With worldwide earnings of $350 million, <i>X-Men: First Class</i> became Lawrence\'s highest-grossing film at that point.</p>\r\n<p>In 2012 she played Katniss Everdeen in <i>The Hunger Games</i>, an adaptation of the first book in author Suzanne Collins\' <i>Hunger Games</i> trilogy. Set in a post-apocalyptic future, the series tells the story of the teenage heroine Everdeen as she joins rebel forces against a totalitarian government after winning a brutal televised annual event. Despite being an admirer of the books, Lawrence was initially hesitant to accept the part, because of the grand scale of the film. She agreed to the project after her mother convinced her to take the part. She practiced yoga, archery, rock and tree climbing, and hand-to-hand combat techniques for the role. While training for the part, she injured herself running into a wall. The film received generally positive reviews, and Lawrence\'s portrayal of Everdeen was particularly praised. Todd McCarthy of <i>The Hollywood Reporter</i> called her an \"ideal screen actress\", adding that she embodies the Everdeen of the novel, and believed that she anchored the film \"with impressive gravity and presence\". Roger Ebert agreed that she was \"strong and convincing in the central role\". With worldwide revenues of over $690 million, <i>The Hunger Games</i> became a top-grossing film featuring a female lead, making Lawrence the highest-grossing action heroine of all time. The success of the film established her as a star.</p>\r\n<p>Later in 2012, Lawrence played a young depressed widow named Tiffany Maxwell in David O. Russell\'s romance movie <i>Silver Linings Playbook</i>. The film was an adaptation of Matthew Quick\'s novel of the same name. It follows her character finding companionship with Pat Solitano Jr. (played by Bradley Cooper), a man with bipolar disorder. The actress was drawn to her character\'s complex personality: \"She didn\'t really fit any basic kind of character profile. Somebody who is very forceful and bullheaded is normally very insecure, but she isn\'t\". While Russell initially considered Lawrence to be too young for the part, she convinced him to hire her via a Skype audition. The actress found herself challenged by Russell\'s spontaneity as a director, and described working on the project as the \"best experience of my life\". Richard Corliss of <i>Time</i> wrote: \"Just 21 when the movie was shot, Lawrence is that rare young actress who plays, who <i>is</i>, grown-up. Sullen and sultry, she lends a mature intelligence to any role.\" Peter Travers believed that Lawrence \"is some kind of miracle. She\'s rude, dirty, funny, foulmouthed, sloppy, sexy, vibrant, and vulnerable, sometimes all in the same scene, even in the same breath.\" She won the Golden Globe and Academy Award for Best Actress for her performance, becoming-at age 22-the second youngest Best Actress winner. Her final film of the year was alongside Max Thieriot and Elisabeth Shue in Mark Tonderai\'s critically panned thriller <i>House at the End of the Street</i>.</p>\r\n<p>In January 2013, Lawrence hosted an episode of <i>Saturday Night Live</i>, with musical guest The Lumineers. <i>The Devil You Know</i>, a small-scale production that Lawrence had filmed for in 2005, was her first release of 2013. She then reprised the role of Everdeen in <i>The Hunger Games: Catching Fire</i>, the second installment in the <i>Hunger Games</i> film series. While performing the film\'s underwater stunts, she suffered from an ear infection that resulted in a brief loss of hearing. With box office earnings of $865 million, the film remains her highest-grossing release. Stephanie Zacharek of <i>The Village Voice</i> believed that Lawrence\'s portrayal of Everdeen made her an ideal role model, and wrote that \"there\'s no sanctimony or pretense of false modesty in the way Lawrence plays her\". She took on a supporting role in Russell\'s ensemble crime drama <i>American Hustle</i> (2013) as Rosalyn Rosenfeld, the neurotic wife of con man Irving Rosenfeld (portrayed by Christian Bale). Inspired by the Federal Bureau of Investigation\'s Abscam sting operation, the film is set against the backdrop of political corruption in 1970s New Jersey. Lawrence did little research for the part, and based her performance on knowledge of the era from the films and television shows she had seen. Geoffrey Macnab of <i>The Independent</i> praised her as \"funny and acerbic\", especially for an improvised scene in which she aggressively kisses her husband\'s mistress (played by Amy Adams) on the lips. Lawrence\'s performance won her the Golden Globe and BAFTA Award for Best Supporting Actress, in addition to a third Academy Award nomination, her first in the supporting category.</p>\r\n<p>Lawrence played Serena Pemberton in Susanne Bier\'s depression-era drama <i>Serena</i> (2014), based on the novel of the same name by Ron Rash. In the film, she and her husband George (portrayed by Bradley Cooper) are a married couple who become involved in criminal activities after realizing that they cannot bear children. The project was filmed in 2012, and was released in 2014 to poor reviews. Lawrence then reprised the role of Mystique in <i>X-Men: Days of Future Past</i>, which served as a sequel to both <i>X-Men: The Last Stand</i> (2006) and <i>X-Men: First Class</i> (2011). The film received positive reviews and grossed $748.1 million worldwide, becoming the highest-grossing film in the X-Men series to that point. Justin Chang of Variety praised her look in the film but thought that she had little to do but \"glower, snarl and let the f/x artists do their thing\". Lawrence\'s next two releases were in the final parts of <i>The Hunger Games</i> film series, <i>Mockingjay - Part 1</i> (2014) and <i>Part 2</i> (2015). For the musical score of the former film, she sang the song \"The Hanging Tree\", which charted on multiple international singles charts. In a review of the final film in the series, Manohla Dargis of <i>The New York Times</i> drew similarities between her rise to stardom and Everdeen\'s journey as a rebel leader, writing: \"Lawrence now inhabits the role as effortlessly as breathing, partly because, like all great stars, she seems to be playing a version of her \'real\' self\". Both films earned more than $650 million worldwide.</p>\r\n<p>Lawrence worked with Russell for the third time in the biopic <i>Joy</i> (2015), in which she plays the eponymous character, a troubled single mother who becomes a successful businessperson after inventing the Miracle Mop. During production in Boston, the press reported on a disagreement between Russell and Lawrence that resulted in a \"screaming match\". She said that her friendship with Russell made it easier for them to disagree, because people fight when they really love each other. The film was not as well received as their previous collaborations, but her performance was praised. Richard Roeper called it \"a wonderfully layered performance that carries the film through its rough spots and sometime dubious detours\" that was her best since <i>Winter\'s Bone</i>. She won a third Golden Globe Award, and was nominated for another Academy Award for Best Actress, becoming the youngest person to accrue four Oscar nominations. Lawrence began 2016 by providing the narration for <i>A Beautiful Planet</i>, a documentary film that explores Earth from the International Space Station. She played Mystique for the third time in <i>X-Men: Apocalypse</i> (2016). The film received mixed reviews, with a consensus that it was overfilled with action that detracted from the story\'s themes and cast\'s performances. Helen O\'Hara from <i>Empire</i> considered the film to be a letdown from the previous installments of the series, and criticized the actress for making her character too grim. Despite this, she was rewarded Favorite Movie Actress at the 43rd People\'s Choice Awards.</p>\r\n<p>Lawrence was paid $20 million for playing Aurora Lane in the science fiction film <i>Passengers</i> (2016), and she received top-billing over co-star Chris Pratt. It features Pratt and her as two people who wake up 90 years too soon from an induced hibernation on a spaceship bound for a new planet. Lawrence says that she felt nervous performing her first sex scene and kissing a married man (Pratt) on screen; she drank alcohol to prepare herself for filming. Critical reaction was mixed, but Lawrence defended the film by calling it a \"tainted, complicated love story\". Darren Aronofsky\'s psychological horror film <i>Mother!</i> was Lawrence\'s sole release of 2017. She starred as a young wife who experiences trauma when her home is invaded by unexpected guests. Lawrence spent three months rehearsing the film in a warehouse in Brooklyn, despite her reluctance to rehearsals in her previous assignments. The intense role proved difficult for her to film; she was put on supplemental oxygen when she hyperventilated one day, and she also dislocated a rib. <i>Mother!</i> polarized viewers and prompted mass walkouts. The film was better received by critics; Walter Addiego of the <i>San Francisco Chronicle</i> labelled it \"assaultive\" and a \"deliberate test of audience endurance\", and credited Lawrence for \"never allow[ing] herself to be reduced simply to a howling victim\".</p>\r\n<p>The following year, Lawrence starred as Dominika Egorova, a Russian spy who makes contact with a mysterious CIA agent (played by Joel Edgerton), in Francis Lawrence\'s espionage thriller <i>Red Sparrow</i>, based on Jason Matthews\' novel of the same name. She learned to speak in a Russian accent and undertook ballet training for four months. Lawrence was challenged by the sexuality in her role, but has said that performing the nude scenes made her feel empowered. IndieWire\'s Eric Kohn disliked the film\'s denouement, but praised the work of Lawrence and Charlotte Rampling, stating that \"the considerable talent on display is [the film\'s] constant saving grace.\" As of 2018, Lawrence\'s films have grossed over $5.7 billion worldwide.</p>', 'actors/jennifer-lawrence_Cover.jpg'),
(35, 'Jessica', '', 'Lange', 'F', '<p>The thirteenth actress in history to achieve the Triple Crown of Acting, winning two Academy Awards, three Primetime Emmy Awards, one Tony Award, one Screen Actors Guild Award and five Golden Globe Awards. Additionally, she is the second actress in history to win the Academy Award for Best Actress after winning the Academy Award for Best Supporting Actress; the third actress and first performer since 1943 to receive two Oscar nominations within the same year; the fifth actress and ninth performer to win Oscars in both the lead and supporting acting categories; and is tied as the sixth most Oscar-nominated actress in history. She is the only performer ever to win Primetime Emmy Awards in both the supporting and lead acting categories for the same miniseries. Lange has also garnered one Critics Choice Award and three Dorian Awards, making her the most honored actress by the Gay and Lesbian Entertainment Critics Association. In 1998, <i>Entertainment Weekly</i> listed Lange among the 25 Greatest Actresses of the 1990s. In 2014, Lange was scheduled to receive a star on The Hollywood Walk of Fame, though she has yet to claim it.</p>\r\n<p>Jessica Phyllis Lange was born in Cloquet, Minnesota, on April 20, 1949. Her father, Albert John Lange (1913-1989), was a teacher and traveling salesman, and her mother, Dorothy Florence (née Sahlman; 1913-1998), was a housewife. Third of four children, she has two older sisters, Jane and Ann, and a younger brother named George. Her paternal ancestry originates in Germany and the Netherlands, while her maternal ancestry originates in Finland. Due to the nature of her father\'s professions, her family moved over a dozen times to various towns and cities in Minnesota before settling back down in her hometown, where she graduated from Cloquet High School.</p>\r\n<p>In 1967, she received a scholarship to study art and photography at the University of Minnesota, where she met and began dating Spanish photographer Paco Grande. After the two married in 1971, Lange left college to pursue a more bohemian lifestyle, traveling in the United States and Mexico in a minivan with Grande. The couple then moved to Paris, where they drifted apart. While in Paris, Lange studied mime theatre under the supervision of Étienne Decroux, and joined the Opéra-Comique as a dancer. She later studied acting at HB Studio in New York City.</p>\r\n<p>While sharing an apartment with Jerry Hall and Grace Jones, she was discovered by fashion illustrator Antonio Lopez and subsequently became a model for the Wilhelmina modelling agency. In 1973, she returned to the States and began work in New York City as a waitress at the Lion\'s Head Tavern in Greenwich Village. While modelling, Lange was discovered by Hollywood producer Dino De Laurentiis, who was looking to cast his next leading lady, an ingenue for his remake of the 1933 <i>King Kong</i>. Despite being a box-office success - it became the fifth-highest-grossing film of 1976 - and receiving an Academy Award for Best Visual Effects, the film and her performance were widely panned. However, renowned film critic Pauline Kael praised her, noting, \"The movie is sparked by Jessica Lange\'s fast yet dreamy comic style. [She] has the high, wide forehead and clear-eyed transparency of Carole Lombard in <i>My Man Godfrey</i>, [and] one liners so dumb that the audience laughs and moans at the same time, yet they\'re in character, and when Lange says them she holds the eye and you like her, the way people liked Lombard.\" Lange went on to win the 1976 Golden Globe Award for New Star of the Year. She remained a favorite of Kael, who later wrote \"She has a facial structure that the camera yearns for, and she has talent, too.\"</p>\r\n<p>At the close of the decade, Bob Fosse, whom Lange had befriended and with whom she had carried on a casual romantic affair, cast Lange as the Angel of Death, a part that he had written specifically for her in his semiautobiographical film, <i>All That Jazz</i> (1979). She had also been considered for the role of Wendy Torrance in <i>The Shining</i> before that role ultimately went to Shelley Duvall.</p>\r\n<p>Lange began the new decade in the light romp <i>How to Beat the High Cost of Living</i> (1980), co-starring Jane Curtin and Susan Saint James, but it received mostly negative reviews and quickly disappeared from theaters. A year later, she was contacted by director Bob Rafelson regarding a project on which he was working with Jack Nicholson, who had recently auditioned Lange for <i>Goin\' South</i> (1978). Rafelson paid Lange a visit in upstate New York, where she was doing summer stock theater, and has famously recounted how he watched the budding actress conversing on the telephone for half an hour before their meeting when he decided that he had found the lead for his film. After his meeting with Lange, he wrote her name down on a piece of paper, placed it in an envelope, and sealed it. After several meetings and auditions with other actresses (though Rafelson had already made his decision, he feared he had done so too quickly and wanted to make sure his choice was absolutely right), the final choice was between Lange and Meryl Streep. In the end, Rafelson offered Lange the lead role opposite Nicholson in his remake of the classic <i>film noir</i>, <i>The Postman Always Rings Twice</i> (1981). Upon offering her the part, he gave her the sealed envelope in which he had placed the piece of paper with her name on it. Although the controversial film received mixed reviews, Lange was widely praised for her performance.</p>\r\n<p>While editing <i>The Postman Always Rings Twice</i>, Graeme Clifford realized he had found the leading lady for his next film - his first as a director; a biographical film of actress Frances Farmer, whose disillusionment with Hollywood and chaotic family background led her down a tragic path. Filming <i>Frances</i> (1982), which co-starred Kim Stanley and Sam Shepard, was a grueling experience for Lange, who pored over the screenplay scene by scene, making deep and often taxing connections between her life and Farmer\'s to tap into the well of emotions the role required. By the end of the shoot, she was physically and mentally spent. Due to this, she decided to take her co-star Stanley\'s advice to star in \"something light\", which led her to accept a supporting role opposite Dustin Hoffman in Sydney Pollack\'s <i>Tootsie</i> (1982).</p>\r\n<p>In 1982, Lange became the first performer in 40 years to receive two Academy Award nominations in the same year, scoring a nomination for her work in <i>Frances</i> and eventually winning the Academy Award for Best Supporting Actress for her work in <i>Tootsie</i>, which not only became the second-highest-grossing film of 1982, following Steven Spielberg\'s <i>ET</i>, but which also scored an additional nine Oscar nominations, including one for Best Picture. Her performance in the film also earned her a Golden Globe, along with awards from the National Society of Film Critics, the New York Film Critics Circle, the Boston Society of Film Critics, and the Kansas City Film Critics Circle. Lange also won Best Actress at the Moscow International Film Festival for her performance in <i>Frances</i>.</p>\r\n<p>Lange next produced and starred, again opposite Shepard, in 1984\'s <i>Country</i>, a topical film depicting a family during the farm crisis. Her performance earned her Academy Award and Golden Globe nominations for Best Actress. That same year, she made her television debut as Maggie the Cat, starring opposite Tommy Lee Jones in a CBS <i>Playhouse</i> production of Tennessee Williams\'s <i>Cat on a Hot Tin Roof</i>. The following year, she testified before the United States Congress on behalf of the Democratic House Task Force on Agriculture, alongside Jane Fonda and Sissy Spacek, whom she later neighbored and befriended.</p>\r\n<p>At the close of 1985, she portrayed legendary country singer Patsy Cline in Karel Reisz\'s biopic, <i>Sweet Dreams</i>, opposite Ed Harris, Ann Wedgeworth, and John Goodman. She was nominated a fourth time for an Oscar and came in second place for both the National Board of Review Award for Best Actress and the National Society of Film Critics Award for Best Actress. In several interviews, Meryl Streep has stated that she \"begged\" Reisz, who directed her in 1981\'s <i>The French Lieutenant\'s Woman</i>, for the role of Cline, but that his first choice had always been Lange. Streep has also been quite vocal and adamant in her praise for Lange\'s performance, calling her \"beyond wonderful\" in the film and stating, \"I couldn\'t imagine doing it as well or even coming close to what Jessica did because she was so amazing in it.\" In 2018, Streep further commented, \"Jessica did it better than any human being could possibly have done it.\" Streep has also admitted, \"Every job I\'ve ever taken, about three weeks before I begin, I call up my agent and say, \'I don\'t think I can do this. I don\'t think I\'m right for it. They should call up Jessica Lange.\'\"</p>\r\n<p>Lange\'s films throughout the mid- to late 1980s, which included <i>Crimes of the Heart</i> (1986), <i>Far North</i> (1988), and <i>Everybody\'s All-American</i> (1989). In 1989, she starred in Costa-Gavras\' <i>Music Box</i> Lange played a Hungarian lawyer defending her father of Nazi war crimes. Her performance earned her a fifth Academy Award nomination and a sixth Golden Globe nomination for Best Actress.</p>\r\n<p>Lange continued making films throughout the 1990s, periodically taking time off to raise her children and also choosing theater- and television-based projects. She began the decade in Paul Brickman\'s warmly received <i>Men Don\'t Leave</i> (1990), for which she earned positive reviews and came in third place for the National Society of Film Critics Award for Best Actress. She was then approached by Martin Scorsese and Robert De Niro, who had both auditioned her for the role of Jake LaMotta\'s wife in <i>Raging Bull</i> (1981), to star in a remake of <i>Cape Fear</i> (1991). The film became the 12th-highest-grossing film of the year. In 1992, Lange once again starred opposite Robert De Niro in Irwin Winkler\'s <i>Night and the City</i> and also starred in a television adaptation of Willa Cather\'s <i>O Pioneers!</i>, receiving her seventh Golden Globe nomination for Best Actress.</p>\r\n<p>In 1994, Lange was lauded for her performance as a manic depressive army wife in the 1960s in Tony Richardson\'s final film, <i>Blue Sky</i>. In 1995, she won the Academy Award for Best Actress for this performance, along with the Golden Globe Award for Best Actress, the Los Angeles Film Critics Association Award for Best Actress, the Utah Film Critics Association Award for Best Actress, and the Sant Jordi Award for Best Actress. She also came in second place for the National Board of Review Award for Best Actress, the National Society of Film Critics Award for Best Actress, and the Chicago Film Critics Association Award for Best Actress. She became the second actress in history, after Meryl Streep, to follow up a Best Supporting Actress Oscar win with a Best Actress Oscar win, an achievement not repeated until nearly twenty years later by Cate Blanchett.</p>\r\n<p>In 1995, she followed her victory with further critically lauded performances in <i>Losing Isaiah</i>, opposite Halle Berry, and <i>Rob Roy</i>, with Liam Neeson. That same year, Lange reprised her role as Blanche DuBois in a CBS television adaptation of <i>A Streetcar Named Desire</i>, opposite Alec Baldwin, Diane Lane, and John Goodman. She received glowing reviews for her performance, which earned her fourth Golden Globe Award and her first Primetime Emmy Award nomination for Outstanding Lead Actress in a Miniseries or a Movie.</p>\r\n<p>In 1996, Lange made her London stage debut in another performance as Blanche DuBois, which received rave reviews. The following year, she starred opposite Michelle Pfeiffer in a film adaptation of Jane Smiley\'s Pulitzer Prize-winning novel, <i>A Thousand Acres</i>. Lange received her ninth Golden Globe Award nomination and won the Venice Film Festival\'s Schermi d\'Amore award for her performance in the film. In 1998, she starred opposite Elisabeth Shue in a film adaptation of Balzac\'s <i>Cousin Bette</i>, for which she received strong reviews. That same year, Lange also starred opposite Gwyneth Paltrow in the somewhat cult classic, <i>Hush</i>, which generally received negative reviews. Roger Ebert, however, praised Lange\'s performance, commenting, \"The film\'s most intriguing element is the performance by Jessica Lange, who by not going over the top provides Martha with a little pathos to leaven the psychopathology.\"</p>\r\n<p>Lange received strong reviews for her performance in <i>Titus</i>, Julie Taymor\'s 1999 adaptation of William Shakespeare\'s <i>Titus Andronicus</i>, co-starring Anthony Hopkins and Alan Cumming. Film critic for <i>Entertainment Weekly</i>, Lisa Schwarzbaum, included Lange in a \"for your consideration\" article directed at the Academy of Motion Picture Arts and Sciences. She commented, \"Jessica Lange already has two Oscars and six nominations to her credit, so her appearance near the words \'Academy Awards\' should never be a surprise. But everything about her daring performance in <i>Titus</i> as Tamora, the Queen of the Goths, is an astonishment. Donning breastplates, vowing vengeance, tearing into Shakespeare for the first time as if nothing could be more fun, Lange steals the show - and when the star of the show is Anthony Hopkins, that\'s grand theft.\"</p>\r\n<p>She appeared mostly in supporting roles thereafter, most notably opposite Christina Ricci in the 2001 adaptation of Elizabeth Wurtzel\'s best-selling memoir on depression, <i>Prozac Nation</i>. In 2003, Lange starred opposite Tom Wilkinson in HBO\'s <i>Normal</i>, a film about a man who reveals to his wife his decision to have a sex change, for which she received nominations for the Emmy and Golden Globe Awards for Best Actress in a Miniseries or Movie. She followed this with performances in the Bob Dylan vehicle, <i>Masked and Anonymous</i> (2003), Tim Burton\'s <i>Big Fish</i> (2003), Jim Jarmusch\'s <i>Broken Flowers</i> (2005) and Wim Wenders\' <i>Don\'t Come Knocking</i> (2005). She later starred with Tammy Blanchard in a remake of <i>Sybil</i> in 2007.</p>\r\n<p>In 2009, Lange co-starred as Big Edie, opposite Drew Barrymore, in HBO\'s <i>Grey Gardens</i>, directed by Michael Sucsy and based on the 1975 documentary of the same name. The film was a huge success, garnering 17 Primetime Emmy Award nominations and winning five. Lange won her first Primetime Emmy Award for Outstanding Lead Actress in a Miniseries or a Movie after two previous nominations in the same category. She also received her eleventh Golden Globe Award nomination and second Screen Actors Guild Award nomination for her performance, losing both awards to Barrymore.</p>\r\n<p>In 2011, Lange joined the cast of FX\'s horror anthology series <i>American Horror Story</i>. Series co-creators Ryan Murphy and Brad Falchuk originally wrote her part as a supporting character, but after Lange acquired the role, they expanded it considerably. Murphy, a long-time admirer of Lange, stated that he chose her because he wanted to expose her work to a new generation of viewers. He also singled out her performance as Blanche DuBois on Broadway in 1992, which he saw twice, as his favorite performance, citing it as another motivating factor in hiring Lange. The show was a huge success not only for the network and creators, but also for Lange, who experienced a resurgence in her popularity, receiving rave reviews and several awards for her controversial role. She was chosen by <i>TV Guide</i>, <i>Entertainment Weekly</i>, and <i>MTV</i> for giving one of the \"best performances of 2011\". In addition, she won a second Primetime Emmy Award, a fifth Golden Globe Award, and her first Screen Actors Guild Award, after two previous nominations. She was also awarded a Special Achievement Satellite Award for Outstanding Performance in a Television Series by the International Press Academy and the Dorian Award for Best TV Performance of the Year by the <i>Gay and Lesbian Entertainment Critics Association</i> (GALECA). She was further nominated for the TCA Award for Individual Achievement in Drama, Critics\' Choice Television Award, and Saturn Award.</p>\r\n<p>In 2012, she had a supporting role in her <i>Grey Gardens</i> director Michael Suscy\'s box-office hit <i>The Vow</i>, opposite Channing Tatum and Rachel McAdams, but also returned to star as the lead in the second season of <i>American Horror Story</i>, titled <i>American Horror Story: Asylum</i>. Once again, she was chosen by <i>TV Guide</i> and <i>Entertainment Weekly</i> for giving one of the \"best performances of 2012\". She won a second Dorian Award for Best TV Performance of the Year by the GALECA, and received a fifth Emmy nomination, a thirteenth Golden Globe Award nomination, a fourth Screen Actors Guild Award nomination, a second Saturn Award nomination, and a second Critics\' Choice Television Award nomination.</p>\r\n<p>In 2013, the third season of <i>American Horror Story</i>, <i>American Horror Story: Coven</i>, garnered the series its highest ratings to that point, and has held the record for garnering the series its highest on-average ratings. Lange was joined by fellow film actors Kathy Bates and Angela Bassett. For her work on the show, Lange earned a third Primetime Emmy Award for Best Actress in a Movie or Miniseries, a third Dorian Award for Best TV Performance of the Year and her first Critic\'s Choice Television Award for Best Actress in a Movie or Miniseries. She also received her fourteenth Golden Globe nomination, her fifth Screen Actors Guild Award nomination and her fifth Satellite Award nomination for her performance on the series. In addition, Lange replaced Glenn Close in a film adaptation of Émile Zola\'s <i>Thérèse Raquin</i>, directed by Charlie Stratton and titled <i>In Secret</i>, co-starring Elizabeth Olsen, Tom Felton, Oscar Isaac, and Matt Lucas for which she received rave reviews.</p>\r\n<p>Lange began 2014 by being honored with a nomination for a star on The Hollywood Walk of Fame, though she has yet to claim it. Lange was also recognized by <i>Elle Magazine</i> with the L\'Oreal de Paris Legend Award presented to her by her friend Shirley MacLaine during <i>The Women in Hollywood Awards</i>, honoring women for their outstanding achievements in film, spanning all aspects of the motion picture industry, including acting, directing, and producing. She was next honored with and became the first female recipient of the Kirk Douglas Award for Excellence in Film, presented to her by the Santa Barbara International Film Festival.</p>\r\n<p>Later in the year, Marc Jacobs chose Lange to be the new face of Marc Jacobs Beauty. In addition, Lange was featured in the brand\'s summer and fall print ad campaign photographed by David Sims, and starred in a short campaign film directed by Jacobs. Previously, Jacobs dressed and interviewed Lange for <i>Love</i> magazine\'s fifth-anniversary issue, and had her provide a spoken-word version of \"Happy Days Are Here Again\" as the soundtrack for his autumn/winter 2014 show. She next starred opposite Mark Wahlberg in the remake of the 1970s action-thriller, <i>The Gambler</i>, receiving rave reviews for her work. She also led the fourth season of <i>American Horror Story</i>, titled <i>American Horror Story: Freak Show</i>. The series, once again, topped its and the network\'s highest ratings, breaking all ratings records for both. Though self-admittedly not a singer, Lange\'s covers of David Bowie\'s \"Life on Mars\" and Lana Del Rey\'s \"Gods and Monsters\" for the show were both hugely popular, receiving heavy circulation on YouTube and charting in the top 50 on the iTunes music charts. For her work on the show, Lange received her seventh Primetime Emmy Award nomination, her fifteenth Golden Globe nomination, and her fourth Critics\' Choice Television Award nomination. In 2015, Lange announced that she would not return for the series\' fifth season. She followed her final season on <i>American Horror Story</i> with role opposite Shirley MacLaine and Demi Moore in the road-trip comedy, <i>Wild Oats</i>, which wrapped production at the end of 2014. It premiered on Lifetime on August 22, 2016 before receiving a limited theatrical release on September 16, 2016.</p>\r\n<p>In 2016, Lange had a supporting role in Louis C.K.\'s critically acclaimed and Peabody Award-winning web series <i>Horace and Pete</i>, which debuted on C.K.\'s website on January 30, 2016. She next returned to Broadway alongside Michael Shannon, Gabriel Byrne and John Gallagher Jr. in a revival of <i>Long Day\'s Journey into Night</i> at the American Airlines Theatre, produced by Ryan Murphy and the Roundabout Theatre Company. The show became the most Tony-nominated play of the season. For her performance, Lange garnered her first Tony Award for Best Performance by a Leading Actress in a Play nomination and win, an Outer Critics Circle Award for Best Lead Actress after one previous nomination, a Drama Desk Award for Outstanding Actress in a Play, and a <i>BroadwayWorld.com Award</i> for Best Leading Actress in a Play. She was also nominated for a Drama League Award for Distinguished Performance, a Time Out New York Award for Best Performance by an Actress in a Leading Role in a Play, and a Broadway.com Audience Choice Award for Favorite Actress in a Play.</p>\r\n<p>On November 12, 2016, Lange was honored at the Camerimage Film Festival, where she was awarded the Krzysztof Kieslowski Award for Acting.</p>\r\n<p>Lange next starred in FX\'s anthology series, <i>Feud</i>, also serving as producer alongside Susan Sarandon, who also co-starred, and executive producers Ryan Murphy and Brad Falchuk. The first season revolved around the infamous rivalry between Hollywood legends Bette Davis (Sarandon) and Joan Crawford (Lange), which came to a head during the making of the classic film, <i>Whatever Happened to Baby Jane?</i>. Alfred Molina, Stanley Tucci, Judy Davis and Catherine Zeta-Jones co-starred. Production began in the fall of 2016 and it was released on March 5, 2017. The series garnered Lange her eighth Emmy Award nomination for Outstanding Lead Actress in a Limited Series or Movie, her sixteenth Golden Globe Award nomination, her sixth SAG Award nomination, her fourth Critics Choice Award nomination and her second TCA Award nomination for Individual Achievement in Drama. Lange was also honored by the Trinity Repertory Company\'s Pell Award for Lifetime Achievement in the Arts on May 23, 2017.</p>\r\n<p>In 2018, Lange was also honored with the Jason Robards Award for Excellence in Theater by the Roundabout Theater Company. Lange also reprised her role of Constance Langdon in <i>American Horror Story: Apocalypse</i> on episode 6 and 10. Lange has been cast opposite Gwyneth Paltrow in the Netflix series <i>The Politician</i>. Lange is also lined up to star opposite Naomi Watts in Gia Coppola\'s second film, <i>The Lonely Doll</i>, adapted from Jean Nathan\'s memoir, <i>The Search for Dare Wright: The Secret Life of the Lonely Doll</i>, which chronicled the life of Dare Wright and her tempestuous relationship with her mother, Edith Stevenson Wright.</p>', 'actors/jessica-lange_Cover.jpg');
INSERT INTO `actors` (`id`, `first_name`, `middle_name`, `last_name`, `gender`, `about`, `img`) VALUES
(36, 'Jim', '', 'Parsons', 'M', '<p>Known for playing Sheldon Cooper in the CBS sitcom <i>The Big Bang Theory</i>. He has received several awards for his performance, including four Primetime Emmy Awards for Outstanding Lead Actor in a Comedy Series and the Golden Globe Award for Best Actor in a Television Series Musical or Comedy.</p>\r\n<p>James Joseph Parsons was born at St. Joseph Hospital in Houston, Texas, and was raised in one of its northern suburbs, Spring. He is the son of Milton Joseph \"Mickey/Jack\" Parsons, Jr. and teacher Judy Ann (née McKnight). His sister Julie Ann Parsons is also a teacher. After playing the role of the Kola-Kola bird in a school production of <i>The Elephant\'s Child</i> at age six, Parsons was determined to become an actor. He attended Klein Oak High School in Spring. Parsons points to a role in <i>Noises Off</i> during his junior year as the first time \"I fully connected with the role I was playing and started to truly understand what it meant to be honest on stage.\" The young Parsons was heavily influenced by sitcoms, particularly <i>Three\'s Company</i>, <i>Family Ties</i>, and <i>The Cosby Show</i>.</p>\r\n<p>After graduating from high school, Parsons received a bachelor\'s degree from the University of Houston. He was prolific during this time, appearing in 17 plays in 3 years. He was a founding member of Infernal Bridegroom Productions and regularly appeared at the Stages Repertory Theatre. Parsons enrolled in graduate school at the University of San Diego in 1999. He was one of seven students accepted into a special two-year course in classical theater, taught in partnership with the Old Globe Theater. Program director Rick Seer recalled having reservations about admitting Parsons, saying, \"Jim is a very specific personality. He\'s thoroughly original, which is one reason he\'s been so successful. But we worried, \'Does that adapt itself to classical theater, does that adapt itself to the kind of training that we\'re doing?\' But we decided that he was so talented that we would give him a try and see how it worked out.\" Parsons enjoyed school and told an interviewer that he would have pursued a doctorate in acting if possible: \"school was so safe!.....you frequently would surprise yourself by what you were capable of, and you were not surprised by some things.\" Parsons graduated in 2001 and moved to New York.</p>\r\n<p>Parsons traced his family\'s history on TLC\'s <i>Who Do You Think You Are?</i> in September 2013 and discovered French heritage from his father\'s side. One of his ancestors was the French architect Louis-François Trouard (1729-1804).</p>\r\n<p>In New York, Parsons worked in Off-Broadway productions and made several television appearances. In a much-discussed 2003 Quiznos commercial, Parsons played a man who had been raised by wolves and continued to nurse from his wolf \"mother\". He had a recurring role on the television show <i>Judging Amy</i> and appeared on the television series <i>Ed</i>. Parsons also had minor roles in several movies, including <i>Garden State</i> and <i>School for Scoundrels</i>.</p>\r\n<p>Parsons has estimated that he auditioned for between 15 and 30 television pilots, but on many of the occasions when he was cast, the show failed to find a television network willing to purchase it. The exception came with <i>The Big Bang Theory</i>. After reading the pilot script, Parsons felt that the role of Sheldon Cooper would be a very good fit for him. Although he did not feel any sort of relationship with the character, he was enchanted by the dialogue structure, the way the writers \"brilliantly use those words that most of us don\'t recognize to create that rhythm. And the rhythm got me. It was the chance to dance through that dialogue, and in a lot of ways still is.\"</p>\r\n<p>In his audition, Mr. Parsons so impressed series creator Chuck Lorre that Lorre insisted on a second audition to see if Parsons could replicate the performance. Parsons was cast as Sheldon Cooper, a physicist with social apathy who frequently belittles his friends and the waitress who lives across the hall. The role requires Parsons to \"rattle off line after line of tightly composed, rhythmic dialogue, as well as then do something with his face or body during the silence that follows.\" Parsons credits his University of San Diego training with giving him the tools to break down Sheldon\'s lines.</p>\r\n<p>Television critic Andrew Dansby compares Parsons\'s physical comedy to that of Buster Keaton and other silent film stars. Lorre praises Parsons\' instincts, saying that \"You can\'t teach that.\" Lorre describes Parsons\' \"great sense of control over every part of his body, the way he walks, holds his hands, cocks his head, the facial tics as \'inspired\'.\" Reviewer Lewis Beale describes Parsons\' performance as \"so spot-on, it seems as if the character and the actor are the same person.\" Parsons admits that the work is \"more effort than I ever thought a sitcom would take. And that\'s really the fun of it.\"</p>\r\n<p>In August 2009, Parsons won the Television Critics Association award for individual achievement in comedy, beating Alec Baldwin, Tina Fey, Steve Carell, and Neil Patrick Harris. Parsons was nominated for Primetime Emmy Awards in 2009, 2010, 2011, 2012, 2013 and 2014 for Outstanding Lead Actor in a Comedy Series, winning in 2010, 2011, 2013 and 2014. In September 2010, Parsons and co-stars Johnny Galecki and Kaley Cuoco signed new contracts, guaranteeing each of them $200,000 per episode for the fourth season of <i>The Big Bang Theory</i>, with substantial raises for each of the next three seasons. The three were also promised a percentage of the show\'s earnings. In January 2011, Parsons won the Golden Globe award for Best Actor in a Television Series - Comedy (the award was presented by co-star Cuoco). From August 2013, Parsons, Cuoco and Galecki each earned $325,000 per episode. In August 2014, Parsons, Galecki and Cuoco once again signed new contracts, guaranteeing each of them $1,000,000 per episode for the eighth, ninth, and tenth seasons of <i>The Big Bang Theory</i>, as well as quadrupling their percentage of the show\'s earnings to over 1% each.</p>\r\n<p>In August 2018, Parsons announced his refusal of a contract worth $50 million for seasons 13 and 14. The producers simultaneously announced that, after 279 episodes, the most of any multi-camera series in TV history, the show will come to an \"epic, creative close\" in May 2019. Parsons is expected to remain in his role as narrator of the prequel series, <i>Young Sheldon</i>.</p>\r\n<p>In 2011, Parsons appeared with Jack Black, Owen Wilson, Steve Martin, and Rashida Jones in the comedy film <i>The Big Year</i>. It was released in October. That same year, he appeared as the human alter ego of Walter, the newest Muppet introduced in <i>The Muppets</i>. On May 18, 2012, Parsons began appearing on Broadway as Elwood P. Dowd in a revival of <i>Harvey</i>.</p>\r\n<p>Parsons received a star on the Hollywood Walk of Fame on March 11, 2015. He voiced Oh, one of the lead roles in the DreamWorks Animation comedy film <i>Home</i> (2015), alongside Rihanna. On January 29, 2015, it was announced that Parsons would star as God in the Broadway production of <i>An Act of God</i>, a new play by David Javerbaum and directed by Joe Mantello. The play began previews at Studio 54 on May 5, 2015 and closed August 2, 2015, to positive reviews.</p>\r\n<p>In 2017, Parsons started hosting his own SiriusXM talk show, <i>Jim Parsons Is Too Stupid for Politics</i>. The show ran for six weeks.</p>\r\n<p>In 2018, Parsons was one of the actors who voiced the audiobook <i>A Day in the Life of Marlon Bundo</i>.</p>', 'actors/jim-parsons_Cover.jpg'),
(37, 'J.', 'K.', 'Simmons', 'M', '<p>Jonathan Kimble Simmons was born on January 9, 1955, in Grosse Pointe, Michigan, a suburb of Detroit, the son of Patricia (née Kimble), an administrator, and Donald William Simmons, a middle school music teacher. In 1965, when he was 10 years old, his family moved to Worthington, Ohio, a suburb of Columbus, Ohio. From 1970-1972, Simmons attended Thomas Worthington High School, where he participated in drama, football, and choir. In 1973, when he was 18, they moved to Missoula, Montana, where his father became director of the School of Music at the University of Montana. The younger Simmons graduated from the University of Montana in 1978 with a music degree. During his tenure, he was also part of the music-oriented fraternity Phi Mu Alpha Sinfonia. Later, Simmons moved to Seattle and became a member of the Seattle Repertory Theatre.</p>\r\n<p>On Broadway, Simmons played Benny Southstreet in the 1992 revival of <i>Guys and Dolls</i>. In 1994 he sang multiple roles in the Wagner opera satire, <i>Das Barbecü</i>. He also played the role of Jigger in a revival of <i>Carousel</i> with the Houston Grand Opera and starred in the 1987 Off-Broadway musical <i>Birds of Paradise</i>.</p>\r\n<p>He is known for his roles as Dr. Emil Skoda, a police psychiatrist who has appeared on three of the four incarnations of <i>Law & Order</i> and <i>New York Undercover</i>, and as sadistic neo-Nazi inmate Vernon Schillinger on the prison drama <i>Oz</i>. He also stars as Ralph Earnhardt, the father of race-car driver Dale Earnhardt, in <i>3: The Dale Earnhardt Story</i>. He plays Will Pope, Assistant Chief of the LAPD, in the series <i>The Closer</i>. In the show <i>Raising Hope</i>, he plays Burt Chance\'s brother Bruce Chance. In a precursor to joining the <i>Law & Order</i> cast as Skoda, Simmons appeared in <i>Homicide: Life on the Street</i>, portraying a criminal in a <i>Law & Order</i> cross-over episode. Other roles include that of an army general in the television sitcom <i>Arrested Development</i>, and Dan the Barber in the surreal Nickelodeon series <i>The Adventures of Pete & Pete</i> in 1995.</p>\r\n<p>He played B.R. in the film <i>Thank You for Smoking</i> (2005) and has been praised for his performance in <i>Juno</i> (2007) as \"Mac\" McGuff, the title character\'s father. In all three of Sam Raimi\'s <i>Spider-Man</i> films, Simmons played J. Jonah Jameson, editor-in-chief of the newspaper <i>Daily Bugle</i> (as well as in the expanded video game adaptation of Spider-Man 3). In 2008, he played a CIA superior in <i>Burn After Reading</i> and appeared in <i>Postal</i> as Candidate Welles. He also appeared in <i>I Love You, Man</i> as the father of Paul Rudd\'s character.</p>\r\n<p>Mr. Simmons starred in several films produced or directed by his friend Jason Reitman, including <i>Thank You for Smoking, Juno</i>, <i>Up in the Air</i>, and <i>Jennifer\'s Body</i>. In 2013, he had a small role as Mr. Jervis in Reitman\'s film <i>Labor Day</i>. He voices Tenzin, an Airbending master and the son of Aang and Katara, in the 2012 Nickelodeon series <i>The Legend of Korra</i>. He starred as blind lawyer \"Mel Fisher\" in <i>Growing Up Fisher</i>. From 2015 to 2016, he voiced the scientist Stanford Pines on the Disney XD cartoon series <i>Gravity Falls</i>.</p>\r\n<p>In the 2014 drama film <i>Whiplash</i>, Simmons played Terence Fletcher, an intensely demanding conductor at the fictional Shaffer Conservatory of Music, who bullies and cajoles his student, Andrew Neiman (Miles Teller). The wide acclaim for Simmons\'s performance included an Academy Award win for Best Supporting Actor. <i>Rolling Stone</i> said \"Beat the drums for an Oscar for Simmons.\" Richard Roeper of the <i>Chicago Sun-Times</i> said \"Simmons delivers one of the most memorable performances of the year.\" <i>Entertainment Weekly</i> summed up the reaction by saying Simmons\'s performance \"has been universally praised\" and that he was \"a leading contender for Best Supporting Actor.\" On January 11, 2015, Simmons won the Golden Globe Award for Best Supporting Actor - Motion Picture and the Academy Award for Best Supporting Actor on February 22, 2015.</p>\r\n<p>In January 2015, Simmons was cast in a leading role in the film <i>Kong: Skull Island</i>, though he and Michael Keaton later exited the film. Simmons performed a substantial number of voice-over roles alongside his live action work. Several of these have arisen from his J. Jonah Jameson character in Raimi\'s <i>Spider-Man</i> films, including voices of two newspaper editors in episodes of the eighteenth season of <i>The Simpsons</i>. Likewise, Simmons voiced an editor-in-chief of a newspaper (with Jameson\'s appearance and mannerisms) for a 2013 episode of The Hub\'s <i>Pound Puppies</i>. In 2016, Simmons lent his voice to two animated films, voicing the antagonist Kai in <i>Kung Fu Panda 3</i> and Mayor Lionheart in <i>Zootopia</i>. <i>Worlds Apart</i> is a 2015 Greek drama film directed by Christoforos Papakaliatis. <i>Worlds Apart</i> consists of three separate narratives, each following a love story between a foreigner and a Greek. Each story represents a different generation falling in love during a time of socioeconomic turmoil that dominates Southern Europe as a whole, only to connect as a single story in the end. Simmons stars as Sebastian.</p>\r\n<p>Simmons reprised his role as the voice of J. Jonah Jameson in the animated series <i>Ultimate Spider-Man</i>, <i>The Avengers: Earth\'s Mightiest Heroes</i>, and <i>Avengers Assemble</i>. He has also expressed interest in reprising the role in Sony and Marvel Studios\' reboot of the <i>Spider-Man</i> film series, <i>Spider-Man: Homecoming</i>, released in 2017. In friend Reitman\'s film <i>Young Adult</i>, he voiced the protagonist\'s boss, via a series of voicemails. He also provided the voice of General Wade Eiling in <i>Justice League Unlimited</i>. He recorded an audiobook for Tom Clancy\'s <i>Net Force: Point of Impact</i>.</p>\r\n<p>In 2017, Simmons portrayed Commissioner James Gordon in Zack Snyder\'s film <i>Justice League</i>, part of the DC Extended Universe. He is set to reprise the role in Matt Reeves\'s stand-alone Ben Affleck Batman film <i>The Batman</i>.</p>\r\n<p>In the field of television commercials, Simmons is wildly known for being the voice of the yellow M&M, a role he has played since 1996, replacing John Goodman. He has also done voice-over work for Norelco razors. In live-action, he is featured as Professor Nathaniel Burke of the University of Farmers in ads for Farmers Insurance Group, since 2010.</p>\r\n<p>Simmons appears as the anti-communist U.S. President Howard T. Ackerman in the video game <i>Command & Conquer: Red Alert 3</i> and for a series of promotional advertisements parodying the 2008 presidential elections. In these advertisements, he offers himself (as Ackerman) as an alternative to other, unnamed presidential candidates and uses the slogan \"Vote for me, if you want to live.\"</p>\r\n<p>In April 2011, he appeared in <i>Portal 2</i> as the voice of Aperture Science founder Cave Johnson, a performance that was lauded as the \"surprise star turn\" of the game. He reprised his role as Cave Johnson in the 2015 video game <i>Lego Dimensions</i>.</p>)\n', 'actors/j-k-simmons_Cover.jpg'),
(38, 'John', '', 'Lithgow', 'M', '<p>Received two Tony Awards, six Emmy Awards, two Golden Globe Awards, three Screen Actors Guild Awards, four Drama Desk Awards, and has been nominated for two Academy Awards and four Grammy Awards. Lithgow has received a star on the Hollywood Walk of Fame and has been inducted into the American Theater Hall of Fame.</p>\r\n<p>John Arthur Lithgow was born in Rochester, New York. His mother, Sarah Jane (née Price), was a retired actress. His father, Arthur Washington Lithgow III, was a theatrical producer and director who ran the McCarter Theatre in Princeton, New Jersey. His father was born in Puerto Plata, Dominican Republic, to an American-Dominican family of Scottish, English and French descent. Lithgow is descended from <i>Mayflower</i> passenger and colonial governor William Bradford. Because of his father\'s job, the family moved frequently during Lithgow\'s childhood; he spent his childhood years in Yellow Springs, Ohio, where activist Coretta Scott King babysat him and his siblings; he spent his teenage years in Akron (living at Stan Hywet Hall) and Lakewood, Ohio.</p>\r\n<p>Lithgow graduated from Princeton High School in Princeton. He attended Harvard College, and graduated with an A.B. <i>magna cum laude</i> in 1967, in history and literature. Lithgow lived in Adams House as an undergraduate, and later served on Harvard\'s Board of Overseers. He credits a performance at Harvard of Gilbert and Sullivan\'s <i>Utopia Limited</i> with helping him decide to become an actor. After graduation, Lithgow won a Fulbright Scholarship to study at the London Academy of Music and Dramatic Art. Also, after graduation, he served as the Director of the Arts and Literature Department at WBAI, the Pacifica radio station in New York City.</p>\r\n<p>Mr. Lithgow is best known for his television roles as Dick Solomon in the sitcom <i>3rd Rock from the Sun</i> (1996-2001), Arthur Mitchell in the drama <i>Dexter</i> (2009), and Sir Winston Churchill in the drama <i>The Crown</i> (2016), for each of which he won Primetime Emmy Awards.</p>\r\n<p>In film, he is also well known for his film roles in <i>Blow Out</i> (1981), <i>Footloose</i> (1984), <i>Harry and the Hendersons</i> (1987), <i>Shrek</i> (2001) and <i>Love is Strange</i> (2014). His performances in the films <i>The World According to Garp</i> (1982) and <i>Terms of Endearment</i> (1983) each earned him Academy Award nominations for Best Supporting Actor.</p>\r\n<p>On the stage, he has appeared in many Broadway productions including the musical adaptations of <i>Sweet Smell of Success</i> and <i>Dirty Rotten Scoundrels</i>. In 2007, he made his Royal Shakespeare Company debut as Malvolio in Neil Bartlett\'s production of <i>Twelfth Night</i>. He is currently on Broadway opposite Laurie Metcalf in <i>Hillary and Clinton</i>.</p>', 'actors/john-lithgow_Cover.jpg'),
(39, 'Jon', '', 'Cryer', 'M', '<p>Jonathan Niven Cryer was born in New York City, New York. His mother, Gretchen Cryer (née Kiger; * 1935), is a playwright, songwriter, actress and singer. His father, Donald David Cryer (born 1936), is an actor and singer who originally studied to be a minister. Cryer\'s paternal grandfather, the Rev. Donald W. Cryer (1909-1988), was a well-known Methodist minister. He has two sisters, Robin and Shelly.</p>\r\n<p>When Cryer was twelve years old, he decided that he wanted to become an actor. When his mother heard this, she thought he should have a backup plan, and joked: \"Plumbing is a pretty good career.\" Cryer attended Stagedoor Manor Performing Arts Training Center for several summers as a teenager, and is a 1983 graduate of the Bronx High School of Science. He was classmates with screenwriter and film director Boaz Yakin. To his mother\'s \"great disappointment\", Cryer skipped college and went to the Royal Academy of Dramatic Art in London, United Kingdom for a summer short course in Shakespeare.</p>\r\n<p>Mr. Cryer\'s first professional acting effort was as David in the Broadway play <i>Torch Song Trilogy</i>, replacing Matthew Broderick, whom he \"closely resembled\". Cryer was later an understudy and replacement for Broderick in Neil Simon\'s <i>Brighton Beach Memoirs</i> in 1989.</p>\r\n<p>At age 19, Cryer appeared in the 1984 romantic comedy film <i>No Small Affair</i>, in the lead role as Charles Cummings, after the original production with Matthew Broderick was shut down due to a heart attack by director Martin Ritt. He went on to have small roles in films and television movies, and he made his breakthrough as Phil \"Duckie\" Dem(p)ster in the John Hughes-scripted film <i>Pretty in Pink</i>. In an interview with the <i>Daily News</i>, Cryer\'s mother said that after <i>Pretty in Pink</i>, she started getting calls from teenage girls from all over the world, who would leave hysterical, giggling messages on her answering machine. In 1989, he got the lead role in the TV comedy series <i>The Famous Teddy Z</i>. His performance gained poor reviews and the show was canceled after the first season.</p>\r\n<p>A year later, he starred with Charlie Sheen in the Jim Abrahams comedy <i>Hot Shots!</i>, which was received very positively. Cryer is frequently linked to the Brat Pack. In a March 2009 interview on Anytime with Bob Kushell, Cryer stated that he had auditioned for <i>St. Elmo\'s Fire</i> but was not cast in a role. In 1993, he was asked to audition for the role of Chandler Bing on <i>Friends</i>, while doing a play in London. His reading was videotaped by a British casting agent but the tape failed to arrive in the U.S. before the network had made its final decision.</p>\r\n<p>In 1995, he was cast as Bob in the sitcom <i>Partners</i>, which, like his prior show <i>The Famous Teddy Z</i>, was canceled after its first season. In an interview with <i>Time Out New York</i> he stated, \"Hey, every show I\'m in goes down. Think about this: George Clooney was in 28 pilots, or something. It means nothing\". After guest starring on shows such as <i>Dharma & Greg</i> and <i>The Outer Limits</i>, he successfully wrote and produced the film, <i>Went to Coney Island on a Mission from God... Be Back by Five</i>. It debuted in 1998 at the Los Angeles Film Festival and gained positive reviews from critics. Leonard Maltin from <i>Playboy Magazine</i> called it \"a breath of fresh air\". That same year, Cryer landed in another TV series, the Fox sitcom <i>Getting Personal</i>, alongside Vivica A. Fox and Duane Martin. Although the show was picked up for a second season after its abbreviated spring run, it was canceled that fall, after airing 17 episodes in total. In 2000, he was cast as the lead in a comedy series called <i>The Trouble With Normal</i>. For the third time, Cryer starred in a show which was canceled after its first season.</p>\r\n<p>Cryer\'s long run of unsuccessful TV projects finally ended three years later. Against the wishes of CBS executives (who were aware of his past failures) and due to a friendship with Charlie Sheen, he was cast in 2003 to portray Alan Harper on the hit comedy series <i>Two and a Half Men</i>. He has earned seven Primetime Emmy Award nominations and two wins for his acting work on the show. In a comment on the show\'s high ratings, he said: \"When you\'re on a show that\'s fighting for survival every week, you stop trusting your instincts, because you think, \'My instincts haven\'t worked so far.\' But when people clearly like the show and are watching it in great numbers, it takes a huge amount of pressure off you. It allows you to trust your instincts and go with what has worked for you before.\" After former co-star Charlie Sheen\'s departure from the series, Cryer\'s character became the show\'s main protagonist (with Ashton Kutcher being cast as the co-lead) throughout the final four seasons, mainly due to the show\'s retooled plot. At the end of the series of <i>Two and a Half Men</i>, Cryer is the only actor to have appeared in every episode of the series; Sheen was fired in March 2011 and Cryer\'s on-screen son Angus T. Jones left the series at the end of season 10, after describing the show as \"filth\" and calling himself a \"paid hypocrite\". All appeared to be forgiven later, as Jones, unlike Charlie Sheen, appeared to great applause in the finale. Before being cast for <i>Two and a Half Men</i>, Cryer auditioned for the role of Gaius Baltar on the Sci-Fi Channel\'s reimagined <i>Battlestar Galactica</i>, but the role went to James Callis. In 2008, Cryer appeared with Laurence Fishburne and James Cromwell in the film <i>Tortured</i>, and in 2009 co-starred with James Spader in the film <i>Shorts</i>.</p>\r\n<p>Cryer made a guest appearance on the sitcom series <i>Husbands</i> in its second season. He was initially cast to voice the lead character in DisneyToon Studios\' animated film <i>Planes</i>, a spin-off of Pixar\'s <i>Cars</i> franchise, but later dropped out and was replaced by Dane Cook. Cryer did however receive a credit on the film for \"additional story material.\"</p>\r\n<p>In 2015, Cryer released a book titled <i>So That Happened</i>, a breezy, often comic tale chronicling Cryer\'s 30-year career on stage, film and television.</p>\r\n<p>Cryer currently appears in the highly popular CBS drama series <i>NCIS</i>, where he currently plays Navy Dr. Cyril Taft who treats NCIS Special Agent Leroy Jethro Gibbs (Mark Harmon). Cryer had expressed a desire to appear in <i>NCIS</i> since it premiered on September 23, 2003.</p>\r\n<p>Pursuing a passion for criminal justice, Cryer joined the team of the popular podcast <i>Undisclosed</i> where he will be voicing the weekly addendum episode for the second season.</p>\r\n<p>On May 21, 2018, Cryer was featured in the premier of Episode 1, Season 9 of genealogy program <i>Who Do You Think You Are?</i> Cryer\'s journey took him from America to Scotland as he uncovered the dramatic tale of his ancestor James Adams, a Scottish Covenanter soldier who was captured during the Battle of Dunbar in 1650, and endured horrific conditions as a prisoner. He was then transported to America an indentured servant to work at the Saugus Iron Works at Lynn, Massachusetts. As part of his research for the episode, Cryer visited the site of the Battle of Dunbar, Durham Cathedral in Durham, North East England - where surviving Scottish prisoners were held until they were indentured - and the Saugus Iron Works national historic site. Cryer said: \"Seeing the resilience of my family over centuries, you can see the legacy he left. I can\'t help but feel lucky...clearly, the resilience of my family, that spine of steel, was not something that came from nowhere. Moving forward, I\'m going to take James Adams\' strength as my inspiration and know that when you go through very, very difficult times, if you can turn around and help the people around you who had it even worse, that\'s real strength. And I aspire to be one of those people.\"</p>\r\n<p>On November 16, 2018, it was announced that Cryer had been cast as Lex Luthor on The CW\'s <i>Supergirl</i> in a recurring role, starting in the fifteenth episode of Season 4.</p>\r\n<p>On April 15, 2019, Cryer joined other WGA writers in firing their agents as part of the WGA\'s stand against the ATA and the unfair practice of packaging.</p>', 'actors/jon-cryer_Cover.jpg'),
(40, 'Jon', '', 'Hamm', 'M', '<p>\"Acting was fun, but my grandfather would always tell me, \'It\'s never too late to be an engineer.\' You were supposed to get a \'job\' and do acting on weekends or at school.\" - Jon Hamm</p>\r\n<p>Jonathan Daniel Hamm was born in St. Louis, Missouri, the son of Deborah (Garner) and Daniel Hamm. His father managed a family trucking company, and his mother was a secretary. He is of German, English, and Irish descent; his surname came from German immigrants.</p>\r\n<p>Hamm\'s parents divorced when he was two years old, and he lived in St. Louis County in Creve Coeur with his mother until her death from colon cancer, when he was 10 years old. Hamm then lived with his father in Clayton, Missouri, the county seat.</p>\r\n<p>His first acting role was as Winnie the Pooh in first grade. At 16, he was cast as Judas in the play <i>Godspell</i>, and enjoyed the experience, though he did not take acting seriously. He attended John Burroughs School, a private school in Ladue, where he was a member of the football, baseball, and swim teams. During this time, he dated Sarah Clarke, who became an actress. When Hamm was 20, his father died.</p>\r\n<p>After graduation in 1989 Hamm enrolled in the University of Texas, where he was a member of the Upsilon Chapter of Sigma Nu fraternity. There, Hamm was arrested for participating in a violent hazing incident in November 1990. Mark Sanders was beaten with a paddle and a broom by other fraternity members, while Hamm led Sanders around the fraternity house with a hammer claw around Sanders\' testicles; Sanders\' clothes were also set afire. The incident resulted in the fraternity being shut down on campus. Hamm made a plea deal and completed probation under the terms of a deferred adjudication; the charges were dismissed during August 1995.</p>\r\n<p>Hamm enrolled at the University of Missouri. At Missouri he answered an advertisement from a theater company seeking players for a production of <i>A Midsummer Night\'s Dream</i>, auditioned, and was cast in the production. Other roles followed, such as Leon Czolgosz in <i>Assassins</i>.</p>\r\n<p>After graduating in 1993 with a Bachelor of Arts degree in English, Hamm returned to his high school to teach eighth-grade acting. One of his students was Ellie Kemper, who later became an actress and stars with him in the Netflix original television series, <i>Unbreakable Kimmy Schmidt</i>.</p>\r\n<p>Not wishing to stay in a \"normal career\", Hamm relocated to Los Angeles permanently during 1995 with an automobile and $150. He relocated to a house with four other aspiring actors and began working as a waiter while attending auditions. He acted in theatre, including as Flavius in a production of Shakespeare\'s <i>Timon of Athens</i> with the Sacred Fools Theater Company. Looking older than his age, finding work as an actor was difficult, despite representation by the William Morris Agency. During 1998, having failed to obtain any acting jobs after three years, he was terminated as a client by William Morris.</p>\r\n<p>Hamm continued working as a waiter and, briefly, as a set designer for a softcore pornography movie. After repeatedly failing to get promising roles, Hamm set his 30th birthday as a deadline to succeed in Hollywood, stating:</p>\r\n<p>\"You either suck that up and find another agent, or you go home and say you gave it a shot, but that\'s the end of that. The last thing I wanted to be out here was one of those actors who\'s 45 years old, with a tenuous grasp of their own reality, and not really working much. So I gave myself five years. I said, if I can\'t get it going by the time I\'m 30, I\'m in the wrong place. And as soon as I said that, it\'s like I started working right away.</p>\r\n<p>During 2000, Hamm obtained the role of romantic firefighter Burt Ridley on NBC\'s drama series <i>Providence</i>. His one-episode contract grew to 19, and enabled him to quit waiting tables. Hamm made his feature movie debut with one line in Clint Eastwood\'s space adventure <i>Space Cowboys</i> (2000); more substantial roles followed in the independent comedy movie <i>Kissing Jessica Stein</i> (2001) and the war film <i>We Were Soldiers</i> (2002). During filming that movie, he turned 30. His career was bolstered by his playing the recurring role of police inspector Nate Basso on Lifetime\'s television series <i>The Division</i>, from 2002 to 2004. Other minor roles followed on the television series <i>What About Brian</i>, <i>CSI: Miami</i>, <i>Related</i>, <i>Numb3rs</i>, <i>The Unit</i>, and <i>The Sarah Silverman Program</i>. Hamm\'s <i>Mad Men</i> castmate Eric Ladin had said that one of the reasons he admires Hamm is that while he \"made it\" later than most actors, Hamm never gave up on acting.</p>\r\n<p>Hamm landed his breakthrough role during 2007, when he was cast from more than 80 candidates as the protagonist character Don Draper, in AMC\'s drama series <i>Mad Men</i>. In the series, set in a fictional 1960s advertising agency, he plays a suave, married advertising executive with an obscure past. He recalled, \"I read the script for <i>Mad Men</i> and I loved it. [...] I never thought they\'d cast me-- I mean, I thought they\'d go with one of the five guys who look like me but are movie stars\". He believes that an actor with a \"proven track record\" would likely have been chosen if another network had broadcast the show. He went through numerous auditions; each time he explained to the casting directors what he could bring to the character, if given the part. Alan Taylor and <i>Mad Men</i> creator Matthew Weiner initially thought Hamm was too handsome for the role but ultimately decided, \"it was perfect to cast sort of the perfect male in this part\". Weiner also sensed that the actor had suffered early loss of his parents, which was similar to Draper\'s backstory. Hamm says that he used memories of his father to portray Draper, a well-dressed, influential man of business and society hiding great inner turmoil and experiencing changes in the world beyond his control.</p>\r\n<p><i>Mad Men</i> debuted on July 19, 2007, with almost 1.4 million viewers. It developed a loyal audience, with Hamm receiving strong reviews. Robert Bianco of <i>USA Today</i> was complimentary of Hamm\'s performance, describing the actor\'s interpretation of Draper as a \"starmaking performance\". <i>The Boston Globe</i>\'s Matthew Gilbert termed Hamm a \"brilliant lead\".</p>\r\n<p>For his work, Hamm won the Golden Globe Award for Best Actor in a Television Series - Drama during 2008. Also during 2008, he was nominated for both the Screen Actors Guild Award for Outstanding Performance by a Male Actor and the Primetime Emmy Award for Outstanding Lead Actor in a Drama Series. During 2009, Hamm was again nominated for the Golden Globe Award and Screen Actors Guild Award in the same category, and received another Primetime Emmy Award nomination for Outstanding Lead Actor in a Drama Series. During 2010, Mr. Hamm received his third Golden Globe Award nomination. <i>Mad Men</i> concluded its seven-season run on May 17, 2015. Hamm received his first Primetime Emmy Award for Outstanding Lead Actor in a Drama Series on September 20, 2015 after receiving 12 Emmy nominations for acting for and producing the series.</p>\r\n<p>Hamm\'s next film role was for the 2008 science fiction movie <i>The Day the Earth Stood Still</i>, a remake of the 1951 film of the same name. Although the movie received mixed reviews, it was successful financially, earning $230 million worldwide. Hamm hosted <i>Saturday Night Live</i>, season 34, episode 6, on October 25, 2008, and played various roles, including Don Draper in two sketches. He returned as host again on January 30 and October 30, 2010. During 2009, Hamm guest-featured in three episodes of the NBC television situation comedy show <i>30 Rock</i>, as Drew Baird, a doctor who is a neighbor and love interest of Liz Lemon\'s (Tina Fey). For these performances, he received three nominations for the Primetime Emmy Award for Outstanding Guest Actor in a Comedy Series.</p>\r\n<p>Hamm\'s first leading film role came with the independent mystery thriller <i>Stolen</i> in 2009, in which he played a police officer whose son has been missing for eight years. Hamm had a minor voice role in the animated feature <i>Shrek Forever After</i>-released during May 2010-, as an ogre leader named Brogan. Also that year, he appeared as an FBI agent in the movie <i>The Town</i> (2010), with Ben Affleck. After having received \"about 40 scripts that were all set in the 60s, or had me playing advertising guys\", Hamm was pleased that the movie offered a role \"the opposite to Don Draper\". The feature received generally favorable reviews and earned $144 million worldwide.</p>\r\n<p>His next acting role was as defense attorney Jake Ehrlich in the independent film <i>Howl</i>, based on Allen Ginsberg\'s eponymous 1956 poem. On December 12, 2010, Hamm made a guest appearance as an FBI supervisor on Fox\'s animated series <i>The Simpsons</i>. He featured in Zack Snyder\'s action-fantasy film <i>Sucker Punch</i> (2011), as the character High Roller, and the doctor. He also had a supporting role in the comedy <i>Bridesmaids</i> as Kristen Wiig\'s \"rude and arrogant sex buddy\". Hamm was next seen in the independent feature <i>Friends with Kids</i> (2011), which he produced alongside his then-partner Jennifer Westfeldt. The story concerns a group of friends whose lives are changed as the couples in the group begin to have children.</p>\r\n<p>He had a recurring role in the situation comedy <i>The Increasingly Poor Decisions of Todd Margaret</i> in 2012, as the servant of socio-pathic billionaire Dave Mountford (Blake Harrison). Hamm hosted the 21st ESPYS Awards on July 17, 2013. The next year, he played sports agent J.B. Bernstein in Disney\'s sports drama <i>Million Dollar Arm</i> (2014). He co-featured with Daniel Radcliffe in <i>A Young Doctor\'s Notebook</i>, playing an older version of Radcliffe\'s character, from December 2012 to December 2013. In December 2014, Hamm guest starred in a special Christmas episode of the British science fiction anthology series <i>Black Mirror</i>, titled \"White Christmas\". He had a number of roles during 2015, in the comedy shows <i>Unbreakable Kimmy Schmidt</i> and <i>Wet Hot American Summer: First Day of Camp</i>. He was featured in the animated comedy <i>Minions</i>, as the voice of Herb Overkill. <i>Minions</i> was a major box office success; despite mixed reviews, it grossed a total of over $1 billion worldwide.</p>\r\n<p>Hamm featured in the comedy <i>Keeping Up with the Joneses</i>, alongside Zach Galifianakis and Gal Gadot; the film was filmed during the spring of 2015, and was released during October 2016 after being delayed seven months. He appeared in the science fiction film <i>Marjorie Prime</i>, which premiered at the 2017 Sundance Film Festival, Edgar Wright\'s comedy crime film <i>Baby Driver</i>, which premiered at the 2017 South by Southwest Festival, and the drama <i>Aardvark</i>, which premiered at the 2017 Tribeca Film Festival. In 2018, Hamm appeared in the drama <i>Nostalgia</i> and the political thriller <i>Beirut</i>. Hamm appeared in the <i>SpongeBob SquarePants</i> episode \"Goodbye, Krabby Patty?\".</p>\r\n<p>In 2017 Hamm joined the BBC and Amazon\'s television adaptation of Terry Pratchett and Neil Gaiman\'s <i>Good Omens</i> as the Archangel Gabriel.</p>', 'actors/jon-hamm_Cover.jpg');
INSERT INTO `actors` (`id`, `first_name`, `middle_name`, `last_name`, `gender`, `about`, `img`) VALUES
(41, 'Julia', '', 'Louis-Dreyfus', 'F', '<p>One of the most awarded actresses in American television history, winning more Emmy Awards and more Screen Actors Guild Awards than any other performer (eight of the Emmy Awards were for acting, tying Cloris Leachman for the most acting wins).</p>\r\n<p>Julia Scarlett Elizabeth Louis-Dreyfus was born in New York City. Her American-born mother, Judith (née LeFever), was a writer and special needs tutor, and her French-born father, Gérard Louis-Dreyfus, chaired Louis Dreyfus Energy Services.</p>\r\n<p>She is a great-great-granddaughter of Léopold Louis-Dreyfus, who in 1851 founded the Louis Dreyfus Group, a French commodities and shipping conglomerate, which members of her family control into the 21st century. Her paternal grandfather, Pierre Louis-Dreyfus, was president of the Louis Dreyfus Group. Pierre was from an Alsatian Jewish family; he remained in France during World War II, fighting as a cavalry officer and later in the French Resistance. Her paternal grandmother was born in America to parents from Brazil (of German descent) and Mexico; during the 1940s, she moved Julia\'s father to America from France.</p>\r\n<p>In 1962, one year after Louis-Dreyfus\'s birth, her parents divorced. After relocating to Washington, D.C., when Julia was eight, her mother married L. Thompson Bowles, Dean of the George Washington University Medical School. During her childhood, her mother occasionally took her to Unitarian church services.</p>\r\n<p>Louis-Dreyfus spent her childhood in several states and countries, in connection with her stepfather\'s work with Project HOPE, including Vietnam, Colombia, and Tunisia. She graduated from the Holton-Arms School in Bethesda, Maryland, in 1979.</p>\r\n<p>\"There were things I did in school (Holton-Arms School) that, had there been boys in the classroom, I would have been less motivated to do. For instance, I was president of the honor society.\"</p>\r\n<p>Louis-Dreyfus attended Northwestern University in Evanston, Illinois, where she was a member of the Delta Gamma sorority. She studied theatre and performed in the Waa Mu Show, a student-run improv and sketch comedy revue, before dropping out during her junior year to take a job at <i>Saturday Night Live</i>. She later received an honorary doctor of arts degree from Northwestern University in 2007.</p>\r\n<p>As part of her comedic training, Louis-Dreyfus appeared in The Second City, one of Chicago\'s best-known improvisational theatre groups, whose alumni include Alan Arkin, Steve Carell, Stephen Colbert, Tina Fey, Amy Poehler, Shelley Long, John Belushi, Dan Aykroyd, Bill Murray, John Candy, Chris Farley, Bob Odenkirk and many, many others who went on to become successful comedians and pop culture icons. It was her performance with The Practical Theatre Company at their \"Golden 50th Anniversary Jubilee\" that led to her being asked to join the cast of NBC\'s <i>Saturday Night Live</i> at the age of 21.</p>\r\n<p>Louis-Dreyfus subsequently became a cast member on <i>Saturday Night Live</i> from 1982 to 1985, the youngest female cast member in the history of the program at that time. During her time on <i>SNL</i>, she appeared alongside several actors who would later rise to prominence, such as Eddie Murphy, Jim Belushi, Billy Crystal, and Martin Short. It was during her third and final year on <i>SNL</i> that she met writer Larry David during his only year on the show, who would later co-create <i>Seinfeld</i>. Louis-Dreyfus has commented that her casting on <i>SNL</i> was a \"Cinderella-getting-to-go-to-the-ball kind of experience\"; however, she has also admitted that at times it was often quite tense, stating that she \"didn\'t know how to navigate the waters of show business in general and specifically doing a live sketch-comedy show\".</p>\r\n<p>Following her 1985 departure from <i>SNL</i>, Louis-Dreyfus appeared in several films, including the Woody Allen-directed <i>Hannah and Her Sisters</i> (1986); <i>Soul Man</i> (1986), starring C. Thomas Howell; and <i>National Lampoon\'s Christmas Vacation</i> (1989), in which she starred alongside fellow <i>SNL</i> alumnus Chevy Chase. In 1987, Louis-Dreyfus appeared in the NBC sitcom pilot <i>The Art of Being Nick</i>, an intended spin-off from <i>Family Ties</i> starring Scott Valentine. When the pilot did not make it to series, Louis-Dreyfus was retained by producer Gary David Goldberg for a role on his new sitcom <i>Day by Day</i>, as the sarcastic and materialistic neighbor, Eileen Swift. Premiering in early 1988, <i>Day by Day</i> aired for two seasons on NBC before being cancelled.</p>\r\n<p>In the early 1990s, Louis-Dreyfus became famous for the role of Elaine Benes on NBC\'s <i>Seinfeld</i>. She played the role for nine seasons, appearing in all but three episodes. One of the episodes that she did not appear in was the inaugural pilot episode, \"The Seinfeld Chronicles\", because her character was not initially intended to be a part of the series. It was only after the first episode that NBC executives felt the show was too male-centric, and demanded that creators Jerry Seinfeld and Larry David add a woman to the cast. It was revealed in the commentary on the DVD package that the addition of a female character was the condition for commissioning the show. Louis-Dreyfus won the role over several other actresses who would also eventually enjoy their own TV success, including Patricia Heaton, Rosie O\'Donnell and Megan Mullally.</p>\r\n<p>On the \"Notes About Nothing\" featurette on the DVD package, Seinfeld says that Louis-Dreyfus\' ability to eat a peanut M&M without breaking the peanut aptly describes the actress: \"She cracks you up without breaking your nuts.\"</p>\r\n<p>Her performance on the series was met with critical acclaim, and she was a regular winner and nominee at television award shows throughout the 1990s. Her performance earned her two Golden Globe Award nominations, winning once in 1994, nine Screen Actors Guild Award nominations, winning one in 1995 and two in both 1997 and 1998, and seven American Comedy Awards, winning five times in 1993, 1994, 1995, 1997 and 1998. In 1996, she received the Primetime Emmy Award for Outstanding Supporting Actress in a Comedy Series, an award she was nominated for on seven occasions from 1992 to 1998. After receiving the award, Louis-Dreyfus claimed the win was a \"shocker\", and that after being in both positions, it was \"much better to win than to lose.\"</p>\r\n<p>In 1998, Seinfeld decided to end the series after nine seasons. The series finale aired on May 14 and was one of the most watched TV events in history, with over 76 million people tuning in.</p>\r\n<p>During her time on <i>Seinfeld</i> she appeared in several films, including <i>Fathers\' Day</i>, opposite Robin Williams and Billy Crystal, and Woody Allen\'s Oscar-nominated <i>Deconstructing Harry</i>.</p>\r\n<p>Following a voice role in the successful Disney Pixar\'s <i>A Bug\'s Life</i>, Louis-Dreyfus lent her voice as Snake\'s girlfriend Gloria in <i>The Simpsons</i> episode \"A Hunka Hunka Burns in Love\". In 2001, she made several special guest appearances on <i>Seinfeld</i> co-creator Larry David\'s show <i>Curb Your Enthusiasm</i>, playing herself fictionally trying to break the \"curse\" by planning to star in a show in which she would play an actress affected by a <i>Seinfeld</i>-like curse.</p>\r\n<p>After several years away from a regular TV job, Louis-Dreyfus began a new single-camera sitcom, <i>Watching Ellie</i>, which premiered on NBC in February 2002. The series was created by husband Brad Hall, and co-starred Steve Carell and Louis-Dreyfus\' half-sister Lauren Bowles. The initial premise of the show was to present viewers with a \"slice of life\" from the goings-on and happenings of the life of Ellie Riggs, a Southern California jazz singer. The first season included a 22-minute countdown kept digitally in the lower left-hand corner of the screen, which many critics panned, claiming it was useless and \"did nothing for the show.\" Overall, the show received mixed reviews, but debuted strongly with over 16 million viewers tuning in for the series premiere, and maintained an average audience of about 10 million viewers per week.</p>\r\n<p>When the series returned for a second season in the spring of 2003, it suffered a decline in viewership, averaging around eight million viewers per week. The show had undergone a drastic stylistic change between production of seasons one and two. The first season was filmed in the single-camera format, but the second season was presented as a traditional multicamera sitcom filmed in front of a live studio audience. With dwindling viewership and failing to retain the numbers from its <i>Frasier</i> lead-in, the series was cancelled by NBC in May 2003.</p>\r\n<p>Following NBC\'s cancellation of <i>Watching Ellie</i>, the media began circulating rumors of a so-called \"Seinfeld curse\", which claimed that none of the former <i>Seinfeld</i> actors could ever achieve success again in the television industry. Louis-Dreyfus dismissed the rumor as \"a made-up thing by the media\", while <i>Seinfeld</i> co-creator Larry David asserted that the curse was \"completely idiotic.\"</p>\r\n<p>Louis-Dreyfus was interested in the role of Susan Mayer on <i>Desperate Housewives</i>, the role that ultimately went to Teri Hatcher. Instead, Louis-Dreyfus scored a recurring guest role as the deceitful prosecutor and love interest of Michael Bluth on the Emmy-winning comedy <i>Arrested Development</i>, from 2004 to 2005.</p>\r\n<p>In 2005, Louis-Dreyfus was cast in the title role of a new CBS sitcom <i>The New Adventures of Old Christine</i>. The series and its concept was created by writer and producer of <i>Will & Grace</i>, Kari Lizer. The series told the story of Christine Campbell, a single mother who manages to maintain a fantastic relationship with her ex-husband, while running a women\'s gym. The series debuted on CBS in March 2006 to an audience of 15 million and was initially a ratings winner for the network.</p>\r\n<p>Louis-Dreyfus also received considerable critical acclaim for her performance on the show, with Brian Lowry of <i>Variety</i> stating that Louis-Dreyfus broke the so-called \"<i>Seinfeld</i> curse [...] with one of the best conventional half-hours to come along in a while.\" Alessandra Stanley from <i>The New York Times</i> asserted that Louis-Dreyfus\' performance on the series proved she is \"one of the funniest women on network television.\" Louis-Dreyfus additionally earned the 2006 Primetime Emmy Award for Outstanding Lead Actress in a Comedy Series for her performance in the first season. Referring to the curse, she stated in her acceptance speech, \"I\'m not somebody who really believes in curses, but curse this, baby!\" Throughout the course of the series, she received five consecutive Emmy Award nominations, three consecutive Satellite Award nominations, two Screen Actors Guild Award nominations, and a nomination for a Golden Globe Award. In 2007, she also received two nominations for a People\'s Choice Award due to her return to popularity, thanks to the success of <i>Old Christine</i>.</p>\r\n<p>In May 2006, Louis-Dreyfus hosted an episode of <i>Saturday Night Live</i>, becoming the first former female cast member to return to the show in the hosting role. In the episode, she appeared with former <i>Seinfeld</i> mates Jason Alexander and Jerry Seinfeld in her opening monologue, parodying the so-called \"Seinfeld curse\". After a successful reception from her 2006 episode, Louis-Dreyfus was invited again to host <i>SNL</i> on March 17, 2007, and again on April 17, 2016. Louis-Dreyfus reprised her role as Gloria in two <i>Simpsons</i> episodes: 2007\'s \"I Don\'t Wanna Know Why the Caged Bird Sings\" and 2008\'s \"Sex, Pies and Idiot Scrapes\". In the fall of 2009, she appeared with rest of the cast of <i>Seinfeld</i> in four episodes of the seventh season of Larry David\'s sitcom <i>Curb Your Enthusiasm</i>. The reunion shows received much media attention, and the episode received strong ratings for the HBO series.</p>\r\n<p>In 2009, Louis-Dreyfus was granted the honorary award for Legacy of Laughter at the TV Land Awards. Previous winners had included Lucille Ball and Mike Myers. She was presented with the award by friend Amy Poehler. The following year, Louis-Dreyfus received the 2,407th star on the Hollywood Walk of Fame on May 4, 2010, for her remarkable contribution to the broadcast television industry as both an actress and a comedienne. Originally, the star was set with Louis-Dreyfus\' name spelled incorrectly. It was missing both the \'o\' and the hyphen in her last name. The star was corrected and the misspelled portion was removed and presented to the actress. Celebrity guests at the event included past and current colleagues from throughout her career, including Clark Gregg, Larry David, Eric McCormack, and Jason Alexander.</p>\r\n<p><i>Old Christine</i> was cancelled by CBS in May 2010, after five seasons. After its cancellation from CBS, discussions were held with ABC for the show to be revived on the network, but these plans never came to fruition.</p>\r\n<p>In the spring of 2010, Louis-Dreyfus guest-starred several times in the third season of the web series <i>Web Therapy</i>, starring Lisa Kudrow. Louis-Dreyfus played the sister of the main character Fiona Wallice, who gives her therapy online. When the series made the transition to cable television on the Showtime network, Louis-Dreyfus\' appearance from the web series was included in the second season, airing in July 2012.</p>\r\n<p>In fall 2010, Louis-Dreyfus made a guest appearance on the live episode of the Emmy-winning comedy <i>30 Rock</i>. She played Tina Fey\'s role of Liz Lemon in the cutaway shots. Louis-Dreyfus was among several <i>Saturday Night Live</i> alumni appearing in the episode, including Rachel Dratch, Bill Hader, and regulars Tracy Morgan, Alec Baldwin, and Fey herself. Louis-Dreyfus also starred in a \"Women of SNL\" special November 1, 2010, on NBC.</p>\r\n<p>In May and June 2011, Louis-Dreyfus teamed up with husband Brad Hall for her first short film, <i>Picture Paris</i>. This was the first time the couple had collaborated since their early-2000s NBC comedy <i>Watching Ellie</i>. Hall wrote and directed the film, while Louis-Dreyfus played the lead role of an ordinary woman with an extraordinary obsession with the city of Paris. The film premiered on January 29, 2012, at the Santa Barbara International Film Festival, and has received considerable critical acclaim. It made its television premiere on HBO on December 17, 2012.</p>\r\n<p>In early 2011, HBO confirmed that Louis-Dreyfus had been cast in the lead role of U.S. Vice President Selina Meyer in a new satirical comedy series titled <i>Veep</i>. The series was commissioned for a first season of eight episodes. It was announced, in addition to her starring role, Louis-Dreyfus would also serve as a producer of the series. In preparation for her role, Louis-Dreyfus spoke with two former vice presidents, including Al Gore, senators, speechwriters, chiefs of staffs of various offices and schedulers. Louis-Dreyfus has commended HBO for allowing the cast and crew to engage in a \"protracted pre-production process\", which included a six-week rehearsal period before filming began.</p>\r\n<p>The first season was filmed in the fall of 2011, in Baltimore, and the series premiered on April 22, 2012. The premiere episode was met with high praise from critics, particularly for Louis-Dreyfus\' performance. <i>The Hollywood Reporter</i> asserted that the character of Selina Meyer was her \"best post-Seinfeld role\" to date and claimed that she gives \"an Emmy-worthy effort\", while the Los Angeles Times contended that the series demonstrates that she is \"one of the medium\'s great comediennes.\" Following the success of the first season, Louis-Dreyfus was named by the <i>Huffington Post</i> as one of the funniest people of 2012, asserting that she is the \"most magnetic and naturally funny woman on TV since Mary Tyler Moore.\"</p>\r\n<p>For her performance on <i>Veep</i>, Louis-Dreyfus has received several accolades, most notably six consecutive Primetime Emmy Awards for Outstanding Lead Actress in a Comedy Series from 2012-2017. Her Emmy wins for <i>Veep</i>, following previous wins for <i>Seinfeld</i> and <i>The New Adventures of Old Christine</i>, resulted in her becoming the only woman to win an acting award for three separate comedy series. Her sixth win for Outstanding Lead Actress in a Comedy Series in 2016 surpassed the record previously held by Mary Tyler Moore and Candice Bergen for the most wins in that category. Her sixth consecutive win, and eighth acting win overall, in 2017 made her the performer with the most Emmys for the same role in the same series (surpassing Candice Bergen and Don Knotts), and put her in a tie with Cloris Leachman for the most Emmys ever won by a performer. She was also nominated as one of the producers for <i>Veep</i> in the Primetime Emmy Award for Outstanding Comedy Series category in 2012, 2013, and 2014, but the show lost to <i>Modern Family</i> on all three occasions. The show, however, won the top award in 2015, 2016 and 2017.</p>\r\n<p>Ms. Louis-Dreyfus has also received five Critics\' Choice Television Award nominations, winning twice in 2013 and 2014, ten Screen Actors Guild Award nominations, winning twice in 2014 and 2017, and five Television Critics Association Award nominations, winning once in 2014. Her performance has additionally garnered her five Satellite Award nominations and five consecutive Golden Globe Award nominations.</p>\r\n<p>Louis-Dreyfus lent her voice to the 2013 animated film <i>Planes</i>, in the role of Rochelle. To date, the film has grossed well over $200 million at the box office worldwide. She also starred in the film <i>Enough Said</i>, directed by Nicole Holofcener, which was released on September 18, 2013. This marked her debut as a lead actress in a full-length feature film. The film received rave reviews from movie critics, ranking among the best-reviewed films of 2013. The website Rotten Tomatoes gives the film a score of 96% based on 152 reviews, many of them praising Louis-Dreyfus\' performance. She received a number of Best Actress nominations for her role in the film at award ceremonies, including the Golden Globe Awards, Satellite Awards, Critics\' Choice Movie Awards and the American Comedy Awards.</p>\r\n<p>Since December 2014, Louis-Dreyfus has appeared in a series of television commercials for Old Navy. In November 2015, she starred in an Old Navy TV commercial with Kumail Nanjiani and Snoop Dogg.</p>\r\n<p>On April 16, 2016, she hosted <i>Saturday Night Live</i> for the third time with musical guest Nick Jonas. During the episode\'s cold open, she reprised her role of Elaine Benes from <i>Seinfeld</i>.</p>', 'actors/julia-louisdreyfus_Cover.jpg'),
(42, 'Julianna', '', 'Margulies', 'F', '<p>Won eight Screen Actor Guild Awards, making her the second most awarded woman ever within SAG after Julia Louis-Dreyfus. In 2015, <i>TIME</i> featured her as one of the \"100 Most Influential People in the World\". She has been awarded a star on the Hollywood Walk of Fame.</p>\r\n<p>Julianna Luisa Margulies was born in Spring Valley, New York, the youngest of three daughters. Her mother, Francesca (née Goldberg, later Gardner), was a ballet dancer and eurythmy teacher; her father, Paul Margulies, was a writer, philosopher, and Madison Avenue advertising executive. Her parents were both Jewish, descended from Jewish immigrants from Romania, Austria, Hungary, and Russia. Her mother converted to Christianity when the children were young, though Margulies still identifies herself as Jewish. The Margulies family lived in Israel for a period of time before Julianna\'s birth, then moved back to the Upper West Side of New York City.</p>\r\n<p>Margulies attended grade school at Green Meadow Waldorf School and high school at High Mowing School. As a child, she lived in New York, France, and England. She obtained a BA from Sarah Lawrence College.</p>\r\n<p>Margulies made her feature film debut in Steven Seagal\'s film <i>Out for Justice</i> (1991), playing a prostitute. In 1994, Margulies was cast in the pilot episode of the NBC medical drama <i>ER</i> as Carol Hathaway, an emergency care nurse who, despondent over her relationship with pediatrician Doug Ross (George Clooney), attempted suicide. Her character was originally intended to die; however, the producers changed the plot and made Carol Hathaway a main cast member. At the same time Margulies had been offered an extended role on NBC\'s <i>Homicide: Life on the Streets</i>, after a two-episode appearance earlier in the year. Margulies chose <i>ER</i> and remained on the show for six seasons until 2000. She won an Emmy Award for Best Supporting Actress in a Television Drama in 1994, and continued to be nominated for this award every year during her tenure on <i>ER</i>. She was the only series regular cast member to win an Emmy Award.</p>\r\n<p>In March 2012, Margulies broke her silence on her decision to leave <i>ER</i> at the height of her career and a $27 million paycheck. She revealed that although everyone said it would be \"career suicide\" not to return to the medical drama she had starred in for six years, she was never concerned about the consequences.</p>\r\n<p>\"I\'m a smart girl,\" said Margulies. \"I had a year\'s worth of work waiting and a mortgage completely paid at age 32. I was under no illusion that I was going to be some big movie star. My dad said, \'If you got hit by a bus tomorrow, were you living your life truthfully, or were you waiting to get rich?\' If I died and my soul started leaving my body, would I be looking down going, \'You idiot. You could have gone to Prague, you could have been on Broadway\'? Those are the things I wanted to do.\"</p>\r\n<p>After leaving the series, Margulies worked on stage and screen. On stage, she appeared in a MCC Theater production of Kate Robin\'s <i>Intrigue With Faye</i>, a Lincoln Center production of Jon Robin Baitz\'s <i>Ten Unknowns</i>, and <i>The Vagina Monologues</i>. Her film work after <i>ER</i> included <i>Evelyn</i> with Pierce Brosnan and <i>Ghost Ship</i> (2002) with Gabriel Byrne and Ron Eldard. She starred as the protagonist and narrator (Morgaine) in the TNT miniseries <i>The Mists of Avalon</i> (2001) and participated in the documentary film <i>Searching for Debra Winger</i> (2002).</p>\r\n<p>In 2004, she guest-starred in a two-episode arc in season 4 of the hit TV show <i>Scrubs</i> as Neena Broderick, an unscrupulous lawyer who sues Turk and has a brief sexual relationship with J.D. She starred in another miniseries on TNT, <i>The Grid</i>. In April 2006, she appeared in four episodes of the sixth season of <i>The Sopranos</i>, portraying realtor Julianna Skiff. In August 2006, she appeared in <i>Snakes on a Plane</i> as flight attendant Claire Miller. In December 2006, she played Jennifer Bloom in the Syfy Channel miniseries <i>The Lost Room</i>.</p>\r\n<p>In an August 2006 interview with tvguide.com, Margulies said she was close to accepting an offer to return to <i>ER</i> for a four-episode arc, with Noah Wyle, that filmed in Hawaii during the 2005/06 season. However, she decided against it at the last minute. Margulies was invited to return during <i>ER</i>\'s final season, but the actress initially turned down the offer, saying she felt like she left Carol Hathaway in the perfect place and could not imagine bettering her departure episode. However, Margulies did return to <i>ER</i> for one episode during its 15th and final season.</p>\r\n<p>She had a minor role in <i>The Darwin Awards</i> (2007). In 2008, Margulies starred in the legal series <i>Canterbury\'s Law</i>, a Fox mid-season replacement show. She played the title character, Elizabeth Canterbury, a lawyer described as a \"tough-minded defense attorney who isn\'t afraid to push boundaries in order to protect innocent clients.\" She was also credited as a producer of the show. The series was severely affected by the 2007-2008 Writers Guild of America strike; it was cancelled by the network after only six episodes.</p>\r\n<p>In 2009, Margulies began starring in the CBS legal drama <i>The Good Wife</i>. She played Alicia Florrick, an attorney returning to legal practice after her husband Peter Florrick (played by Chris Noth) resigned as Illinois State\'s Attorney amid a sex and corruption scandal. Beginning in 2011, starting with the third season, Margulies was credited as a producer of <i>The Good Wife</i>. The series ended in May 2016.</p>\r\n<p>Since 2013, the actress does voiceovers for a Chase credit card commercial. In 2014, Margulies narrated \"Women in Business\", an episode of season 2 of <i>Makers: Women Who Make America</i>. In 2015, <i>TIME</i> featured Margulies as one of the \"100 Most Influential People in the World.\" It noted her work to get Erin\'s Law, concerned with child sexual abuse, passed in every US state.</p>\r\n<p>In 2018, Margulies co-starred in the dark comedy series <i>Dietland</i> on AMC as Kitty Montgomery - a nasty, razor-thin fashionista who employs an overweight woman for menial tasks and enjoys torturing her no end (especially about her weight).</p>\r\n<p>In 2019, she turned down CBS\' offer to guest star on the all access drama \"The Good Fight\" due to a pay dispute with the network. According to Deadline, Margulies asked the network for her regular fee at The Good Wife.</p>\r\n<p>However, the negotiations fell through when the television network responded by only offering to pay the actress the normal guest star fee. Not amenable to the offer, the actress shared with Deadline that: \"I\'m not a guest star. I started the whole thing with The Good Wife. I wanted to be paid my worth and stand up for equal pay. If Jon Hamm came back for a \'Mad Men\' spinoff or Kiefer Sutherland wanted to do a \'24\' spinoff, they would be paid\".</p>', 'actors/julianna-margulies_Cover.jpg');
INSERT INTO `actors` (`id`, `first_name`, `middle_name`, `last_name`, `gender`, `about`, `img`) VALUES
(43, 'Julianne', '', 'Moore', 'F', '<p>Prolific in film since the early 1990s, she is particularly known for her portrayals of emotionally troubled women in both independent and Hollywood films, and has received many accolades, including an Academy Award and two Golden Globes. <i>Time</i> magazine named Moore one of the 100 most influential people in the world in 2015.</p>\r\n<p>Moore was born Julie Anne Smith on December 3, 1960, at the Fort Bragg army installation in North Carolina, the oldest of 3 siblings. Her father, Peter Moore Smith, a paratrooper in the United States Army during the Vietnam War, attained the rank of colonel and became a military judge. Her Scottish mother, Anne (née Love; 1940-2009), was a psychologist and social worker from Greenock, Scotland, who emigrated to the United States in 1951 with her family. Moore has a younger sister, Valerie Smith, and a younger brother, the novelist Peter Moore Smith. As Moore is half-Scottish, she claimed British citizenship in 2011 to honor her deceased mother.</p>\r\n<p>Moore frequently moved around the United States as a child, due to her father\'s occupation. She was close to her family as a result, but has said she never had the feeling of coming from one particular place. The family lived in multiple locations, including Alabama, Georgia, Texas, Panama, Nebraska, Alaska, New York, and Virginia, and Moore attended nine different schools. The constant relocating made her an insecure child, and she struggled to establish friendships. Despite these difficulties, Moore later remarked that an itinerant lifestyle was beneficial to her future career: \"When you move around a lot, you learn that behavior is mutable. I would change, depending on where I was ... It teaches you to watch, to reinvent, that character can change.\"</p>\r\n<p>When Moore was 16, the family moved from Falls Church, Virginia, where Moore had been attending J.E.B. Stuart High School, to Frankfurt, Germany, where she attended Frankfurt American High School. She was clever and studious, a self-proclaimed \"good girl\", and she planned to become a doctor. She had never considered performing, or even attended the theatre, but she was an avid reader and it was this hobby that led her to begin acting at the school. She appeared in several plays, including <i>Tartuffe</i> and <i>Medea</i>, and with the encouragement of her English teacher, she chose to pursue a theatrical career. Moore\'s parents supported her decision, but asked that she train at university to provide the added security of a college degree. She was accepted to Boston University and graduated with a BFA in Theatre in 1983.</p>\r\n<p>Moore moved to New York City after graduating, and worked as a waitress. After registering her stage name with Actors\' Equity, she began her career in 1985 with off-Broadway theatre. Her first screen role came in 1985, in an episode of the soap opera <i>The Edge of Night</i>. Her break came the following year, when she joined the cast of <i>As the World Turns</i>. Playing the dual roles of half-sisters Frannie and Sabrina Hughes, she found this intensive work to be an important learning experience, and she said of it fondly: \"I gained confidence and learned to take responsibility.\" Moore performed on the show until 1988, when she won a Daytime Emmy Award for Outstanding Ingenue in a Drama Series. Before leaving <i>As the World Turns</i>, she had a role in the 1987 CBS miniseries <i>I\'ll Take Manhattan</i>. Once she had finished the soap opera, she turned to the stage to play Ophelia in a Guthrie Theater production of <i>Hamlet</i> opposite Zeljko Ivanek. The actress returned intermittently to television over the next three years, appearing in the TV movies <i>Money, Power, Murder</i> (1989), <i>The Last to Go</i> (1991), and <i>Cast a Deadly Spell</i> (1991).</p>\r\n<p>In 1990, Moore began working with stage director Andre Gregory on a workshop theatre production of Chekhov\'s <i>Uncle Vanya</i>. Described by Moore as \"one of the most fundamentally important acting experiences I ever had\", the group spent four years exploring the text and giving intimate performances to friends. Also in 1990, Moore made her cinematic debut as a mummy\'s victim in <i>Tales from the Darkside: The Movie</i>, a low-budget horror that she later described as \"terrible\". Her next film role, in 1992, introduced her to a wide audience. The thriller <i>The Hand That Rocks the Cradle</i> - in which she played the main character\'s ill-fated friend - was number one at the US box office, and Moore caught the attention of several critics with her performance. She followed it the same year with the crime comedy <i>The Gun in Betty Lou\'s Handbag</i>, appearing as the protagonist\'s kooky sister. Moore continued to play supporting roles throughout 1993, first featuring in the erotic thriller <i>Body of Evidence</i> as Madonna\'s love rival. The film was a failure and widely mocked, and she later regretted her involvement. She had greater success in a 1993 romantic comedy with Johnny Depp. In <i>Benny & Joon</i>, she played a gentle waitress who falls for Aidan Quinn\'s character, Benny. Moore also appeared briefly as a doctor in one of the year\'s biggest hits, the Harrison Ford thriller <i>The Fugitive</i>.</p>\r\n<p>The filmmaker Robert Altman saw Moore in the <i>Uncle Vanya</i> production, and was sufficiently impressed to cast her in his next project: the ensemble drama <i>Short Cuts</i> (1993), based on short stories by Raymond Carver. Moore was pleased to work with him, as his film <i>3 Women</i> (1977) gave her a strong appreciation for cinema when she saw it in college. Playing artist Marian Wyman was an experience she found difficult, as she was a \"total unknown\" surrounded by established actors, but this proved to be Moore\'s breakout role. <i>Variety</i> magazine described her as \"arresting\" and noted that her monologue, delivered naked from the waist down, would \"no doubt be the most discussed scene\" of the film. <i>Short Cuts</i> was critically acclaimed, and received awards for Best Ensemble Cast at the Venice Film Festival and the Golden Globe Awards. Moore received an individual nomination for Best Supporting Female at the Independent Spirit Awards, and the monologue scene earned her a degree of notoriety.</p>\r\n<p><i>Short Cuts</i> was one of a trio of successive film appearances that boosted Moore\'s reputation. It was followed in 1994 with <i>Vanya on 42nd Street</i>, a filmed version of her ongoing <i>Uncle Vanya</i> workshop production, directed by Louis Malle. Moore\'s performance of Yelena was described as \"simply outstanding\" by <i>Time Out</i>, and she won the Boston Society of Film Critics award for Best Actress. Following this, Moore was given her first leading role, playing an unhappy suburban housewife who develops multiple chemical sensitivity in Todd Haynes\' low-budget film <i>Safe</i> (1995). She had to lose a substantial amount of weight for the role, which made her ill, and she vowed never to change her body for a film again. In their review, <i>Empire</i> magazine writes that <i>Safe</i> \"first established [Moore\'s] credentials as perhaps the finest actress of her generation\". The film historian David Thomson later described it as \"one of the most arresting, original and accomplished films of the 1990s\", and the performance earned Moore an Independent Spirit Award nomination for Best Actress. Reflecting on these three roles, Moore has said, \"They all came out at once, and I suddenly had this profile. It was amazing.\"</p>\r\n<p>Moore\'s next appearance was a supporting role in the comedy-drama <i>Roommates</i> (1995), playing the daughter-in-law of Peter Falk. Her following film, <i>Nine Months</i> (1995), was crucial in establishing her as a leading lady in Hollywood. The romantic comedy, directed by Chris Columbus and co-starring Hugh Grant, was poorly reviewed, but a box office success; it remains one of her highest-grossing films. Her next release was also a Hollywood production, as Moore appeared alongside Sylvester Stallone and Antonio Banderas in the thriller <i>Assassins</i> (1995). Despite negativity from critics, the film earned $83.5 million worldwide. Moore\'s only appearance of 1996 came in the Merchant Ivory film <i>Surviving Picasso</i>, where she played the artist Dora Maar opposite Anthony Hopkins. The period drama met with poor reviews.</p>\r\n<p>A key point in Moore\'s career came when she was cast by Steven Spielberg to star as paleontologist Dr. Sarah Harding in <i>The Lost World: Jurassic Park</i> - the sequel to his 1993 blockbuster <i>Jurassic Park</i>. Filming the big-budget production was a new experience for Moore, and she has said she enjoyed herself \"tremendously\". It was a physically demanding role, with the actress commenting, \"There was so much hanging everywhere. We hung off everything available, plus we climbed, ran, jumped off things ... it was just non-stop.\" <i>The Lost World</i> (1997) finished as one of the ten highest-grossing films in history to that point, and was pivotal in making Moore a sought-after actress: \"Suddenly I had a commercial film career\", she said. <i>The Myth of Fingerprints</i> was her second film released in 1997. During its production she met her future husband in director Bart Freundlich. Later that year, Moore made a cameo appearance in the dark comedy <i>Chicago Cab</i>.</p>\r\n<p>The late 1990s and early 2000s saw Moore achieve significant industry recognition. Her first Academy Award nomination came for the critically acclaimed <i>Boogie Nights</i> (1997), which centers on a group of individuals working in the 1970s pornography industry. Director Paul Thomas Anderson was not a well-known figure before its production, with only one feature credit to his name, but Moore agreed to the film after being impressed with his \"exhilarating\" script. The ensemble piece featured Moore as Amber Waves, a leading porn actress and mother-figure who longs to be re-united with her real son. Martyn Glanville of the BBC commented that the role required a mixture of confidence and vulnerability, and was impressed with Moore\'s effort. <i>Time Out</i> called the performance \"superb\", while Janet Maslin of <i>The New York Times</i> found it \"wonderful\". Alongside her Oscar nomination for Best Supporting Actress, Moore was nominated at the Golden Globe and Screen Actors Guild awards, and several critics groups named her a winner.</p>\r\n<p>Moore followed her success in <i>Boogie Nights</i> with a role in the Coen brothers\' dark comedy <i>The Big Lebowski</i> (1998). The film was not a hit at the time of release, but subsequently became a cult classic. Her role was Maude Lebowski, a feminist artist and daughter of the eponymous character who becomes involved with \"The Dude\" (Jeff Bridges, the film\'s star). At the end of 1998, Moore had a flop with Gus Van Sant\'s <i>Psycho</i>, a remake of the classic Alfred Hitchcock film of the same name. She played Lila Crane in the film, which received poor reviews and is described by <i>The Guardian</i> as one of her \"pointless\" outings. The review in <i>Boxoffice</i> magazine regretted that \"a group of enormously talented people wasted several months of their lives\" on the film.</p>\r\n<p>After re-uniting with Robert Altman for the dark comedy <i>Cookie\'s Fortune</i> (1999), Moore starred in <i>An Ideal Husband</i> - Oliver Parker\'s adaptation of the Oscar Wilde play. Set in London at the end of the 19th century, her performance of Mrs. Laura Cheverly earned a Golden Globe nomination for Best Actress in a Musical or Comedy. She was also nominated in the Drama category that year for her work in <i>The End of the Affair</i> (1999). Based on the novel by Graham Greene, Moore played opposite Ralph Fiennes as an adulterous wife in 1940s Britain. The critic Michael Sragow was full of praise for her work, writing that her performance was \"the critical element that makes [the film] necessary viewing\". Moore received her second Academy Award nomination for the role - her first for Best Actress - as well as nominations at the British Academy (BAFTA) and Screen Actors Guild (SAG) awards.</p>\r\n<p>In between her two Golden Globe-nominated performances, Moore was seen in <i>A Map of the World</i>, supporting Sigourney Weaver, as a bereaved mother. Her fifth and final film of 1999 was the acclaimed drama <i>Magnolia</i>, a \"giant mosaic\" chronicling the lives of multiple characters over one day in Los Angeles. Paul Thomas Anderson, in his follow-up to <i>Boogie Nights</i>, wrote a role specifically for Moore. His primary objective was to \"see her explode\", and he cast her as a morphine-addicted wife. Moore has said it was a particularly difficult role, but she was rewarded with a SAG nomination. She was subsequently named Best Supporting Actress of 1999 by the National Board of Review, in recognition of her three performances in <i>Magnolia</i>, <i>An Ideal Husband</i>, and <i>A Map of the World</i>.</p>\r\n<p>Apart from a cameo role in the comedy <i>The Ladies Man</i>, Moore\'s only other appearance in 2000 was in a short-film adaptation of Samuel Beckett\'s play <i>Not I</i>. In early 2001, she appeared as FBI Agent Clarice Starling in <i>Hannibal</i>, a sequel to the Oscar winning film <i>The Silence of the Lambs</i>. Jodie Foster had declined to reprise the role, and director Ridley Scott eventually cast Moore, over Angelina Jolie, Cate Blanchett, Gillian Anderson, and Helen Hunt. The change in actress received considerable attention from the press, but Moore claimed she was not interested in upstaging Foster. Despite mixed reviews, <i>Hannibal</i> earned $58 million in its opening weekend and finished as the tenth-highest-grossing film of the year. Moore starred in three more 2001 releases: with David Duchovny in the science-fiction-comedy <i>Evolution</i>, in her husband\'s dramatic film <i>World Traveler</i>, and with Kevin Spacey, Judi Dench, and Cate Blanchett in <i>The Shipping News</i>. All three films were poorly received.</p>\r\n<p>The year 2002 marked a high point in Moore\'s career, as she became the ninth performer to be nominated for two Academy Awards in the same year. She received a Best Actress nomination for the melodrama <i>Far from Heaven</i>, in which she played a 1950s housewife whose world is shaken when her husband reveals he is gay. The role was written specifically for her by Todd Haynes, the first time the pair had worked together since <i>Safe</i>, and Moore described it as \"a very, very personal project ... such an incredible honor to do\". David Rooney of <i>Variety</i> praised her \"beautifully gauged performance\" of a desperate woman \"buckling under social pressures and putting on a brave face\". Manohla Dargis of the <i>Los Angeles Times</i> wrote, \"what Moore does with her role is so beyond the parameters of what we call great acting that it nearly defies categorization\". The role won Moore the Best Actress award from 19 different organizations, including the Venice Film Festival and the National Board of Review.</p>\r\n<p>Moore\'s second Oscar nomination that year came for <i>The Hours</i>, which she co-starred in with Nicole Kidman and Meryl Streep. She again played a troubled 1950s housewife, prompting Kenneth Turan to write that she was \"essentially reprising her <i>Far from Heaven</i> role\". Moore said it was an \"unfortunate coincidence\" that the similar roles came at the same time, and claimed that the characters had differing personalities. Peter Travers of <i>Rolling Stone</i> called the performance \"wrenching\", while Peter Bradshaw of <i>The Guardian</i> praised a \"superbly controlled, humane performance\". <i>The Hours</i> was nominated for nine Academy Awards, including Best Picture. Moore also received BAFTA and SAG Award nominations for Best Supporting Actress, and was jointly awarded the Silver Bear for Best Actress with Kidman and Streep at the Berlin Film Festival.</p>\r\n<p>Moore did not make any screen appearances in 2003, but returned in 2004 with three films. There was no success in her first two ventures of the year: <i>Marie and Bruce</i>, a dark comedy co-starring Matthew Broderick, did not get a cinematic release; <i>Laws of Attraction</i> followed, where she played opposite Pierce Brosnan in a courtroom-based romantic comedy, but the film was panned by critics. Commercial success returned to Moore with <i>The Forgotten</i>, a psychological thriller in which she played a mother who is told her dead son never existed. Although the film was unpopular with critics, it opened as the US box office number one.</p>\r\n<p>In 2005, Moore worked with her husband for the third time in the comedy <i>Trust the Man</i>, and starred in the true story of a 1950s housewife, <i>The Prize Winner of Defiance, Ohio</i>. Her first release of 2006 was <i>Freedomland</i>, a mystery co-starring Samuel L. Jackson. The response was overwhelmingly negative, but her follow-up, Alfonso Cuarón\'s <i>Children of Men</i> (2006), was highly acclaimed. Moore had a supporting role in the dystopian drama, playing the leader of an activist group. It is listed on Rotten Tomatoes as one of the best reviewed films of her career, and was named by Peter Travers as the second best film of the decade.</p>\r\n<p>Moore made her Broadway debut in the world premiere of David Hare\'s play <i>The Vertical Hour</i>. The production, directed by Sam Mendes and co-starring Bill Nighy, opened in November 2006. Moore played the role of Nadia, a former war correspondent who finds her views on the 2003 invasion of Iraq challenged. Ben Brantley of <i>The New York Times</i> was unenthusiastic about the production, and described Moore as miscast: in his opinion, she failed to bring the \"tough, assertive\" quality that Nadia required. David Rooney of <i>Variety</i> criticized her \"lack of stage technique\", adding that she appeared \"stiffly self-conscious\". Moore later confessed that she found performing on Broadway difficult and had not connected with the medium, but was glad to have experimented with it. The play closed in March 2007 after 117 performances.</p>\r\n<p>Moore played an FBI agent for the second time in <i>Next</i> (2007), a science fiction action film co-starring Nicolas Cage and Jessica Biel. Based on a short story by Philip K. Dick, the response from critics was highly negative. Manhola Dargis wrote, \"Ms. Moore seems terribly unhappy to be here, and it\'s no wonder.\" The actress has since described it as her worst film. <i>Next</i> was followed by <i>Savage Grace</i> (2007), the true story of Barbara Daly Baekeland - a high-society mother whose Oedipal relationship with her son ended in murder. Moore was fascinated by the role. <i>Savage Grace</i> had a limited release, and received predominantly negative reviews. Peter Bradshaw, however, called it a \"coldly brilliant and tremendously acted movie\".</p>\r\n<p><i>I\'m Not There</i> (2007) saw Moore work with Todd Haynes for the third time. The film explored the life of Bob Dylan, with Moore playing a character based on Joan Baez. In 2008, she starred with Mark Ruffalo in <i>Blindness</i>, a dystopian thriller from the director Fernando Meirelles. The film was not widely seen, and critics were generally unenthusiastic. Moore was not seen on screen again until late 2009, with three new releases. She had a supporting role in <i>The Private Lives of Pippa Lee</i>, and then starred in the erotic thriller <i>Chloe</i> with Liam Neeson and Amanda Seyfried. Shortly afterwards, she appeared in the well-received drama <i>A Single Man</i>. Set in 1960s Los Angeles, the film starred Colin Firth as a homosexual professor who wishes to end his life. Moore played his best friend, \"a fellow English expat and semi-alcoholic divorcee\", a character that Tom Ford, the film\'s writer-director, created with her in mind. Leslie Felperin of <i>Variety</i> commented that it was Moore\'s best role in \"some time\", and was impressed by the \"extraordinary emotional nuance\" of her performance. <i>A Single Man</i> was selected as one of the top 10 films of 2009 by the American Film Institute, and Moore received a fifth Golden Globe nomination for her performance in the film.</p>\r\n<p>Moore returned to television for the first time in 18 years when she played a guest role in the fourth season of <i>30 Rock</i>. She appeared in five episodes of the Emmy-winning comedy, playing Nancy Donovan, a love interest for Alec Baldwin\'s character Jack Donaghy. She later appeared in the series finale in January 2013. She also returned to <i>As the World Turns</i>, making a cameo appearance as Frannie Hughes at the end of the show\'s run in 2010. Her first big-screen appearance of the new decade was <i>Shelter</i> (2010), a film described as \"heinous\" by Tim Robey of <i>The Telegraph</i>. The psychological thriller received negative reviews and did not have a US release until 2013 (retitled <i>6 Souls</i>).</p>\r\n<p>Moore next starred with Annette Bening in the independent film <i>The Kids Are All Right</i> (2010), a comedy-drama about a lesbian couple whose teenage children locate their sperm donor. The role of Jules Allgood was written for her by writer-director Lisa Cholodenko, who felt that Moore was the right age, adept at both drama and comedy, and confident with the film\'s sexual content. The actress was drawn to the film\'s \"universal\" depiction of married life, and committed to the project in 2005. <i>The Kids Are All Right</i> was widely acclaimed, eventually garnering an Oscar nomination for Best Picture. The critic Betsy Sharkey praised Moore\'s performance of Jules, who she called an \"existential bundle of unrealized need and midlife uncertainty\", writing, \"There are countless moments when the actress strips bare before the camera - sometimes literally, sometimes emotionally ... and Moore plays every note perfectly.\" <i>The Kids Are All Right</i> earned Moore a sixth Golden Globe Award nomination and a second BAFTA nomination for Best Actress.</p>\r\n<p>For her next project, Moore actively looked for another comedy. She had a supporting role in <i>Crazy, Stupid, Love</i>, playing the estranged wife of Steve Carell, which was favorably reviewed and earned $142.8 million worldwide. Moore was not seen on screens again until March 2012, with a performance that received considerable praise and recognition. She starred in the HBO television film <i>Game Change</i>, a dramatization of Sarah Palin\'s 2008 campaign to become Vice President. Portraying a well-known figure was something she found challenging; in preparation, she conducted extensive research and worked with a dialect coach for two months. Although the response to the film was mixed, critics were highly appreciative of Moore\'s performance. For the first time in her career, she received a Golden Globe, a Primetime Emmy, and a SAG Award.</p>\r\n<p>Moore made two film appearances in 2012. The drama <i>Being Flynn</i>, in which she supported Robert De Niro, had a limited release. Greater success came for <i>What Maisie Knew</i>, the story of a young girl caught in the middle of her parents\' divorce. Adapted from Henry James\'s novel and updated to the 21st century, the drama earned near-universal critical praise. The role of Susanna, Maisie\'s rock-star mother, required Moore to sing on camera, which was a challenge she embraced despite finding it embarrassing. She called Susanna a terrible parent, but said the role did not make her uncomfortable, as she fully compartmentalized the character: \"I know that that\'s not me\".</p>\r\n<p>Following her well-received performance in <i>What Maisie Knew</i>, Moore began 2013 with a supporting role in Joseph Gordon-Levitt\'s comedy <i>Don Jon</i>, playing an older woman who helps the title character to appreciate his relationships. Reviews for the film were favorable, and Mary Pols of <i>Time</i> magazine wrote that Moore was a key factor in its success. Her next appearance was a starring role in the comedy <i>The English Teacher</i> (2013), but this outing was poorly received and earned little at the box office. In October 2013, she played the demented mother Margaret White in <i>Carrie</i>, an adaptation of Stephen King\'s horror novel. Coming 37 years after Brian De Palma\'s well-known take on the book, Moore stated that she wanted to make the role her own. By drawing on King\'s writing rather than the 1976 film, Mick LaSalle of the <i>San Francisco Chronicle</i> wrote that she managed to \"[suggest] a history - one never told, just hinted at - of serious damage in [Margaret\'s] past\". Although the film was a box office success, it was generally considered an unsuccessful and unnecessary adaptation.</p>\r\n<p>At age 53, Moore enjoyed a considerable degree of critical and commercial success in 2014. Her first release of the year came alongside Liam Neeson in the action-thriller <i>Non-Stop</i>, set aboard an airplane. The response to the film was mixed, but it earned $223 million worldwide. She followed this by winning the Best Actress award at the Cannes Film Festival for her performance as Havana Segrand, an aging actress receiving psychotherapy in David Cronenberg\'s black comedy <i>Maps to the Stars</i>. Described by <i>The Guardian</i> as a \"grotesque, gaudy, and ruthless\" character, Moore based her role on \"an amalgam of Hollywood casualties she ha[d] encountered\", and drew upon her early experiences in the industry. Peter Debruge of <i>Variety</i> criticized the film, but found Moore to be \"incredible\" and \"fearless\" in it. Moore\'s success at Cannes made her the second actress in history, after Juliette Binoche, to win Best Actress awards at the \"Big Three\" film festivals (Berlin, Cannes, and Venice). She also received a Golden Globe nomination for her performance.</p>\r\n<p>Moore played the supporting role of President Alma Coin, the leader of a rebellion against The Capitol, in the third installment of the lucrative <i>The Hunger Games</i> film series, <i>Mockingjay - Part 1</i>. The film ranks as her highest-grossing to date. Her final appearance of 2014 was one of the most acclaimed of her career. In the drama <i>Still Alice</i>, Moore played the leading role of a linguistics professor diagnosed with early onset Alzheimer\'s disease. She spent four months training for the film, by watching documentaries on the disease and interacting with patients at the Alzheimer\'s Association. Critic David Thomson wrote that Moore was \"extraordinary at revealing the gradual loss of memory and confidence\", while according to Kenneth Turan, she was \"especially good at the wordless elements of this transformation, allowing us to see through the changing contours of her face what it is like when your mind empties out\". Several critics commented that it was her finest performance to date, and Moore was awarded with the Oscar, Golden Globe, SAG, and BAFTA for Best Actress.</p>\r\n<p>Moore began 2015 by appearing as an evil queen in <i>Seventh Son</i>, a poorly received fantasy-adventure film co-starring Jeff Bridges. She also appeared opposite Ellen Page in <i>Freeheld</i>, a drama based on a true story about a detective and her same-sex partner, and in the romantic comedy <i>Maggie\'s Plan</i>, with Greta Gerwig and Ethan Hawke. Both films were presented at the 2015 Toronto International Film Festival in September 2015. In <i>Maggie\'s Plan</i>, Moore played a pretentious Danish professor, a comic role which critic Richard Lawson of <i>Vanity Fair</i> deemed as the film\'s \"chief pleasure\". Later that year, she reprised her role as Alma Coin in <i>The Hunger Games: Mockingjay - Part 2</i>, the final film of the series.</p>\r\n<p>After a one-year absence from the screen, Moore had three film releases in 2017. She appeared in a dual role in <i>Wonderstruck</i>, a film adaptation of Brian Selznick\'s historical children\'s novel of the same name, which reteamed her with Todd Haynes. Her parts were of a silent movie star in the 1920s and a deaf librarian in the 1970s; in preparation, she studied sign language and watched the films of Lillian Gish. Richard Lawson considered her to be \"eminently watchable\" despite her limited screen time. Moore portrayed a dual role for the second time that year in <i>Suburbicon</i>, a satirical thriller written by the Coen brothers and directed by George Clooney. She was cast opposite Matt Damon as twin sisters in 1950s America, named Rose and Margaret, who become embroiled in a local crime. The film received negative reviews, with critics saying it failed to effectively portray American racism, but Geoffrey Macnab of <i>The Independent</i> praised Moore for giving \"a perfectly judged comic performance as a Barbara Stanwyck-like femme fatale\".</p>\r\n<p>Moore\'s final release of the year was the sequel to the 2015 spy film <i>Kingsman: The Secret Service</i>, subtitled <i>The Golden Circle</i>, co-starring Colin Firth, Taron Egerton, Channing Tatum, and Halle Berry. She played the part of the villainous entrepreneur Poppy Adams, who runs a drug cartel. Despite her character\'s actions, Moore played the part to make Poppy seem \"strange, but reasonable\". Peter Debruge described the film as \"outlandish\", and wrote that Moore had played her part \"as Martha Stewart crossed with a demonic 1950s housewife\". The film earned over $410 million worldwide.</p>\r\n<p>Moore had two film releases in 2018. She was drawn to Sebastián Lelio\'s <i>Gloria Bell</i>, an English-language remake of Lelio\'s own Chilean film <i>Gloria</i>, for its rare depiction of a middle-age woman\'s quest for meaning in life. Stephen Dalton of <i>The Hollywood Reporter</i> believed that she had delivered \"an utterly natural and quietly spellbinding star performance\". Her second release that year was <i>Bel Canto</i>, a thriller based on Ann Patchett\'s novel of the same name about the Japanese embassy hostage crisis. For her performance as an opera singer, she learnt to mimic the body language of professionals for scenes in which Renée Fleming performed the vocals. Guy Lodge of the <i>Chicago Tribune</i> deemed the film an unsuccessful adaptation of the novel and considered Moore\'s work to be \"edgeless fare by her standards\". The following year, she teamed with her husband once again in <i>After the Wedding</i>, a remake of Susanne Bier\'s Danish film of the same name. It featured her and Michelle Williams in roles played by men in the original film. That same year, she will star in <i>The Staggering Girl</i>, a short film directed by Luca Guadagnino.</p>\r\n<p>Ms. Moore will next portray the feminist icon Gloria Steinem in the biopic <i>The Glorias: A Life on the Road</i>, sharing the part with the actresses Alicia Vikander and Lulu Wilson. She will then feature in Joe Wright\'s thriller <i>The Woman in the Window</i>, based on the novel of the same name, co-starring Amy Adams and Gary Oldman, and in <i>Lisey\'s Story</i>, an Apple TV+ miniseries adapted from Stephen King\'s thriller novel of the same name.</p>', 'actors/julianne-moore_Cover.jpg'),
(44, 'Julie', '', 'Bowen', 'F', '<p>Julie Bowen Luetkemeyer was born in Baltimore, Maryland, the middle of three daughters of Suzanne (née Frey) and John Alexander Luetkemeyer, Jr., a commercial real estate developer.</p>\r\n<p>Raised in suburban Ruxton-Riderwood, Maryland, Bowen first attended Calvert School, then Garrison Forest School and Roland Park Country School, and also attended St. George\'s School in Newport, Rhode Island. She studied at Brown University, majoring in Italian Renaissance studies. She spent her junior year in Florence, Italy. During college, she had roles in <i>Guys and Dolls</i>, <i>Stage Door</i>, and <i>Lemon Sky</i>. Before graduating, she had the lead role in the independent film <i>Five Spot Jewel</i>. Among other places, Bowen studied acting at the Actor\'s Institute.</p>\r\n<p>Bowen had a role in the soap opera <i>Loving</i> (1992) and an episode of the college drama <i>Class of \'96</i> (1993). She had the lead role in the television film <i>Runaway Daughters</i> (1994). She played the love interest of the title character in <i>Happy Gilmore</i> (1996). She appeared in the films <i>Multiplicity</i> (1996) and <i>An American Werewolf in Paris</i> (1997). She has had guest roles on television series such as <i>Party of Five</i> (1996) and <i>Strange Luck</i> (1996).</p>\r\n<p>Bowen had a recurring role as Roxanne Please on <i>ER</i> (1998-99). She first gained prominence on the television series <i>Ed</i> (2000-04), where she played high school English teacher Carol Vessey. She then guest starred as Sarah Shephard in five episodes of <i>Lost</i> (2005-07). She also played attorney Denise Bauer on the series <i>Boston Legal</i> (2005-08), and had a recurring role on <i>Weeds</i> (2008). She was a spokesmodel for Neutrogena, most recently advertising the Pure Glow products. She appeared on an episode of <i>Celebrity Jeopardy!</i> on August 31, 2010.</p>\r\n<p>Since 2009, Ms. Bowen has starred as Claire Dunphy on the ABC sitcom <i>Modern Family</i>. For her portrayal, she received six consecutive Primetime Emmy Award nominations for Outstanding Supporting Actress in a Comedy Series (2010-15), winning the award in 2011 and 2012. Bowen told an interviewer that winning an Emmy is more like \"German soldiers in the trenches of the world wars,\" and that \"when you win the award, it is like being pulled out of the trench.\" She also stated that \"as exciting and wonderful as it is not to be in the trench, and to be recognised for what you do, it also means everyone has got a clear shot at you and that is a very frightening prospect for most of us.\"</p>', 'actors/julie-bowen_Cover.jpg'),
(45, 'Kate', '', 'McKinnon', 'F', '<p>Has been nominated for six Primetime Emmy Awards; one for Outstanding Original Music and Lyrics and five for Outstanding Supporting Actress in a Comedy Series, winning in 2016 and 2017.</p>\r\n<p>Kathryn McKinnon Berthold was born and raised in the Long Island town of Sea Cliff, New York to Laura Campbell, a parent educator, and Michael Thomas Berthold, an architect. She has a younger sister, Emily Lynne. Her father died when she was 18 years old.</p>\r\n<p>As a child, McKinnon played several instruments. She started playing the piano when she was 5 years old, the cello when she was 12, and taught herself how to play the guitar when she was 15. She graduated from North Shore High School in 2002, and from Columbia University in 2006 with a degree in theatre, where she co-founded a comedy group, Tea Party, which focused on musical improv comedy. At Columbia, she starred in three Varsity shows: V109 \"Dial D for Deadline\", V110 \"Off-Broadway\" and V111 \"The Sound of Muses\". She was also a member of Prangstgrüp, a student comedy group which set up and recorded elaborate college pranks.</p>\r\n<p>In 2007, McKinnon joined the original cast of Logo TV\'s <i>The Big Gay Sketch Show</i>, where she was a cast member for all three seasons.</p>\r\n<p>Since 2008, she has performed live sketch comedy regularly at the Upright Citizens Brigade Theatre in New York City. She has also worked as a voice-over actress, and has voiced characters for series such as <i>The Venture Bros.</i>, <i>Robotomy</i>, and <i>Ugly Americans</i>. In 2009, McKinnon won a Logo NewNowNext Award for Best Rising Comic. She was nominated for an ECNY Emerging Comic Award in 2010. In 2014, she appeared in the Kennedy Center Honors as part of a tribute to Lily Tomlin. In 2016, she starred in the reboot <i>Ghostbusters</i>, alongside Melissa McCarthy, and fellow <i>SNL</i> cast members Kristen Wiig and Leslie Jones. In 2017, McKinnon is attached to star in Amblin Entertainment\'s <i>Lunch Witch</i>, an adaptation of a young adult graphic novel by Deb Lucke. She has been set to play the title role of Grunhilda, an out-of-work witch who takes a job in a school cafeteria to make ends meet. McKinnon currently voices the character of Ms. Frizzle in the reboot of the <i>Magic School Bus</i> children\'s series.</p>\r\n<p>McKinnon debuted as a featured player on <i>Saturday Night Live</i> on April 7, 2012. She was promoted to repertory status in season 39 in 2013. Following Vanessa Bayer\'s departure, McKinnon is now the longest serving female cast member.</p>\r\n<p>In 2013, McKinnon was nominated for a EWwy Award for Best Supporting Actress, Comedy. McKinnon won the 2014 American Comedy Award for Best Supporting Actress, TV for her work on <i>SNL</i>. In 2014, she was nominated for an Emmy Award for Outstanding Supporting Actress in a Comedy Series, as well as for Outstanding Original Music and Lyrics along with four of her colleagues for the song \"(Do It On My) Twin Bed\". She was nominated for an Emmy for Outstanding Supporting Actress in a Comedy Series for the second time in 2015. She won the following next year, becoming the first actor from <i>SNL</i> to win the award since 1993.</p>\r\n<p>McKinnon began appearing as Hillary Clinton on the series leading up to the 2016 presidential election. The real Clinton appeared alongside her in a sketch during the show\'s season 41 premiere. McKinnon has said that her impression of Hillary Clinton comes from a place of deep admiration, and that \"[she] unequivocally want[ed] her to win\" the 2016 presidential election. On November 12, 2016, which was the first show after Clinton\'s loss in the election, she reprised the role to open the show with a solo performance of \"Hallelujah\" by Leonard Cohen, whose death was announced two days before her performance. After the election, McKinnon began to impersonate Kellyanne Conway alongside Alec Baldwin as Donald Trump. On February 11, she debuted her impression of Elizabeth Warren during <i>Weekend Update</i> and Jeff Sessions in the cold open.</p>\r\n<p>Aside from <i>SNL</i>, McKinnon also co-created and co-stars in the web series <i>Notary Publix</i> with her sister Emily Lynne. In addition to Aidy Bryant (who stars in the series), McKinnon\'s <i>SNL</i> co-stars Beck Bennett, Jay Pharoah and <i>SNL</i> writer Paula Pell all guest-starred in the six-episode first season of the web series.</p>\r\n<p>McKinnon and Lynne also created and released fantasy-comedy audio series <i>Heads Will Roll</i>, which premiered in May 2019 on Audible. The show features guest appearances from Meryl Streep, Peter Dinklage, Audra McDonald, Bob the Drag Queen, Queer Eye\'s Fab Five, and Tim Gunn. Additionally, many of McKinnon\'s SNL co-stars are featured, including Aidy Bryant, Alex Moffat, Heidi Gardner and Chris Redd.</p>\r\n<p>In 2015, McKinnon appeared in a number of commercials for the Ford Focus.</p>\r\n<p>In 2016, McKinnon co-hosted the 31st Independent Spirit Awards with Kumail Nanjiani.</p>\r\n<p>McKinnon has made appearances as a voice actress in series like <i>The Simpsons</i> (as Hettie in season 27, episode 14 \"Gal of Constant Sorrow\") and <i>Family Guy</i> (a voice in season 14, episode 15 \"An App a Day\", as Karen / Heavy Flo in season 14, episode 6 \"Peter\'s Sister\", and a voice in season 15, episode 9 \"How the Griffin Stole Christmas\"), and films such as <i>Finding Dory</i> (as Stan\'s fish wife), <i>The Angry Birds Movie</i> (as Stella / Eva the Birthday Mom) and <i>Ferdinand</i> (as Lupe).</p>', 'actors/kate-mckinnon_Cover.jpg');
INSERT INTO `actors` (`id`, `first_name`, `middle_name`, `last_name`, `gender`, `about`, `img`) VALUES
(46, 'Leonardo', '', 'DiCaprio', 'M', '<p>Been nominated for six Academy Awards, four British Academy Film Awards and nine Screen Actors Guild Awards, winning one of each award from them and three Golden Globe Awards from eleven nominations.</p><p>Leonardo Wilhelm DiCaprio was born on November 11, 1974, in Los Angeles. He is the only child of Irmelin (née Indenbirken), a legal secretary, and George DiCaprio, an underground comix artist and producer and distributor of comic books. DiCaprio\'s father is of Italian (from Alife) and German (from Bavaria) descent. DiCaprio\'s maternal grandfather, Wilhelm Indenbirken (1913-1995), was German. His maternal grandmother, Helene Indenbirken (born Yelena Smirnova; 1915-2008), was a Russian-born German citizen. In an interview in Russia, DiCaprio referred to himself as \"half-Russian\" and said that two of his late grandparents were Russian. DiCaprio\'s parents met while attending college and subsequently moved to Los Angeles, California.</p>\r\n<p>DiCaprio was named Leonardo because his pregnant mother was looking at a Leonardo da Vinci painting in the Uffizi museum in Florence, Italy, when he first kicked. His parents separated when he was a year old, and he lived mostly with his mother. The two lived in several Los Angeles neighborhoods, such as Echo Park and Los Feliz (his Los Feliz residence was later converted into a public library), while his mother worked several jobs. DiCaprio attended Seeds Elementary School (now UCLA Lab School) and John Marshall High School a few blocks away, after attending the Los Angeles Center for Enriched Studies for four years. He dropped out of high school following his third year, eventually earning his general equivalency diploma (GED). DiCaprio spent part of his childhood in Germany with his maternal grandparents, Wilhelm and Helene. He is conversant in German and Italian.</p>\r\n<p>In 1979, DiCaprio was removed, at the age of five, from the set of the children\'s television series <i>Romper Room</i> for being disruptive. He began his career by appearing in several commercials and educational films, following his older stepbrother Adam Farrar into television commercials, and landing an ad at age 14 for Matchbox cars by Mattel, which he considered his first role. Throughout his teens he was seen in commercials for Kraft Foods, Bubble Yum, Apple Jacks, and many more. In 1989, he played the role of Glen in two episodes of the television show <i>The New Lassie</i>.</p>\r\n<p>In 1990, he started acting regularly on television. This started with a role in the pilot of <i>The Outsiders</i>, and one episode of the soap opera <i>Santa Barbara</i>, playing the young Mason Capwell. That same year, DiCaprio got a break on television when he was cast in <i>Parenthood</i>, a series based on a successful comedy film by the same name. His works that year earned him two nomination at the Young Artist Award in Best Young Actor in a Daytime Series (<i>Santa Barbara</i>) and Best Young Actor Starring in a New Television Series (<i>Parenthood</i>). DiCaprio was also a celebrity contestant on the children\'s game show <i>Fun House</i>. One of the stunts he performed on the show was going fishing in a small pool of water by catching the fish only with his teeth.</p>\r\n<p>In 1991, he played an un-credited role in one episode of <i>Roseanne</i>. Later that year, DiCaprio\'s debut film role was in the comedic science fiction horror film <i>Critters 3</i>, in which he played the stepson of an evil landlord, a role that DiCaprio described as \"your average, no-depth, standard kid with blond hair.\" Released in March that year, the movie went direct-to-video. Shortly after, he became a recurring cast member on the successful ABC sitcom <i>Growing Pains</i>, playing Luke Brower, a homeless boy who is taken in by the Seaver family. DiCaprio was nominated for the Young Artist Award for Best Young Actor Co-starring in a Television Series.</p>\r\n<p>In 1992, alongside Drew Barrymore, Sara Gilbert, Tom Skerritt, and Cheryl Ladd, he played a supporting role in the first installment of the <i>Poison Ivy</i> film series. It was nominated for the 1992 Grand Jury prize of Best Film at the Sundance Film Festival and received a nomination at the Independent Spirit Awards. In 1992, DiCaprio was handpicked by Robert De Niro out of 400 young actors to play the lead role in <i>This Boy\'s Life</i> adapted from Tobias Wolff\'s memoir of the same name. He played opposite De Niro, who was acting as his stepfather, and Ellen Barkin as his mother. The film was directed by Michael Caton-Jones and released in 1993.</p>\r\n<p>In 1993, DiCaprio co-starred as the mentally handicapped brother of Johnny Depp\'s character in <i>What\'s Eating Gilbert Grape</i>, a comic-tragic odyssey of a dysfunctional Iowa family. Director Lasse Hallström admitted he was initially looking for a less good-looking actor but finally settled on DiCaprio as he had emerged as \"the most observant actor\" among all who auditioned. Budgeted at US$11 million, the film became a critical success, resulting in various accolades for DiCaprio, who was awarded the National Board of Review Award and nominated for both an Academy Award and a Golden Globe Award for his portrayal. <i>The New York Times</i> critic Janet Maslin praised DiCaprio\'s performance, writing \"the film\'s real show-stopping turn comes from Mr. DiCaprio, who makes Arnie\'s many tics so startling and vivid that at first he is difficult to watch. The performance has a sharp, desperate intensity from beginning to end.\"</p>\r\n<p>DiCaprio\'s first effort of 1995 was Sam Raimi\'s <i>The Quick and the Dead</i>, a western film. Sony Pictures was dubious over DiCaprio\'s casting, and as a result, co-star Sharon Stone decided to pay the actor\'s salary herself. The film was released to a dismal box office performance, barely grossing US$18.5 million in the US, and received mixed reviews from critics. He next starred in Agnieszka Holland\' <i>Total Eclipse</i>, which he co-lead with David Thewlis. The feature is a fictionalized account of the homosexual relationship between Arthur Rimbaud (DiCaprio) and Paul Verlaine (Thewlis). He replaced River Phoenix, who died during pre-production on the project. A minor art-house success, the film grossed US$0.34 million throughout its domestic theatrical run. His last film of the year 1995 was <i>The Basketball Diaries</i>, co- starring Lorraine Bracco, James Madio, and Mark Wahlberg. It is a biographical film, in which DiCaprio plays Jim Carroll in his teenage years as a promising high school basketball player and writer who developed an addiction to heroin with his misguided friends.</p>\r\n<p>In 1996, DiCaprio appeared opposite Claire Danes in Baz Luhrmann\'s film <i>Romeo + Juliet</i>, an abridged modernization of William Shakespeare\'s romantic tragedy of the same name, which retained the original Shakespearean dialogue. The project achieved a worldwide box office take of $147 million. Later that year, he starred in Jerry Zaks\' family drama <i>Marvin\'s Room</i>, reuniting with Robert De Niro. Based on Scott McPherson\'s screenplay adaptation of his own 1991 stage play of the same name, the film revolves around two sisters, played by Meryl Streep and Diane Keaton, who are reunited through tragedy after 17 years of estrangement. DiCaprio portrayed Hank, Streep\'s character\'s troubled son, who has been committed to a mental asylum for setting fire to his mother\'s house.</p>\r\n<p>In 1997, DiCaprio starred in James Cameron\'s <i>Titanic</i> (1997) as twenty-year-old Jack Dawson, a penniless Wisconsin man who wins two tickets for the third-class on the ill-fated RMS <i>Titanic</i>. DiCaprio initially refused to portray the character but was eventually encouraged to pursue the role by Cameron, who strongly believed in his acting ability. Against expectations, the film went on to become the highest-grossing film to date (it was surpassed in 2010 by Cameron\'s film <i>Avatar</i>), grossing more than $1.84 billion in box-office receipts worldwide, and transformed DiCaprio into a commercial movie superstar, resulting in fan worship among teenage girls and young women in general that became known as \"Leo-Mania\". In May 1998, for example, his face appeared on the covers of at least four teen magazines, and three books about DiCaprio were among the top six paperbacks on <i>The New York Times</i> Best Seller list. More than 200 fans contacted the Academy of Motion Picture Arts and Sciences to protest him not being nominated for the 70th Academy Awards. He was nominated for other high-profile awards, including a second Golden Globe nomination. Upon the success of <i>Titanic</i>, DiCaprio stated in 2000: \"I have no connection with me during that whole <i>Titanic</i> phenomenon and what my face became around the world ... I\'ll never reach that state of popularity again, and I don\'t expect to. It\'s not something I\'m going to try to achieve either.\"</p>\r\n<p>The following year, DiCaprio played a self-mocking role in a small appearance in Woody Allen\'s caustic satire of the fame industry, <i>Celebrity</i> (1998). It features an ensemble cast that consists of Kenneth Branagh, Judy Davis, Winona Ryder, Melanie Griffith, Joe Mantegna, Charlize Theron, Hank Azaria, Famke Janssen, Donald Trump, etc.</p>\r\n<p>That year, he also starred in the dual roles of the villainous King Louis XIV and his secret, sympathetic twin brother Philippe in Randall Wallace\'s <i>The Man in the Iron Mask</i>, based on the same-titled 1939 film. Despite receiving a rather mixed to negative response, the film became a box office success, grossing US$180 million internationally. Though DiCaprio\'s performance was generally well-received, with <i>Entertainment Weekly</i> critic Owen Gleiberman writing that \"the shockingly androgynous DiCaprio looks barely old enough to be playing anyone with hormones, but he\'s a fluid and instinctive actor, with the face of a mischievous angel,\" he was awarded a Golden Raspberry Award for Worst Screen Couple for both incarnations the following year.</p>\r\n<p>DiCaprio\'s next project was the drama film <i>The Beach</i> (2000), an adaption of Alex Garland\'s 1996 novel of the same name. He played an American backpacking tourist looking for the perfect way of life in a secret island commune in the Gulf of Thailand. Budgeted at $ US 50 million, the film became a financial success, grossing $ US 144 million worldwide, but as with DiCaprio\'s previous project, the film was negatively reviewed by critics. Todd McCarthy of <i>Variety</i> noted that \"Richard [DiCaprio\'s role] is too much the American Everyman and not enough of a well-defined individual to entirely capture one\'s interest and imagination, and DiCaprio, while perfectly watchable, does not endow him with the quirks or distinguishing marks to make this man from nowhere a dimensional character.\" The next year, he was nominated for another Razzie Award for his work on the film.</p>\r\n<p>In the mid 1990s, DiCaprio appeared in the mostly improvised short film called <i>Don\'s Plum</i>, as a favor to aspiring director R. D. Robb. When Robb decided to expand the black-and-white film to feature length, however, DiCaprio and costar Tobey Maguire had its release blocked by court order, arguing that they never intended to make it a theatrical release, as it would have commercial value thanks to their stardom. The film eventually premiered at the 2001 Berlin International Film Festival, where it was well received by critics.</p>\r\n<p>DiCaprio\'s first film of 2002 was in Martin Scorsese\'s <i>Gangs of New York</i>, a historical film set in the mid-19th century in the Five Points district of New York City. Director Scorsese initially struggled selling his idea of realizing the film until DiCaprio became interested in playing protagonist Amsterdam Vallon, a young leader of the Irish faction, and thus, Miramax Films got involved with financing the project. Nonetheless production on the film was plagued by blown-out budgets and producer-director squabbles, resulting in a marathon eight-month shoot and, at US$103 million, the most expensive film Scorsese had ever made. Upon its release, <i>Gangs of New York</i> became a financial and critical success. DiCaprio\'s acting was well-received but was overshadowed by Daniel Day-Lewis\' performance among most critics.</p>\r\n<p>Also in 2002, DiCaprio appeared the biographical crime drama film <i>Catch Me If You Can</i>, based on the life of Frank Abagnale Jr., who, before his 19th birthday, used his charm, confidence, and several different personas, to make millions in the 1960s writing bad checks. Directed by Steven Spielberg, the film was shot in 147 different locations in only 52 days, making it \"the most adventurous, super-charged movie-making\" DiCaprio had experienced yet. <i>Catch Me If You Can</i> received favorable reviews and proved to be an international success, becoming DiCaprio\'s highest-grossing film since <i>Titanic</i> with a total of US$351.1 million worldwide. Roger Ebert praised his performance, and noted that while \"DiCaprio, who in recent films ... has played dark and troubled characters, is breezy and charming here, playing a boy who discovers what he is good at, and does it.\" The following year, DiCaprio received his third Golden Globe nomination for his work in the film.</p>\r\n<p>In 2004 DiCaprio took his first producing task in Niels Mueller\' <i>The Assassination of Richard Nixon</i>, as one of the executives. It stars Sean Penn, Don Cheadle, Jack Thompson and Naomi Watts, and is based on the story of would-be assassin Samuel Byck, who plotted to kill Richard Nixon in 1974. It received a Un Certain Regard nomination at the 2004 Cannes Film Festival. It won and was nominated for many Awards in the festival circuit. Forging a collaboration with Scorsese, the two paired again for a biopic of the eccentric and obsessive American film director and aviation pioneer Howard Hughes in <i>The Aviator</i> (2004). Centering on Hughes\' life from the late 1920s to 1947, DiCaprio initially developed the project with Michael Mann, who decided against directing it after working on back-to-back biopics; <i>Ali</i> and <i>The Insider</i>. The actor eventually pitched John Logan\'s script to Scorsese, who quickly signed on to direct. <i>The Aviator</i> became a critical and financial success. DiCaprio received rave reviews for his performance and won a Golden Globe Award for Best Actor, also receiving another Academy Award nomination.</p>\r\n<p>In 2005, DiCaprio was made a commander of the <i>Ordre des Arts et des Lettres</i> by the French Minister of Culture for his contributions to the arts. The following year, the actor starred in both <i>Blood Diamond</i> and <i>The Departed</i>. In Edward Zwick\'s war film <i>Blood Diamond</i>, he starred as a diamond smuggler from Rhodesia who is involved in the Sierra Leone Civil War. The film itself received generally favorable reviews, and DiCaprio was praised for the authenticity of his South African Afrikaner accent, known as a difficult accent to imitate.</p>\r\n<p>In Scorsese\'s <i>The Departed</i> he played the role of Billy Costigan, a state trooper working undercover in an Irish Mob in Boston. Highly anticipated, the film was released to overwhelmingly positive reviews and became one of the highest-rated wide release films of 2006. Budgeted at US$90 million, it also emerged as DiCaprio and Scorsese\'s highest-grossing collaboration to date, easily beating <i>The Aviator</i>\'s previous record of US$213.7 million. DiCaprio\'s performance in <i>The Departed</i> was applauded by critics and earned him a Satellite Award for Best Supporting Actor. The same year, both the Golden Globes and the Screen Actors Guild nominated DiCaprio twice in the Best Actor category for both of his 2006 features, and in addition, DiCaprio earned his third Academy Award nomination for <i>Blood Diamond</i>.</p>\r\n<p>In 2007, DiCaprio produced <i>Gardener of Eden</i> directed by Kevin Connolly. It stars Lukas Haas, Erika Christensen and Giovanni Ribisi. The film is about Adam Harris (Haas), a twenty-something college dropout lacking real direction in his life. Adam\'s life changes dramatically when he accidentally captures a serial rapist. The new-found attention inspires him to become a vigilante. Shortly after saw the release of <i>The 11th Hour</i>. A documentary film which he created, produced, co-written and narrated. With contributions from over 50 politicians, scientists, and environmental activists, including former Soviet leader Mikhail Gorbachev, physicist Stephen Hawking, Nobel Prize winner Wangari Maathai, journalist Armand Betscher, and Paul Hawken, the film documents the grave problems facing the planet\'s life systems. Global warming, deforestation, mass species extinction, and depletion of the oceans\' habitats are all addressed. The film\'s premise is that the future of humanity is in jeopardy. The film proposes potential solutions to these problems by calling for restorative action by the reshaping and rethinking of global human activity through technology, social responsibility and conservation.</p>\r\n<p>In 2008, DiCaprio starred in <i>Body of Lies</i>, a spy film based on the novel of the same name by David Ignatius, set in context of the Middle East and the War on Terror, telling the story of three men battling a terrorist organization, and each other. Directed by Ridley Scott, DiCaprio dyed his hair brown and wore brown contacts for the role, which he chose to pursue because he considered it a throwback to political films of the 1970s such as <i>The Parallax View</i> (1974) and <i>Three Days of the Condor</i> (1975). The film received mixed reviews from critics, and at a budget of US$67.5 million, became a moderate box office success, grossing US$115 million worldwide. Later that year, DiCaprio reunited with Kate Winslet to film the drama <i>Revolutionary Road</i> (2008), directed by Winslet\'s then-husband Sam Mendes. As both actors had been reluctant to make romantic films similar to <i>Titanic</i>, it was Winslet who suggested that both should work with her on a film adaptation of the 1961 novel of the same name by Richard Yates after reading the script by Justin Haythe, knowing that plot had little in common with the 1997 blockbuster. Once DiCaprio agreed to do the film, it went almost immediately into production. He noted that he saw his character as \"unheroic\" and \"slightly cowardly\" and that he was \"willing to be just a product of his environment.\" Portraying a couple in a failing marriage in the 1950s, DiCaprio and Winslet watched period videos promoting life in the suburbs to prepare themselves for <i>Revolutionary Road</i>, which eventually earned them favorable reviews. For his portrayal DiCaprio garnered his seventh Golden Globes nomination. Also in 2008, he was a creator and an executive producer for <i>Greensburg</i> an American television series broadcast on the Planet Green television network. The show takes place in Greensburg, Kansas, and is about rebuilding the town in a sustainable way after being hit by the May 2007 EF5 tornado. He was a producer for the psychological horror thriller film <i>Orphan</i> directed by Jaume Collet-Serra. The film stars Vera Farmiga, Peter Sarsgaard, Isabelle Fuhrman, C. C. H. Pounder and Jimmy Bennett. The plot centers on a couple who, after the death of their unborn child, adopt a mysterious 9-year-old girl.</p>\r\n<p>Mr. DiCaprio continued his collaborative streak with Scorsese in the 2010 psychological thriller film <i>Shutter Island</i> (2010), based on the 2003 novel of the same name by Dennis Lehane. He played U.S. Marshal Edward \"Teddy\" Daniels, who is investigating a psychiatric facility located on an island and comes to question his own sanity. The film grossed $294 million. Also in 2010, DiCaprio starred in director Christopher Nolan\'s science-fiction film <i>Inception</i>, also starring Marion Cotillard, Tom Hardy, Joseph Gordon-Levitt, Cillian Murphy, Ken Watanabe, Tom Berenger and Michael Caine. Inspired by the experience of lucid dreaming and dream incubation, DiCaprio portrays the character of Dom Cobb, an \"extractor\" who enters the dreams of others to obtain information that is otherwise inaccessible. Cobb is promised a chance to regain his old life in exchange for planting an idea in a corporate target\'s mind. DiCaprio was \"intrigued by this concept-this dream-heist notion and how this character\'s gonna unlock his dreamworld and ultimately affect his real life.\" Released to critical acclaim, the film grossed over $825 million worldwide. To star in this film, DiCaprio agreed to a pay cut from his $20 million fee, in favor of splitting first-dollar gross points, which means he receives money coming directly off the top of ticket sales. This risk paid off, with DiCaprio earning $50 million from the film to become his highest payday yet. The movie went on to become Di Caprio\'s second highest-grossing movie with $293 million at the box office, after <i>Titanic</i> with $659 million and ahead of <i>The Revenant</i> with $184 million.</p>\r\n<p>In 2011, DiCaprio starred alongside Armie Hammer and Naomi Watts in Clint Eastwood\'s <i>J. Edgar</i>, a biopic about J. Edgar Hoover. Written by Dustin Lance Black, the film focuses on the career of the FBI director from the Palmer Raids onwards, including an examination of his private life as an alleged closeted homosexual. Reviews towards the film were mostly mixed, with many critics commending DiCaprio\'s performance but feeling that, overall, the film lacked coherence. Roger Ebert praised DiCaprio\'s performance as a \"fully-realized, subtle and persuasive performance, hinting at more than Hoover ever revealed, perhaps even to himself.\" Also in 2011, he produced Catherine Hardwicke\' <i>Red Riding Hood</i>. It\'s a romance horror film very loosely based on the folk tale <i>Little Red Riding Hood</i>. It stars Amanda Seyfried in the title role. Co-stars include Gary Oldman, Billy Burke, Virginia Madsen, Shiloh Fernandez, etc. He was also an executive producer for <i>The Ides of March</i> (2011), an American political drama film directed by George Clooney. The film is an adaptation of Willimon\'s 2008 play <i>Farragut North</i>. It stars Ryan Gosling, George Clooney, Evan Rachel Wood, Philip Seymour Hoffman, Marisa Tomei, Paul Giamatti, and Jeffrey Wright.</p>\r\n<p>In 2012, DiCaprio starred as villainous Calvin Candie in Quentin Tarantino\'s spaghetti western, <i>Django Unchained</i>. While filming <i>Django Unchained</i>, DiCaprio accidentally cut his hand on glass, but continued filming despite the injury, and Tarantino elected to use the take in the final movie. The film received positive reviews from critics and earned DiCaprio his ninth nomination from the Golden Globes. <i>Django Unchained</i> grossed $424 million worldwide.</p>\r\n<p>DiCaprio\'s next film was <i>The Great Gatsby</i>, again with Baz Luhrmann (who directed him in <i>Romeo + Juliet</i>, 1996), an adaptation of F. Scott Fitzgerald\'s 1925 novel, also starring Carey Mulligan, Joel Edgerton and Tobey Maguire; the film was released on May 10, 2013. It received mixed reviews from critics, however DiCaprio\'s portrayal as Jay Gatsby was praised. Critic Rafer Guzman of <i>Newsday</i> praised DiCaprio by stating, \"As for Leonardo DiCaprio, he is now the Gatsby to beat. Despite a borderline comedic entrance - haloed by fireworks and accompanied by Gershwin\'s \"Rhapsody in Blue\"-DiCaprio nails this maddeningly enigmatic character. He\'s as tough as Alan Ladd in \'49, as suave as Redford in \'74, but also vulnerable, touching, funny, a faker, a human. You hear it all in Gatsby\'s favorite phrase, \"old sport,\" a verbal tic that stumped other actors. It\'s a tremendous, hard-won performance.\" Matt Zoller Seitz of <i>Roger Ebert.com</i> described his performance as Gatsby as \"The movie\'s greatest and simplest special effect,\" and states \"This is an iconic performance-maybe his career best.\" The film grossed $348 million worldwide and became Luhrmann\'s highest-grossing film.</p>\r\n<p>Mr. DiCaprio reunited with Scorsese for the fifth time in <i>The Wolf of Wall Street</i>, a film based on the life of stockbroker Jordan Belfort, who was arrested in the late 1990s for securities fraud and money laundering. Filming began on August 8, 2012, in New York, and the film was released on December 25, 2013. The role earned him a Golden Globe Award for Best Actor in a Musical or Comedy and his fourth Academy Award nomination for acting. He was also nominated the same year for producing as the film was nominated for Best Picture. In January 2013, DiCaprio said he was going to take a long break from acting and would \"fly around the world doing good for the environment.\"</p>\r\n<p>Also in 2013 he produced the crime thriller film, Brad Furman\'s <i>Runner Runner</i>. It stars Justin Timberlake, Ben Affleck, Gemma Arterton and Anthony Mackie. Some parts of this narrative are based on the life of Nat Arem, a professional poker player and former accountant at Deloitte Touche who helped uncover cheating in online poker by using statistical methods to analyze thousands of games. Shortly after he produced <i>Out of the Furnace</i> (2013), the film stars Christian Bale, Casey Affleck, Woody Harrelson, Zoe Saldana, Forest Whitaker, Willem Dafoe, and Sam Shepard. The film is about a Pennsylvania steel mill worker Russell Baze (Bale) and his Iraq War veteran brother Rodney (Affleck), who cannot adjust to civilian life. While Rodney makes some money doing bareknuckle fights for bar owner and small-time criminal John Petty (Dafoe), who runs illegal gambling operations, Rodney becomes so indebted due to his own gambling losses that he begs Petty to let him do a big money fight. After Petty reluctantly arranges for Rodney to do a fight for a ruthless criminal gang in the backwoods, Rodney disappears, and his brother tries to find out what has happened to him.</p>\r\n<p>He was an executive producer on <i>Virunga</i> a 2014 British documentary film directed by Orlando von Einsiedel. It focuses on the conservation work of park rangers within the Congo\'s Virunga National Park during the rise of the violent M23 Rebellion in 2012 and investigates the activity of the British oil company Soco International within the UNESCO World Heritage site. Soco International ended up officially exploring oil opportunities in Virunga in April 2014. The film premiered at the Tribeca Film Festival on April 17, 2014. After airing on Netflix, it was nominated for an Academy Award for Best Documentary Feature. <i>Cowspiracy: The Sustainability Secret</i> is a 2014 documentary film for which he was also an executive producer. It explores the impact of animal agriculture on the environment, and investigates the policies of environmental organizations on this issue. The film looks at various environmental concerns, including global warming, water use, deforestation, and ocean dead zones, and suggests that animal agriculture is the primary source of environmental destruction.</p>\r\n<p>In 2015, DiCaprio played fur trapper Hugh Glass in the survival drama <i>The Revenant</i>, directed by Alejandro G. Iñárritu. The film was well received by critics and DiCaprio\'s performance garnered universal acclaim that earned him numerous awards, including his first Academy Awards win for Best Actor, his eleventh nomination and third Golden Globe win; winning for Best Actor Drama, and his first BAFTA, SAG and Critic\'s Choice Award win all for Best Actor. Also in 2015, he was an executive producer for <i>Catching the Sun</i>, a documentary film on the growth of the solar power industry that premiered on Netflix in April 2016. Directed by Shalini Kantayya, the film features portraits of diverse personalities and their roles in the transition to solar power. Unemployed workers in Richmond, California, businessmen in China, Tea Party activists, and a would-be White House advisor are all featured in the film. The film takes the position that clean energy does not require sacrificing economic prosperity.</p>\r\n<p>He started 2016 by being an executive producer for <i>The Ivory Game</i>, a documentary film. The film examines the ivory trade, which has become a global concern, pitting governments and environmental preservationists against poachers and Chinese ivory merchants. That same year he was one of the producers, hosted, and narrated the documentary <i>Before the Flood</i> about climate change directed by Fisher Stevens. The film shows DiCaprio visiting various regions of the globe exploring the impact of man-made global warming. As a narrator, DiCaprio comments these encounters as well as archive footage. Also in 2016, <i>Live by Night</i> was produced by DiCaprio. A crime drama film written, directed, produced by and starring Ben Affleck. Based on the 2012 novel of the same name by Dennis Lehane, the film follows an Ybor City bootlegger (Affleck) who becomes a notorious gangster. The film also stars Elle Fanning, Brendan Gleeson, Chris Messina, Sienna Miller, Zoe Saldana and Chris Cooper.</p>\r\n<p>In 2018, he produced <i>Delirium</i>, a psychological horror film directed by Dennis Iliadis. It stars Topher Grace, Patricia Clarkson, Callan Mulvey and Genesis Rodriguez. The film is about a man (Grace) who inherits a mansion from his deceased wealthy father after being released from a mental institution. Strange events lead him to wonder if the house is haunted or if his mind is playing tricks on him. In 2019, DiCaprio will star as Rick Dalton, an aging TV actor, in Quentin Tarantino\'s upcoming film <i>Once Upon a Time in Hollywood</i> about the Manson Family murders.</p>\r\n<p>On August 10, 2015, it was announced that Martin Scorsese will direct an adaptation of Erik Larson\'s <i>The Devil in the White City</i>, which will star DiCaprio with a screenplay to be written by Billy Ray. In 2017, Paramount announced that it has acquired the movie rights for an English language adaptation of <i>The Black Hand</i>. The new film, due for release in 2020, will star DiCaprio as Joe Petrosino, and will be partly based on Stephan Talty\'s novelization of Petrosino\'s assassination. In August 2017, Paramount won a bidding war against Universal Pictures for the rights to adapt Walter Isaacson\'s biography of Leonardo da Vinci. The studio bought the rights under its deal with DiCaprio\'s Appian Way Productions, which said that it planned to produce the film with DiCaprio as the star. As of September 2018, DiCaprio is set to star in <i>Roosevelt</i>, a biopic of former U.S. President Theodore Roosevelt; Martin Scorsese will direct and Paramount Pictures will distribute, with DiCaprio\'s Appian Way producing. The film does not yet have a release date. In October 2018, he was cast in the Martin Scorsese-directed film adaptation of the David Grann\'s New York Times bestseller book <i>Killers of the Flower Moon</i>.</p>', 'actors/leonardo-dicaprio_Cover.jpeg'),
(47, 'Louie', '', 'Anderson', 'M', '<p>Louis Perry \"Louie\" Anderson was born and raised in Saint Paul, Minnesota, the son of Ora Zella (née Prouty) and Louis William Anderson. Anderson is the second youngest of 11 children in his family. In a 2016 interview on <i>WTF with Marc Maron</i>, Anderson revealed that his mother actually gave birth to 16 children, but five of them-the first baby and then two sets of twins-died in childbirth. Anderson has described his father as \"abusive.\"</p>\r\n<p>Anderson went to Johnson Senior High in Saint Paul.</p>\r\n<p>On November 20, 1984, Anderson made his network debut as a stand-up comedian on <i>The Tonight Show</i>.</p>\r\n<p>In late 1985, Anderson was cast as Lou Appleton alongside Bronson Pinchot on the pilot episode of <i>Perfect Strangers</i> for ABC (which was known in this early stage as <i>The Greenhorn</i>). When the show was picked up, Anderson was replaced by Mark Linn-Baker in the role of Appleton (whose first name was then changed from Lou to Larry) as the producers didn\'t think the chemistry between Anderson and Pinchot was quite right. The show ran for eight seasons on ABC.</p>\r\n<p>In 1986, Anderson had a small role in the singing-telegram scene in <i>Ferris Bueller\'s Day Off</i>.</p>\r\n<p>In 1987, Anderson appeared in a comedy special on Showtime.</p>\r\n<p>In 1988, Anderson played a role in John Landis\' film <i>Coming to America</i>, which starred Eddie Murphy and Arsenio Hall, and starred in the camp comedy <i>The Wrong Guys</i>.</p>\r\n<p>In 1989, Anderson guest-starred on the first episode of the MuppeTelevision segment of <i>The Jim Henson Hour</i>.</p>\r\n<p>In 1995, Anderson created and produced a Saturday-morning animated series for Fox called <i>Life with Louie</i>. The series was based on Anderson\'s childhood with 10 siblings, a sweet-hearted mother and a loud, war-crazed father. It also detailed how he was picked on for his weight, and how he used comedy to deal with the teasing. The show was a 3-year hit on Fox, and won two Daytime Emmy Awards for Outstanding Performer in an Animated Program.</p>\r\n<p>In 1996, Anderson created and starred in <i>The Louie Show</i> for CBS. The show had Anderson playing a psychotherapist in Duluth, Minnesota. The show ran six episodes and was cancelled.</p>\r\n<p>In 1999, Anderson landed the role of host of the new version of <i>Family Feud</i>. Anderson asked former <i>Feud</i> host Richard Dawson to appear on the premiere show to give him his blessing, but Dawson declined. Anderson organized a 9/11-themed tournament week of <i>Family Feud</i> between the FDNY and the NYPD, putting up $75,000 toward both organizations for recovery from the September 11, 2001, attacks. Anderson was let go from the show in 2002.</p>\r\n<p>In 2001, Anderson appeared on an episode of <i>Weakest Link</i>, winning $31,000. He has made appearances on network television in <i>Scrubs</i>, <i>Grace Under Fire</i>, <i>Touched by an Angel</i> (A Song for the Soul, November 28, 1999) and <i>Chicago Hope</i>. He guest starred on the Adult Swim cameo-filled show <i>Tom Goes to the Mayor</i>.</p>\r\n<p>Anderson played in the 2006 World Series of Poker Main Event in Las Vegas, Nevada.</p>\r\n<p>In 2012, Anderson filmed a standup special entitled <i>Louie Anderson: Big Baby Boomer</i>. In it, Anderson poked fun at his bad habits, pesky family members, and aging body.</p>\r\n<p>In 2013, Anderson appeared in the ABC reality television series <i>Splash</i>. After practicing several dives into a swimming pool then nearly drowning, he needed help getting out from co-star football player Ndamukong Suh.</p>\r\n<p>In October 2014, Anderson signed on as the promotional spokesperson for his home state\'s Land O\'Lakes Sweet Cream butter brand. Anderson has since appeared in radio jingles, web ads, and television commercials promoting the product.</p>\r\n<p>Since January 21, 2016, Anderson has played the part of Christine Baskets on the FX comedy series <i>Baskets</i>. Anderson won the Primetime Emmy Award for Outstanding Supporting Actor in a Comedy Series for his performance as Christine Baskets in 2016.</p>\r\n<p>On July 23, 2017, Anderson competed on an episode of <i>Celebrity Family Feud</i> (hosted today by Steve Harvey); his opponent was singer/actress Christina Milian. This makes him one of only a small number of individuals to have both hosted and been a contestant on the same game show, and also marks his first appearance on any form of <i>Family Feud</i> since his departure as host in 2002. As of September, 2018, he is a regular panelist on the TV game show Funny You Should Ask.</p>', 'actors/louie-anderson_Cover.jpg'),
(48, 'Lupita', '', 'Nyong\'o', 'F', '<p>Lupita Amondi Nyong\'o was born in Mexico City, Mexico, to Kenyan parents, Dorothy Ogada Buyu and Peter Anyang\' Nyong\'o, a college professor. The family had left Kenya in 1980 for a period because of political repression and unrest; Peter\'s brother, Charles Nyong\'o, disappeared after he was thrown off a ferry in 1980.</p>\r\n<p>Nyong\'o identifies as Kenyan-Mexican and has dual Kenyan and Mexican citizenship. She is of Luo descent on both sides of her family, and is the second of six children. It is a tradition of the Luo people to name a child after the events of the day, so her parents gave her a Spanish name, Lupita (a diminutive of Guadalupe). Her father is a former Minister for Medical Services in the Kenyan government. At the time of her birth, he was a visiting lecturer in political science at El Colegio de México in Mexico City. He later became a senior politician in Kenya.</p>\r\n<p>The family returned to their native Kenya when Nyong\'o was less than one year old, as her father was appointed a professor at the University of Nairobi. She grew up primarily in Nairobi, and describes her upbringing as \"middle class, suburban\". When she was 16, her parents sent her to Mexico for seven months to learn Spanish. During those seven months, Nyong\'o lived in Taxco, Guerrero, and took classes at the Universidad Nacional Autónoma de México\'s Learning Center for Foreigners.</p>\r\n<p>Nyong\'o grew up in an artistic family, where get-togethers often included performances by the children, and trips to see plays. She attended Rusinga International School in Kenya and acted in school plays.</p>\r\n<p>At the age of 14, Nyong\'o made her professional acting debut as Juliet in <i>Romeo and Juliet</i> in a production by the Nairobi-based repertory company Phoenix Players. While a member of the Phoenix Players, Nyong\'o also performed in the plays <i>On The Razzle</i> and <i>There Goes The Bride</i>. Nyong\'o cites the performances of American actresses Whoopi Goldberg and Oprah Winfrey in <i>The Color Purple</i> with inspiring her to pursue a professional acting career.</p>\r\n<p>Nyong\'o later attended St. Mary\'s School in Nairobi, where she received an IB Diploma in 2001. She went to the United States for college, graduating from Hampshire College with a degree in film and theatre studies.</p>\r\n<p>Nyong\'o started her career working as part of the production crew for several films, including Fernando Meirelles\'s <i>The Constant Gardener</i> (2005), Mira Nair\'s <i>The Namesake</i> (2006), and Salvatore Stabile\'s <i>Where God Left His Shoes</i> (2007). She cites Ralph Fiennes, the British star of <i>The Constant Gardener</i>, as someone who inspired her to pursue a professional acting career.</p>\r\n<p>In 2008, Nyong\'o starred in the short film East River, directed by Marc Grey and shot in Brooklyn. She returned to Kenya that same year and appeared in the Kenyan television series <i>Shuga</i>, an MTV Base Africa/UNICEF drama about HIV/AIDS prevention. In 2009, she wrote, directed, and produced the documentary <i>In My Genes</i>, about the discriminatory treatment of Kenya\'s albino population. It played at several film festivals and won first prize at the 2008 Five College Film Festival. Nyong\'o also directed the music video \"The Little Things You Do\" by Wahu, featuring Bobi Wine, which was nominated for the Best Video Award at the MTV Africa Music Awards 2009.</p>\r\n<p>Nyong\'o enrolled in a master\'s degree program in acting at the Yale School of Drama. At Yale, she appeared in many stage productions, including Gertrude Stein\'s <i>Doctor Faustus Lights the Lights</i>, Chekhov\'s <i>Uncle Vanya</i>, and William Shakespeare\'s <i>The Taming of the Shrew</i> and <i>The Winter\'s Tale</i>. While at Yale, she won the Herschel Williams Prize in the 2011-12 academic year for \"acting students with outstanding ability\" .</p>\r\n<p>Immediately after graduating from Yale, Nyong\'o landed her breakthrough role when she was cast for Steve McQueen\'s historical drama <i>12 Years a Slave</i> (2013). The film, which met with wide critical acclaim, is based on the life of Solomon Northup (played by Chiwetel Ejiofor), a free-born African-American man of upstate New York who is kidnapped and sold into slavery in Washington, DC, in 1841. Nyong\'o played the role of Patsey, a slave who works alongside Northup at a Louisiana cotton plantation; her performance met with rave reviews. Ian Freer of <i>Empire</i> wrote that she \"gives one of the most committed big-screen debuts imaginable,\" and critic Peter Travers added that she \"is a spectacular young actress who imbues Patsey with grit and radiant grace\".</p>\r\n<p>Nyong\'o was nominated for several awards for <i>12 Years a Slave</i>, including a Golden Globe Award for Best Supporting Actress, a BAFTA Award for Best Actress in a Supporting Role, and two Screen Actors Guild Awards, including Best Supporting Actress, which she won. She was also awarded the Academy Award for Best Supporting Actress, becoming the sixth black actress to win the award. She is the first African actress to win the award, the first Kenyan actress to win an Oscar, and the first Mexican to win the award. She was the 15th actress to win an Oscar for a debut performance in a feature film.</p>\r\n<p>Following a supporting role in the action-thriller <i>Non-Stop</i> (2014), Nyong\'o co-starred in <i>Star Wars: The Force Awakens</i> (2015) as Force-sensitive space pirate Maz Kanata, a CGI character created using motion capture technology. Nyong\'o said that she had wanted to play a role where her appearance was not relevant. The acting provided a different challenge from her role as Patsey. Scott Mendelson of <i>Forbes</i>, characterised Nyong\'o\'s role as \"the center of the film\'s best sequence,\" and Stephanie Zacharek of <i>Time</i> called her a \"delightful minor character\". Nyong\'o was nominated for the Best Supporting Actress at the 42nd Saturn Awards and Best Virtual Performance at the 2016 MTV Movie Awards for her role.</p>\r\n<p>In 2015 Nyong\'o returned to stage with a starring role as an unnamed girl in the play <i>Eclipsed</i>, written by Danai Gurira. The play takes place during the chaos of the Second Liberian Civil War, where the captive wives of a rebel officer band together to form a community, until the balance of their lives are upset by the arrival of a new girl (played by Nyong\'o). <i>Eclipsed</i> became The Public Theater\'s fastest-selling new production in recent history and won Nyong\'o an Obie Award for Outstanding Performance. The play premiered on Broadway at the John Golden Theatre the following year. It was the first play to premiere on Broadway with an all-black and female creative cast and crew. Nyong\'o said that she understudied the play at Yale in 2009 and was terrified to play the character on stage. Her performance met with critical acclaim. <i>The New York Times</i>\' critic Charles Isherwood called Nyong\'o \"one of the most radiant young actors to be seen on Broadway in recent seasons, shines with a compassion that makes us see beyond the suffering to the indomitable humanity of its characters.\" Nyong\'o\'s performance in <i>Eclipsed</i> earned her a Theatre World Award for Outstanding Broadway or Off-Broadway Debut Performance, an Obie Award for a Distinguished Performance by an Ensemble, and a nomination for the Tony Award for Best Actress in a Play. In addition, she was nominated for Outstanding Actress in a Play at the Outer Critics Circle Award and a Distinguished Performance Award at the Drama League Award. Nyong\'o said that she turned down Hollywood films for the part.</p>\r\n<p>Nyong\'o co-starred in Jon Favreau\'s <i>The Jungle Book</i> (2016), a live-action/CGI adaptation of its 1967 animated original, voicing Raksha, a mother wolf who adopts Mowgli (played by Neel Sethi). Robbie Collin of <i>The Daily Telegraph</i> wrote in his review that Nyong\'o brought a \"gentle dignity\" to her role. She later co-starred in Mira Nair\'s <i>Queen of Katwe</i> (2016), a biopic based on the true story about the rise of a young Ugandan chess prodigy, Phiona Mutesi (played by Madina Nalwanga), who becomes a Woman Candidate Master after her performances at World Chess Olympiads. Nyong\'o played Phiona\'s protective mother, Nakku Harriet. Brian Tallerico of RogerEbert.com said, \"Nyong\'o is phenomenal. She has an incredible ability to convey backstory.\" Geoff Berkshire of <i>Variety</i> called Nyong\'o\'s performance \"Simply radiant in her first live action role since winning an Oscar for <i>12 Years a Slave</i> [...] she imbues what could have been a stock mother figure with such inner fire that Harriet feels worthy of a movie all her own.\"</p>\r\n<p>Nyong\'o reprised her role as Maz Kanata in Rian Johnson\'s <i>Star Wars: The Last Jedi</i> (2017), as well as in the animated series <i>Star Wars Forces of Destiny</i>. The following year, she starred as spy Nakia, a former member of Dora Milaje, a team of women who serve as special forces of Wakanda and personal bodyguards to T\'Challa / Black Panther (Chadwick Boseman), in Ryan Coogler\'s superhero film <i>Black Panther</i> (2018), which marked the eighteenth film in the Marvel Cinematic Universe. In preparation for the role, Nyong\'o learned to speak Xhosa and undertook judo, jujitsu, silat, and Filipino martial arts training. David Betancourt of <i>The Washington Post</i> wrote that the film \"takes superhero cinema where it\'s never gone before by not being afraid to embrace its blackness\"; he particularly praised Nyong\'o\'s portrayal of her character for avoiding stereotypical depictions of a black leading lady, writing that she \"throws punches, shoots guns and steals hearts in a role she seems born for.\" <i>Black Panther</i> earned over $1.34 billion to emerge as the ninth highest-grossing film of all time. Nyong\'o received a Saturn Award for Best Actress nomination for the film.</p>\r\n<p>Following the success of <i>Black Panther</i>, Nyong\'o starred as a kindergarten teacher dealing with a zombie apocalypse in the comedy horror film <i>Little Monsters</i> (2019). Amy Nicholson of <i>Variety</i> disliked the film but wrote that Nyong\'o\'s \"deadpan humor and grace ennoble the slapstick\". The 2019 South by Southwest marked the premiere of her next release, Jordan Peele\'s psychological horror film <i>Us</i>. It tells the story of a family who are confronted by their doppelgängers. Emily Yoshida of <i>New York</i> magazine labeled her dual role \"astounding\" and found her portrayal of the doppelgänger to be \"an achievement on another level; a physical, vocal, and emotional performance so surgical in its uncanniness that it almost feels like it could not be the work of a flesh-and-blood human.\" <i>Us</i> earned over $252 million against a budget of $20 million.</p>\r\n<p>Ms. Nyong\'o will reprise her role as Maz Kanata for the third time in <i>Star Wars: The Rise of Skywalker</i> (2019), which will mark the final installment of the <i>Star Wars</i> sequel trilogy. She is developing a television series based on Chimamanda Ngozi Adichie\'s novel <i>Americanah</i>, which she will produce and star in. She will produce and star in <i>Born a Crime</i>, a film adaptation of Trevor Noah\'s memoir of the same name, in which she will play Noah\'s mother, Patricia; will star alongside Viola Davis in <i>The Woman King</i>, a drama based on the Dahomey Amazons; and will lend her voice to play the Giant in the live-animation film <i>Jack</i>. She has also committed to star in a remake of John Woo\'s 1989 action thriller <i>The Killer</i> and Simon Kinberg\'s ensemble spy-thriller <i>355</i>. In addition, Nyong\'o will narrate the Discovery Channel series <i>Serengeti</i>, about wildlife in the Serengeti ecosystem.</p>\r\n<p>Nyong\'o will also make her writing debut with a book entitled <i>Sulwe</i>, which will be published by Simon & Schuster Books for Young Readers. <i>Sulwe</i> (Luo for \"star\") is the story of a five-year-old Kenyan girl, who has the darkest complexion in her family, for which Nyong\'o drew upon her own childhood experiences. Nyong\'o will re-team with the creatives behind <i>Little Monsters</i> for a Comedy/Sci-Fi film.</p>', 'actors/lupita-nyongo_Cover.jpg');
INSERT INTO `actors` (`id`, `first_name`, `middle_name`, `last_name`, `gender`, `about`, `img`) VALUES
(49, 'Maggie', '', 'Smith', 'F', '<p>Has had an extensive, varied career on stage, film, and television, spanning over 67 years. Smith has appeared in more than 50 films, and is one of Britain\'s most recognisable actresses. A prominent figure in British culture for decades, she was made a Dame by Queen Elizabeth II in 1990 for contributions to the performing arts, and received the Companion of Honour from the Queen in 2014 for services to drama. She won an Emmy Award in 2003 for <i>My House in Umbria</i>, to become one of the few actresses to have achieved the Triple Crown of Acting, and starred as Lady Violet Crawley, Dowager Countess of Grantham, on <i>Downton Abbey</i> (2010-2015), for which she won three Emmys, her first non-ensemble Screen Actors Guild Award, and her third Golden Globe. Her honorary awards include the BAFTA Special Award in 1993, the BAFTA Fellowship in 1996, and the Special Olivier Award in 2011. She received the Stratford Shakespeare Festival\'s Legacy Award in 2012, and the Bodley Medal by the University of Oxford\'s Bodleian Libraries in 2016.</p>\r\n<p>Dame Margaret Natalie Smith was born in Ilford, Essex, on 28 December 1934. Her father, Nathaniel Smith (1902-1991), was a public health pathologist from Newcastle upon Tyne who worked at Oxford University; her mother, Margaret Hutton (<i>née</i> Little; 1896-1977), was a Scottish secretary from Glasgow. During her childhood, Smith\'s parents told her the romantic story of how they had met on the train from Glasgow to London via Newcastle. She moved with her family to Oxford when she was four years old. She had older twin brothers, Alistair (died 1981) and Ian. The latter went to architecture school. Smith attended Oxford High School until age 16, when she left to study acting at the Oxford Playhouse.</p>\r\n<p>In 1952, aged 17, under the auspices of the Oxford University Dramatic Society, Smith began her career as Viola in <i>Twelfth Night</i> at the Oxford Playhouse. In 1954, she appeared in the television programme <i>Oxford Accents</i> produced by Ned Sherrin. She appeared in her first film in 1956, in an uncredited role in <i>Child in the House</i>, and made her Broadway debut the same year playing several roles in the review <i>New Faces of \'56</i>, at the Ethel Barrymore Theatre from June to December 1956. In 1957, she starred opposite Kenneth Williams in the musical comedy <i>Share My Lettuce</i>, written by Bamber Gascoigne. In 1958, she received the first of her 18 BAFTA Film and TV nominations for her role in the film <i>Nowhere to Go</i>.</p>\r\n<p>In 1962, Smith won the first of a record five Best Actress Evening Standard Awards for her roles in Peter Shaffer\'s plays <i>The Private Ear and The Public Eye</i>, again opposite Kenneth Williams. She became a fixture at the Royal National Theatre in the 1960s, most notably for playing Desdemona in <i>Othello</i> opposite Laurence Olivier and earning her first Oscar nomination for her performance in the 1965 film version. She appeared opposite Olivier in Ibsen\'s <i>The Master Builder</i>, and played comedic roles in <i>The Recruiting Officer</i> and <i>Much Ado About Nothing</i>. Her other films at this time included <i>Go to Blazes</i> (1962), <i>The V.I.P.s</i> (1963), <i>The Pumpkin Eater</i> (1964), <i>Young Cassidy</i> (1965), <i>Hot Millions</i> (1968), and <i>Oh! What A Lovely War</i> (1969).</p>\r\n<p>Smith won the Academy Award for Best Actress for her performance in the title role of the 1969 film <i>The Prime of Miss Jean Brodie</i>. Vanessa Redgrave had originated the role on stage in London, and Zoe Caldwell won the Tony Award for Best Actress in a Play, when she played the role in New York. The role also won Smith her first BAFTA Award. In 1970, she played the title role in Ingmar Bergman\'s London production of the Ibsen play <i>Hedda Gabler</i>, winning her second Evening Standard award for Best Actress. She received her third Academy Award nomination for the 1972 film <i>Travels with My Aunt</i>. She also appeared in the film <i>Love and Pain and the Whole Damn Thing</i> (1973). In the mid-1970s, she made several guest appearances on <i>The Carol Burnett Show</i>.</p>\r\n<p>From 1976 to 1980, she appeared in numerous productions at the Stratford Shakespeare Festival in Stratford, Ontario, to acclaim; her roles included Queen Elizabeth in <i>Richard III</i>, Cleopatra, Lady Macbeth, Virginia Woolf in <i>Virginia</i>, and opposite Brian Bedford in the Noël Coward comedy <i>Private Lives</i>. Also during this time, she starred on Broadway in <i>Private Lives</i> in 1975 and <i>Night and Day</i> in 1979, receiving Tony Award nominations for both. Smith received the 1978 Academy Award for Best Supporting Actress for her role as Diana Barrie in <i>California Suite</i>. For this role, she also won her first Golden Globe Award. Afterward, upon hearing that Michael Palin was about to embark on the film <i>The Missionary</i> (1982) with Smith, her co-star Michael Caine is supposed to have humorously telephoned Palin, warning him that she would steal the film. Her other films at this time include <i>Murder by Death</i> (1976) and <i>Death on the Nile</i> (1978).</p>\r\n<p>In 1981, Smith played the goddess Thetis in <i>Clash of the Titans</i>. For her role on television as <i>Mrs Silly</i>, she received the first of her four Best Actress BAFTA TV Award nominations. On stage, she won her third and fourth Evening Standard awards for Best actress, for <i>Virginia</i> in 1981 and <i>The Way of the World</i> in 1984. She won three more Best Actress BAFTA Awards for her roles as Joyce Chilvers in the 1984 black comedy <i>A Private Function</i>, Charlotte Bartlett in the 1986 Merchant Ivory production of <i>A Room with a View</i>, and the title role in the 1987 film <i>The Lonely Passion of Judith Hearne</i>. For <i>A Room With a View</i>, she also received her fifth Academy Award nomination, and won her second Golden Globe Award. In 1987, she starred in <i>A Bed Among the Lentils</i>, part of Alan Bennett\'s Talking Heads series, receiving a second BAFTA TV nomination. She starred in the 1987 London production of <i>Lettice and Lovage</i> alongside Margaret Tyzack, receiving an Olivier Award nomination, and reprised the role in 1990, when it transferred to Broadway, and won the Tony Award for Best Actress in a Play. The play was written specifically for her by the playwright Peter Shaffer.</p>\r\n<p>In the 1990s, Smith appeared as Wendy Darling in the 1991 hit movie <i>Hook</i>, and also appeared in the hit comedy films <i>Sister Act</i> in 1992 and <i>The First Wives Club</i> in 1996. She also received a third BAFTA TV nomination for the 1992 TV film <i>Memento Mori</i>, and her first Emmy nomination for her role in the 1993 TV film <i>Suddenly, Last Summer</i>. She won a BAFTA for Best Supporting Actress for the 1999 film <i>Tea with Mussolini</i>, in which she played Lady Hester. She also appeared in the films <i>The Secret Garden</i> (1993), <i>Richard III</i> (1995), and <i>Washington Square</i> (1997). Her 1990s stage roles included <i>Three Tall Women</i> in 1994, which won her a fifth Evening Standard award, Claire in <i>A Delicate Balance</i> opposite Eileen Atkins in 1997, and <i>The Lady in the Van</i> in 1999.</p>\r\n<p>Due to the international success of the <i>Harry Potter</i> movies, she is now widely known for playing Professor Minerva McGonagall, opposite Daniel Radcliffe in the title role. She has appeared in seven of the eight films in the series from 2001 to 2011. She and Radcliffe had worked together previously in the 1999 BBC television adaptation of <i>David Copperfield</i>, in which she played Betsey Trotwood and received a BAFTA TV Award nomination. She received her sixth Academy Award nomination for the 2001 film <i>Gosford Park</i>, directed by Robert Altman, and won her first Emmy Award for the 2003 TV film <i>My House in Umbria</i>. On stage, she starred as Madeleine Palmer, opposite Judi Dench, in the David Hare play <i>The Breath of Life</i> in 2002, toured Australia in Alan Bennett\'s <i>Talking Heads</i> in 2004, and starred in <i>The Lady from Dubuque</i> in 2007.</p>\r\n<p>Beginning in 2010, Smith appeared as Violet Crawley, Dowager Countess of Grantham, in the British period drama <i>Downton Abbey</i>. This role won her a Golden Globe Award and two Emmy Awards. In 2014, the role also won her a Screen Actors Guild Award. In 2012, she played Muriel in the British comedy <i>The Best Exotic Marigold Hotel</i>, and starred as Jean Horton in <i>Quartet</i>, based on Ronald Harwood\'s play, directed by actor Dustin Hoffman.</p>\r\n<p>In a March 2015 interview with Joe Utichi in <i>The Sunday Times</i>, Smith announced that the sixth season of <i>Downton Abbey</i> would be her last (it was in fact the last to be produced). On 30 October 2015, Smith appeared on BBC\'s <i>The Graham Norton Show</i>, her first appearance on a chat show in 42 years. During the show, Smith discussed her appearance in the comedy-drama film <i>The Lady in the Van</i>, which was directed by Nicholas Hytner.</p>\r\n<p>In February 2019, it was announced that Smith would return to the London stage for the first time in twelve years in A German Life. The new play by Christopher Hampton was drawn from the life and testimony of Brunhilde Pomsel (1911-2017), in which Smith was alone on stage, performing a 100 minute long monolouge to the audience. Jonathan Kent took the directorial role.</p>\r\n<p>Ms. Smith was appointed a Commander of the Order of the British Empire (CBE) in the 1970 New Year Honours, and was raised to Dame Commander of the Order of the British Empire (DBE) in the 1990 New Year Honours, for services to the performing arts. Smith was made a Member of the Order of the Companions of Honour (CH) for services to drama in the 2014 Queen\'s Birthday Honours, becoming the third actress to receive the honour, after Sybil Thorndike (1970) and Judi Dench (2005).</p>\r\n<p>In 1971, Smith was conferred an honorary Doctor of Letters (DLitt) by University of St Andrews. In 1986, she was awarded an honorary Doctor of Letters (DLitt) from the University of Bath. In 1994, Smith received an honorary Doctor of Letters (DLitt) from the University of Cambridge. In October 2017, Smith was conferred with an Honorary Fellowship of Mansfield College, Oxford.</p>\r\n<p>She was awarded the Shakespeare Prize by the Hamburg Alfred Toepfer Foundation in 1991. Smith was made a Fellow of the British Film Institute in recognition of her outstanding contribution to film culture in 1992. She was elected to the American Theatre Hall of Fame in 1994. On 10 April 1999 Smith received the William Shakespeare Award for Classical Theatre (The Will Award) presented by the Shakespeare Theatre Company in Washington, D.C. in recognition of her significant contribution to classical theatre in the US. On 9 February 2014 she was inducted into the Actors Hall of Fame. Smith had a star on the London Avenue of Stars until all of the stars were removed in 2006.</p>\r\n<p>In 1993, she was awarded with the BAFTA Special Award by the British Academy of Film and Television Arts. In 1996, the British Academy of Film and Television Arts presented her with the BAFTA Fellowship, the highest honour the Academy can bestow. At the 2010 Laurence Olivier Awards, she was celebrated with the Society of London Theatre Special Award. In 2013, she was awarded with the Evening Standard Icon Award.</p>\r\n<p>On 10 September 2012, she was honoured with the Stratford Shakespeare Festival\'s Legacy Award. She accepted the award, presented to her by Christopher Plummer, in a ceremony at the Fairmont Royal York Hotel. In March 2016, Smith was awarded the Critics\' Circle Award for Distinguished Service to the Arts. In April 2016, she was awarded the Bodley Medal by the University of Oxford\'s Bodleian Libraries in recognition of her outstanding contribution to the performing arts.</p>', 'actors/maggie-smith_Cover.jpg'),
(50, 'Mahershala', '', 'Ali', 'M', '<p>A recipient of several awards, including two Academy Awards and a Golden Globe Award. <i>Time</i> magazine named Ali one of the 100 most influential people in the world in 2019.</p>\r\n<p>Ali was born Mahershalalhashbaz Gilmore in 1974, in Oakland, California, the son of Phillip Gilmore (1956-1994) and Willicia Goines (b.1957). He was raised a Christian in Hayward, California by his mother, an ordained Baptist minister. His father was an actor who appeared on Broadway. Maher-shalal-hash-baz is the name of a prophetic child in chapter 8 of the Biblical Book of Isaiah.</p>\r\n<p>He attended St. Mary\'s College of California (SMC) in Moraga, California, where he graduated in 1996 with a degree in mass communication. He entered SMC with a basketball scholarship and went by the name Hershal Gilmore when playing for the SMC Gaels. He became disenchanted with the idea of a sports career because of the treatment given to the team\'s athletes, and developed an interest in acting, particularly after taking part in a staging of <i>Spunk</i>. This later landed him an apprenticeship at the California Shakespeare Theater following graduation. After a sabbatical year working for <i>Gavin Report</i>, he enrolled in New York University\'s graduate acting program at Tisch School of the Arts, earning his master\'s degree in 2000.</p>\r\n<p>In 2000, he converted to Islam, changed his surname from Gilmore to Ali, and joined the Ahmadiyya Muslim Community - a revivalist movement within Islam. In interviews, he has recounted numerous problems he has encountered at airports, with banks and otherwise in everyday life as an American Muslim since the September 11 attacks.</p>\r\n<p>After pursuing a MFA degree from New York University, Ali began his career as a regular on television series, such as <i>Crossing Jordan</i> (2001-2002) and <i>Threat Matrix</i> (2003-2004), before his breakthrough role as Richard Tyler in the science fiction series <i>The 4400</i> (2004-2007). His first major film release was in the David Fincher-directed fantasy <i>The Curious Case of Benjamin Button</i> (2008). He gained wider attention for his supporting role in the Netflix political thriller series <i>House of Cards</i> (2013-2019). He featured as Boggs in the final two films of <i>The Hunger Games</i> film series and as Cornell \"Cottonmouth\" Stokes in the Netflix superhero series <i>Marvel\'s Luke Cage</i> (2016).</p>\r\n<p>Mr. Ali won the Academy Award for Best Supporting Actor for his portrayal of Juan in the drama film <i>Moonlight</i> (2016), becoming the first Muslim actor to win an Oscar for acting. He won a second Academy Award and the Golden Globe Award for Best Supporting Actor for portraying Don Shirley in the comedy-drama <i>Green Book</i> (2018). This made him the first black actor to win two Academy Awards in the same category. In 2019, he played the lead role of a troubled police officer in the third season of the HBO anthology crime series <i>True Detective</i>.</p>', 'actors/mahershala-ali_Cover.jpg'),
(51, 'Mark', '', 'Rylance', 'M', '<p>Rylance is a patron of the London International Festival of Theatre. He is also a patron of the London-based charity Peace Direct, which supports peace-builders in areas of conflict, and of the British Stop the War Coalition. In 2016, he was named in the <i>Time</i> 100 list of the most influential people in the world.</p>\r\n<p>Sir David Mark Rylance Waters was born in Ashford, Kent, England, to Anne (née Skinner) and David Waters, both teachers of English. One of his grandmothers was Irish. Both his grandfathers were British POWs of the Japanese. Rylance has a sister named Susannah, an opera singer and author, and a brother, Jonathan, who works as a sommelier.</p>\r\n<p>His parents moved to the US in 1962, first to Connecticut and then Wisconsin in 1969, where his father taught English at the University School of Milwaukee, which Rylance attended.</p>\r\n<p>Rylance took the stage name of Mark Rylance because his given name, Mark Waters, was already taken by someone else registered with Equity. He returned to England in 1978. He trained at the Royal Academy of Dramatic Art (RADA) in London from 1978-80 under Hugh Cruttwell; and with Barbara and Peter Bridgmont at the Chrysalis Theatre School in Balham, London. In 1980, he gained his first professional work at the Glasgow Citizens\' Theatre. In 1982 and 1983, he performed with the Royal Shakespeare Company (RSC) in Stratford-upon-Avon and London.</p>\r\n<p>In 1988, Rylance played Hamlet with the RSC in Ron Daniels\' production that toured Ireland and Britain for a year. The play then ran in Stratford-upon-Avon. <i>Hamlet</i> toured the US for two years. In 1990, Rylance and Claire van Kampen (later his wife) founded \"Phoebus\' Cart\", their own theatre company. The following year, the company staged <i>The Tempest</i> on the road.</p>\r\n<p>Rylance played the lead in Gillies MacKinnon\'s film <i>The Grass Arena</i> (1991), and won the <i>Radio Times</i> Award for Best Newcomer. In 1993, he starred in Matthew Warchus\' production of <i>Much Ado About Nothing</i> at the Queen\'s Theatre, produced by Thelma Holt. His Benedick won him an Olivier Award for Best Actor. For his role as Jay in Intimacy (2001), directed by Patrice Chéreau, he received real, rather than simulated, fellatio. He took the leading role as British weapons expert David Kelly in Peter Kosminsky\'s <i>The Government Inspector</i> (2005), an award-winning Channel 4 production for which he won the British Academy Television Award for Best Actor in 2005.</p>\r\n<p>In 2007, Rylance performed in <i>Boeing-Boeing</i> in London. In 2008, he reprised the role on Broadway and won Drama Desk and Tony Awards for his performance. In 2009, Rylance won the Critics\' Circle Theatre Award Best Actor, 2009 for his role of Johnny Byron in <i>Jerusalem</i> written by Jez Butterworth at the Royal Court Theatre in London.</p>\r\n<p>In 2010, Rylance starred in a revival of David Hirson\'s verse play <i>La Bête</i>. The play ran first at London\'s Comedy Theatre before transferring to the Music Box Theatre on Broadway, on 23 September 2010. Also in 2010, he won another Olivier award for best actor in the role of Johnny Byron in <i>Jerusalem</i> at the Apollo Theatre in London. In 2011, he won his second Tony Award for playing the same role in the Broadway production.</p>\r\n<p>He played Thomas Cromwell in <i>Wolf Hall</i> (2015), BBC Two\'s adaptation of Hilary Mantel\'s historical novels <i>Wolf Hall</i> and <i>Bring Up the Bodies</i>. For his performance, he was nominated for the Primetime Emmy Award for Outstanding Lead Actor in a Miniseries or a Movie. Rylance was featured as the castaway on the BBC radio programme <i>Desert Island Discs</i> on 15 February 2015.</p>\r\n<p>Rylance co-starred in the biographical drama <i>Bridge of Spies</i>, released in October 2015, directed by Steven Spielberg, and starring Tom Hanks, Amy Ryan and Alan Alda. The film is about the 1960 U-2 Incident and the arrest and conviction of Soviet spy, Rudolf Abel and the exchange of Abel for U-2 pilot Gary Powers. Rylance plays Abel and has received unanimous universal acclaim for his performance with many critics claiming it as the best performance of 2015. The St. Louis Post-Dispatch quoted, \"As the deeply principled Donovan, Hanks deftly balances earnestness and humor. And Rylance\'s spirited performance is almost certain to yield an Oscar nomination.\" David Edelstein from <i>New York</i> cited \'It\'s Rylance who keeps <i>Bridge of Spies</i> standing. He gives a teeny, witty, fabulously non-emotive performance, every line musical and slightly ironic - the irony being his forthright refusal to deceive in a world founded on lies.\" Rylance won the Academy Award, BAFTA Award, and New York Film Critics Circle Award in the Best Supporting Actor categories, as well as receiving Golden Globe Award and Screen Actors Guild Award nominations, among other wins and nominations.</p>\r\n<p>Rylance played the title role in Spielberg\'s <i>The BFG</i>, a film adaptation of the children\'s book by Roald Dahl. Filming took place in 2015, and the film was released in July 2016. In 2016 Rylance co-wrote and starred in the new comedy play Nice Fish at St. Ann\'s Warehouse, New York. The production subsequently transferred to the Harold Pinter Theatre in London\'s West End. Rylance had a major role in Christopher Nolan\'s 2017 action-thriller <i>Dunkirk</i>, based on the British military evacuation of the French city of Dunkirk in 1940 during World War II. The film co-starred Tom Hardy, Kenneth Branagh, Cillian Murphy and Harry Styles.</p>\r\n<p>Rylance played James Haliday in <i>Ready Player One</i>, which was also directed by Spielberg. He will next film <i>Waiting for Barbarians</i>, alongside Johnny Depp and Robert Pattinson, in late October 2018.</p>\r\n<p>In 1995, Rylance became the first artistic director of Shakespeare\'s Globe Theatre, a post he held until 2005. Rylance directed and acted in every season, in works by Shakespeare and others, including an all-male production of <i>Twelfth Night</i>, in which he played Olivia, and <i>Richard III</i> in the title role. Under his directorate, new plays were also performed at the Globe, the first being <i>Augustine\'s Oak</i> (referring to Augustine of Canterbury and Christianisation of Anglo-Saxon England) by Peter Oswald, the writer-in-residence, which was performed in 1999. A second play by Oswald followed in 2002: <i>The Golden Ass or the Curious Man</i>.</p>\r\n<p>In 2005, Oswald\'s third play written for the Globe was first performed: <i>The Storm</i>, an adaptation of Plautus\' comedy <i>Rudens</i> (<i>The Rope</i>) - one of the sources of Shakespeare\'s <i>The Tempest</i>. Other historical first nights were organised by Rylance while director of the Globe including <i>Twelfth Night</i> performed in 2002 at Middle Temple, to commemorate its first performance there exactly 400 years before, and <i>Measure for Measure</i> at Hampton Court in summer 2004. In 2007, he received a Sam Wanamaker Award together with his wife Claire van Kampen, Director of Music, and Jenny Tiramani, Director of Costume Design, for the founding work during the opening ten years at Shakespeare\'s Globe.</p>\r\n<p>In 2013, Shakespeare\'s Globe brought two all-male productions to Broadway, starring Rylance as Olivia in <i>Twelfth Night</i> and in the title role in <i>Richard III</i>, for a limited run in repertory. He won his third Tony Award for his performance as Olivia and was nominated for his performance as Richard III.</p>\r\n<p>On 8 September 2007 Derek Jacobi and Rylance unveiled a Declaration of Reasonable Doubt on the authorship of William Shakespeare\'s work, after the final matinée of <i>The Big Secret Live \"I am Shakespeare\" Webcam Daytime Chat-Room Show</i>, a play in Chichester.</p>\r\n<p>The actual author of Shakespeare\'s plays was proposed to be Christopher Marlowe, Francis Bacon, Edward de Vere, 17th Earl of Oxford or Mary Sidney (Mary Sidney Herbert, Countess of Pembroke). The declaration named 20 prominent doubters of the past, including Mark Twain, Orson Welles, John Gielgud, Charlie Chaplin, Charles Dickens, Ralph Waldo Emerson and actor Leslie Howard, and was made by the Shakespeare Authorship Coalition duly signed online by 300 people to begin new research. Jacobi and Rylance presented a copy of the document to William Leahy, head of English at Brunel University London. Rylance wrote (co-conceived by John Dove) and starred in <i>The BIG Secret Live \'I am Shakespeare\' Webcam Daytime Chatroom Show (A comedy of Shakespearean identity crisis)</i> which toured England in 2007.</p>\r\n<p>Writer Ben Elton delivered a riposte to this \"batty\" premise in the episode \"If You Prick Us, Do We Not Bleed\" of his television comedy <i>Upstart Crow</i>. The great but \"self-regarding and pretentious\" actor Wolf Hall (played by Ben Miller) joins Burbage\'s acting company to play Shylock. The character Wolf Hall confronts Shakespeare (played by David Mitchell) with the suggestion that he didn\'t write his own plays; it is a satirical portrait of Rylance and his opinion.</p>', 'actors/mark-rylance_Cover.jpg'),
(52, 'Martin', '', 'Freeman', 'M', '<p>Among other accolades, he has won an Emmy Award, a BAFTA Award, an Empire Award, and a Screen Actor Guild Award, with nominations including two other Emmy Awards, two other BAFTA Awards, a Saturn Award, and a Golden Globe Award.</p>\r\n<p>Martin John Christopher Freeman was born in Aldershot, Hampshire, the youngest of five children. His parents, Philomena (née Norris) and Geoffrey Freeman, a naval officer, separated when Freeman was a child. When Freeman was 10 years old, his father died of a heart attack. Freeman attended the Salesian School, Chertsey before attending Brooklands College for media studies. His older brother Tim became a musician with the group Frazier Chorus.</p>\r\n<p>Freeman attended the Central School of Speech and Drama and has appeared in at least 18 TV shows, 14 theatre productions, and several radio productions. He is notable for his role as Tim Canterbury in <i>The Office</i>, a role which, he said in 2004, \"cast a very long shadow\" for him as an actor. He appeared in the sitcom <i>Hardware</i>. He also appeared in several films, including <i>Ali G Indahouse</i> (2002) and <i>Love Actually</i> (2003).</p>\r\n<p>He began to move into more serious dramatic roles on television with his appearance as Lord Shaftesbury in the 2003 BBC historical drama <i>Charles II: The Power and The Passion</i>. He can also be seen making a brief appearance in the first episode of the second series of <i>This Life</i>. Freeman also starred in the BBC television series <i>The Robinsons</i> and had a cameo in episode 1 of <i>Black Books</i>. In 2007, he appeared in <i>The All Together</i> written and directed by Gavin Claxton, as well as the Bill Kenwright theatre production of <i>The Last Laugh</i>. He is featured in the video for Faith No More\'s cover of \"I Started a Joke\". In May 2009, he starred in <i>Boy Meets Girl</i>, a four-part drama that charts the progress of characters Veronica and Danny after an accident which causes them to swap bodies.</p>\r\n<p>He plays Dr. John Watson in <i>Sherlock</i>, the BBC contemporary adaptation of the Sherlock Holmes detective stories. The first episode of <i>Sherlock</i>, \"A Study in Pink\", was broadcast on 25 July 2010 to critical acclaim. For his performance in the role he won the BAFTA award for Best Supporting Actor, 2011 and the Primetime Emmy Award for Outstanding Supporting Actor in a Miniseries or a Movie.</p>\r\n<p>He played Bilbo Baggins, the main character, in the three-part Peter Jackson film series <i>The Hobbit</i>. Accolades that his performance in the first part, <i>The Hobbit: An Unexpected Journey</i>, garnered him include Best Hero at the 2013 MTV Movie Awards and Best Actor at the 18th Empire Awards. Freeman appeared in all three of Simon Pegg and Edgar Wright\'s comedic <i>Three Flavours Cornetto trilogy</i>, commencing with a brief non-speaking role in <i>Shaun of the Dead</i> as Yvonne\'s boyfriend, Declan, followed by a brief cameo in <i>Hot Fuzz</i> as a police officer. He was a main cast member in the 2013 finale to the trilogy, <i>The World\'s End</i>. On 5 October 2013, he was presented with a fellowship bearing his name by the members of University College Dublin\'s Literary & Historical Society. In April 2014, Freeman began playing insurance salesman Lester Nygaard in the dark comedy-crime drama series <i>Fargo</i>. For his performance in this series, he was nominated for a Primetime Emmy Award, a Golden Globe Award, and a Critics\' Choice Television Award. He opened in the title role in Shakespeare\'s play <i>Richard III</i> in July 2014 at Trafalgar Studios.</p>\r\n<p>In 2015, Freeman starred as producer Milton Fruchtman in the television film <i>The Eichmann Show</i>, based on the filming, by blacklisted TV director Leo Hurwitz, of the 1961 trial of Nazi war criminal Adolf Eichmann. The film intercut dramatic scenes with historical footage from the trial. <i>The Daily Telegraph</i> described the film as \"absolutely enthralling\". He also played Everett Ross in <i>Captain America: Civil War</i>, which released in May 2016.</p>\r\n<p>In 2017, Freeman starred in <i>Cargo</i>, which premiered at the Adelaide Film Festival on 6 August 2017. The film is a feature length remake of a 2013 short film of the same name. Later in the year he appeared opposite Tamsin Greig in <i>Labour of Love</i>, a political comedy by James Graham, at the Noël Coward Theatre. <i>Labour of Love</i> charts both the evolution of the UK Labour Party in recent decades, and its presence in a tight-knit Nottinghamshire community. Freeman portrays fictional Labour MP David Lyons, whose modernising ideas pit him against the traditional left-wing constituency agent Jean Whittaker (Greig).</p>', 'actors/martin-freeman_Cover.jpg'),
(53, 'Matthew', '', 'McConaughey', 'M', '<p>Matthew David McConaughey was born on November 4, 1969, in Uvalde, Texas. His mother, Mary Kathleen \"Kay\"/\"KMac\" (<i>née</i> McCabe), is a former kindergarten teacher and published author who taught McConaughey. She was originally from Trenton, New Jersey. His father, James Donald \"Jim\" McConaughey, was born in Mississippi in 1929 and raised in Louisiana, where he ran an oil pipe supply business; he played for the Kentucky Wildcats and the Houston Cougars college football teams. In 1953, Jim was drafted in the 27th round by the NFL\'s Green Bay Packers. He was released before the season began and never played an official league game in the NFL.</p>\r\n<p>McConaughey\'s mother and late father married each other three times, having divorced each other twice. He has two older brothers, Michael and Patrick (who was adopted). Michael, nicknamed \"Rooster\", is a self-made millionaire who stars in the CNBC docu-series <i>West Texas Investors Club</i>, and as of 2018 stars in the A&E reality show <i>Rooster & Butch</i> with Wayne (Butch) Gilliam. McConaughey\'s ancestry includes English, German, Irish, Scottish, and Swedish, with some of his Irish roots being from the Cavan/Monaghan area. He is a relative of Confederate brigadier general Dandridge McRae. He had a Methodist upbringing.</p>\r\n<p>McConaughey moved to Longview, Texas, in 1980, where he attended Longview High School. He lived in Australia for a year, in Warnervale, New South Wales, as a Rotary exchange student in 1988. He attended the University of Texas at Austin (UT-Austin), where he joined Delta Tau Delta fraternity. He began in the fall of 1989 and graduated in the spring of 1993 with a Bachelor of Science in Radio-Television-Film. His original plan had changed as he wanted to attend Southern Methodist University until one of his brothers told him that private school tuition would have been a burden on the family\'s finances. He also had planned to attend law school after graduation from college, but he realized he was not interested in becoming a lawyer.</p>\r\n<p>He first gained notice for his breakout role in the coming-of-age comedy <i>Dazed and Confused</i> (1993), before going on to appear in the film <i>Texas Chainsaw Massacre: The Next Generation</i> (1994), <i>A Time to Kill</i> (1996), the comedy film <i>Larger than Life</i> (1996), Steven Spielberg\'s historical drama <i>Amistad</i> (1997), the science fiction drama <i>Contact</i> (1997), the comedy <i>EDtv</i> (1999), and the war film <i>U-571</i> (2000).</p>\r\n<p>In the 2000s, McConaughey became best known for starring in romantic comedies, including <i>The Wedding Planner</i> (2001), <i>How to Lose a Guy in 10 Days</i> (2003), <i>Failure to Launch</i> (2006), <i>Fool\'s Gold</i> (2008), and <i>Ghosts of Girlfriends Past</i> (2009). Since 2011, he has preferred dramatic roles, including <i>The Lincoln Lawyer</i> (2011), <i>Bernie</i> (2011), <i>Killer Joe</i> (2011), <i>The Paperboy</i> (2012), <i>Mud</i> (2012), <i>Magic Mike</i> (2012), <i>The Wolf of Wall Street</i> (2013), <i>Dallas Buyers Club</i> (2013), <i>Interstellar</i> (2014), <i>The Sea of Trees</i> (2016), <i>Free State of Jones</i> (2016).</p>\r\n<p>McConaughey achieved critical success in 2013 and 2014. In 2013, McConaughey portrayed Ron Woodroof, a cowboy diagnosed with AIDS in the biographical film <i>Dallas Buyers Club</i>, which earned him the Academy Award, Critics\' Choice Movie Award, Golden Globe Award, and Screen Actors Guild Award, all for Best Actor, among other awards and nominations. In 2014, he starred as Rust Cohle in the first season of HBO\'s crime drama anthology series <i>True Detective</i>, for which he won the Critics\' Choice Television Award and TCA Award, and was nominated for the Primetime Emmy Award, Golden Globe Award, and Screen Actors Guild Award.</p>', 'actors/matthew-mcconaughey_Cover.jpg'),
(54, 'Matthew', '', 'Rhys', 'M', '<p>Matthew Rhys Evans was born in Cardiff, Wales, on 4 November 1974. His first language was Welsh. He grew up in Cardiff and attended Welsh-medium schools, Ysgol Gynradd Gymraeg Melin Gruffydd (in Whitchurch, Cardiff) and Ysgol Gyfun Gymraeg Glantaf (in Llandaff North, Cardiff). In 1993, he was awarded the Patricia Rothermere Scholarship.</p>\r\n<p>At age 17, after playing Elvis Presley in a school musical, he applied to and was accepted at the Royal Academy of Dramatic Art (RADA) in London. His older sister Rachel, now a BBC broadcast journalist, also attended.</p>\r\n<p>During Rhys\'s time at RADA, Rhys appeared in the BBC police series <i>Back-Up</i> as well as in <i>House of America</i>. He returned to Cardiff to act in his own language in the Welsh film <i>Bydd yn Wrol</i> (<i>Be Brave</i>), for which he won Best Actor at the Bafta Cymru (Welsh BAFTAs).</p>\r\n<p>In January 1998, Rhys went to New Zealand to star in <i>Greenstone</i>, a colonial costume drama for television. He then landed a role in <i>Titus</i>, Julie Taymor\'s adaptation of <i>Titus Andronicus</i>, starring Anthony Hopkins and Jessica Lange. Next he played Ray in Peter Hewitt\'s film comedy, <i>Whatever Happened to Harold Smith?</i> After returning to Wales, he did two consecutive films with Jonathan Pryce: <i>The Testimony of Taliesin Jones</i>, a film about a dysfunctional single-parent family in which he played the elder son, and Sara Sugarman\'s comedy <i>Very Annie Mary</i>, in which he played the role of Nob. Rhys would later reunite with <i>Very Annie Mary</i> star Rachel Griffiths on <i>Brothers & Sisters</i>.</p>\r\n<p>In 2000, Rhys played the lead role in <i>Metropolis</i>, a drama series for Granada TV about the lives of six twenty-somethings living in London. Next he starred in <i>Peaches</i>, the film of the play written and directed by Nick Grosso. Rhys starred as Benjamin in the 2000 world premiere of the stage adaptation of <i>The Graduate</i>, alongside Kathleen Turner at The Gielgud Theatre in London\'s West End.</p>\r\n<p>Rhys travelled to Ireland to star in the 18th century swashbuckling adventure, <i>The Abduction Club</i>. He played the lead role of Darren Daniels in <i>Tabloid</i>, and then returned to New Zealand to shoot the epic drama <i>Lost World</i> for the BBC. His other film credits include the independent horror film <i>Deathwatch</i> in Prague and <i>Fakers</i>, a comic crime caper.</p>\r\n<p>In 2003, he played Justin Price, the murderer in the final episode of the long-running television series <i>Columbo</i>.</p>\r\n<p>He appeared opposite Brittany Murphy in the independent feature <i>Love and Other Disasters</i>, in <i>Virgin Territory</i> opposite Hayden Christensen, Tim Roth and Mischa Barton, and playing poet Dylan Thomas in the love quadrangle biographical film <i>The Edge of Love</i>.</p>\r\n<p>He moved to Santa Monica after being cast in ABC\'s show <i>Brothers & Sisters</i>, as lawyer Kevin Walker. The show had a five-season run, coming to an end in 2011.</p>\r\n<p>In January 2012, Rhys appeared in a BBC Two two-part drama adaptation of Charles Dickens\' last novel, <i>The Mystery of Edwin Drood</i>, left unfinished at his death in 1870. The Public Broadcasting Service (PBS) aired it in the United States as one feature-length episode on 15 April 2012.</p>\r\n<p>In 2012, Rhys was scheduled to reprise Sir Alec Guinness\' 1959 double role of John Barratt / Jacques DeGué in a new adaptation of <i>The Scapegoat</i>. That same year, Rhys was cast as \"Jimmy\" in the Roundabout Theatre Company\'s Off-Broadway revival of John Osborne\'s play, <i>Look Back in Anger</i>, at the Laura Pels Theatre in the Harold and Miriam Steinberg Center for Theatre. The production played a limited engagement through 8 April 2012.</p>\r\n<p>He starred opposite Keri Russell in the FX series <i>The Americans</i>, a 1980s Cold War spy drama about Russian KGB sleeper agents (Rhys and Russell, who portray married KGB agents with two children, among other agents and handlers). Rhys and Russell are real-life partners off-screen as well. The sixth season airing in 2018 was the final season of <i>The Americans</i>. The show debuted in January 2013.</p>', 'actors/matthew-rhys_Cover.jpg'),
(55, 'Melissa', '', 'McCarthy', 'F', '<p>The recipient of several accolades, including two Primetime Emmy Awards and has received nominations for two Academy Awards and two Golden Globe Awards. McCarthy was named by <i>Time</i> as one of the 100 most influential people in the world in 2016, and she has featured multiple times in annual rankings of the highest-paid actresses in the world.</p>\r\n<p>Melissa Ann McCarthy was born in Plainfield, Illinois to Sandra and Michael McCarthy. She is a cousin of actress and model Jenny McCarthy and professional basketball player Joanne McCarthy. McCarthy was raised on a farm in a large Catholic family. Her father is of Irish descent, while her mother is of English, German, and Irish ancestry. Some of her forebears were from County Cork. She graduated from St. Francis Academy (now Joliet Catholic Academy) in Joliet, Illinois. Her career started with stand-up comedy in Los Angeles, and later in New York City. McCarthy is an alumna of The Groundlings, an improvisational and sketch comedy troupe based in Los Angeles, California.</p>\r\n<p>McCarthy made her first television appearance in an episode of the NBC comedy series <i>Jenny</i>, opposite her cousin Jenny McCarthy. She made her feature film debut in a minor role in the 1999 comedy <i>Go</i>, and later had roles in the movies <i>Drowning Mona</i>, <i>Disney\'s The Kid</i>, <i>Charlie\'s Angels</i>, <i>The Third Wheel</i> and <i>The Life of David Gale</i>. She also worked in three episodes of <i>Kim Possible</i>, voicing DNAmy. In 2000, McCarthy was cast as Sookie St. James, the upbeat and klutzy best friend of Lorelai Gilmore, on The WB television series <i>Gilmore Girls</i>. Throughout the series, Sookie is Lorelai\'s business partner and cheerleader. On April 7, 2016, McCarthy announced on <i>The Ellen DeGeneres Show</i> that she would be returning for the show\'s revival, <i>Gilmore Girls: A Year in the Life</i>, on Netflix. The latter was released November 25, 2016 and McCarthy appears in one of its four episodes.</p>\r\n<p>In 2007, she starred opposite Ryan Reynolds in the science fantasy psychological thriller <i>The Nines</i>, written and directed by John August. She later starred in the independent comedies <i>The Captain</i>, <i>Just Add Water</i>, and <i>Pretty Ugly People</i>. Also in 2007, McCarthy starred as Dena Stevens on the ABC sitcom <i>Samantha Who?</i>. McCarthy played Samantha\'s socially awkward childhood best friend, whom Samantha hasn\'t seen since seventh grade. When Samantha wakes from her coma, Dena convinces Samantha that they have always been best friends. While Andrea eventually forces her to reveal the truth, Samantha still remains friends with Dena. She guest starred in <i>Rita Rocks</i> and on <i>Private Practice</i>. In 2010, McCarthy played supporting roles in films <i>The Back-Up Plan</i> and <i>Life as We Know It</i>.</p>\r\n<p>On September 20, 2010, McCarthy was cast in a leading role on the CBS sitcom <i>Mike & Molly</i>. In 2011, McCarthy had a breakout performance in the comedy movie <i>Bridesmaids</i> alongside Kristen Wiig, Maya Rudolph, Rose Byrne, Wendi McLendon-Covey and Ellie Kemper. McCarthy received an Academy Award nomination for her performance. In fall 2011, after achieving fame from <i>Bridesmaids</i>, she received her first Emmy Award for Outstanding Lead Actress in a Comedy Series for her role on <i>Mike & Molly</i>. In June 2011, she hosted the <i>Women in Film Crystal + Lucy Awards</i>. McCarthy later had supporting roles in <i>This Is 40</i> (2012), the spinoff to Judd Apatow\'s film <i>Knocked Up</i>, and <i>The Hangover Part III</i> (2013). She was invited to join the Academy of Motion Picture Arts and Sciences in June 2012 along with 175 others. McCarthy hosted <i>Saturday Night Live</i> on October 1, 2011, on April 6, 2013, on February 1, 2014, on February 13, 2016, and on May 12, 2017. She was nominated five times for a Primetime Emmy Award for Outstanding Guest Actress in a Comedy Series for her appearances on the television show from 2011-2017, winning in 2017.</p>\r\n<p>In 2013, McCarthy co-starred in the crime comedy <i>Identity Thief</i> with Jason Bateman. <i>Identity Thief</i> opened at #1 at the box office, and grossed $174 million worldwide despite negative reviews. In his negative review of the film, film critic Rex Reed controversially made several references to McCarthy\'s weight, referring to her as \"obese\" and using pejorative terms to refer to her weight. Reed\'s comments attracted wide criticism from various film critics and the industry at large. Film critic Richard Roeper said, \"This just smacks of mean-spirited name-calling in lieu of genuine criticism.\" In a column for <i>The Huffington Post</i>, Candy Spelling likened Reed\'s review to bullying.</p>\r\n<p>Later in 2013, McCarthy co-starred with Sandra Bullock in the buddy cop comedy <i>The Heat</i>. The film was released in the United States and Canada on June 28, 2013 to both critical and commercial success. With McCarthy being called \"box office gold, <i>The Heat</i> grossed $229 million worldwide. McCarthy co-wrote the script for the movie <i>Tammy</i>, which was released on July 2, 2014. McCarthy\'s character loses her job and her car, and then learns that her husband has been unfaithful. To get away, she is forced to rely on her alcoholic grandmother (Susan Sarandon) for transportation as they embark on a journey of self-discovery.</p>\r\n<p>McCarthy produced a CBS pilot which starred her husband, Ben Falcone. McCarthy played the female lead, opposite Bill Murray, in the 2014 comedy film <i>St. Vincent</i>, directed and written by Theodore Melfi. On November 19, 2014, it was announced that McCarthy would portray fairy heroine Tinker Bell in the untitled comedy-adventure directed by Shawn Levy. She would also produce the film. In addition, McCarthy was the lead in frequent collaborator Paul Feig\'s spy comedy <i>Spy</i> (2015), a role that earned McCarthy her first Golden Globe Award nomination.</p>\r\n<p>In May 2015, McCarthy received a star on the Hollywood Walk of Fame. In August 2015, <i>Forbes</i> ranked her as the third highest-paid actress of 2015, with earnings of $23 million.</p>\r\n<p>In 2016, McCarthy starred in <i>The Boss</i>, a comedy film based on a character which McCarthy had created in the Los Angeles Groundlings - a wealthy businesswoman \"who goes to jail for insider trading, and struggles to reinvent herself as America\'s new sweetheart when she\'s released\". Also that year, she played an author and scientist in the all-female reboot of <i>Ghostbusters</i>, directed by Paul Feig.</p>\r\n<p>On May 31, 2016, McCarthy was cast as celebrity biographer Lee Israel in the dark comedy-drama film <i>Can You Ever Forgive Me?</i> directed by Marielle Heller. She replaced Julianne Moore who dropped out of the film. McCarthy\'s performance as Lee drew high praise and <i>Film Journal International</i> said that her previous film roles \"could not anticipate how fearlessly and credibly she inhabits Lee Israel.\" She received an Academy Award for Best Actress nomination.</p>\r\n<p>On February 4 and 11, 2017 she made surprise appearances on <i>Saturday Night Live</i> portraying White House Press Secretary Sean Spicer. She returned to the show to portray Spicer on April 16 and May 13, 2017 (also hosting the latter).</p>\r\n<p>McCarthy appeared in a Super Bowl LI ad for Kia Motors, promoting the Kia Niro. McCarthy played a wannabe environmentalist, who has a series of mishaps befall her such as being capsized by a whale, being charged by a rhino, and falling down a crevasse. The commercial featured the song \"Holding Out for a Hero\".</p>', 'actors/melissa-mccarthy_Cover.jpg'),
(56, 'Merritt', '', 'Wever', 'F', '<p>Merritt Carmen Wever was born in the New York City borough of Manhattan. She was conceived via a sperm donor and raised by her mother, Georgia. She graduated from Fiorello H. LaGuardia High School and Sarah Lawrence College, and she trained in acting in New York.</p>\r\n<p>Wever began her career starring in low budget, independent short and feature films. She has also performed in theatre productions, including a performance in Brooke Berman\'s play, <i>Smashing</i>, and in <i>Cavedweller</i> with Deidre O\'Connell, both off-Broadway. Since she began her career, Wever has performed in numerous feature films, including: <i>Into the Wild</i>, <i>Neal Cassady</i>, <i>Michael Clayton</i>, <i>Series 7: The Contenders</i>, <i>Signs</i>, <i>The Adventures of Sebastian Cole</i>, <i>Bringing Rain</i>, <i>Tiny Furniture</i> and <i>All I Wanna Do</i>, among others.</p>\r\n<p>She has guest starred on a number of TV shows, including <i>The Good Wife</i>, <i>Conviction</i>, <i>Law & Order: Criminal Intent</i> and <i>The Wire</i>. She also starred in Ed Zwick\'s ill-fated ABC pilot, <i>Quarterlife</i>, with Rachel Blanchard, Austin Nichols, and Shiri Appleby. She also had a recurring role on <i>Studio 60 on the Sunset Strip</i> as Suzanne.</p>\r\n<p>Wever is perhaps best known for her role as Zoey Barkow in the dark comedy series <i>Nurse Jackie</i>, which premiered on Showtime in June 2009. Zoey is described as on the official <i>Nurse Jackie</i> website as \"an irrepressibly bubbly trauma nurse, who serves as a comic foil to Edie Falco\'s hard-bitten (and prescription drug-addicted) titular character\". Wever received widespread critical acclaim for her role on the show.</p>\r\n<p>Ms. Wever was nominated for a Primetime Emmy Award for Outstanding Supporting Actress in a Comedy Series in 2012 and 2013 for her role in <i>Nurse Jackie</i>, winning the award in 2013 and delivering a memorable speech that consisted only of her stunned reaction: \"Thanks so much. Thank you so much. I gotta go. Bye.\"</p>\r\n<p>In 2016, Wever had a recurring role on AMC\'s <i>The Walking Dead</i> as Denise Cloyd. Her character\'s death towards the end of the sixth season of the series was controversial and sparked outrage on social media with many fans, most notably members of the LGBT community.</p>\r\n<p>Wever played a lead role in 2017\'s Netflix miniseries <i>Godless</i>, as Mary Agnes McNue, a tough leader of a female-dominated town. She said in interviews that she had been intimidated by the role: \"I spent so much of this shoot thinking I would come off as a fool, that nobody would buy me as this and it wouldn\'t be believable.\" Many critics nonetheless noted her character as a highlight of the show. <i>Entertainment Weekly</i> titled its review of <i>Godless</i> \"Merritt Wever rides tall in Netflix\'s <i>Godless</i>\" and wrote that \"no one is more electric than the always extraordinary Merritt Wever\". In 2018, she won an Emmy for this role.</p>', 'actors/merritt-wever_Cover.jpg');
INSERT INTO `actors` (`id`, `first_name`, `middle_name`, `last_name`, `gender`, `about`, `img`) VALUES
(57, 'Nicole', '', 'Kidman', 'F', '<p>The recipient of multiple awards, including an Academy Award, two Primetime Emmy Awards, five Golden Globe Awards, and the Silver Bear for Best Actress. She has been a Goodwill ambassador for UNICEF since 1994 and for UNIFEM since 2006. In 2006, Kidman was appointed Companion of the Order of Australia and was the highest-paid actress in the motion picture industry for that year.</p>\r\n<p>Nicole Mary Kidman was born 20 June 1967, in Honolulu, Hawaii, while her Australian parents were temporarily in the United States on student visas. Her mother, Janelle Ann (née Glenny), is a nursing instructor who edited her husband\'s books and was a member of the Women\'s Electoral Lobby. Her father was Antony Kidman (1938-2014), a biochemist, clinical psychologist and author, who died of a heart attack in Singapore aged 75. Kidman\'s ancestry includes Irish and Scottish heritage.</p>\r\n<p>Being born in Hawaii, she was given the Hawaiian name \"Hokulani\", meaning \"Heavenly Star\". The inspiration came from a baby elephant born around the same time at the Honolulu Zoo.</p>\r\n<p>At the time of Kidman\'s birth, her father was a graduate student at the University of Hawai?i at Manoa. He became a visiting fellow at the National Institute of Mental Health of the United States. Opposed to the war in Vietnam, Kidman\'s parents participated in anti-war protests while living in Washington, D.C. The family returned to Australia when Kidman was four and her mother now lives on Sydney\'s North Shore. Kidman has a younger sister, Antonia Kidman, a journalist and TV presenter.</p>\r\n<p>Kidman grew up in Sydney and attended Lane Cove Public School and North Sydney Girls\' High School. She was enrolled in ballet at three and showed her natural talent for acting in her primary and high school years. She says that she was first inspired to become an actress upon seeing Margaret Hamilton\'s performance as the Wicked Witch of the West in <i>The Wizard of Oz</i>. Kidman has revealed that she was timid as a child, saying, \"I am very shy - really shy - I even had a stutter as a kid, which I slowly got over, but I still regress into that shyness. So I don\'t like walking into a crowded restaurant by myself; I don\'t like going to a party by myself.\"</p>\r\n<p>She initially studied at the Phillip Street Theatre in Sydney. At Philip Street, Kidman studied alongside Naomi Watts who had attended the same high school. She also attended the Australian Theatre for Young People. Here she took up drama, mime and performing in her teens, finding acting to be a refuge. Owing to her fair skin and naturally red hair, the Australian sun forced the young Kidman to rehearse in halls of the theatre. A regular at the Phillip Street Theatre, she received both encouragement and praise to pursue acting full-time.</p>\r\n<p>In 1983, aged 16, Kidman made her film debut in a remake of the Australian holiday season favourite <i>Bush Christmas</i>. By the end of 1983, she had a supporting role in the television series <i>Five Mile Creek</i>. In 1984, her mother was diagnosed with breast cancer, which caused Kidman to halt her acting work temporarily while she studied massage so she could help her mother with physical therapy. She began gaining popularity in the mid-1980s after appearing in several film roles, including <i>BMX Bandits</i> (1983), <i>Watch the Shadows Dance</i> (1987 aka <i>Nightmaster</i>), and the romantic comedy <i>Windrider</i> (1986), which earned Kidman attention due to her racy scenes. Also during the decade, she appeared in several Australian productions, including the soap opera <i>A Country Practice</i> and the 1987 miniseries <i>Vietnam</i>. She also made guest appearances on Australian television programs and TV movies.</p>\r\n<p>In 1988, Kidman appeared in <i>Emerald City</i>, based on the play of the same name. The Australian film earned her an Australian Film Institute award for Best Supporting Actress. Kidman next starred with Sam Neill in <i>Dead Calm</i> (1989) as Rae Ingram, playing the wife of a naval officer. The thriller brought Kidman to international recognition; <i>Variety</i> commented: \"Throughout the film, Kidman is excellent. She gives the character of Rae real tenacity and energy.\" Meanwhile, critic Roger Ebert noted the excellent chemistry between the leads, stating, \"Kidman and Zane do generate real, palpable hatred in their scenes together.\" She followed that up with the Australian miniseries <i>Bangkok Hilton</i>. She next moved on to star alongside her then-boyfriend and future husband, Tom Cruise, in the 1990 auto racing film <i>Days of Thunder</i>, as a young doctor who falls in love with a NASCAR driver. It is Kidman\'s American debut and was among the highest-grossing films of the year.</p>\r\n<p>In 1991, she co-starred with Thandie Newton and former classmate Naomi Watts in the Australian independent film <i>Flirting</i>. They portrayed high school girls in this coming of age story, which won the Australian Film Institute Award for Best Film. That same year, her work in the film <i>Billy Bathgate</i> earned Kidman her first Golden Globe Award nomination, for Best Supporting Actress. <i>The New York Times</i>, in its film review, called her \"a beauty with, it seems, a sense of humor\". The following year, she and Cruise re-teamed for Ron Howard\'s Irish epic <i>Far and Away</i> (1992), which was a modest critical and commercial success. In 1993, she starred in the thriller <i>Malice</i> opposite Alec Baldwin and the drama <i>My Life</i> opposite Michael Keaton.</p>\r\n<p>In 1995, Kidman played Dr. Chase Meridian, the damsel in distress, in the superhero film <i>Batman Forever</i>, opposite Val Kilmer as the film\'s title character. The same year, she starred in Gus Van Sant\'s critically acclaimed dark comedy <i>To Die For</i>, in which she played the murderous newcaster Suzanne Stone. Of Kidman\'s Golden Globe award-winning performance, Mick LaSalle of the <i>San Francisco Chronicle</i> said \"[she] brings to the role layers of meaning, intention and impulse. Telling her story in close-up - as she does throughout the film - Kidman lets you see the calculation, the wheels turning, the transparent efforts to charm that succeed in charming all the same.\" Kidman next appeared, alongside Barbara Hershey and John Malkovich, in <i>The Portrait of a Lady</i> (1996), based on the novel of the same name, and starred in <i>The Peacemaker</i> (1997) as White House nuclear expert Dr. Julia Kelly, opposite George Clooney. The latter film grossed US$110 million worldwide. Kidman starred in comedy <i>Practical Magic</i> (1998) with Sandra Bullock as two witch sisters who face a curse which threatens to prevent them ever finding lasting love. While the film opened atop the chart on its North American opening weekend, it flopped at the box office. She returned to her work on stage the same year in the David Hare play <i>The Blue Room</i>, which opened in London.</p>\r\n<p>In 1999, Kidman reunited with then husband, Tom Cruise, to portray a Manhattan couple on a sexual odyssey, in <i>Eyes Wide Shut</i>, the final film of director Stanley Kubrick. It was subject to censorship controversies due to the explicit nature of its sex scenes. After a brief hiatus and a highly publicized divorce from Cruise, Kidman returned to the screen to play a mail-order bride in the British-American drama <i>Birthday Girl</i>. In 2001, Kidman played the cabaret actress and courtesan Satine in Baz Luhrmann\'s musical <i>Moulin Rouge!</i>, opposite Ewan McGregor. Her performance and her singing received positive reviews; Paul Clinton of <i>CNN.com</i> called it her best work since <i>To Die For</i>, and wrote \"[she] is smoldering and stunning as Satine. She moves with total confidence throughout the film [...] Kidman seems to specialize in \"ice queen\" characters, but with Satine, she allows herself to thaw, just a bit.\" Subsequently, Kidman received her second Golden Globe Award, for Best Actress in a Motion Picture Musical or Comedy, as well as many other acting awards and nominations. She also received her first Academy Award nomination, for Best Actress.</p>\r\n<p>Kidman also starred in Alejandro Amenábar\'s horror film <i>The Others</i> (2001), as Grace Stewart, a mother living in the Channel Islands during World War II who suspects her house is haunted. Grossing over US$210 million worldwide, the film also earned several Goya Awards award nominations, including a Best Actress nomination for Kidman. She received her second BAFTA and fifth Golden Globe nominations. Roger Ebert commented that \"Alejandro Amenábar has the patience to create a languorous, dreamy atmosphere, and Nicole Kidman succeeds in convincing us that she is a normal person in a disturbing situation, and not just a standard-issue horror movie hysteric.\" Kidman was named the World\'s Most Beautiful Person by <i>People</i> magazine.</p>\r\n<p>In 2002, Kidman won critical praise for her portrayal of Virginia Woolf in Stephen Daldry\'s <i>The Hours</i>, which stars Meryl Streep and Julianne Moore. Kidman famously wore prosthetics that were applied to her nose making her almost unrecognisable playing the author during her time in 1920s England, and her bouts with depression and mental illness while trying to write her novel, <i>Mrs. Dalloway</i>. The film earned positive notices and several nominations, including for an Academy Award for Best Picture. <i>The New York Times</i> wrote that, \"Ms. Kidman, in a performance of astounding bravery, evokes the savage inner war waged by a brilliant mind against a system of faulty wiring that transmits a searing, crazy static into her brain\". Kidman won numerous critics\' awards, including her first BAFTA, third Golden Globe, and the Academy Award for Best Actress. As the first Australian actress to win an Academy Award, Kidman made a teary acceptance speech about the importance of art, even during times of war, saying, \"Why do you come to the Academy Awards when the world is in such turmoil? Because art is important. And because you believe in what you do and you want to honour that, and it is a tradition that needs to be upheld.\"</p>\r\n<p>Following her Oscar win, Kidman appeared in three very different films in 2003. The first, a leading role in <i>Dogville</i>, by Danish director Lars von Trier, was an experimental film set on a bare soundstage. Though the film divided critics in the United States, Kidman still earned praise for her performance. Peter Travers of <i>Rolling Stone</i> magazine stated: \"Kidman gives the most emotionally bruising performance of her career in Dogville, a movie that never met a cliche it didn\'t stomp on.\" The second was an adaptation of Philip Roth\'s novel <i>The Human Stain</i>, opposite Anthony Hopkins. Her third film was Anthony Minghella\'s war drama <i>Cold Mountain</i>. Kidman appeared opposite Jude Law and Renée Zellweger, playing Southerner Ada Monroe, who is in love with Law\'s character and separated by the Civil War. <i>TIME</i> magazine wrote, \"Kidman takes strength from Ada\'s plight and grows steadily, literally luminous. Her sculptural pallor gives way to warm radiance in the firelight\". The film garnered several award nominations and wins for its actors; Kidman received her sixth Golden Globe nomination at the 61st Golden Globe Awards for Best Actress.</p>\r\n<p>In 2004 she appeared in the film <i>Birth</i>, which received controversy over a scene in which Kidman shares a bath with her co-star, 10-year-old Cameron Bright. At a press conference at the Venice Film Festival, Kidman addressed the controversy saying, \"It wasn\'t that I wanted to make a film where I kiss a 10-year-old boy. I wanted to make a film where you understand love\". Kidman earned her seventh Golden Globe nomination, for Best Actress - Motion Picture Drama. That same year, she appeared as a successful producer in the black comedy-science-fiction film <i>The Stepford Wives</i>, a remake of the 1975 film of the same name, directed by Frank Oz. In 2005, Kidman appeared opposite Sean Penn in the Sydney Pollack thriller <i>The Interpreter</i>, playing UN translator Silvia Broome, and with Will Ferrell in the romantic comedy <i>Bewitched</i>, based on the 1960s TV sitcom of the same name. While neither film fared well in the United States, both were international successes. Kidman and Ferrell earned the Razzie Award for Worst Screen Couple.</p>\rn<p>In conjunction with her success in the film industry, Kidman became the face of the <i>Chanel No. 5</i> perfume brand. She starred in a campaign of television and print ads with Rodrigo Santoro, directed by <i>Moulin Rouge!</i> director Baz Luhrmann, to promote the fragrance during the holiday seasons of 2004, 2005, 2006, and 2008. The three-minute commercial produced for <i>Chanel No. 5</i> made Kidman the record holder for the most money paid per minute to an actor after she reportedly earned US$12million for the three-minute advert. During this time, Kidman was also listed as the 45th Most Powerful Celebrity on the 2005 <i>Forbes</i> Celebrity 100 List. She made a reported US$14.5 million in 2004-2005. On <i>People</i> magazine\'s list of 2005\'s highest-paid actresses, Kidman was second behind Julia Roberts, with US$16-17 million per-film price tag. Nintendo in 2007 announced that Kidman would be the new face of Nintendo\'s advertising campaign for the Nintendo DS game More Brain Training in its European market.</p>\r\n<p>In 2006, Kidman portrayed photographer Diane Arbus in the biographical film <i>Fur</i>, opposite Robert Downey, Jr., and lent her voice to the animated film <i>Happy Feet</i>, which grossed over US$384 million worldwide. In 2007, she starred in the science-fiction movie <i>The Invasion</i> directed by Oliver Hirschbiegel, a remake of the 1956 <i>Invasion of the Body Snatchers</i>, and starred opposite Jennifer Jason Leigh and Jack Black in Noah Baumbach\'s comedy-drama <i>Margot at the Wedding</i>, which earned her a Satellite Award nomination for Best Actress - Musical or Comedy. She also starred in the fantasy-adventure, <i>The Golden Compass</i> (2007), playing the villainous Marisa Coulter.</p>\r\n<p>In 2008, she reunited with <i>Moulin Rouge!</i> director Baz Luhrmann in the Australian period film <i>Australia</i>, set in the remote Northern Territory during the Japanese attack on Darwin during World War II. Kidman played opposite Hugh Jackman as an Englishwoman feeling overwhelmed by the continent. The acting was praised and the movie was a box office success worldwide. Kidman appeared in the 2009 Rob Marshall musical <i>Nine</i>, portraying the Federico Fellini-like character\'s muse, Claudia Jenssen, with fellow Oscar winners Daniel Day-Lewis, Judi Dench, Marion Cotillard, Penélope Cruz and Sophia Loren. Kidman, whose screen time was brief compared to the other actresses, performed the musical number \"Unusual Way\", alongside Day-Lewis. The film received several Golden Globe and Academy Award nominations, and earned Kidman a fourth Screen Actors Guild Award nomination, as part of the Outstanding Cast.</p>\r\n<p>In 2010, Kidman starred with Aaron Eckhart in the film adaptation of the Pulitzer Prize-winning play <i>Rabbit Hole</i>, for which she vacated her role in the Woody Allen picture <i>You Will Meet a Tall Dark Stranger</i>. Her portrayal as a grieving mother in the film earned her critical acclaim, and received nominations for the Academy Awards, Golden Globe Awards, and Screen Actors Guild Awards. She lent her voice to a promotional video that Australia used to support its bid to host the 2018 FIFA World Cup. In 2011, she starred alongside Nicolas Cage in director Joel Schumacher\'s action-thriller <i>Trespass</i>, with the stars playing a married couple taken hostage, and appeared with Adam Sandler and Jennifer Aniston in Dennis Dugan\'s romantic comedy <i>Just Go with It</i>, as a trophy wife.</p>\r\n<p>In 2012, Kidman and Clive Owen starred in the HBO film <i>Hemingway & Gellhorn</i>, and about Ernest Hemingway and his relationship with Martha Gellhorn. In Lee Daniels\' adaptation of the Pete Dexter novel, <i>The Paperboy</i> (2012), she portrayed death row groupie Charlotte Bless, and performed sex scenes that she claims not to have remembered until seeing the finished film. The film competed in the 2012 Cannes Film Festival, and Kidman\'s performance drew nominations for the SAG and the Saturn Award for Best Supporting Actress, gave Kidman her second Golden Globe nomination for Best Supporting Actress and her tenth nomination overall. In 2012, Kidman\'s audiobook recording of Virginia Woolf\'s <i>To the Lighthouse</i> was released at Audible.com. Kidman starred as an unstable mother in Park Chan-wook\'s <i>Stoker</i> (2013), to a positive response and a Saturn Award nomination for Best Supporting Actress. In April 2013 she was selected as a member of the main competition jury at the 2013 Cannes Film Festival.</p>\r\n<p>In 2014, Kidman starred in the biographical film <i>Grace of Monaco</i> in the title role that chronicles the 1962 crisis, in which Charles de Gaulle blockaded the tiny principality, angered by Monaco\'s status as a tax haven for wealthy French subjects and Kelly\'s contemplating a Hollywood return to star in Alfred Hitchcock\'s <i>Marnie</i>. Opening out of competition at the 2014 Cannes Film Festival, the film received largely negative reviews. Kidman also starred in two films with Colin Firth that year, the first being the British-Australian historical drama <i>The Railway Man</i>, in which Kidman played an officer\'s wife. Katherine Monk of the Montreal Gazette said of Kidman\'s performance, \"It\'s a truly masterful piece of acting that transcends Teplitzky\'s store-bought framing, but it\'s Kidman who delivers the biggest surprise: For the first time since her eyebrows turned into solid marble arches, the Australian Oscar winner is truly terrific\". Her second film with Firth was the British thriller film <i>Before I Go To Sleep</i>, portraying a car crash survivor with brain damage. She also appeared in the family film <i>Paddington</i> (2014) as a villain.</p>\r\n<p>In 2015, Kidman starred in the drama <i>Strangerland</i>, which opened at the 2015 Sundance Film Festival, and the Jason Bateman-directed <i>The Family Fang</i>, produced by Kidman\'s production company, Blossom Films, which premiered at the 2015 Toronto International Film Festival. In her other 2015 film release, the biographical drama <i>Queen of the Desert</i>, she portrayed writer, traveller, political officer, administrator, and archaeologist Gertrude Bell. Kidman played a district attorney, opposite Julia Roberts and Chiwetel Ejiofor, in the little-seen film <i>Secret in Their Eyes</i> (also 2015), a remake of the 2009 Argentine film of the same name, both based on the novel <i>La pregunta de sus ojos</i> by author Eduardo Sacheri. After more than 15 years, Kidman returned to the West End in the UK premiere of <i>Photograph 51</i> at the Noël Coward Theatre. She starred as British scientist Rosalind Franklin, working for the discovery of the structure of DNA, in the production from 5 September to 21 November 2015, directed by Michael Grandage. Her return to the West End was hailed a success, especially after having won an acting award for her portrayal in the play.</p>\r\n<p>In 2016\'s <i>Lion</i>, Kidman portrayed Sue, the adoptive mother of Saroo Brierley, an Indian boy who was separated from his birth family, a role she felt connected to as she herself is the mother of adopted children. She earned favorable reviews for her performance, as well as nominations for the Academy Award for Best Supporting Actress, her fourth nomination overall, and her eleventh Golden Globe nomination, among others. Richard Roeper of <i>The Chicago Sun-Times</i> thought that \"Kidman gives a powerful and moving performance as Saroo\'s adoptive mother, who loves her son with every molecule of her being, but comes to understand his quest. It\'s as good as anything she\'s done in the last decade.\" Budgeted at US$12 million, <i>Lion</i> earned over US$140 million globally. She also gave a voice-over performance for the English version of the animated film <i>The Guardian Brothers</i>.</p>\r\n<p>In 2017, Kidman returned to television for <i>Big Little Lies</i>, a drama series based on Liane Moriarty\'s novel, which premiered on HBO. She also served as producer alongside her co-star, Reese Witherspoon, and the show\'s director, Jean-Marc Vallée. She played Celeste Wright, a former lawyer and housewife, who is concealing her abusive relationship with her husband, played by Alexander Skarsgård. Matthew Jacobs of <i>The Huffington Post</i> considered that she \"delivered a career-defining performance\", while Ann Hornaday of <i>The Washington Post</i> wrote that \"Kidman belongs in the pantheon of great actresses\". She won the Primetime Emmy Award for Outstanding Lead Actress in a Limited Series or Movie for her performance, as well as winning the Primetime Emmy Award for Outstanding Limited Series as a producer. She also won a Golden Globe Critics Choice Award and SAG Award.</p>\r\n<p>Kidman next played Martha Farnsworth, the headmistress of an all-girls school during the American Civil War, in Sofia Coppola\'s drama <i>The Beguiled</i>, a remake of a 1971 film of the same name, which premiered at the 2017 Cannes Film Festival, competing for the Palme d\'Or. Both films were adaptations of a novel by Thomas P. Cullinan. The film was an arthouse success, and Katie Walsh of <i>Tribune News Service</i> found Kidman to be \"particularly, unsurprisingly excellent in her performance as the steely Miss Martha. She is controlled and in control, unflappable. Her genteel manners and femininity co-exist easily with her toughness.\" Kidman had two other films premiere at the festival, the science-fiction romantic comedy <i>How to Talk to Girls at Parties</i>, reuniting her with director John Cameron Mitchell, and the psychological thriller <i>The Killing of a Sacred Deer</i>, directed by Yorgos Lanthimos, which also competed for the Palme d\'Or. Also in 2017, Kidman played supporting roles in the television series <i>Top of the Lake: China Girl</i> and in the comedy-drama <i>The Upside</i>, a remake of the 2011 French comedy <i>The Intouchables</i>, starring Bryan Cranston and Kevin Hart.</p>\r\n<p>Kidman starred in two 2018 dramas -<i>Destroyer</i> and <i>Boy Erased</i>. In the former, she played a detective troubled by a case for two decades. Peter Debruge of <i>Variety</i> and Brooke Marine of <i>W</i> both found her \"unrecognizable\" in the role and Debruge added that \"she disappears into an entirely new skin, rearranging her insides to fit the character\'s tough hide\", whereas Marine highlighted Kidman\'s method acting. The latter film is based on Garrard Conley\'s <i>Boy Erased: A Memoir</i>, and features Russell Crowe and Kidman as socially conservative parents who send their son (played by Lucas Hedges) to a gay conversion program. Richard Lawson of <i>Vanity Fair</i> credited all three performers for \"elevating the fairly standard-issue material to poignant highs\". Also that year, Kidman played Queen Atlanna, the mother of the title character, in the DC Extended Universe superhero film <i>Aquaman</i>.</p>\r\n<p>She has finished filming her supporting role as Mrs. Barbour in John Crowley\'s <i>The Goldfinch</i>, an adaptation of the novel of the same name by Donna Tartt, starring Ansel Elgort. Kidman has filmed a second season of <i>Big Little Lies</i>, will star in another HBO miniseries, <i>The Undoing</i>, based on the novel <i>You Should Have Known</i> by Jean Hanff Korelitz, and will portray Gretchen Carlson in <i>Fair and Balanced</i>, a drama about sexual harassment at Fox News.</p>', 'actors/nicole-kidman_Cover.jpg'),
(58, 'Patricia', '', 'Arquette', 'F', '<p>Patricia Arquette was born in Chicago, Illinois, in 1968 to Lewis Arquette, an actor, and Brenda Olivia \"Mardi\" (née Nowak), who was involved in the arts and worked as a therapist. Through her father, Patricia is distantly related to explorer Meriwether Lewis. Arquette\'s father had converted from Catholicism to Islam. Arquette\'s mother was Jewish, and her ancestors emigrated from Poland and Russia. Her father\'s family\'s surname was originally \"Arcouet\", and his paternal line was of French-Canadian descent. Her paternal grandfather was comedian Cliff Arquette. Patricia\'s siblings also became actors: Rosanna, Richmond, Alexis, and David. When she was a child, her parents offered to get her braces for her teeth; but she refused, telling them she wanted to have flaws because it would help her with character acting.</p>\r\n<p>For a time her family lived on a commune in rural Bentonville, Virginia. She has said they became poorer the longer they lived there and she believes that experience enlarged her empathy. Their father was an alcoholic, and their mother violently abusive. When Arquette was seven, the family relocated to Chicago. They later settled in Los Angeles, California. Arquette grew up Catholic and attended Catholic school, and has said that when she was a teenager, she had wanted to be a nun. At the age of fourteen, Arquette ran away from home after learning her father was having an affair-she settled with her sister, Rosanna Arquette, in Los Angeles. She has described her father as a working actor for industrial films, commercials and voiceovers - he was best known for his role as J.D. Pickett in the TV series <i>The Waltons</i>. Before pursuing a career in acting, Arquette had wanted to be a midwife. She put this career prospect aside briefly in an attempt to gain acting jobs and gained success in the industry.</p>\r\n<p>In 1987, Arquette\'s first starring roles included pregnant teenager Stacy in the television film <i>Daddy</i>, boarding school student Zero in <i>Pretty Smart</i>, and Kristen Parker in <i>A Nightmare on Elm Street 3: Dream Warriors</i>, alongside Robert Englund as Freddy Krueger and Heather Langenkamp as Nancy Thompson. She reprised her role as Kristen in the music video to Dokken\'s <i>Dream Warriors</i> (1987). She was asked to reprise her role in the sequel, <i>A Nightmare on Elm Street 4: The Dream Master</i> (1988), but she declined the offer in order to do other projects. She gave up the role of Tralala in <i>Last Exit to Brooklyn</i> due to her pregnancy with her son Enzo.</p>\r\n<p>In 1988, Arquette played the daughter of Tess Harper in <i>Far North</i>. Her roles in the early 1990s were in low budget and independent films, including <i>Prayer of the Rollerboys</i> (1990), <i>The Indian Runner</i> (1991), which was the directorial debut of Sean Penn; and the drama <i>Inside Monkey Zetterland</i>. In 1992, she won a CableACE Award for Best Lead Actress in a Mini-Series for her portrayal of a deaf girl with epilepsy in <i>Wildflower</i>, directed by Diane Keaton and also starring Reese Witherspoon.</p>\r\n<p>In her early career, Arquette received the most recognition for her role as Alabama Whitman, a free-spirited, kind-hearted prostitute in Tony Scott\'s <i>True Romance</i> (1993). The film was a moderate box office success but became a cultural landmark because of Quentin Tarantino\'s screenplay, which preceded <i>Pulp Fiction</i>, although some critics were deterred by the graphic violence. In one scene, Arquette puts up a fierce physical struggle in a fight with James Gandolfini (as a viciously sadistic killer) which her character ultimately wins. Arquette\'s performance received generally unanimous praise from critics. Janet Maslin of <i>The New York Times</i> premarked that Arquette played her role with \"surprising sweetness\", while Peter Travers remarked that \"Arquette delivers sensationally\". <i>TV Guide</i> noted that the film blends and recycles elements from the story of <i>Bonnie and Clyde</i> and Terrence Malick\'s \"love on the run\" film <i>Badlands</i> (1973). It gave <i>True Romance</i> overall a favourable review for having \"enough energy and verve to create something entirely fresh and infectiously entertaining\". Richard Corliss of <i>Time Magazine</i> made similar statements and also likened the film to the earlier, seminal <i>Bonnie and Clyde</i>.</p>\r\n<p>Arquette next appeared in the television film <i>Betrayed by Love</i> (1994), and the well-received biopic <i>Ed Wood</i>, directed by Tim Burton and starring Johnny Depp, where she portrayed his girlfriend. Her next role was as Laura Bowman in John Boorman\'s <i>Beyond Rangoon</i> (1995), which drew mixed critical reviews, but was a success internationally. In France, it was the official selection at the 1995 Cannes Film Festival, where it became one of the most popular hits of the event. Although the film had lackluster reviews, Arquette\'s performance as an American tourist in Burma during the 8888 Uprising was regarded as one of the work\'s strong points. Michael Sragow, writing for <i>The New Yorker</i>, stated \"Arquette gives the kind of mighty physical performance usually delivered by men in existential action classics like \"The Wages of Fear,\" but she suffuses it with something all her own - she\'s bulletproof yet vulnerable.\" Hal Hinson of <i>The Washington Post</i> remarked that the film was \"odd, brilliant in places, but frustrating all the same,\" commenting that \"Arquette shows real grit when the chips are down\".</p>\r\n<p>Arquette appeared in three films in 1996, the first the comedy film <i>Flirting with Disaster</i> (1996), about a young man\'s cross-country pursuit to find his parents. Critical reception was largely positive, with Todd McCarthy of <i>Variety</i> praising the film and the authenticity of Arquette\'s performance, highlighting that \"Arquette [is] very believably distracted and infuriated\". <i>Flirting with Disaster</i> grossed $14 million at the American box office and was screened in the <i>Un Certain Regard</i> section at the 1996 Cannes Film Festival. Her second film released that year was the period drama <i>The Secret Agent</i>, an adaptation of Joseph Conrad\'s 1907 novel of the same name. The film received average reviews. <i>Infinity</i> was her third film that year, a biographical drama about the early life of American physicist Richard Feynman. The film received mixed to positive reviews. Although Emmanuel Levy of <i>Variety</i> said that Arquette was \"miscast\", he stated that she \"registers more credibly in the first part of the film, when she plays an adolescent\".</p>\r\n<p>In 1997, Arquette starred in David Lynch\'s neo-noir psychological thriller <i>Lost Highway</i>, in dual roles as Renee Madison and Alice Wakefield. The film had an ambiguous narrative, which polarized audiences and drew varying critical opinion, but it established a strong cult following. Arquette played an elusive femme fatale in a critically revered performance that enabled her to draw on her sexuality more than any other previous role. Owen Gleiberman, writing for <i>Entertainment Weekly</i> noted that \"Arquette, with her \'40s-style curves, is certainly a spellbinding temptress\". Roger Ebert, of the <i>Chicago Sun-Times</i>, disliked the film, saying there was \"no sense to be made of it\" and voiced his distaste over a scene in which Arquette\'s character is asked to disrobe at gunpoint. Other critics were more favourable: Andy Klein of the <i>Dallas Observer</i> called it a \"two-hour plus fever dream\", Michael Sragow of <i>The New Yorker</i> called the film a \"compelling erotic nightmare\", and Edward Guthman of the <i>San Francisco Gate</i> wrote a glowing review praising Arquette\'s performance, calling it the \"strongest, most memorable performance [of the film]\" and favourably comparing her double role to Kim Novak\'s in <i>Vertigo</i> (1958). That same year, Arquette appeared in <i>Nightwatch</i>, a horror-thriller film directed by Ole Bornedal. The film is a remake the Danish film <i>Nattevagten</i> (1994), which was also directed by Bornedal. <i>Nightwatch</i> was not a box office success and received poor reviews by critics, many of whom considered it an unnecessary, inferior retelling of the original film.</p>\r\n<p>1998 saw Arquette perform in two films: <i>Goodbye Lover</i>, a comedic neo-noir directed by Roland Joffé and <i>The Hi-Lo Country</i>, a period Western directed by Stephen Frears. The former received a poor critical reception while the latter received a more appreciative albeit modest response. <i>The Hi-Lo Country</i> was widely cited as a \"classic Western\" in the press. Stephen Holden of the New York Times said, \"In its best moments the movie feels like an epic hybrid of Red River and The Last Picture Show.\" In 1999, Arquette returned to familiar territory with the genre that began her career, in <i>Stigmata</i>, a horror film, in the lead role. Produced on a budget of $29 million, the film was a box office success, grossing $50,046,268. Internationally the film earned $39,400,000 for a total worldwide gross $89,446,268. Critics were not as receptive of the film as audiences, with Roger Ebert remarking \"possibly the funniest movie ever made about Catholicism - from a theological point of view\". Arquette then appeared in Martin Scorsese\'s <i>Bringing out the Dead</i>, based on the novel by Joe Connelly. The film united her with then-husband Nicolas Cage and received highly favourable critical reviews, but was a box office flop. Janet Maslin of the <i>New York Times</i> wrote that \"Arquette\'s quietly credible performance helps center Frank\'s experiences; one of the film\'s most honest scenes is one in which they share an ambulance ride without sharing a word\".</p>\r\n<p>Her next role was in the light-hearted comedy <i>Little Nicky</i> (2000), alongside Adam Sandler. Despite being a box office hit, the film received negative reviews, although Roger Ebert called it Sandler\'s best film to date. Following this, she starred in French-American comedy drama <i>Human Nature</i> (2001), written by Charlie Kaufman and directed by Michel Gondry. The film was met with mixed reviews and was screened out of competition at the 2001 Cannes Film Festival. Roger Ebert, in a three-star (out of a possible four) review, lauded the film\'s \"screwball charm\". The following year, she appeared in the small-scale mystery film <i>The Badge</i>, playing the widowed victim of a murdered transsexual. In 2003, she portrayed the controversial pornographic film star Linda Lovelace in the little known <i>Deeper than Deep</i>, which was followed with the more family orientated Disney produced <i>Holes</i>, as Kissin\' Kate Barlow. Based on the 1998 novel of the same title by Louis Sachar, <i>Holes</i> grossed $16,300,155 in its opening weekend, making #2 at the box office, behind <i>Anger Management</i>\'s second weekend. <i>Holes</i> would go on to gross a domestic total of $67,406,173 and an additional $4 million in international revenue, totaling $71,406,573 at the box office against a $20 million budget, making the film a moderate financial success. Arquette\'s next film, <i>Tiptoes</i>, was released straight-to-DVD in the United States, despite a screening at the Sundance Film Festival.</p>\r\n<p>After the humdrum reception of <i>Tiptoes</i>, Arquette did not appear in another film until 2006\'s <i>Fast Food Nation</i>, directed by Richard Linklater. During this three years, she was largely working on <i>Boyhood</i>; it was released eight years later in July 2014. <i>Fast Food Nation</i> marked her second collaboration with Linklater; it is based on the bestselling 2001 non-fiction book of the same name by Eric Schlosser. <i>Fast Food Nation</i> received mixed to positive critical reviews. Peter Travers of <i>Rolling Stone</i> awarded the film three out of four stars and added, \"It\'s less an expose of junk-food culture than a human drama, sprinkled with sly, provoking wit, about how that culture defines how we live ... The film is brimming with grand ambitions but trips on many of them as some characters aren\'t given enough screen time to register and others vanish just when you want to learn more about them.\" A. O. Scott of <i>The New York Times</i> wrote \"It\'s a mirror and a portrait, and a movie as necessary and nourishing as your next meal.\"</p>\r\n<p>In January 2005, Arquette made her first transition to television with NBC\'s <i>Medium</i>. Her role as (a fictional version of) psychic medium Allison DuBois won her an Emmy Award for Outstanding Lead Actress in 2005, as well as nominations for a Golden Globe in 2005, 2006 and 2007, a SAG Award in 2006, 2007 and 2010, and an Emmy Award in 2007. In 2009 NBC cancelled <i>Medium</i>, then CBS picked the series up and it lasted another two seasons. In 2008, she provided voice work for <i>A Single Woman</i>, which was panned. She did not appear in another film until 2012. <i>Girl in Progress</i>, a drama directed by Patricia Riggen, marked her return; it was met with negative reviews. In 2013, she returned to television, appearing on <i>Boardwalk Empire</i> as Sally Wheet. Also in 2013, Arquette filmed the true crime drama <i>Electric Slide</i>, which is still awaiting release.</p>\r\n<p>In 2014, <i>Boyhood</i> was released, a project that Arquette and other actors had shot for 12 years beginning in 2002. The film was directed by Richard Linklater, marking his second collaboration with Arquette. In the film, she plays Olivia Evans, a single mother who raises her two children mostly alone with the sometimes assistance of their father (played by Ethan Hawke). The epic explores a 12-year scope. The film details the progression of her character\'s son, Mason, from ages 8 to 18. The film has received universal praise, with many critics calling it a \"landmark film\". Arquette received widespread acclaim for her performance. Critic Katie McDonahugh, writing for <i>Salon</i>, states \"the role gave [Arquette] space to be all of these messy things at once, and her performance was a raw, gutsy meditation on those profoundly human contradictions\". Margaret Pomeranz, writing for <i>ABC Australia</i>, called Arquette\'s performance \"stunning\" and praised the film, further remarking that \"the elision from one time to another is subtle and seamless. It\'s just a fabulous movie experience\". Arquette won the Academy, BAFTA, Critics\' Choice, Golden Globe, Independent Spirit, and SAG Awards for Best Supporting Actress.</p>\r\n<p>In early 2015, Arquette began starring in the CBS series <i>CSI: Cyber</i>, a show about FBI agents who combat Internet-based crimes. On May 12, 2016, CBS canceled the series after two seasons, thus ending the <i>CSI</i> franchise.</p>\r\n<p>In 2018, it was announced that Arquette would be starring in the Hulu series <i>The Act</i>. She portrayed Tilly Mitchell in the Showtime miniseries <i>Escape at Dannemora</i>, which premiered on November 18, 2018. For the role, she gained weight, wore prosthetic teeth, and brown contact lenses.</p>', 'actors/patricia-arquette_Cover.jpg'),
(59, 'Octavia', '', 'Spencer', 'F', '<p>The recipient of several accolades, including an Academy Award, a British Academy Film Award, and a Golden Globe Award. She is one of two black actresses to have received three Academy Award nominations.</p>\r\n<p>Octavia Lenora Spencer was born in Montgomery, Alabama, and has six siblings, including sisters Rosa and Areka. Her mother, Dellsena Spencer (1945-1988), worked as a maid. Her father died when she was thirteen. Spencer graduated from Jefferson Davis High School in 1988. She studied at Auburn University at Montgomery, and graduated from Auburn University, where she majored in English with a double minor in journalism and theater. Spencer has dyslexia.</p>\r\n<p>Octavia worked as an intern on the set of <i>The Long Walk Home</i>, a film starring Whoopi Goldberg. In 1997 she moved to Los Angeles on the advice of her friend Tate Taylor, the future director of <i>The Help</i>, in which Octavia spencer would later star.</p>\r\n<p>Spencer made her film debut as a nurse in Joel Schumacher\'s <i>A Time to Kill</i>, based on the book by John Grisham. She was originally hired to work on casting, but asked Schumacher if she could audition for a part. Other film credits include: <i>Never Been Kissed</i>, <i>Big Momma\'s House</i>, <i>Bad Santa</i>, <i>Spider-Man</i>, <i>Coach Carter</i>, <i>Win a Date with Tad Hamilton!</i> and <i>Pretty Ugly People</i>. She has made a number of guest appearances on television series, including <i>Raising the Bar</i>, <i>CSI: Crime Scene Investigation</i>, <i>The Big Bang Theory</i>, <i>Wizards of Waverly Place</i>, <i>Grounded for Life</i>, <i>ER</i>, <i>Titus</i>, <i>Becker</i>, <i>30 Rock</i> and <i>Dharma & Greg</i>, plus a recurring role on the sitcom <i>Mom</i>. She is best known for her starring roles as Serenity Johnson on Comedy Central\'s <i>Halfway Home</i>, and Constance Grady, the amorous INS caseworker on <i>Ugly Betty</i>.</p>\r\n<p>In 2003, Spencer made her stage debut in Los Angeles, in Del Shores\' play, <i>The Trials and Tribulations of a Trailer Trash Housewife</i>, starring opposite veteran actress Beth Grant. It was her first and only play, as, she once explained, she suffers from what she called \"intense stage fright\". Later that year, she starred opposite Allison Janney in Tate Taylor\'s short feature <i>Chicken Party</i>.</p>\r\n<p>In 2008, Spencer\'s brief appearance in <i>Seven Pounds</i> as Kate, Rosario Dawson\'s home care nurse, garnered her high praise and media attention. In April 2009, <i>Entertainment Weekly</i> listed Spencer as among its \"25 Funniest Actresses in Hollywood.\"</p>\r\n<p>In August 2009, Spencer appeared in Rob Zombie\'s <i>Halloween II</i>. She also had a role in the American remake of the Danish classic <i>Love at First Hiccup</i>, opposite Scout Taylor-Compton. Spencer starred in the feature film <i>Herpes Boy</i>, alongside Beth Grant, Ahna O\'Reilly and Byron Lane. She played the voice of \"Minny\" on the audio version of novel <i>The Help</i>, by Kathryn Stockett. Later that year, Spencer\'s short film <i>The Captain</i> was honored by the CICFF as a finalist for the REEL Poetry Award.</p>\r\n<p>In August 2010, Spencer joined Viola Davis, Emma Stone and Bryce Dallas Howard in <i>The Help</i>, an adaptation of the novel. She played the feisty and unflappable Minny Jackson. The film was written, produced and directed by Tate Taylor, and produced by Brunson Green, Chris Columbus, Michael Barnathan, and Mark Radcliffe. She won the 2012 Golden Globe Award for Best Supporting Actress - Motion Picture for her work in <i>The Help</i>. On February 12, 2012, Spencer won a BAFTA for Best Supporting Actress for her Performance in <i>The Help</i>, and on February 26 she won the Academy Award for Best Supporting Actress for the same performance; it was her first Oscar nomination and first win. Spencer was given a standing ovation at the ceremony, and was moved to tears during her acceptance speech. In June 2012, Spencer was invited to join the Academy of Motion Picture Arts and Sciences.</p>\r\n<p>In 2013, she appeared alongside Michael B. Jordan in <i>Fruitvale Station</i>, a film chronicling the last day of Oscar Grant, who was killed at a Bay Area Rapid Transit station in 2009.</p>\r\n<p>In September 2013, it was announced that she would reunite with <i>The Help</i> director Tate Taylor in the biopic on singer James Brown <i>Get On Up</i>, opposite her <i>The Help</i> co-star Viola Davis. The film was released in 2014. From September 2014 until February 2015, she starred in Steven Spielberg\'s Fox drama television series <i>Red Band Society</i>.</p>\r\n<p>Spencer co-starred alongside Kevin Costner in the drama film <i>Black or White</i> (2014) and co-starred as Johanna Reyes in the second installment of the <i>Divergent</i> series, <i>The Divergent Series: Insurgent</i> (2015). She reprised the role in <i>The Divergent Series: Allegiant</i> (2016). She voiced an otter, Mrs. Otterton, in Disney\'s <i>Zootopia</i>, which marks her first animated film.</p>\r\n<p>In 2016, she starred alongside Taraji P. Henson and Janelle Monáe in <i>Hidden Figures</i>, a film about African-American mathematicians at NASA who were critical to its success in the 1960s in the Space Race, and who each had careers there. She played mathematician and human computer Dorothy Vaughan. The role garnered her a Golden Globe Award and Screen Actors Guild Award for her performance and earned Spencer a second nomination for the Academy Award for Best Supporting Actress, making her the only black actress to follow up an Oscar victory with another nomination, having previously won for <i>The Help</i>. In honor of Martin Luther King Jr. Day, Spencer bought out a Los Angeles screening of <i>Hidden Figures</i> to treat low-income families that would have been unable to afford to see the film otherwise.</p>\r\n<p>In 2017, Spencer co-starred with Sally Hawkins in Guillermo del Toro\'s fantasy drama film <i>The Shape of Water</i>, which follows a mute custodian at a high-security government laboratory who befriends a captured humanoid-amphibian creature. The film was screened in the main competition section of the 74th Venice International Film Festival, where it premiered to positive reviews on August 31, 2017, and was awarded the Golden Lion for best film in the competition. It also screened at the 2017 Toronto International Film Festival. Spencer earned Golden Globe and BAFTA Award nominations for her portrayal, while receiving her third Academy Award nomination in the Best Supporting Actress category, making her the first black actress to receive two consecutive Oscar nods in back-to-back years as well as the most nominated black actress to date, along with <i>The Help</i> co-star Viola Davis.</p>\r\n<p>Spencer will return to television by starring in the Apple television series <i>Are You Sleeping</i> as well as starring in the Netflix limited series <i>Madam C. J. Walker</i>. For both series, Spencer will serve as an executive producer. Furthermore, Spencer will reunite with her <i>The Help</i> co-star Jessica Chastain for a holiday comedy film.</p>', 'actors/octavia-spencer_Cover.jpg');
INSERT INTO `actors` (`id`, `first_name`, `middle_name`, `last_name`, `gender`, `about`, `img`) VALUES
(60, 'Peter', '', 'Dinklage', 'M', '<p>Peter Hayden Dinklage was born on June 11, 1969, in Morristown, New Jersey, to John Carl Dinklage, an insurance salesman, and Diane Dinklage, an elementary-school music teacher. He was born with achondroplasia, a common form of dwarfism. Dinklage grew up as the only dwarf in his family in the historic Brookside section of Mendham Township, New Jersey, with his parents and older brother, Jonathan. His older brother Jonathan Dinklage graduated from the Mason Gross School of the Arts at Rutgers University and is a violinist for the play Hamilton. He is of German and Irish descent. As a child, Dinklage and his brother performed puppet musicals for people in their neighborhood. Dinklage has described his brother Jonathan, who is a violinist, as being the \"real performer of the family,\" saying that his brother\'s passion for the violin was the only thing that kept him from pursuing acting.</p>\r\n<p>Dinklage had his first theatrical success in a fifth-grade production of <i>The Velveteen Rabbit</i>. Playing the lead, he was delighted by the audience\'s response to the show. Dinklage attended Delbarton School, a Catholic preparatory school for boys, where he developed his acting. In 1984, Dinklage was inspired by a production of the play <i>True West</i>, written by American playwright Sam Shepard, to pursue a career in acting.</p>\r\n<p>Dinklage then attended Bennington College, where he studied for a drama degree and also appeared in numerous productions before graduating in 1991. After that he moved to New York City with his friend Ian Bell to build a theater company. Failing to pay the rent, they moved out of their apartment. (He lived in New York for twenty years in Williamsburg and the West Village). Dinklage then worked at a data processing company for six years before pursuing a career as a full-time actor.</p>\r\n<p>Dinklage initially struggled to find work as an actor, partially because he refused to take the roles typically offered to actors with his condition, such as \"elves or leprechauns.\" He made his credited film debut in the low-budget independent comedy-drama <i>Living in Oblivion</i> (1995) where he performed alongside Steve Buscemi. The film tells the story of a director, crew, and cast filming a low-budget independent film in the middle of New York City. Dinklage\'s role was that of a frustrated actor with dwarfism who complains about his clichéd roles. The film has been well received by critics. The following year he appeared as a building manager in the crime drama <i>Bullet</i> starring rapper Tupac Shakur. Even after his well-received performance in <i>Living in Oblivion</i>, Dinklage still could not find someone willing to be his agent. After a recommendation from Buscemi to the director Alexandre Rockwell, Dinklage was cast in the comedy <i>13 Moons</i> (2002). When later interviewed for a theater website, he was asked what his ideal role was, and he replied \"the romantic lead\" who gets the girl.</p>\r\n<p>Dinklage found his breakthrough playing Finbar McBride, who is a quiet, withdrawn, unmarried man in the 2003 Tom McCarthy-directed film <i>The Station Agent</i>. According to co-star Bobby Cannavale, the film took three years to make and was not at first written with Dinklage in mind, Cannavale said McCarthy \"set out to tell a story about a guy who was a train enthusiast who had chosen to isolate himself from the world,\" but when McCarthy actually started \"putting pen to paper\" for the screenplay he decided to write the role for him. Speaking about the role, Dinklage noted that usually \"roles written for someone my size are a little flat\"-often either comical or \"sort of <i>Lord of the Rings</i>\" type characters filled with wisdom; further: \"They\'re not sexual, they\'re not romantic\" and \"they\'re not flawed.\" What attracted him to the character McCarthy had written was that it was not one of the stereotypical roles people with dwarfism play; rather, McBride has \"romantic feelings\" as well as \"anger and ... flaws.\" The role earned him the Independent Spirit Award and Screen Actors Guild Award for Best Actor nominations. In the <i>New York Observer</i>, reviewer Andrew Sarris wrote, \"Dinklage projects both size and intelligence in the fascinating reticence of his face.\" Besides being Dinklage\'s highest-rated film on the review aggregator Rotten Tomatoes, <i>The Station Agent</i> was modestly successful at the box office, earning over $8 million against its small budget.</p>\r\n<p>Dinklage later appeared in the direct-to-DVD film <i>Tiptoes</i> (2003) with Gary Oldman and Matthew McConaughey. The film met with negative reviews, particularly Oldman\'s role as a person with dwarfism. According to Dinklage, the original cut of the film was \"gorgeous,\" but the director was fired shortly after turning it in, and the film was re-cut into a \"rom-com with dwarves.\" Speaking on the Oldman controversy, Dinklage said, \"There was some flak: Why would you put Gary Oldman on his knees? That\'s almost like blackface. And I have my own opinions about political correctness, but I was just like, It\'s Gary Oldman. He can do whatever he wants, and I\'m so happy to be here.\"</p>\r\n<p>That year, Dinklage also starred in several Off-Broadway productions, such as <i>Richard III</i>. Dinklage appeared in the Christmas comedy film <i>Elf</i> as Miles Finch, an irritable children\'s author who beats up Buddy Hobbs (Will Ferrell) after he mistakes him for an elf. In 2005, he starred in the short-lived CBS science fiction series <i>Threshold</i> and appeared as a wedding planner in the comedy film <i>The Baxter</i>. He also made an appearance in the adventure comedy-drama <i>Lassie</i> as a traveling circus performer. The film received highly positive reviews, though it did not fare well at the box office.</p>\r\n<p>In 2006, Dinklage co-starred with Vin Diesel in <i>Find Me Guilty</i>, a courtroom drama directed by Sidney Lumet. The film tells the true story of the longest Mafia trial in American history; Dinklage played Ben Klandis, the lead defense attorney. Critical reaction to the film was mostly positive, though it was a commercial failure. Writing for <i>Chicago Sun-Times</i>, film critic Roger Ebert praised Dinklage\'s performance, saying that the character he plays stands apart as \"concise, articulate and professional.\" The same year, he portrayed the character Marlowe Sawyer in episodes of <i>Nip/Tuck</i>. He played a fictionalized version of himself in an episode of the HBO series <i>Entourage</i> and appeared in NBC\'s <i>30 Rock</i> as Stewart. The same year, Dinklage appeared in the British romantic comedy <i>Penelope</i> playing Lemon, a tabloid reporter. The film received mixed reviews from critics.</p>\r\n<p>Dinklage appeared in the 2007 British comedy film <i>Death at a Funeral</i>, reprising the role in the 2010 American remake; the films tell the story of a family trying to deal with a variety of issues after the death of their father. Later in 2007, he played the villainous Simon Bar Sinister in <i>Underdog</i>, which was poorly received but had some commercial success.</p>\r\n<p>Dinklage played Trumpkin in the 2008 film <i>The Chronicles of Narnia: Prince Caspian</i>. The film was a box office disappointment, with global revenues of $419.7 million, and film critic Bill Gibron described Dinklage\'s role as a \"cutesy stereotype he has tried to avoid.\" Later that year, he played the title role in <i>Uncle Vanya</i> (directed by his wife, Erica Schmidt) in Bard College\'s annual Bard SummerScape, the Upstate New York summer stage on the Annandale-on-Hudson campus. In 2010, he appeared in the Australian movie <i>I Love You Too</i> alongside Brendan Cowell and Peter Helliar.</p>\r\n<p>Since 2011, Dinklage has portrayed Tyrion Lannister in HBO\'s fantasy drama <i>Game of Thrones</i>, an adaptation of author George R. R. Martin\'s <i>A Song of Ice and Fire</i> novels. <i>Game of Thrones</i> takes place on the fictional continents of Westeros and Essos and chronicles the power struggles among noble families as they fight for control of the Iron Throne of the Seven Kingdoms. Tyrion is a member of House Lannister, one of the wealthiest and most powerful families in Westeros, and uses his status as a Lannister to mitigate the impact of the marginalization and derision he has received all of his life. In May 2009, he was the first actor to be cast, as showrunners David Benioff and D. B. Weiss noted that Dinklage, whom he described as funny, smart and witty, was their first choice for the role, as the actor\'s \"core of humanity, covered by a shell of sardonic dry wit, is pretty well in keeping with the character.\" Unfamiliar with the source material, Dinklage was cautious in his first meeting with the producers; as a dwarf, \"he wouldn\'t play elves or leprechauns\" and was choosy about genre roles. Benioff and Weiss told Dinklage that the character was \"a different kind of fantasy little person,\" or in the actor\'s words, \"No beard, no pointy shoes, a romantic, real human being.\" Dinklage signed on to play Tyrion before the meeting was half over, in part because, he said, \"They told me how popular he was.\" Martin said of Dinklage\'s casting, \"If he hadn\'t accepted the part, oh, boy, I don\'t know what we would have done.\" The series proved to be a commercial success; it has been renewed for multiple seasons and is about to conclude with its eighth season in 2019.</p>\r\n<p>Dinklage has received widespread praise for his performance, with Matthew Gilbert from <i>The Boston Globe</i> saying that Dinklage \"gives a winning performance that is charming, morally ambiguous, and self-aware.\" Dan Kois of <i>The New York Times</i> noted that Dinklage\'s performance has made the character \"all the more popular.\" The <i>Los Angeles Times</i> wrote \"In many ways, <i>Game of Thrones</i> belongs to Dinklage.\" Tyrion has been called the \"most quotable\" character and \"one of the most beloved characters\" of the series. For his performance, he has gone on to win a Emmy Award for Outstanding Supporting Actor in a Drama Series in 2011, 2015, and 2018, as well as the 2012 Golden Globe Award for Best Supporting Actor. As a result of his performance and increased screen time, Dinklage was given top billing starting in the series\' second season. In 2014, he said on <i>The Late Show with David Letterman</i> that he had once tried to read the books the show is based upon, but had found them confusing. He joked, \"George Martin, our author, is probably going to kill my character soon because I mentioned that.\" In 2014, Dinklage and four of his <i>Game of Thrones</i> co-stars became some of the highest paid actors on television, although sources differ on the actors\' per-episode salaries as of 2017. In 2015, Dinklage lent his voice for the role of Tyrion in <i>Game of Thrones: A Telltale Games Series</i>, a video game based on the show.</p>\r\n<p>In 2012, Dinklage voiced Captain Gutt in <i>Ice Age: Continental Drift</i>, which earned over $877 million. Dinklage has said that because this was his first voiceover role, he prepared himself by making sure to rest his voice before the recording sessions, and that he prefers doing roles he has not done before. After appearing in an episode of NBC\'s late-night sketch comedy <i>Saturday Night Live</i> in 2013, Dinklage hosted an episode of the show in April 2016; his appearances included a sketch of him and Gwen Stefani singing a new song called \"Space Pants.\" He received praise for his performance.</p>\r\n<p>In 2014, Dinklage starred in the comedy horror film <i>Knights of Badassdom</i> opposite Ryan Kwanten and Steve Zahn. The film is about three best friends that go to the woods and reenact a live action <i>Dungeons & Dragons</i> role play, when they mistakenly conjure up a demon from Hell. The same year, he played the villain Bolivar Trask in the superhero film <i>X-Men: Days of Future Past</i>. The movie was the sixth highest-grossing film of 2014 with global revenues of $747.9 million. In preparation for his role, Dinklage stated that he did not want to approach the character necessarily as a villain, saying that Trask \"actually sees what he\'s doing as a good thing.\" He also voiced the AI Ghost in the 2014 video game <i>Destiny</i>, but was replaced by Nolan North in August 2015.</p>\r\n<p>In 2015, Dinklage starred in the science fiction comedy film <i>Pixels</i> as a former arcade champion named Eddie Plant, which was poorly received by critics. The movie had a global revenues of $244.9 million. In 2016, Dinklage provided the voice of The Mighty Eagle in <i>The Angry Birds Movie</i>, and recorded a song for the musical\'s soundtrack. The film went on to become the second highest-grossing video game film of all-time, with a global revenues of $349.8 million, only behind <i>Warcraft</i> ($433.5 million). It also became the most successful Finnish film to date. His next release, the independent film <i>Rememory</i> (2017), failed to impress reviewers, but his role of Sam Bloom was praised. Freelance film critic Yasmin Kleinbart stated that \"Dinklage deserves better than this film\" and John DeFore in <i>The Hollywood Reporter</i> said that he \"delivers a soulful lead performance that will attract fans\' attention.\" Also in 2017, Dinklage had a supporting role in the drama-dark comedy film <i>Three Billboards Outside Ebbing, Missouri</i>, from director Martin McDonagh, and the drama <i>Three Christs</i>, both of which played at the Toronto International Film Festival, with the former receiving widespread critical success. In 2018, Dinklage produced and starred in <i>I Think We\'re Alone Now</i>, a post-apocalyptic drama based on the companionship between Del, played by Dinklage, and Grace, played by Elle Fanning. The film premiered at the 2018 Sundance Film Festival, and was later released to theaters on September 14, 2018.</p>\r\n<p>Dinklage appeared in the 2018 Marvel Studios film <i>Avengers: Infinity War</i> as the character Eitri, a giant dwarf, which became the fastest-grossing film to gross over $1 billion, and grossed $2.045 billion-his highest grossing release as of 2018.</p>\r\n<p>Dinklage and writer-director Sacha Gervasi spent several years writing and producing a film based on the final days of actor Hervé Villechaize, who died by suicide shortly after his 1993 interview with Gervasi. In 2018, Dinklage starred and played the title role in <i>My Dinner with Hervé</i>. The movie was approved by HBO, with Dinklage co-starring alongside Jamie Dornan.</p>\r\n<p>In 2017, it was announced that Dinklage has been attached to star in the American comedy <i>O Lucky Day</i>, which is to be directed by Jon S. Baird where he will play a con-man who pretends to be a Leprechaun.</p>\r\n<p>On October 5, 2017, Dinklage purchased the rights to the film adaptation of Joe R. Lansdale\'s novel, <i>The Thicket</i>.</p>', 'actors/peter-dinklage_Cover.jpg'),
(61, 'Rachel', '', 'Brosnahan', 'F', '<p>Rachel Elizabeth Brosnahan was born in Milwaukee, Wisconsin, the daughter of Carol and Earl Brosnahan. Her father worked in children\'s publishing. From the age of four, Brosnahan was raised in Highland Park, Illinois. She has a younger brother and sister. She is the niece of the late fashion designer Kate Spade. Her mother is British, and her American father is of Irish descent.</p>\r\n<p>Brosnahan attended Wayne Thomas Elementary School, and then Northwood Junior High School. She performed in musical theater during junior high school and high school. At Highland Park High School, she was on the wrestling team for two years and was a snowboarding instructor. When Brosnahan was 16, she took a class with Carole Dibo, director of Wilmette\'s Actors Training Center and now Brosnahan\'s manager. She graduated from there in 2008.</p>\r\n<p>Brosnahan was cast in her first movie role as Lisa in the Michael Bay-produced horror movie <i>The Unborn</i> while she was still in high school. During college, she performed in single episodes of television series such as <i>Gossip Girl</i>, <i>The Good Wife</i>, <i>Grey\'s Anatomy</i>, and <i>In Treatment</i>. After college, she began landing recurring roles in series such as <i>The Blacklist</i> (2014), and the short-lived <i>Black Box</i> (2014).</p>\r\n<p>She first appeared on stage in 2009 in <i>Up</i> at Steppenwolf Theatre followed by her Broadway debut in <i>The Big Knife</i> with Roundabout Theatre Company in 2013. In 2016 she played Desdemona in <i>Othello</i> at New York Theatre Workshop opposite David Oyelowo and Daniel Craig.</p>\r\n<p>In 2013, she starred in the critically acclaimed Netflix political drama <i>House of Cards</i> with Kevin Spacey and Robin Wright. Her role brought her career prominence and received a Primetime Emmy Award nomination for Outstanding Guest Actress in a Drama Series. She was initially booked for two episodes and five lines, she caught the eye of showrunner Beau Willimon, and was soon developed into a major character.</p>\r\n<p>In 2016, she appeared in Woody Allen\'s Amazon series <i>Crisis in Six Scenes</i> with Allen, Elaine May, and Miley Cyrus.</p>\r\n<p>In 2017, she appeared as the title character of the Amazon series, <i>The Marvelous Mrs. Maisel</i>. Brosnahan said that, while she is not Jewish, her exposure to Jewish culture growing up helped prepare her for the role of Midge Maisel, a 1950s Jewish housewife who pursues a career in stand-up comedy when her marriage falls apart. Her performance earned her a Primetime Emmy Award, Golden Globe Award, Screen Actors Guild Award, and the Critics\' Choice TV Award.</p>\r\n<p>She was cast in the upcoming film <i>Ironbark</i> alongside Benedict Cumberbatch. The film is set to be released in 2019.</p>\r\n<p>After her Emmy win, Brosnahan stated that <i>Maisel</i> resonated with viewers because \"the show is equal parts fantasy and reality. It has beautiful clothes, beautiful sets. I think in some ways it\'s aspirational too. It\'s about a woman who\'s reinventing herself after completing the dream she had laid out for herself. Everything falls apart; she finds herself anew. It\'s never too late to do that. And it\'s funny and, I think, filled with joy at its core, and that\'s something we need a lot more of in the world right now.\"</p>', 'actors/rachel-brosnahan_Cover.jpg'),
(62, 'Rami', '', 'Malek', 'M', '<p>He is the first actor of Egyptian heritage to win the Academy Award for Best Actor. <i>Time</i> magazine named Malek one of the 100 most influential people in the world in 2019.</p>\r\n<p>Rami Said Malek was born in Los Angeles, on May 12, 1981, to Egyptian immigrant parents, Said Malek and Nelly Abdel-Malek. He has said he is also \"an eighth Greek\". His parents left Cairo in 1978 after his father, a tour guide, became intrigued with Western visitors. They settled in Sherman Oaks, Los Angeles, mostly staying in the San Fernando Valley and rarely venturing into Hollywood. His father sold insurance; his mother is an accountant. Malek was raised in his family\'s Coptic Orthodox Christian faith, and grew up speaking colloquial Egyptian Arabic at home until the age of four. Malek has an identical twin brother named Sami who is younger by four minutes; he is an ESL and English teacher. Malek\'s older sister, Yasmine, is an ER doctor. His parents emphasized to their children the importance of preserving their Egyptian roots, and his father would wake his son in the middle of the night to talk to his Arabic-speaking extended family in their hometown of Samalut, Egypt.</p>\r\n<p>As a first-generation American, Malek found it difficult to assimilate as a child because of cultural differences, even spending most of his childhood having his name mispronounced: \"It only took me till high school where I found the confidence to tell everybody, no, my name is Rami. It\'s a very upsetting thing to think about, that I didn\'t have the confidence to correct anyone at that point\". As a result, he said it was difficult to form a self-identity as a child and gravitated towards \"creating characters and doing voices\" as he searched for an outlet for that energy. He attended Notre Dame High School, and was in the same class as actress Rachel Bilson. Kirsten Dunst, who is a year younger, also attended the school, and the two shared a musical theater class. His parents harbored dreams of his becoming a lawyer, so he joined the debate team. Though he struggled to form arguments, his debate teacher noted his talent in dramatic interpretation and encouraged him instead to perform the one-man play <i>Zooman and The Sign</i> at a competition. Reflecting on the moment, he said, \"On stage I\'m having this moment with my dad with a bunch of other people [in the audience], but then I thought, wow, something really special is happening here\". It was the first time he saw his father become emotional, and his parents\' positive reaction to his performance left him feeling free to pursue an acting career.</p>\r\n<p>After graduating in 1999, he went on to study theater at the University of Evansville in Evansville, Indiana, where he received his Bachelor of Fine Arts degree in 2003. The college later honored Malek with a 2017 Young Alumnus Award, \"given to those who have achieved personal success and contribute services to their community and to UE\".</p>\r\n<p>After his college graduation, Malek wanted to attend grad school for theater; however, with college debt growing, he moved to New York instead where he shared a one-bedroom apartment with friends who were also in the theater business. His network of friends included writers and directors. Together they performed their own plays around the city. While visiting his family in Los Angeles, he met casting director Mali Finn who convinced him to stay and look for work in Hollywood. After moving in with his parents, Malek worked delivering pizza and making falafel and shawarma sandwiches at a restaurant in Hollywood to make ends meet. Despite sending his resume to production houses, he found it difficult to get work as an actor, which led to bouts of depression and a loss of confidence. He considered getting a real estate license instead of pursuing an acting career.</p>\r\n<p>After a year and a half, he finally received a call from casting director Mara Casey. She asked to speak to his agent. When he confessed he did not have one, she told him to get one first. After having a pleasant conversation, however, Malek suggested they meet anyway. She agreed, and the meeting led to him getting his first role in the TV sitcom <i>Gilmore Girls</i> in 2004. That same year he voiced \"additional characters\" for the video game <i>Halo 2</i>, for which he was uncredited. In 2005, he received his Screen Actors Guild card for his work in two episodes of the Steven Bochco war drama <i>Over There</i>. Later that year, he appeared in an episode of <i>Medium</i> and was cast in the prominent recurring role of Kenny, on the Fox comedy series <i>The War at Home</i>. Kenny\'s \"coming out\" story earned accolades from GLAAD. In 2006, Malek made his feature film debut as Pharaoh Ahkmenrah in the comedy <i>Night at the Museum</i>. He reprised this role in the sequels <i>Night at the Museum: Battle of the Smithsonian</i> (2009) and <i>Night at the Museum: Secret of the Tomb</i> (2014). In the spring of 2007, he appeared on-stage as Jamie in the Vitality Productions theatrical presentation of Keith Bunin\'s <i>The Credeaux Canvas</i> at the Elephant Theatre in Los Angeles.</p>\r\n<p>Malek returned to television in 2010 in a recurring role as the suicide bomber Marcos Al-Zacar on the eighth season of the Fox series <i>24</i>. Growing weary of playing characters he called \"acceptable terrorists\", he instructed his agent to reject any role that painted Arabs or Middle Easterners in a \"bad light\". Later that year, he received critical acclaim for his portrayal of Corporal Merriell \"Snafu\" Shelton in the Emmy Award-winning HBO World War II mini-series <i>The Pacific</i>. After the intensity of filming <i>The Pacific</i>, he chose to leave Hollywood and lived briefly in Argentina, though he says it was unsuccessful and he has \"since found better ways of coping\". During the filming of <i>The Pacific</i>, Malek received a letter from executive producer Tom Hanks praising Malek\'s performance. Hanks would then cast him as college student Steve Dibiasi in the feature film <i>Larry Crowne</i>, released in July 2011.</p>\r\n<p>Those opportunities led to Malek securing supporting roles in a series of major films. In August 2010, it was announced that he had been cast as the \"Egyptian coven\" vampire, Benjamin, in <i>The Twilight Saga: Breaking Dawn - Part 2</i>. In 2013 he played Nate, a new employee at a group home for youths, in the indie film <i>Short Term 12</i>, opposite Brie Larson. He appeared in two Spike Lee films during this period, the 2012 remake of the South Korean film <i>Oldboy</i>, in a part that was trimmed significantly, and later in the crowdfunded picture <i>Da Sweet Blood of Jesus</i>. The two men have remained friends. He also had minor roles in <i>Battleship</i>, the Oscar-nominated <i>The Master</i>, and <i>Ain\'t Them Bodies Saints</i>. He appeared as Josh, one of the main characters in <i>Until Dawn</i>, a horror game released for the PlayStation 4 on August 25, 2015. He lent his voice and likeness to the character and was fully motion-captured for the game.</p>\r\n<p>Screenwriter Sam Esmail had auditioned over 100 actors to play the lead character of Elliot Alderson (a mentally unstable computer-hacker) for a show he was developing. Having failed to cast the part, he considered re-writing the character altogether. After seeing Malek\'s audition, however, Esmail said, \"It opened my eyes to who Elliot really was\". The resultant psychological drama, <i>Mr. Robot</i>, premiered on June 24, 2015, on the USA Network, with Malek in the lead role. To accurately portray the character, who suffers from mental and social disorders, he met with a psychiatrist. The role drew immediate praise from critics, with <i>USA Today</i> calling it his \"breakout performance\". <i>Entertainment Weekly</i> called Malek\'s \"magnetic performance\" the \"best reason\" to watch the show. <i>Backstage</i> remarked that Malek \"anchored the drama\" and that his \"spin\" on the anti-hero trope \"promises a fresh direction for prestige TV\". His performance earned him nominations for the Dorian Award, Satellite Award, Golden Globe Award, and Screen Actors Guild Award. He won the Critics\' Choice Television Award for Best Actor in a Drama Series and the Primetime Emmy Award for Outstanding Lead Actor in a Drama Series. He was the first non-white actor to win an Emmy in that category since 1998. The show will conclude with its fourth season in 2019.</p>\r\n<p><i>Buster\'s Mal Heart</i>, the first movie in which Malek played a starring role, premiered in September 2016 at the Toronto International Film Festival to positive reviews. In it, Malek plays a man who leads two lives, one as Jonah and another as Buster. Casting him in the role before his success on <i>Mr. Robot</i>, the director, Sarah Adina Smith, said, \"I had no idea how huge and adored he would become\". Reviewing the actor\'s performance, John DeFore of <i>The Hollywood Reporter</i> wrote, \"Fans of <i>Mr. Robot</i> won\'t be disappointed in the least by this vehicle for Emmy-winning series star Rami Malek, which both fits in with Mr. Robot\'s delusion-prone paranoia and lets the charismatic actor stretch out in his first feature lead\". Malek next starred as Louis Dega in <i>Papillon</i>, a remake of the 1973 film, co-starring Charlie Hunnam. It premiered at the 2017 Toronto International Film Festival, and had a limited box office release in August 2018. In 2017, Malek joined the cast of <i>Bojack Horseman</i> (season 4), voicing the character Flip McVicker, a writer who does not trust email.</p>\r\n<p>In 2018, Malek portrayed Freddie Mercury in the Queen biopic, <i>Bohemian Rhapsody</i>. The film premiered in London on October 23, 2018, and became a major box office success, grossing over $900 million worldwide on a production budget of about $50 million. It became the sixth highest-grossing film of 2018 worldwide, and the highest-grossing musical biographical film of all-time. Despite mixed reviews for the film itself, Malek\'s performance received critical acclaim. He won a Golden Globe for Best Actor in a Motion Picture Drama, the Screen Actors Guild Award for Outstanding Performance by a Male Actor in a Leading Role, the BAFTA Award for Best Actor in a Leading Role and the Academy Award for Best Actor for his performance in the film. To prepare for the role as Mercury, Malek moved to London where he employed a dialect coach and movement coach, and took piano and singing lessons. For four hours each day, he studied videos of Mercury with his movement coach, Polly Bennett. This included watching the 1985 Live Aid concert video on YouTube at least 1,500 times to perfect his performance for the movie. He also had to get used to singing and speaking with a set of false teeth that mimicked the singer\'s overbite. Brian May, Queen\'s guitarist who often attended filming, is quoted as saying that Malek\'s performance was so accurate that \"we sometimes forgot he was Rami\".</p>\r\n<p>During the press tour for <i>Bohemian Rhapsody</i>, Malek said he is working on a movie, one he plans to write, direct, and produce himself on a small budget, since it is a story that he says \"might get passed on by studios looking for something a bit more broad and commercial\". In December 2018, it was announced that Malek would produce and star in an eight-episode podcast called <i>Blackout</i>. Scott Conroy is the writer of the upcoming podcast, a thriller about a small-town radio DJ who must \"fight to protect his family and community from a coordinated attack that destroys the power grid and upends modern civilization\". The podcast debuted with two episodes on March 19, 2019, with six subsequent episodes premiering weekly. On April 25, 2019, Malek was confirmed as the villain in the upcoming James Bond film, which has a release date of April 2020.</p>', 'actors/rami-malek_cover.jpg'),
(63, 'Regina', '', 'King', 'F', '<p>The recipient of various accolades including an Academy Award, a Golden Globe Award, and three Primetime Emmy Awards. <i>Time</i> magazine named King one of the 100 most influential people in the world in 2019.</p>\r\n<p>Regina Rene King was born on January 15, 1971, in Los Angeles and grew up in View Park-Windsor Hills. She is the eldest daughter of Gloria (Cain), a special education teacher, and Thomas King, an electrician. King\'s parents divorced in 1979. King\'s younger sister is former actress Reina King, who appeared on <i>What\'s Happening Now!!</i> King attended Westchester High School; graduating in 1988 and later attended the University of Southern California.</p>\r\n<p>Ms. King first gained attention in 1985 as Brenda Jenkins in the NBC television series <i>227</i>. She would go on to star in both television and film, rising to greater prominence with roles like Dana Jones in <i>Friday</i> (1995), Marcee Tidwell in <i>Jerry Maguire</i> (1996), Riley and Huey Freeman on the hit animated series <i>The Boondocks</i>, and Detective Lydia Adams on <i>Southland</i>. For <i>Southland</i>, she earned two Critics\' Choice Award nominations for Best Supporting Actress in a Drama Series in 2012 and 2013. In 2018, her performance as Sharon Rivers in the film <i>If Beale Street Could Talk</i> earned her the Academy Award and Golden Globe Award for Best Supporting Actress.</p>\r\n<p>From 2015 to 2017, King starred in the ABC anthology series <i>American Crime</i>, for which she received three Primetime Emmy Award nominations, winning twice, and was also nominated for a Golden Globe Award. Also from 2015 to 2017, she played Erika Murphy in the HBO drama <i>The Leftovers</i>, for which she received a Critics\' Choice Television Award nomination. In 2018, she starred in the Netflix miniseries <i>Seven Seconds</i>, for which she won her third Emmy Award. King had a recurring role as Janine Davis in the CBS sitcom <i>The Big Bang Theory</i>, and has starred in various films, including <i>Boyz n the Hood</i>, <i>Poetic Justice</i>, <i>Legally Blonde 2</i>, <i>Ray</i> and <i>Miss Congeniality: Armed & Fabulous</i>.</p>', 'actors/regina-king_Cover.jpg'),
(64, 'Richard', '', 'Jenkins', 'M', '<p>Richard Dale Jenkins was born and raised in DeKalb, Illinois. His mother, Mary Elizabeth (née Wheeler), was a housewife, and his father, Dale Stevens Jenkins, was a dentist. He attended DeKalb High School. Before he was an actor, Jenkins drove a linen truck (his boss was actor John C. Reilly\'s father). Jenkins earned a degree in Drama from Illinois Wesleyan University before relocating to Rhode Island.</p>\r\n<p>Jenkins worked with the Trinity Repertory Company in Providence, Rhode Island, while breaking into film with a bit part in <i>Feasting with Panthers</i> (1974), a television film about Oscar Wilde. Jenkins was given the option of joining the Screen Actors Guild. Knowing that it was not that easy to join, Jenkins immediately accepted the offer. He continued as a member of Trinity\'s resident acting company and served as its artistic director from 1990 to 1994.</p>\r\n<p>Since his debut in the television movie <i>Feasting with Panthers</i> (1974), Jenkins has been working steadily in film. His earlier film credits include <i>Hannah and Her Sisters</i> (1986), <i>The Witches of Eastwick</i> (1987), <i>Sea of Love</i> (1989), <i>How to Make an American Quilt</i> (1995), <i>Flirting with Disaster</i> (1996), and <i>Snow Falling On Cedars</i> (1999).</p>\r\n<p>He has worked with the director siblings the Farrelly brothers in <i>There\'s Something About Mary</i> (1998), <i>Outside Providence</i> (1999), <i>Me, Myself & Irene</i> (2000), <i>Say It Isn\'t So</i> (2001), <i>Hall Pass</i> (2011) and the 2012 <i>Three Stooges</i> remake. He has also appeared in three Coen Brothers movies: <i>The Man Who Wasn\'t There</i> (2001), <i>Intolerable Cruelty</i> (2003), and <i>Burn After Reading</i> (2008). He is in <i>North Country</i> (2005), has three memorable scenes as FBI Director James (Robert) Grace in <i>The Kingdom</i> (2007), and <i>Step Brothers</i> (2008).</p>\r\n<p>Although primarily known for supporting parts, Jenkins had a lead role in <i>The Visitor</i> (2007) for which he was nominated for the Independent Spirit Award and an Academy Award for Best Actor. Jenkins won the International Press Academy\'s Satellite Award for Best Actor - Motion Picture.</p>\r\n<p>In 2010, Jenkins costarred in <i>Dear John</i>, as the father of John Tyree (Channing Tatum), and also co-starred with Julia Roberts and Javier Bardem in <i>Eat Pray Love</i>. In 2012, he appeared in the Joss Whedon and Drew Goddard horror film <i>The Cabin in the Woods</i> and the action film <i>Jack Reacher</i>. He then appeared in the action films <i>White House Down</i> (2013) and <i>Kong: Skull Island</i> (2017).</p>\r\n<p>Jenkins co-starred in Guillermo del Toro\'s fantasy romance drama film <i>The Shape of Water</i> (2017), for which he received critical acclaim. For his performance, he garnered Academy Award, Golden Globe and Screen Actors Guild Award nominations for Best Supporting Actor.</p>\r\n<p>Mr. Jenkins is perhaps best known for playing Nathaniel Fisher in the HBO drama series <i>Six Feet Under</i>. His character is the deceased patriarch of the Fisher family and regularly appears to his family as a ghost or in dreams. He played the role for the show\'s entire run. He and his castmates received a Screen Actors Guild Award nomination for Outstanding Performance by an Ensemble in a Drama Series in 2002.</p>\r\n<p>Jenkins portrayed a DEA agent in one episode of <i>Miami Vice</i> and a mob boss in a later episode.</p>\r\n<p>In 2015, Jenkins won the Primetime Emmy Award for Outstanding Lead Actor in a Miniseries or Movie for his performance as Henry Kitteridge in the HBO miniseries <i>Olive Kitteridge</i>.</p>', 'actors/richard-jenkins_Cover.jpg'),
(65, 'Riz', '', 'Ahmed', 'M', '<p>Rizwan Ahmed was born in Wembley, London, in 1982, to a British Pakistani family. His parents are of Muhajir background; his grandparents migrated from India to Pakistan during the 1947 partition of India. His father is a shipping broker. His parents moved to England from Karachi, Sindh, Pakistan, during the 1970s. He is a descendant of Sir Shah Muhammad Sulaiman, the first Indian to become the Chief Justice of the Allahabad High Court in Uttar Pradesh during the colonial era. He also composed Urdu poetry, penned some of the first critical articles on Einstein\'s theory of relativity, and was related to Mulla Mahmud Jaunpuri (d. 1652), one of the most important philosopher-scientists produced in the region during the Mughal Empire.</p>\r\n<p>Ahmed attended Merchant Taylors\' School, Northwood, through a scholarship programme. He graduated from Christ Church, Oxford University, with a degree in PPE (Philosophy, Politics and Economics), which he has said he found to be a bizarre experience. He later studied acting at the Central School of Speech and Drama.</p>\r\n<p>As an actor, he has won one Emmy Award, out of two Emmy nominations, and was also nominated for a Golden Globe, Screen Actors Guild Award, and three British Independent Film Awards. He was initially known for his work in independent films such as <i>The Road to Guantanamo</i> (2006), <i>Shifty</i> (2008), <i>Four Lions</i> (2010), <i>Trishna</i> (2011), <i>Ill Manors</i> (2012), and <i>The Reluctant Fundamentalist</i> (2013), before his break-out role in <i>Nightcrawler</i> (2014).</p>\r\n<p>In 2016, he starred in <i>Una</i>, <i>Jason Bourne</i>, and as Bodhi Rook in the <i>Star Wars</i> Anthology film <i>Rogue One</i>, as well as in the HBO miniseries <i>The Night Of</i>, receiving critical acclaim for his performance as Nasir Khan. At the 2017 Emmy Awards, he received two nominations, for his performance in <i>The Night Of</i> and his guest spot in <i>Girls</i>; he won the award for Outstanding Lead Actor in a Limited Series or Movie for <i>The Night Of</i>, becoming the first South Asian male to win an acting Emmy, and the first Muslim and first South Asian to win a lead acting Emmy. He also stars as Carlton Drake/Riot in <i>Venom</i> (2018).</p>\r\n<p>As a rapper, he is a member of the Swet Shop Boys, earned critical acclaim with the hip hop albums <i>Microscope</i> and <i>Cashmere</i>, and earned commercial success featuring in the <i>Billboard</i> 200 chart topping <i>Hamilton Mixtape</i>, with his song \"Immigrants (We Get the Job Done)\" winning an MTV Video Music Award. As an activist, he is known for his political rap music, has been involved in raising awareness and funds for Rohingya and Syrian refugee children, and has advocated representation at the House of Commons. In 2017, he was included on the front cover of the annual <i>Time</i> 100 list of the most influential people in the world.</p>', 'actors/riz-ahmed_Cover.jpg'),
(66, 'Sam', '', 'Rockwell', 'M', '<p>Sam Rockwell was born November 5, 1968 in Daly City, California. He is the only child of actors Pete Rockwell and Penny Hess. After their divorce when he was five, he was raised by his father in San Francisco, and spent his summers with his mother in New York. At age 10, he made a brief stage appearance playing Humphrey Bogart in an East Village improv comedy sketch with his mother.</p>\r\n<p>He started high school at the San Francisco School of the Arts with Margaret Cho and Aisha Tyler, but received his high school diploma from Urban Pioneers, an Outward Bound-style alternative school. Rockwell explained, \"I just wanted to get stoned, flirt with girls, go to parties.\" The school \"had a reputation as a place stoners went because it was easy to graduate.\" The school ended up helping him regain an interest in performing. After appearing in an independent film during his senior year, he moved to New York to pursue an acting career.</p>\r\n<p>After his debut role in the horror film <i>Clownhouse</i> (1989) (produced by Francis Ford Coppola\'s production company), which he filmed while living in San Francisco, he moved to New York and trained at the William Esper Studios with teacher Terry Knickerbocker. His career slowly gained momentum in the early 1990s, when he alternated between small-screen guest spots in TV series like <i>The Equalizer</i>, <i>NYPD Blue</i> and <i>Law & Order</i> and small roles in films such as <i>Last Exit to Brooklyn</i> and <i>Teenage Mutant Ninja Turtles</i>. He also appeared as the title character in <i>The Search for One-eye Jimmy</i> (1994). During this time, Rockwell worked in restaurants as a busboy and delivered burritos by bicycle. At one point, Rockwell even worked as a private detective\'s assistant. \"I tailed a chick who was having an affair and took pictures of her at this motel\", he told <i>Rolling Stone</i> in 2002. \"It was pretty sleazy.\" A well-paying Miller commercial in 1994 finally allowed him to pursue acting full-time.</p>\r\n<p>The turning point in Rockwell\'s career was Tom DiCillo\'s film <i>Box of Moonlight</i> (1996), in which he played an eccentric man-child who dresses like Davy Crockett and lives in an isolated mobile home. The ensuing acclaim put him front and center with casting agents and newfound fans alike, with Rockwell himself acknowledging that \"That film was definitely a turning point...I was sort of put on some independent film map after 10 years in New York.\"</p>\r\n<p>He also received strong reviews for the film <i>Lawn Dogs</i> (1997), where he played a working-class lawn mower who befriends a wealthy 10-year-old girl (Mischa Barton) in an upper-class gated community in Kentucky; Rockwell\'s performance won him Best Actor honors at both the Montreal World Film Festival and the Catalan International Film Festival. In 1999, Rockwell played prisoner William \"Wild Bill\" Wharton in the Stephen King prison drama <i>The Green Mile</i>. At the time of the film\'s shooting, Rockwell explained why he was attracted to playing such unlikable characters. He said, \"I like that dark stuff. I think heroes should be flawed. There\'s a bit of self-loathing in there, and a bit of anger... But after this, I\'ve really got to play some lawyers, or a British aristocrat, or they\'ll put a label on me.\"</p>\r\n<p>After appearances as a bumbling actor in the sci-fi parody <i>Galaxy Quest</i> (1999), as Flute in the Shakespeare adaptation <i>A Midsummer Night\'s Dream</i> (1999), and as gregarious villain Eric Knox in <i>Charlie\'s Angels</i> (2000), Rockwell won the then-biggest leading role of his career as <i>The Gong Show</i> host Chuck Barris in George Clooney\'s directorial debut, <i>Confessions of a Dangerous Mind</i> (2002). Rockwell\'s performance was well-received, and the film earned generally positive reviews.</p>\r\n<p>Rockwell has also received positive notices for his role opposite Nicolas Cage in Ridley Scott\'s <i>Matchstick Men</i> (2003), with <i>Entertainment Weekly</i> calling him \"destined by a kind of excessive interestingness to forever be a colorful sidekick.\" He received somewhat more mixed reviews as Zaphod Beeblebrox in the film version of <i>The Hitchhiker\'s Guide to the Galaxy</i> (2005). He then had a notable supporting role as Charley Ford, brother of Casey Affleck\'s character Robert Ford, in the well-received drama <i>The Assassination of Jesse James by the Coward Robert Ford</i> (2007), in which Brad Pitt played the lead role of Jesse James. According to an interview on <i>The Howard Stern Show</i>, director Jon Favreau considered casting him as the titular character in <i>Iron Man</i> as the studio was initially hesitant to work with Robert Downey Jr., who had been considered for his role in <i>The Hitchhiker\'s Guide to the Galaxy</i>. Rockwell eventually appeared in <i>Iron Man 2</i>, released in 2010, as Tony Stark\'s rival weapons developer, Justin Hammer. He is said to have accepted the role without reading the script. He had never heard of the character before he was contacted about the role and was unaware that Hammer is an old man in the comic books.</p>\r\n<p>In addition to big-budget feature films, Rockwell has also appeared in indie films such as <i>The F Word</i> and played a randy, Halloween-costume-clad Batman in a short, <i>Robin\'s Big Date</i>, opposite Justin Long as Robin. He also starred in the film <i>Snow Angels</i> (2008) opposite Kate Beckinsale. He has worked on several occasions with the comedy troupe Stella (Michael Ian Black, Michael Showalter and David Wain), making cameo appearances in their short films and eponymous TV series.</p>\r\n<p>Rockwell played Victor Mancini in the film <i>Choke</i> (2008), based on the novel by Chuck Palahniuk. Critic Roger Ebert said of his performance that he \"seems to have become the latter-day version of Christopher Walken - not all the time, but when you need him, he\'s your go-to guy for weirdness.\"</p>\r\n<p>In 2007, Rockwell guest-starred in the web series <i>Casted: The Continuing Chronicles of Derek Riffchyn, Greatest Casting Director in the World. Ever.</i> He appears opposite Jonathan Togo as Derek and Justin Long as Scott. Rockwell plays an aspiring young actor named Pete Sampras. In 2009, he starred in the critically acclaimed science fiction film <i>Moon</i>, directed by Duncan Jones. His performance as a lonely astronaut on a long-term solo mission to the Moon was widely praised, with some critics calling for an Academy Award for Best Actor nomination. On May 3, 2010, it was announced that Rockwell would team up again with <i>Iron Man 2</i> director Jon Favreau for Favreau\'s adaptation of the graphic novel <i>Cowboys & Aliens</i>. He played a bar owner named Doc who joins in the pursuit of the aliens.</p>\r\n<p>Rockwell also appeared in Martin McDonagh\'s <i>Seven Psychopaths</i> (2012), as well as Nat Faxon and Jim Rash\'s <i>The Way, Way Back</i> (2013). For his performance in <i>The Way, Way Back</i>, some critics felt he again deserved an Academy Award nomination.</p>\r\n<p>In January 2014, it was announced that Rockwell was cast in <i>The Eel</i>, in which he played an escaped convict. The film was produced by Kevin Walsh, Nat Faxon, and Jim Rash, marking Rockwell\'s second collaboration with all three. Additionally, Rockwell starred in the 2015 remake of <i>Poltergeist</i>. On May 3, 2016, it was announced that Rockwell would voice Mortimer Ramsey in the action video game <i>Dishonored 2</i>. Rockwell was cast along with other Marvel Cinematic Universe actors.</p>\r\n<p>Rockwell re-teamed with McDonagh for the 2017 film <i>Three Billboards Outside Ebbing, Missouri</i>. His performance as a racist, bullying police officer Jason Dixon won several accolades, including his first Academy Award, as well as the Golden Globe Award for Best Supporting Actor - Motion Picture, two Screen Actors Guild Awards and the BAFTA Award for Best Actor in a Supporting Role. In August 2017, Rockwell was cast to play George W. Bush in Adam McKay\'s <i>Vice</i>, a biopic of Dick Cheney; he received his second nomination for the Best Supporting Actor Academy Award as a result.</p>', 'actors/sam-rockwell_Cover.jpg');
INSERT INTO `actors` (`id`, `first_name`, `middle_name`, `last_name`, `gender`, `about`, `img`) VALUES
(67, 'Sarah', '', 'Paulson', 'F', '<p>Received numerous accolades, including a Primetime Emmy Award and a Golden Globe Award. In 2017, <i>Time</i> named her one of the 100 most influential people in the world.</p>\r\n<p>Sarah Catharine Paulson was born on December 17, 1974, in Tampa, Florida, the daughter of Catharine Gordon (née Dolcater) and Douglas Lyle Paulson II. She spent her early life living in South Tampa until her parents\' divorce when she was five years old. After her parents\' separation, Paulson relocated with her mother and sister to Maine, then to New York City. Her mother worked as a waitress, and Paulson lived in Queens and Gramercy Park, before settling in Park Slope, Brooklyn. She recalled of this period: \"My mom was 27 years old [when we moved]. She didn\'t know a single person in New York City. She got a job at Sardi\'s Restaurant... She was so brave to be basically a debutante in Tampa, Florida, having a cotillion and a coming out ball-and she picked up and brought her two kids to the greatest city in the world, not knowing anyone. My mom\'s kind of my hero that way.\"</p>\r\n<p>Throughout her childhood, Paulson spent her summers in Florida staying with her father, who was an executive at a Tampa door manufacturing company. She attended P.S. 29 in Brooklyn before attending Manhattan\'s Fiorello H. LaGuardia High School and the American Academy of Dramatic Arts.</p>\r\n<p>Paulson began working as an actress right out of high school. She appeared in the Horton Foote play <i>Talking Pictures</i> at the Signature Theatre, and in an episode of <i>Law & Order</i> in 1994. The next year Paulson appeared in the Hallmark television film <i>Friends at Last</i> (1995) opposite Kathleen Turner, playing the adult version of Turner\'s character\'s daughter. She also starred in the short-lived television series <i>American Gothic</i> (also 1995), playing the ghost of a murdered woman.</p>\r\n<p>In 1997, Paulson made her feature film debut in the independent thriller film <i>Levitation</i>, playing a woman who discovers she is pregnant after an anonymous sexual encounter. Leonard Klady of <i>Variety</i> noted that Paulson and her co-stars are \"not supported by the script,\" concluding: \"<i>Levitation</i> is a grim, convoluted saga of identity and belonging. An ill-fitting combination of melodrama and magic realism, the indie effort will have a decidedly difficult time in the theatrical arena.\" She also appeared Off-Broadway in a fall 1998 production of <i>Killer Joe</i>. She subsequently played Elisa Cronkite in The WB comedy-drama series <i>Jack & Jill</i> (1999). The same year, she was also cast opposite Juliette Lewis and Diane Keaton in the drama <i>The Other Sister</i>, playing the lesbian sister of a developmentally-disabled woman in San Francisco, and in a supporting part playing a hostage in the comedy <i>Held Up</i>, opposite Jamie Foxx. The following year, she had a small supporting role in the comedy <i>What Women Want</i>, starring Mel Gibson and Helen Hunt.</p>\r\n<p>Paulson had a minor recurring role in the HBO series <i>Deadwood</i> (2005-2006), and was a focal character in an episode of the FX series <i>Nip/Tuck</i>. She starred as the main character in the NBC series <i>Leap of Faith</i>. She was then cast in the period comedy <i>Down with Love</i> (2003) in a central role, portraying the friend and editor of a writer (portrayed by Renee Zellweger).</p>\r\n<p>In 2004, she had a supporting role in the ABC series <i>The D.A.</i>, which ended after only four episodes. In the spring of 2005, Paulson starred in a revival of <i>The Glass Menagerie</i> on Broadway, opposite future <i>American Horror Story</i> co-star Jessica Lange. Ben Brantley of <i>The New York Times</i> deemed the production as \"misdirected and miscast...  Reality never makes an appearance in this surreally blurred production.\" Later that year, Paulson appeared Off-Broadway in a production of <i>Colder Than Here</i>, opposite Lily Rabe (also her future co-star on <i>American Horror Story</i>). The production received an unfavorable review from <i>Variety</i>, with critic Dave Rooney writing: \"Rabe speaks in an affected monotone while Sarah Paulson has the measured, upward-inflected delivery of a children\'s TV presenter...  this mannered, melancholy play elicits a mainly impassive response, which is no small obstruction in a work dealing with loss.\"</p>\r\n<p>Also in 2005, Paulson had a small role in the Joss Whedon-directed science fiction film <i>Serenity</i>. In the 2006-07 television season, Paulson co-starred in NBC\'s <i>Studio 60 on the Sunset Strip</i>, playing Harriet Hayes, one of the stars of the show-within-a-show. This role earned her a nomination for Golden Globe Award for Best Supporting Actress - Series, Miniseries or Television Film. In December 2008, Paulson appeared in the screen adaptation of Will Eisner\'s comic book <i>The Spirit</i>, playing an updated version of the character Ellen Dolan.</p>\r\n<p>In 2008, ABC cast Paulson in the pilot <i>Cupid</i>, which was ordered to series. It was a remake of the 1998 series starring Jeremy Piven and Paula Marshall. In the new version, Paulson starred opposite Bobby Cannavale. It debuted in late March 2009 on ABC but was cancelled on May 19, 2009, after six episodes. In February 2010, Paulson was cast as the circa 1982 mother of main character Meredith Grey, on the ABC drama <i>Grey\'s Anatomy</i>, appearing in a flashback sequence in a season six-episode. She then played Nicolle Wallace in the HBO film <i>Game Change</i> (2012), based on events of the 2008 U.S. presidential election campaign. For her performance, she earned Primetime Emmy Award and Golden Globe Award nominations.</p>\r\n<p>In the spring of 2010, she starred in Donald Margulies\'s <i>Collected Stories</i> alongside Linda Lavin on Broadway. The same year, Paulson filmed the independent drama <i>Martha Marcy May Marlene</i>, in which she starred opposite Elizabeth Olsen and Hugh Dancy, portraying the wealthy sister of a woman who has escaped a cult. The film was released in the fall of 2011. Simultaneously, Paulson guest-starred in three episodes of the FX anthology series <i>American Horror Story</i>, playing medium Billie Dean Howard. Paulson returned the following year for season two, <i>American Horror Story: Asylum</i>, in which she played a new character, Lana Winters, a writer who is committed to an asylum for being a lesbian. During this time, she also played the supporting role of Mary Lee in the acclaimed 2012 drama film <i>Mud</i>, starring Matthew McConaughey.</p>\r\n<p>Paulson returned to theater in March 2013, appearing in an Off-Broadway production of <i>Talley\'s Folly</i> opposite Danny Burstein. She then starred in the third season of <i>American Horror Story</i>, titled <i>Coven</i> (2013) as Cordelia Foxx, a witch who runs an academy for other young witches. The same year, she starred as Mary Epps, an abusive slave-owner, in the historical drama film <i>12 Years a Slave</i>. The film was a critical success, earning numerous accolades.</p>\r\n<p>In 2014, Paulson appeared in the fourth season of series of <i>American Horror Story</i>, titled <i>Freak Show</i>, playing the roles of conjoined twin sisters Bette and Dot Tattler, who are members of a circus freak show. She returned for the fifth season, subtitled <i>Hotel</i>, in the role of Hypodermic Sally, the ghost of a drug addict trapped in a Hollywood hotel. She also reprised the character of Billie Dean Howard in the last episode of the season, making a crossover appearance. During this time, Paulson also took on the role of Abby Gerhard in the Todd Haynes-directed romantic drama <i>Carol</i> (2015), a period piece in which she played the supporting role of Cate Blanchett\'s close friend.</p>\r\n<p>Beginning in February 2016, Paulson starred in the first season of the true crime anthology series <i>American Crime Story</i>, <i>The People v. O.J. Simpson</i>, portraying prosecutor Marcia Clark. She received widespread praise for her performance and won various awards, including the TCA Award for Individual Achievement in Drama, a Primetime Emmy Award for Outstanding Lead Actress in a Limited Series or Movie, and a Golden Globe Award for Best Actress - Miniseries or Television Film.</p>\r\n<p>In June 2016, the Human Rights Campaign released a video in tribute to the victims of the 2016 Orlando nightclub shooting; in the video, Paulson and others told the stories of the people killed there. In the fall of 2016, she starred sixth iteration of <i>American Horror Story</i>, subtitled <i>Roanoke</i>; in it, she was cast in the dual roles of British actress Audrey Tindall and tortured wife and yoga instructor Shelby Miller, the latter of whom is portrayed by Tindall\'s character in <i>My Roanoke Nightmare</i>, a documentary within the series. She also reprised her role of Lana Winters in the final episode of <i>Roanoke</i>, in which the character makes a crossover appearance.</p>\r\n<p>After completing <i>Roanoke</i>, Paulson appeared in the series\' seventh season, <i>Cult</i> (2017), in which she played restaurant owner Ally Mayfair-Richards, as well as Susan Atkins in the 10th episode of the season. She also starred as Geraldine Page in one episode of the first season of drama anthology series <i>Feud</i> (2017), which chronicles the turbulent working relationship between actresses Bette Davis and Joan Crawford. Paulson was subsequently cast as part of an all-female ensemble in the heist film <i>Ocean\'s 8</i> (2018), co-starring with Cate Blanchett, Sandra Bullock, Anne Hathaway, Mindy Kaling, Awkwafina, and Rihanna. The film was a commercial success, grossing nearly $300 million at the worldwide box office.</p>\r\n<p>Paulson returned for the eighth season of <i>American Horror Story</i>, titled <i>Apocalypse</i>, which premiered on September 12, 2018. In <i>Apocalypse</i>, Paulson reprised both the <i>Murder House</i> and <i>Coven</i> roles of Billie Dean Howard and Cordelia Foxx, respectively, and also starred as the sadistic Miss Wilhemina Venable. In addition to appearing as three characters, Paulson also directed one of the season\'s episodes, marking her directorial debut. She played Sandra Bullock\'s character\'s sister, Jessica, in the drama horror film <i>Bird Box</i>, which was released on Netflix in December 2018.</p>\r\n<p>In 2019, Paulson starred as Dr. Ellie Staple in the superhero thriller film <i>Glass</i>. She will next be seen in the drama film <i>The Goldfinch</i>, the animated adventure film <i>Abominable</i>, and the horror thriller film <i>Run</i>. In January 2019, it was announced that Paulson will star as Nurse Ratched in the upcoming Netflix drama series <i>Ratched</i>.</p>', 'actors/sarah-paulson_Cover.jpeg'),
(68, 'Sterling', 'K.', 'Brown', 'M', '<p>Sterling Kelby Brown was born in 1976 in St. Louis, Missouri, to Sterling Brown and Aralean Banks Brown. Brown is one of five children; he has two sisters and two brothers. His father died when Brown was 10 years old. As a child, he went by the name Kelby; when he turned 16 he adopted the name Sterling, explaining in 2016:</p>\r\n<p>\"I went by Kelby. My mom tells me this story - she was reiterating it the other day - in kindergarten I came home one day and said, \'Mom, Sterling is eight letters and Kelby is five. I\'ll just do Kelby and then when I turn 16, I will go by Sterling.\' And I don\'t remember that. The impetus for me is that he had been gone for some time, and I was like, \'Kelby was a little boy\'s name.\' I felt like I was ready to become Sterling.\"</p>\r\n<p>Brown grew up in Olivette, Missouri and attended Mary Institute and St. Louis Country Day School.</p>\r\n<p>Brown graduated from Stanford University in 1998 with an acting degree. He initially wanted to major in economics so he could work in business, but he fell in love with acting as a college freshman. Brown then attended New York University\'s Tisch School of the Arts where he graduated with a Master of Fine Arts degree.</p>\r\n<p>After graduation from college, Brown performed in a series of roles in regional theater. Brown has also since appeared in numerous television shows including <i>ER</i>, <i>NYPD Blue</i>, <i>JAG</i>, <i>Boston Legal</i>, <i>Alias</i>, <i>Without A Trace</i>, <i>Supernatural</i>, and <i>Third Watch</i>. Brown was a regular in the comedy <i>Starved</i>, and he has also appeared in movies, including <i>Stay</i> with Ewan McGregor, <i>Brown Sugar</i> with Taye Diggs, and <i>Trust the Man</i> with David Duchovny and Julianne Moore.</p>\r\n<p>Brown played a recurring character on the television series [<i>Supernatural</i>], where he portrayed vampire hunter Gordon Walker. Brown played Dr. Roland Burton on <i>Army Wives</i>. He portrayed Detective Cal Beecher on <i>Person of Interest</i>, also appearing on the show <i>Medium</i>. In 2008, he played David Mosley on the \"Patience\" episode of <i>Eli Stone</i>. In 2016, Brown starred in the FX miniseries <i>The People v. O.J. Simpson: American Crime Story</i> as Christopher Darden, for which he won the Primetime Emmy Award for Outstanding Supporting Actor in a Limited Series or Movie at the 68th Primetime Emmy Awards.</p>\r\n<p>In the theater, Brown was cast in the 2002 production of Bertolt Brecht\'s <i>The Resistible Rise of Arturo Ui</i> starring Al Pacino, Paul Giamatti, Steve Buscemi, John Goodman and Jacqueline McKenzie. In 2014, he starred as Hero in Suzan-Lori Parks\' Odyssey-inspired play <i>Father Comes Home From the Wars</i> at New York\'s Public Theater. Brown also starred in the 2014 movie <i>The Suspect</i> with Mekhi Phifer.</p>\r\n<p>Since 2016, Brown has starred in the television series <i>This Is Us</i>. In 2018, he became the first African-American actor to win a Golden Globe in the best actor in a television drama category, which he won for <i>This Is Us</i>. That same year he also became the first African-American actor to win a Screen Actors Guild Award in the Outstanding Performance by a Male Actor in a Drama Series category, also for <i>This Is Us</i> and appeared in the Marvel Cinematic Universe film <i>Black Panther</i> as N\'Jobu. He also was part of that year\'s Screen Actors Guild Award win for Outstanding Performance by an Ensemble in a Drama Series, again for <i>This Is Us</i>.</p>\r\n<p>In June 2018, he gave the commencement address at Stanford University.</p>', 'actors/sterling-k-brown_Cover.jpg'),
(69, 'Tatiana', '', 'Maslany', 'F', '<p>The first Canadian actor to win an Emmy in a major dramatic category for a Canadian series.</p>\r\n<p>Maslany was born in Regina, Saskatchewan, the daughter of Dan, a woodworker, and Renate, a translator. She has two younger brothers, Daniel (an actor) and Michael. She has Austrian, German, Polish, Romanian, and Ukrainian ancestry. For elementary school, Maslany was in French immersion, and was taught in German by her mother before learning English. Additionally, her grandparents spoke German around her as a child. She also speaks some Spanish. She has danced since age four and started community theatre and musicals at the age of nine.</p>\r\n<p>Maslany attended Dr. Martin LeBoldus High School, where she participated in school productions and improvisation, and graduated in 2003. While attending high school, she found paying acting jobs that allowed her to travel all over Canada with her parents\' approval. She would work for a few months at a time and then return to school in Regina. She stated, \"It wasn\'t an easy transition. I felt a little outside of it. Outside of both experiences, really.\"</p>\r\n<p>After completing high school, she spent some time doing theatre performances and travelling before settling in Toronto, Ontario, at the age of 20.</p>\r\n<p>Maslany was one of the stars of the 2002 Canadian television series <i>2030 CE</i>. She appeared as the character Ghost in the 2004 film <i>Ginger Snaps 2: Unleashed</i>. Maslany performed comedic improvisation for ten years. She participated in improvisational theatre, including the Canadian Improv Games, and has since become a member of the General Fools Improvisational Theatre. She is a certified improvisation trainer.</p>\r\n<p>In 2007, Maslany appeared in <i>The Messengers</i> as Lindsay Rollins. She also starred in the CBC series <i>Heartland</i> where she plays a barrel racer, Kit Bailey, with her horse Daisy. During 2008, she had a recurring role in the <i>Instant Star</i> TV series. She had a lead role in the Hallmark Channel film <i>An Old Fashioned Thanksgiving</i>. In September 2008, she portrayed Penny, a kidnapping victim in the Canadian series <i>Flashpoint</i>.</p>\r\n<p>Maslany appeared as Sarah Wexlar, the heroin-addicted daughter of Dr. Tom Wexlar in the second season of the Canadian comedy drama television series <i>Being Erica</i> in 2010. Also in 2010, she appeared as the protagonist Mary, the mother of Jesus, in the British four-part television series <i>The Nativity</i>, which was critically well received.</p>\r\n<p>Maslany appeared in <i>Grown Up Movie Star</i> as Ruby, a role which earned the actor a special jury breakout role award at the 2010 Sundance Film Festival. She played Hannah Simmons in one episode of <i>The Listener</i>. In 2010, she appeared in the direct-to-video film <i>Hardwired</i> as Punk Red. In late 2011, she co-starred in the film adaptation of <i>John Sandford\'s Certain Prey</i> as Clara Rinker, a contract killer. In 2012, Maslany appeared as lead character Claire in the full-length feature <i>Picture Day</i>, for which she won a Phillip Borsos Award for Best Performance at the 2012 Whistler Film Festival.</p>\r\n<p>From 2013 to 2017, Maslany starred in the BBC America and Space original series <i>Orphan Black</i>. She plays the lead character, Sarah Manning, as well as Sarah\'s cohort of clones: Cosima Niehaus, Alison Hendrix, Helena, Rachel Duncan, Elizabeth Childs, Krystal Goderitch, Veera \"M.K.\" Suominen, Katja Obinger, Jennifer Fitzsimmons and Tony Sawicki. Maslany won two Critics\' Choice Television Awards and one TCA Award for her performance in the series. She was also nominated for a Golden Globe Award for Best Actress for these roles, but lost to Robin Wright for <i>House of Cards</i>. In 2015, Maslany received a nomination for an Emmy award for her performance, but lost to Viola Davis for <i>How to Get Away with Murder</i>. She was again nominated in 2016 and won the category. Maslany received a nomination for Best Lead Actress in a Drama Series at the 7th Critics\' Choice Television Awards, her third total nomination from the Broadcast Television Journalists Association.</p>\r\n<p>In 2013, Maslany guest starred on <i>Parks and Recreation</i> for a two-episode arc as Dr. Nadia Stasky. She portrayed the lead character Dylan in the independent film <i>Cas and Dylan</i>, for which she won a Phillip Borsos Award for Best Performance at the 2013 Whistler Film Festival.</p>\r\n<p>On June 11, 2013, Maslany signed with the US talent agency Resolution, which serves as her United States representation. In Canada, she continues to be managed by Magnolia Entertainment and represented by Characters Talent Agency. The 2013 Juno Award ceremonies were held in Regina, Maslany\'s home town, and Maslany was chosen as one of the presenters.</p>\r\n<p>On May 17, 2014, Maslany guest starred on the season 39 finale of <i>Saturday Night Live</i>. She played the character Bridget in the episode\'s second digital short entitled \"Hugs\". She guest starred alongside Pharrell Williams and The Lonely Island.</p>\r\n<p>Maslany co-starred in the 2015 film, <i>Woman in Gold</i>, in the World War II flashbacks as a younger version of Maria Altmann, Helen Mirren\'s character. She mostly spoke German in the film.</p>\r\n<p>Maslany starred in the independent film <i>The Other Half</i>. The film, written by Joey Klein, was produced by Motel Pictures with A71 and Sienna Films and co-stars partner Tom Cullen. It had its world premiere at South by Southwest on March 12, 2016. Maslany played the leading role of Lucy in the 2016 indie drama film <i>Two Lovers and a Bear</i>, starring alongside Dane DeHaan as Roman. The film follows the two characters as they come together in Apex, Iqaluit to find peace in their lives.</p>\r\n<p>Maslany starred in the 2017 film <i>Stronger</i>, as Erin Hurley, the love interest of Jeff Bauman, a victim of the Boston Marathon bombing; Bauman was played by Jake Gyllenhaal.</p>\r\n<p>Maslany was cast as a series regular in Ryan Murphy\'s 2018 drama series <i>Pose</i>, but was later replaced by Charlayne Woodard. She starred alongside Nicole Kidman in the crime thriller film <i>Destroyer</i>, which had its world premiere at the Telluride Film Festival in August 2018. She starred alongside Brian Cranston in the Broadway production of <i>Network</i> in 2019.</p>', 'actors/tatiana-maslany_Cover.jpg'),
(70, 'Thandie', '', 'Newton', 'F', '<p>Appointed Officer of the Order of the British Empire (OBE) in the 2019 New Year Honours for services to film and to charity.</p>\r\n<p>Melanie Thandiwe Newton was born in Westminster, London, England, the daughter of Zimbabwean, Nyasha and Nick Newton, an English laboratory technician and artist. Her birthplace has been incorrectly reported to be Zambia in some biographies, but she has confirmed in interviews that she was born in London. The name \"Thandiwe\" means \"beloved\" in Ndebele, Zulu, Xhosa or Swati, and \"Thandie\" is pronounced /\'tændi/ in English.</p>\r\n<p>Regarding her childhood, Newton remarked at a TED conference, \"From about the age of 5, I was aware that I didn\'t fit. I was the black, atheist kid in the all-white, Catholic school run by nuns. I was an anomaly.\" Newton was brought up in London and Penzance, Cornwall and studied dance at the Tring Park School for the Performing Arts. Between 1992 and 1995, Newton attended Downing College, Cambridge, where she studied social anthropology.</p>\r\n<p>After the film <i>Flirting</i> (1991), Newton played a faithful house slave \"Yvette\" in the Brad Pitt/Tom Cruise film <i>Interview with the Vampire</i> (1994). Newton appeared in the Merchant Ivory production of <i>Jefferson in Paris</i> as Sally Hemings, followed by Jonathan Demme\'s drama <i>Beloved</i>, based on Toni Morrison\'s novel (1998), in which she played the title character, the ghost of a young slave girl whose mother murders her to save her from slavery. The film also starred Oprah Winfrey and Danny Glover. Newton then starred as Nyah Hall, again opposite Cruise, in <i>Mission: Impossible 2</i>. Her next role was in the low-budget film <i>It Was an Accident</i>, written by her husband, screenwriter Ol Parker.</p>\r\n<p>Between 2003 and 2005, Newton played Makemba \"Kem\" Likasu, love interest of Dr. John Carter on the American television series <i>ER</i>. She reprised the role for the series finale in 2009. In 2004, she also appeared in <i>The Chronicles of Riddick</i> and <i>Crash</i>. Newton won a BAFTA award for Best Supporting Actress in 2006 for her role in <i>Crash</i>. She played Chris Gardner\'s wife, Linda Gardner, in <i>The Pursuit of Happyness</i>. Also in 2006, Newton performed on radio in a pantomime version of <i>Cinderella</i>.</p>\r\n<p>In 2007, Newton co-starred with Eddie Murphy in the comedy <i>Norbit</i> as his love interest, and then opposite Simon Pegg as his ex-girlfriend in the 2008 comedy <i>Run Fatboy Run</i>. Newton next portrayed US National Security Advisor-turned Secretary of State Condoleezza Rice in <i>W.</i>, Oliver Stone\'s film biography of President George W. Bush. The film was released 17 October 2008.</p>\r\n<p>Newton was an introducer at Wembley Stadium on 7 July 2007, for the UK leg of Live Earth. She was due to introduce Al Gore to the concert, but he was delayed, leaving Newton to tell jokes in an attempt to entertain the audience. Newton next portrayed fictional US First Daughter Laura Wilson in <i>2012</i>, a disaster film directed by Roland Emmerich and released 13 November 2009.</p>\r\n<p>In July 2011, Newton delivered a TED Talk on \"Embracing otherness, embracing myself.\" She discussed finding her \"otherness\" as a child growing up in two distinct cultures, and as an actress playing many different selves. In 2012, she starred alongside Tyler Perry in the romantic drama film <i>Good Deeds</i>. In 2013, Newton starred in <i>Rogue</i>, the first original drama series for DirecTV\'s Audience Network. She left <i>Rogue</i> during the third season. In 2015, she starred in the US miniseries <i>The Slap</i>.</p>\r\n<p>In 2016, Newton began portraying Maeve Millay in HBO science fiction drama series <i>Westworld</i>, for which she won the Primetime Emmy Award for Outstanding Supporting Actress in a Drama Series, among other accolades. In 2017, she served as a narrator for the documentary entitled <i>Bill Cosby: Fall of an American Icon</i>, an expose on the sexual assault charges laid on Cosby, which aired on BBC One. Newton appeared as Val in the <i>Star Wars</i> film <i>Solo: A Star Wars Story</i>, which was released in May 2018.</p>', 'actors/thandie-newton_Cover.jpg'),
(71, 'Toni', '', 'Collette', 'F', '<p>Received six AACTA Awards, a Primetime Emmy Award, a Golden Globe Award, and a Screen Actors Guild Award, and has been nominated twice for a British Academy Film Award and both once for an Academy Award and a Tony Award.</p>\r\n<p>Toni Collett was born in Blacktown, a suburb in Sydney, the daughter of Judith (née Cook), a customer-service representative, and Bob Collett, a truck driver.</p>\r\n<p>She was born with the surname \"Collett\", but added an \"e\" at the end to be her stage name. In a 2015 episode of <i>Who Do You Think You Are?</i> she discovered that her biological paternal grandfather was an American Chief Petty Officer in the U.S. Navy stationed in Australia during World War II, whose name Toni does not know. From an early age, Collette showed a talent for acting. She faked appendicitis when she was eleven, and was so convincing that doctors removed her appendix, although tests showed nothing wrong with it.</p>\r\n<p>She attended Blacktown Girls\' High School until the age of 16, and later attended both the Australian Theatre for Young People and National Institute of Dramatic Art. Her first acting role was onstage in the musical <i>Godspell</i> in Sydney in her early teens.</p>\r\n<p>Collette made her television debut in 1990, in a guest appearance on the Seven Network drama series <i>A Country Practice</i>. In 1992, she made her feature film debut as part of the ensemble comedy-drama <i>Spotswood</i> (known in the U.S. as <i>The Efficiency Expert</i>), which starred Anthony Hopkins and which also featured Russell Crowe. Collette soon rocketed to international notice with her performance in the title role for <i>Muriel\'s Wedding</i> in 1994, a role for which she gained 18 kg (40 lb) in seven weeks. She won the Australian award for Best Actress as Muriel, her first of five Australian Film Institute awards. In 1996, she was part of the ensemble cast of the comedy, <i>Così</i>, and had a leading role in <i>Emma</i> as the naïve Harriet Smith. In 1998, she appeared in <i>The Boys</i>, based on a Sydney stage play of the same name. She received acclaim on Broadway, starring as Queenie in Michael John LaChiusa\'s musical work, <i>The Wild Party</i>. For this role, Collette was nominated for the Tony Award for Best Leading Actress in a Musical.</p>\r\n<p>Collette turned down the title role in <i>Bridget Jones\'s Diary</i> because she was committed to perform on Broadway at the time. In 2000, she was nominated for an Academy Award for her role as the mother of a troubled boy in the 1999 U.S. film <i>The Sixth Sense</i>, which also starred Bruce Willis and Haley Joel Osment.</p>\r\n<p>In 2000, she was the voice of Meg Bluegum Bunyip\'s mother in <i>The Magic Pudding</i> based on the iconic children\'s book by Norman Lindsay.</p>\r\n<p>In 2003, Collette played the lead role in <i>Japanese Story</i> as an Australian geologist traversing an arc of emotions in the course of an intense relationship with a visiting Japanese businessman. Her powerful performance led to numerous reviewers welcoming her back to playing lead roles, the first time since <i>Muriel\'s Wedding</i> and generally scored her performance as riveting. Collette won the Australian Film Institute Award for Best Actress for her performance.</p>\r\n<p>In 2004, Collette starred with Nia Vardalos and David Duchovny in the musical comedy <i>Connie and Carla</i>, released by Universal Studios. Collette\'s only film in 2005 was <i>In Her Shoes</i>, a comedy-drama about the relationship between two different sisters and their estranged grandmother, co-starring Cameron Diaz and Shirley MacLaine. Based on the 2002 novel of the same name by Jennifer Weiner, the production received generally positive reviews from critics, and became a moderate independent success, earning a total of US$82.2 million worldwide. Collette was subsequently nominated for a Satellite Award for Best Actress for her performance of a successful-but-lonely lawyer with low self-esteem, which Mick LaSalle of the <i>San Francisco Chronicle</i> noted the focus of the film: \"As usual, Collette\'s face is a fine-tuned transmitter of her emotions, moment by moment, and she becomes the locus of audience feeling.\"</p>\r\n<p>In 2006, Collette starred in <i>Little Miss Sunshine</i>, a comedy-drama-road movie about a family\'s trip to a children\'s beauty pageant. The film premiered at the Sundance Film Festival in January 2006, and its distribution rights were bought by Fox Searchlight Pictures for one of the biggest deals made in the history of the festival. Released in July 2006, the film received major critical acclaim, resulting in several accolades such as four Academy Award nominations, including Best Picture, whilst Collette herself earned her second BAFTA and Golden Globe nominations for her portrayal of the family\'s worn-out matriarch. A box office success, <i>Little Miss Sunshine</i> went on to gross US$100.5 million worldwide and became one of the most successful independent films of the mid-2000s.</p>\r\n<p>In 2006, Collette also played supporting roles in the thriller films <i>Like Minds</i>, <i>The Night Listener</i> and <i>The Dead Girl</i>. Although the latter was released to positive reviews during its limited North American run, none of these films fared well at the box office, with Robin Williams-featuring <i>The Night Listener</i> emerging as the biggest-selling production with a global gross revenue of US$10.5 million. In her first television engagement in five years, the HBO-BBC joint miniseries <i>Tsunami: The Aftermath</i> (2006), Collette played an Australian government employee who tries to cope with the events following the 2004 Indian Ocean earthquake and the resulting tsunami in Thailand. Broadcast to controversial critics, her performance of an aid worker garnered Collette her first Primetime Emmy nomination and third Golden Globe nomination.</p>\r\n<p>In 2008, Collette accepted the leading role in the Showtime comedy-drama series, <i>United States of Tara</i>. Created by Steven Spielberg and <i>Juno</i> screenwriter Diablo Cody, the show revolves around a wife and mother of two with dissociative identity disorder, coping with her seven alternate personalities. Originally planned for a twelve episode season, the series was picked up for a second and third season, broadcast in 2010 and 2011, respectively. Collette won both the Primetime Emmy Award for Outstanding Lead Actress in a Comedy Series and the Best Actress in a TV Comedy for her performance on the show.</p>\r\n<p>In 2011 and 2012, Collette took on a slew of supporting roles in independent films, as well as the 2011 remake of <i>Fright Night</i>. She also appeared in, among others, <i>Jesus Henry Christ</i> and <i>Mental</i>, which reunited her with <i>Muriel\'s Wedding</i> director P. J. Hogan.</p>\r\n<p>In 2013, Collette earned critical acclaim for her work in the independent films <i>The Way, Way Back</i> as Pam, opposite Steve Carell and Sam Rockwell, and <i>Enough Said</i> as Sarah, with Julia Louis-Dreyfus and James Gandolfini. For her work in <i>The Way, Way Back</i>, Collette received several glowing reviews. Andrew O\'Heir of <i>Salon Magazine</i> praised her \"brilliant, understated performance\"; Peter Travers of <i>Rolling Stone</i> dubbed her work \"stellar\"; James Berardinelli described Collette as a \"chameleon\" and said that she gives a performance far and above what the role requires; and Kenneth Turan of the <i>Los Angeles Times</i> wrote that through Collette\'s performance, \"Pam ... comes alive.\"</p>\r\n<p>In the fall of 2013, Collette starred in the CBS drama <i>Hostages</i>, which received solid reviews albeit weak ratings. <i>RedEye</i> described her performance as \"fascinating\", <i>Newsday</i> as \"superb\", and <i>USA Today</i> as \"nuanced\" and \"grounded.\" The series aired for fifteen episodes and, due to a combination of low ratings and a closed narrative, did not return for a second season.</p>\r\n<p>Collette was the lead role in the Joanne Woodward-produced <i>Lucky Them</i>, which debuted at the 2013 Toronto International Film Festival and was released theatrically on 30 May 2014. The film earned positive reviews, with Collette receiving the bulk of the praise. <i>The Hollywood Reporter</i> wrote that the movie was \"centered by smart, soulful work by the wonderful Toni Collette\" and that she played the character of Ellie, \"with warmth, realness and emotional transparency that make you stay with her even when she\'s pushing people away.\" <i>Variety</i> said that \"it\'s Collette\'s show, and the actress fully conveys the brittle, hard-edged cynicism of someone who\'s been around the block a few times, jaded by years of exposure to the empty promises and broken dreams that proliferate on her chosen beat ... it generates a surprising degree of suspense as it barrels toward its final revelations, culminating in an unexpectedly emotional payoff played with piercing delicacy by Collette.\" The film played the 2014 Tribeca Film Festival, where Joe Bendel of <i>Libertas Film Magazine</i> ranked Collette\'s leading performance as the fourth-best of the festival. Upon release, Mike D\'Angelo of <i>The Dissolve</i> wrote that \"Toni Collette is capable of anything\" and other raves came from <i>The Village Voice</i>, the <i>New York Post</i> and the <i>Los Angeles Times</i>. <i>Lucky Them</i> received mixed reviews including <i>The New York Times</i>, <i>Slant</i> and <i>PopMatters</i>, though Collette\'s performance was consistently praised. Overall, the film was ranked \"fresh\" by Rotten Tomatoes with 76% of critics reviewing the film positively, and it received a weighted score of 65 by Metacritic, equating to \"generally positive reviews.\"</p>\r\n<p>After a 14-year absence, Collette returned to Broadway in the spring of 2014, starring in Will Eno\'s play <i>The Realistic Joneses</i>. She co-starred alongside Michael C. Hall, Tracy Letts and Marisa Tomei. The play examines a couple who project its insecurities and fears onto their next-door neighbors with the same last name. The play opened on 6 April to positive reviews, with Collette and the entire cast earning high praise. A rave review from <i>The New York Times</i> thought that \"Ms. Collette exudes a touching, exasperated dignity as Jennifer.\" <i>Variety</i> called her work \"terribly funny,\" while <i>The Hollywood Reporter</i> claimed that \"Collette, whose naturalness can cut through even the very deliberate theatrical artifice of Eno\'s dialogue and scene construction, anchors the play with her somber restraint and deadpan delivery.\" The <i>New York Post</i>, more critical of the play, highlighted Collette\'s performance: \"Collette does some heavy lifting to fill in Eno\'s blanks. You can read deep sadness in the wide planes of her expressive face, in her lost, unfocused eyes.\" Other good reviews for the play and her performance came from <i>USA Today</i>, <i>Newsday</i>, the <i>Chicago Tribune</i> and <i>The Economist</i>. Collette and her co-stars won a Drama Desk Special Award for Best Ensemble Performance.</p>\r\n<p>In 2014, Collette starred in the badly received tragi-comedy <i>A Long Way Down</i>, with Pierce Brosnan and Aaron Paul. The same year Collette had a cameo in the poorly received Melissa McCarthy vehicle <i>Tammy</i>, and appeared in <i>Hector and the Search for Happiness</i> opposite Simon Pegg. Her other roles included the drama <i>Miss You Already</i> opposite Drew Barrymore and the drug-themed drama Glassland with Will Poulter.</p>\r\n<p>In September 2015, Collette joined the cast for the film adaption of Craig Silvey\'s Australian novel <i>Jasper Jones</i>, and voiced the two emus Beryl and Cheryl in <i>Blinky Bill the Movie</i>.</p>\r\n<p>In June 2018, Collette gave an acclaimed performance in the A24 horror film <i>Hereditary</i>. The film scored an 89% fresh rating on Rotten Tomatoes, and an 87/100 score on Metacritic. <i>Entertainment Weekly</i> praised Collette for her \"real dramatic power and force,\" while the <i>Chicago Tribune</i> complimented her \"fierce performance with a human pulse\".</p>', 'actors/toni-collette_Cover.jpg'),
(72, 'Tony', '', 'Hale', 'M', '<p>Anthony Hale was born in West Point, New York. His mother, Rita (née Garnett), worked as a staff assistant to State Representative Kathy Ashe, and his father, Mike Hale, taught nuclear and atomic physics and served in the military. Hale grew up in Tallahassee, Florida, where he attended the Young Actors Theatre and participated in numerous theatrical and musical productions. He graduated from Leon High School in 1988. He graduated from Samford University in Birmingham, Alabama, where he became a member of Sigma Chi Fraternity, with a journalism degree in 1992. He completed graduate studies in 1995 from the School of Communication and the Arts of Regent University in Virginia. After graduating, he lived in New York City for nearly ten years. While in New York, Hale helped found The Haven, an artistically minded community of Christians that meets weekly. He also studied acting at The Barrow Group, a New York City theatre company.</p>\r\n<p>Hale first obtained his Screen Actors Guild card when he appeared in a commercial for MCI Inc., though it never aired. He made minor guest appearances in TV shows such as <i>Dawson\'s Creek</i>, <i>The Sopranos</i>, and <i>Sex and the City</i>. He is often recognized for his role in the famous Volkswagen television commercial aired in 1999, in which he danced to the song \"Mr. Roboto\", which was later spoofed on the Fox sitcom <i>Arrested Development</i>. From 2003 to 2006, and returning to the role in 2013, Hale found success in television when he was cast as Buster Bluth, the hapless, neurotic son with \"mother issues\" on <i>Arrested Development</i>. Hale also appeared in a season ten episode of <i>MADtv</i> in a parody of <i>COPS</i>, where two British robbers try to stop a domestic dispute among the royal family.</p>\r\n<p>In March 2006, Hale was cast in a co-starring role as the video store owner Simon in the NBC sitcom <i>Andy Barker P.I.</i>, starring Andy Richter and co-created by Conan O\'Brien. He appeared in minor roles in <i>Stranger Than Fiction</i> and <i>Because I Said So</i>. He was the voice of Furlough in <i>The Tale of Despereaux</i>, an animated children\'s film released in 2008. Hale had a recurring role as Emmett on <i>Chuck</i>, beginning in October 2008 and ending in January 2010. His departure made room for his starring role on the NBC web series <i>Ctrl</i>, which premiered on July 13, 2009. He appeared in a cameo in the second episode of the first season of Showtime\'s dramedy <i>United States of Tara</i>, as English teacher Oral Gershenoff. He joined the cast of <i>Numbers</i> in 2009, in the recurring role of Professor Russell Lazlo.</p>\r\n<p>In 2012, Hale starred in the drama comedy <i>Not That Funny</i>. He also guest-starred on NBC\'s long-running show <i>Law & Order: SVU</i> as Rick Simms, a teacher who gets fired from his job after being accused of inappropriate behavior with a student.</p>\r\n<p>In 2012, Hale was cast in the HBO comedy <i>Veep</i> as Gary Walsh, the personal assistant to Vice President-turned-President Selina Meyer (portrayed by Julia Louis-Dreyfus). On September 22, 2013, Hale won a Primetime Emmy Award for Outstanding Supporting Actor in a Comedy Series for his work in the show\'s second season. This was his first major award. He earned his second nomination in 2014, but lost the award to Ty Burrell. However, Hale won his second Primetime Emmy Award with his third nomination in 2015, in the same ceremony where <i>Veep</i> won its first Primetime Emmy Award for Outstanding Comedy Series.</p>\r\n<p>In 2017, Hale hosted the 9th Annual Shorty Awards at the PlayStation Theater in New York City. The next year, Hale began portraying Jerome Squalor on the second season of the Netflix comedy drama series <i>A Series of Unfortunate Events</i>.</p>', 'actors/tony-hale_Cover.png'),
(73, 'Ty', '', 'Burrell', 'M', '<p>Tyler Gerald Burrell was born in Grants Pass, Oregon, the son of Sheri Rose (née Hauck), a teacher, and Gary Gerald Burrell (1940-1989), a family therapist. He is of mostly English and German descent. According to the television series <i>Finding Your Roots</i>, Burrell\'s great great grandmother Susanna Weeks (the daughter of white slave-owner, Colonel Dudley Byron Mask and 13 year-old slave girl, \"Nellie\" Penelope Ellender Mask) was a former slave from Tennessee who became a homesteader in Oregon, and her son George Washington Weeks would eventually pass for white. Burrell grew up in the small southern Oregon town of Applegate, near the California border.</p>\r\n<p>He attended Hidden Valley High School in Grants Pass, where he played football and was a lineman for the Hidden Valley Mustangs. After graduating, he enrolled at Southern Oregon University in Ashland, and graduated with a bachelor\'s degree in theatre arts in 1993; he was the school\'s commencement speaker in 2008. While in college, he worked as a bartender at the Oregon Shakespeare Festival.</p>\r\n<p>During this time, Burrell attended the University of Oregon and became a member of the Sigma Chi Fraternity. He continued his education at Penn State University, where he earned an MFA and was a member of the Theatre 100 Company along with Keegan-Michael Key. In 1999, Burrell worked as a festival actor at the Utah Shakespeare Festival.</p>\r\n<p>Burrell has also stated that for a period of time in graduate school, he lived out of his van to save money.</p>\r\n<p>Burrell\'s first credited film roles were 2001\'s <i>Evolution</i> and <i>Black Hawk Down</i>. He subsequently appeared in the 2004 remake of <i>Dawn of the Dead</i>, and in several stage roles (like 2000\'s Broadway production of <i>Macbeth</i>, and the off-Broadway plays <i>Corners</i>, <i>The Blue Demon</i>, <i>Burn This</i>, and <i>Show People</i>).</p>\r\n<p>He was a co writer and actor in the original production of the offbeat comedy <i>The Red Herring O\' Happiness</i> directed by Russell Dyball. Burrell\'s stage work also includes writing and working in the off Broadway play <i>Babble</i> with his brother, Duncan. He has also made an appearance as a New Jersey prosecutor in <i>Law & Order: Special Victims Unit</i>.</p>\r\n<p>After that, Burrell was cast as Oliver Barnes, a shallow but well meaning plastic surgeon, on the CBS sitcom <i>Out of Practice</i> (2005-06), also created by screenwriter Christopher Lloyd. The show was canceled in May 2006, with eight episodes remaining unaired in the United States. After the show\'s cancellation, he played Allan Arbus in the film <i>Fur: An Imaginary Portrait of Diane Arbus</i>.</p>\r\n<p>In the Marvel film adaptation of the comic <i>The Incredible Hulk</i>, Burrell played Leonard Samson (without superpowers), who had a short relationship with Betty Ross.</p>\r\n<p>In 2007, he had a small role in the film <i>National Treasure: Book of Secrets</i> as the curator of the White House followed by a starring role in the sitcom <i>Back to You</i> on Fox later that same year. On the show, created by Steven Levitan and Christopher Lloyd, Burrell played a field reporter (alongside Kelsey Grammer and Patricia Heaton). The show was canceled in 2008.</p>\r\n<p>His current role is as a realtor Phil Dunphy in the acclaimed ABC situation comedy <i>Modern Family</i> which is also created by Christopher Lloyd and Steve Levitan. For his performance, he has received eight consecutive Primetime Emmy Award nominations for Outstanding Supporting Actor in a Comedy Series (2010-2017), winning the award twice in 2011 and 2014.</p>\r\n<p>He also received nominations for the Screen Actors Guild Award for Outstanding Performance by a Male Actor in a Comedy Series for his role, sharing the Screen Actors Guild Award for Outstanding Performance by an Ensemble in a Comedy Series with his co stars. He was the recipient of the individual SAG award in 2014, defeating Alec Baldwin, who had previously won the award seven years in a row.</p>\r\n<p>Burrell also appears as Phil in commercials for National Association of Realtors.</p>\r\n<p>In November 2014, Burrell inked an overall deal with 20th Century Fox Television to develop his own comedy projects. His web series <i>Boondoggle</i>, loosely based on Burrell\'s own life, debuted in June 2016 on ABC.com and ABCd. He was nominated for the Primetime Emmy Award for Outstanding Actor in a Short Form Comedy or Drama Series in July 2017.</p>', 'actors/ty-burrell_Cover.jpg');
INSERT INTO `actors` (`id`, `first_name`, `middle_name`, `last_name`, `gender`, `about`, `img`) VALUES
(74, 'Uzo', '', 'Aduba', 'F', '<p>One of only two actors to win an Emmy Award in both the comedy and drama categories for the same role, the other being Ed Asner for the character Lou Grant.</p>\r\n<p>Uzoamaka Nwanneka \"Uzo\" Aduba was born in New Brunswick NJ, the daughter of Nigerian parents, of Igbo origin.</p>\r\n<p>She grew up in Medfield, Massachusetts, and graduated from Medfield High School in 1999. She attended Boston University, where she studied classical voice and competed in track and field. She describes her family as a \"sports family\". Her younger brother, Obi, played hockey at the University of Massachusetts Amherst and went on to play six seasons professionally.</p>\r\n<p>Aduba first garnered recognition for her acting in 2003, when her performance in <i>Translations of Xhosa</i> at the Olney Theatre Center for the Arts earned her a Helen Hayes Award nomination for Outstanding Supporting Actress in a Play. Aduba played the character Amphiarus in 2006 at New York Theatre Workshop and again in 2008 at La Jolla Playhouse. In 2007, she made her Broadway debut, portraying Toby in Helen Edmundson\'s adaptation of <i>Coram Boy</i> at the Imperial Theatre. From 2011 through 2012, she sang \"By My Side\" as part of the original revival cast of <i>Godspell</i> at the Circle in the Square Theatre. Her first television appearance was as a nurse on <i>Blue Bloods</i> in 2012. She also played the mother of the title character of <i>Venice</i> at The Public Theater in New York.</p>\r\n<p>In 2013, Aduba began portraying Suzanne \"Crazy Eyes\" Warren in the Netflix comedy-drama series <i>Orange Is the New Black</i>. On being cast, Aduba said:</p>\r\n<p>\"I auditioned for the show back in late July or early August of [2012]. I had been auditioning that summer for more television and film [after doing much theater]. I\'d read a lot of scripts and I remember reading <i>Orange Is the New Black</i>, and it was at the head of the pack. I remember thinking, \'Wow, that is really good, I would love to be a part of that.\' I went in and auditioned for another part, and my representatives called me about a month later and they were like, \"Hi, we have some really good news. You remember that audition you went on for <i>Orange Is the New Black</i>? You didn\'t get it.\" I go, \"So. okay, what\'s the good news?\" They said they wanted to offer me another part, Crazy Eyes. I was like, \"What in my audition would make someone think I\'d be right for a part called Crazy Eyes?\" But to be honest, when I got the script for it, it felt like the right fit.\"</p>\r\n<p>Casting director Jennifer Euston explains the selection of Aduba for the role thus: \"Uzo Aduba...had her hair in those knots for the audition...They saw something amazing in her and were able to connect it to what they were looking for in Crazy Eyes.\" In joining the series, Aduba obtained her Screen Actors Guild card, about which she says, \"I was just like, \'Wow, this means I\'m a full actor now.\' It was such a big deal, and I remember being so thankful and feeling so proud.\"</p>\r\n<p>She has been recognized for her performance as \"Crazy Eyes\": Aduba won Outstanding Guest Actress in a Comedy Series at the 66th Primetime Creative Arts Emmy Awards as well as Best Guest Performer in a Comedy Series at the 4th Critics\' Choice Television Awards and was nominated for Best Supporting Actress - Series, Miniseries or Television Film at the 18th Satellite Awards for her season one performance. Aduba\'s season two performance earned her the Outstanding Performance by a Female Actor in a Comedy Series at the 21st Screen Actors Guild Awards and a nomination for Best Supporting Actress - Series, Miniseries or Television Film at the 72nd Golden Globe Awards.</p>\r\n<p>Ms. Aduba won a second Primetime Emmy at the 67th Primetime Emmy Awards in 2015, winning the award for Outstanding Supporting Actress in a Drama Series. This makes her the first actress to win both a drama and comedy Emmy for the same role. Aduba\'s performance in the third season also earned another Outstanding Performance by a Female Actor in a Comedy Series win for the 22nd Screen Actors Guild Awards. She also earned a Best Supporting Actress - Series, Miniseries or Television Film at the 73rd Golden Globe Awards.</p>\r\n<p>In March 2014, Aduba performed at Broadway Cares/Equity Fights AIDS benefit concert Broadway Backwards. Aduba teamed with Rachel Bay Jones for a rendition of the song \"Lily\'s Eyes\" from the musical <i>The Secret Garden</i>.</p>\r\n<p>Aduba plays a major role in <i>My Little Pony: The Movie</i>, where she voices Queen Novo, leader of the Hippogriffs/Seaponies. She is also part of the upcoming independent film, <i>Miss Virginia</i>.</p>', 'actors/uzo-aduba_Cover.jpg'),
(75, 'Viola', '', 'Davis', 'F', '<p>The first black actor to have won an Academy Award, an Emmy Award, and a Tony Award in acting, named the Triple Crown of Acting. In 2012 and 2017, she was listed by <i>Time</i> magazine as one of the 100 most influential people in the world.</p>\r\n<p>Viola Davis was born on August 11, 1965, in St. Matthews, South Carolina, the daughter of Mary Alice (<i>née</i> Logan) and Dan Davis. She was born on her grandmother\'s farm in the Singleton Plantation. Her father was a horse trainer, and her mother was a maid, factory worker and homemaker. She is the second youngest of six children, having four sisters and a brother. Two months after she was born, her family moved to Central Falls, Rhode Island, with Davis and two of her sisters, leaving her older sister and brother with her grandparents.</p>\r\n<p>Her mother was also an activist during the civil rights movement. At the age of two, Davis was taken to jail with her mother after she was arrested during a civil rights protest. She has described herself as having \"lived in abject poverty and dysfunction\" during her childhood, recalling living in \"rat-infested and condemned\" apartments. Davis is a cousin of actor Mike Colter, known for portraying the Marvel Comics character Luke Cage.</p>\r\n<p>Davis attended Central Falls High School, the alma mater to which she partially credits her love of stage acting with her involvement in the arts. As a teen, she was involved in the federal TRIO Upward Bound and TRIO Student Support Services programs. While enrolled at the Young People\'s School for the Performing Arts in West Warwick, Rhode Island, Davis\'s talent was recognized by a director at the program, Bernard Masterson.</p>\r\n<p>Following graduation from high school, Davis studied at Rhode Island College, majoring in theater and graduating in 1988. Next, she attended the Juilliard School for four years, and was a member of the school\'s Drama Division \"Group 22\" (1989-93).</p>\r\n<p>Davis received her Screen Actors Guild card in 1996 for doing one day of work, playing a nurse who passes a vial of blood to Timothy Hutton in the film <i>The Substance of Fire</i>. She was paid $528. In 2001, she won the Tony Award and a Drama Desk Award for her portrayal of Tonya in <i>King Hedley II</i>, a \"35-year-old mother fighting eloquently for the right to abort a pregnancy.\" She won another Drama Desk Award for her work in a 2004 off-Broadway production of <i>Intimate Apparel</i> by Lynn Nottage.</p>\r\n<p>Davis appeared in numerous films, including three films directed by Steven Soderbergh, <i>Out of Sight</i>, <i>Solaris</i> and <i>Traffic</i>, as well as <i>Syriana</i>, which Soderbergh produced. Hers was the uncredited voice of the parole board interrogator who questions Danny Ocean (George Clooney) in the first scene in <i>Ocean\'s Eleven</i>. She also gave brief performances in the films <i>Kate & Leopold</i> and <i>Antwone Fisher</i>. She also played a secondary role in <i>Far From Heaven</i>, a 2002 film directed by Todd Haynes.</p>\r\n<p>In 2008, Davis played Mrs. Mueller in the film adaptation to the Broadway play <i>Doubt</i>, with Meryl Streep, Philip Seymour Hoffman. Though Davis had only one scene in the film, she was nominated for several awards for her performance, including a Golden Globe and an Academy Award for Best Supporting Actress. On June 30, 2009, Davis was inducted into the Academy of Motion Picture Arts and Sciences.</p>\r\n<p>On June 13, 2010, Davis won her second Tony Award for her role as Rose Maxson in a revival of August Wilson\'s <i>Fences</i>. Davis played the role of Dr. Minerva in <i>It\'s Kind of a Funny Story</i> (2010), a coming-of-age film written and directed by Anna Boden with Ryan Fleck, adapted from the 2006 novel by Ned Vizzini.</p>\r\n<p>In August 2011, Davis played the role of Aibileen Clark, a housemaid in 1960s Mississippi, in the screen adaptation of Kathryn Stockett\'s novel <i>The Help</i>, directed by Tate Taylor. Davis described her performance in the film as channeling her mother and grandmother saying, \"I feel like I brought my mom to life; I\'ve channeled her spirit. I channeled the spirit of my grandmother, and I\'ve kind of paid homage to how they\'ve contributed to my life and the lives of so many people\".</p>\r\n<p>Davis was praised for her performance and eventually received two Screen Actors Guild Awards, as well as her second Academy Award nomination, which she ultimately lost to Meryl Streep. Davis received Golden Globe Award and BAFTA Award nominations for the same performance. In 2012, <i>Time</i> magazine listed Davis as one of the most influential people in the world. Also in 2012, <i>Glamour</i> magazine named Davis Glamour\'s Film Actress of the year.</p>\r\n<p>On June 12, 2012, Davis was presented with the Women in Film\'s Crystal Award by her friend and Oscar rival that year, Meryl Streep.</p>\r\n<p>On June 25, 2012, the Walk of Fame Committee of the Hollywood Chamber of Commerce announced that Davis was part of the new group of entertainment professionals who have been selected to receive stars on the Hollywood Walk of Fame in 2013. On January 5, 2017, Davis received the 2,597th star on the Walk of Fame.</p>\r\n<p>Davis reunited with <i>The Help</i> director Tate Taylor in <i>Get on Up</i>, a biopic of James Brown, playing Brown\'s mother. Her 3-year-old daughter, Genesis also appeared in the movie. In February 2014, Davis was cast in Peter Nowalk\'s pilot <i>How to Get Away with Murder</i> (executive produced by Shonda Rhimes for her ShondaLand production company) as the lead character. Her character, Annalise Keating, is a tough criminal defense attorney and professor who becomes entangled in murder plot with her students. It began as a series in September 2014.</p>\r\n<p>On September 20, 2015, Davis became the first black woman of any nationality to win the Primetime Emmy Award for Outstanding Lead Actress in a Drama Series for her lead role on <i>How to Get Away with Murder</i>. She received a second Primetime Emmy Award nomination for the role in 2016. Davis also won two Screen Actors Guild Awards for Outstanding Performance by a Female Actor in a Drama Series in 2014 and 2015. She received nominations from the Golden Globe Awards for Best Actress - Television Series Drama and Critics\' Choice Award for Best Actress in a Drama Series for her performance on the show.</p>\r\n<p>In 2015, Davis appeared in <i>Blackhat</i>, a Michael Mann-directed thriller film starring Chris Hemsworth. Davis also served as executive-producer of the crime drama film <i>Lila & Eve</i>, starring herself and Jennifer Lopez in the titular roles.</p>\r\n<p>In 2016, Davis starred in the courtroom drama <i>Custody</i>, on which she also served as an executive producer, and played Amanda Waller in the film <i>Suicide Squad</i>, an adaptation of a DC Comics series of the same name. Davis reprised her role as Rose Maxson for the film adaptation of <i>Fences</i>, for which she received her third Academy Award nomination, making her the first black actress in history to achieve this feat. She subsequently went on to win the Academy Award for Best Supporting Actress, the Golden Globe Award for Best Supporting Actress, the Screen Actors Guild Award for Outstanding Performance by a Female Actor in a Supporting Role, and the BAFTA Award for Best Actress in a Supporting Role.</p>\r\n<p>On January 6, 2017, Davis was presented with the 2,597th star on the Hollywood Walk of Fame by her <i>Doubt</i> co-star and friend Meryl Streep. While accepting the honor, Davis said that she could not believe her life: \"It\'s like my life flashing before my eyes, and all I can say is, God has blessed my life in abundance.\" Davis was also listed among and a featured cover star of <i>Time</i> magazine\'s \"100 Most Influential People\" List for the second time, her first being in 2012. Streep penned the article in the magazine, referring to Davis as having \"carved a place for herself on the Mount Rushmore of the 21st century\", commenting that \"her gifts as an artist are unassailable, undeniable, deep and rich and true. But her importance in the culture - her ability to identify it, her willingness to speak about it and take on responsibility for it - is what marks her for greatness.\" On January 30, it was announced that Davis would star alongside Julia Roberts in the film adaptation of Jodi Picoult\'s novel, <i>Small Great Things</i>. On March 4, Davis was awarded the Artist of the Year Award at Harvard University.</p>\r\n<p>In 2018, Davis starred in the Steve McQueen-directed heist thriller <i>Widows</i>, an adaptation of the popular 1983 British miniseries. On January 22, Davis debuted <i>Two-Sides</i>, a documentary series exploring police brutality towards the African-American community. The series debuted on TV One, running through till mid-February. Davis also starred alongside fellow Shondaland costar Kerry Washington for a special two-hour crossover episode of <i>How to Get Away with Murder</i> and <i>Scandal</i>, aptly titled <i>How to Get Away with Scandal</i>. Davis\'s guest appearance garnered her a fourth Emmy Award nomination, and her first for Outstanding Guest Actress in a Drama Series.</p>\r\n<p>On March 1, Davis announced that she would star alongside Lupita Nyong\'o in <i>The Woman King</i>, inspired by true events that took place within The Kingdom of Dahomey. The film will tell the story of Nanisca, the general of an all-female military unit, played by Davis, and her daughter Nawi, played by Nyong\'o.</p>', 'actors/viola-davis_Cover.jpg'),
(76, 'Christian', '', 'Bale', 'M', '', 'actors/christian-bale_Cover.jpg'),
(77, 'Michael', '', 'Caine', 'M', '', 'actors/michael-caine_Cover.jpg'),
(78, 'Liam', '', 'Neeson', 'M', '', 'actors/liam-neeson_Cover.jpg'),
(79, 'Katie', '', 'Holmes', 'F', '', 'actors/katie-holmes_Cover.jpg'),
(80, 'Cillian', '', 'Murphy', 'M', '', 'actors/cillian-murphy_Cover.jpg'),
(81, 'Tom', '', 'Wilkinson', 'M', '', 'actors/tom-wilkinson_Cover.jpg'),
(82, 'Rutger', '', 'Hauer', 'M', '', 'actors/rutger-hauer_Cover.jpg'),
(83, 'Ken', '', 'Watanabe', 'M', '', 'actors/ken-watanabe_Cover.jpg'),
(84, 'Mark', 'Boone', 'Junior', 'M', '', 'actors/mark-boone-junior_Cover.jpg'),
(85, 'Linus', '', 'Roache', 'M', '', 'actors/linus-roache_Cover.jpg'),
(86, 'Morgan', '', 'Freeman', 'M', '', 'actors/morgan-freeman_Cover.jpg'),
(87, 'Larry', '', 'Holden', 'M', '', 'actors/larry-holden_Cover.jpg'),
(88, 'Gerard', '', 'Murphy', 'M', '', 'actors/gerard-murphy_Cover.jpg'),
(89, 'Colin', '', 'McFarlane', 'M', '', 'actors/colin-mcfarlane_Cover.jpg'),
(90, 'Matt', '', 'Damon', 'M', '', 'actors/matt-damon_Cover.jpg'),
(91, 'Franka', '', 'Potente', 'F', '', 'actors/franka-potente_Cover.jpg'),
(92, 'Chris', '', 'Cooper', 'M', '', 'actors/chris-cooper_Cover.jpeg'),
(93, 'Clive', '', 'Owen', 'M', '', 'actors/clive-owen_Cover.jpg'),
(94, 'Brian', '', 'Cox', 'M', '', 'actors/brian-cox_Cover.jpg'),
(95, 'Adewale', '', 'Akinnuoye-Agbaje', 'M', '', 'actors/adewale-akinnuoyeagbaje_Cover.jpg'),
(96, 'Gabriel', '', 'Mann', 'M', '', 'actors/gabriel-mann_Cover.jpg'),
(97, 'Walton', '', 'Goggins', 'M', '', 'actors/walton-goggins_Cover.jpg'),
(98, 'Josh', '', 'Hamilton', 'M', '', 'actors/josh-hamilton_Cover.jpg'),
(99, 'Julia', '', 'Stiles', 'F', '', 'actors/julia-stiles_Cover.jpg'),
(100, 'Orso', 'Maria', 'Guerrini', 'M', '', 'actors/orso-maria-guerrini_Cover.jpg'),
(101, 'Tim', '', 'Dutton', 'M', '', 'actors/tim-dutton_Cover.jpg'),
(102, 'Denis', '', 'Braccini', 'M', '', 'actors/denis-braccini_Cover.jpg'),
(103, 'Jeremy', '', 'Renner', 'M', '', 'actors/jeremy-renner_Cover.jpeg'),
(104, 'Scott', '', 'Glenn', 'M', '', 'actors/scott-glenn_Cover.jpg'),
(105, 'Stacy', '', 'Keach', 'M', '', 'actors/stacy-keach_Cover.jpeg'),
(106, 'Edward', '', 'Norton', 'M', '', 'actors/edward-norton_Cover.jpg'),
(107, 'Donna', '', 'Murphy', 'F', '', 'actors/donna-murphy_Cover.jpg'),
(108, 'Michael', '', 'Chernus', 'M', '', 'actors/michael-chernus_Cover.jpg'),
(109, 'Corey', '', 'Stoll', 'M', '', 'actors/corey-stoll_Cover.jpg'),
(110, 'Alice', '', 'Gainer', 'F', '', 'actors/alice-gainer_Cover.jpg'),
(111, 'Prue', '', 'Lewarne', 'F', '', 'actors/prue-lewarne_Cover.jpg'),
(112, 'Howard', '', 'Leader', 'M', '', 'actors/howard-leader_Cover.jpg'),
(113, 'James', 'Joseph', 'O\'Neil', 'M', '', 'actors/james-joseph-oneil_Cover.jpg'),
(114, 'Rachel', '', 'Weisz', 'F', '', 'actors/rachel-weisz_Cover.jpg'),
(115, 'Tony', '', 'Guida', 'M', '', 'actors/tony-guida_Cover.jpg'),
(116, 'Sonnie', '', 'Brown', 'F', '', 'actors/sonnie-brown_Cover.jpg'),
(117, 'Neil', 'Brooks', 'Cunningham', 'M', '', 'actors/neil-brooks-cunningham_Cover.jpg'),
(118, 'Karl', '', 'Urban', 'M', '', 'actors/karl-urban_Cover.jpg'),
(119, 'Joan', '', 'Allen', 'F', '', 'actors/joan-allen_Cover.jpg'),
(120, 'Marton', '', 'Csokas', 'M', '', 'actors/marton-csokas_Cover.jpg'),
(121, 'Tom', '', 'Gallop', 'M', '', 'actors/tom-gallop_Cover.jpg'),
(122, 'John', 'Bedford', 'Lloyd', 'M', '', 'actors/john-bedford-lloyd_Cover.jpg'),
(123, 'Ethan', '', 'Sandler', 'M', '', 'actors/ethan-sandler_Cover.jpg'),
(124, 'Michelle', '', 'Monaghan', 'F', '', 'actors/michelle-monaghan_Cover.jpg'),
(125, 'Karel', '', 'Roden', 'M', '', 'actors/karel-roden_Cover.jpg'),
(126, 'Tomas', '', 'Arana', 'M', '', 'actors/tomas-arana_Cover.jpg'),
(127, 'Oksana', '', 'Akinshina', 'F', '', 'actors/oksana-akinshina_Cover.jpg'),
(128, 'Heath', '', 'Ledger', 'M', '', 'actors/heath-ledger_Cover.jpg'),
(129, 'Aaron', '', 'Eckhart', 'M', '', 'actors/aaron-eckhart_Cover.jpg'),
(130, 'Maggie', '', 'Gyllenhaal', 'F', '', 'actors/maggie-gyllenhaal_Cover.jpg'),
(131, 'Monique', 'Gabriela', 'Curnen', 'F', '', 'actors/monique-gabriela-curnen_Cover.jpg'),
(132, 'Ron', '', 'Dean', 'M', '', 'actors/ron-dean_Cover.jpg'),
(133, 'Chin', '', 'Han', 'M', '', 'actors/chin-han_Cover.jpg'),
(134, 'Nestor', '', 'Carbonell', 'M', '', 'actors/nestor-carbonell_Cover.jpg'),
(135, 'Eric', '', 'Roberts', 'M', '', 'actors/eric-roberts_Cover.jpg'),
(136, 'Ritchie', '', 'Coster', 'M', '', 'actors/ritchie-coster_Cover.jpg'),
(137, 'Anthony', 'Michael', 'Hall', 'M', '', 'actors/anthony-michael-hall_Cover.jpg'),
(138, 'David', '', 'Strathairn', 'M', '', 'actors/david-strathairn_Cover.jpg'),
(139, 'Paddy', '', 'Considine', 'M', '', 'actors/paddy-considine_Cover.jpg'),
(140, 'Edgar', '', 'Ramírez', 'M', '', 'actors/edgar-ramirez_Cover.jpg'),
(141, 'Albert', '', 'Finney', 'M', '', 'actors/albert-finney_Cover.jpg'),
(142, 'Corey', '', 'Johnson', 'M', '', 'actors/corey-johnson_Cover.jpg'),
(143, 'Daniel', '', 'Brühl', 'M', '', 'actors/daniel-bruhl_Cover.jpg'),
(144, 'Joey', '', 'Ansah', 'M', '', 'actors/joey-ansah_Cover.jpg'),
(145, 'Colin', '', 'Stinton', 'M', '', 'actors/colin-stinton_Cover.jpg'),
(146, 'Dan', '', 'Fredenburgh', 'M', '', 'actors/dan-fredenburgh_Cover.jpg'),
(147, 'Lucy', '', 'Liemann', 'F', '', 'actors/lucy-liemann_Cover.jpg'),
(148, 'Tom', '', 'Hardy', 'M', '', 'actors/tom-hardy_Cover.jpg'),
(149, 'Joseph', '', 'Gordon-Levitt', 'M', '', 'actors/joseph-gordonlevitt_Cover.jpg'),
(150, 'Marion', '', 'Cotillard', 'F', '', 'actors/marion-cotillard_Cover.jpg'),
(151, 'Matthew', '', 'Modine', 'M', '', 'actors/matthew-modine_Cover.jpg'),
(152, 'Alon', '', 'Aboutboul', 'M', '', 'actors/alon-aboutboul_Cover.jpg'),
(153, 'Burn', '', 'Gorman', 'M', '', 'actors/burn-gorman_Cover.jpg'),
(154, 'Daniel', '', 'Sunjata', 'M', '', 'actors/daniel-sunjata_Cover.jpg'),
(155, 'Aidan', '', 'Gillen', 'M', '', 'actors/aidan-gillen_Cover.jpg'),
(156, 'Sam', '', 'Kennard', 'M', '', 'actors/sam-kennard_Cover.jpeg'),
(157, 'Ryan', '', 'Reynolds', 'M', '', 'actors/ryan-reynolds_Cover.jpg'),
(158, 'Karan', '', 'Soni', 'M', '', 'actors/karan-soni_Cover.jpeg'),
(159, 'Ed', '', 'Skrein', 'M', '', 'actors/ed-skrein_Cover.jpg'),
(160, 'Michael', '', 'Benyaer', 'M', '', 'actors/michael-benyaer_Cover.jpg'),
(161, 'Stefan', '', 'Kapicic', 'M', '', 'actors/stefan-kapicic_Cover.jpg'),
(162, 'Brianna', '', 'Hildebrand', 'F', '', 'actors/brianna-hildebrand_Cover.jpg'),
(163, 'Style', '', 'Dayne', 'M', '', 'actors/style-dayne_Cover.jpg'),
(164, 'Kyle', '', 'Cassie', 'M', '', 'actors/kyle-cassie_Cover.jpg'),
(165, 'Taylor', '', 'Hickson', 'F', '', 'actors/taylor-hickson_Cover.jpg'),
(166, 'Naika', '', 'Toussaint', 'F', '', 'actors/naika-toussaint_Cover.jpg'),
(167, 'Randal', '', 'Reeder', 'M', '', 'actors/randal-reeder_Cover.jpg'),
(168, 'T.J.', '', 'Miller', 'M', '', 'actors/tj-miller_Cover.jpg'),
(169, 'Isaac', 'C.', 'Singleton Jr.', 'M', '', 'actors/isaac-c-singleton-jr_Cover.jpg'),
(170, 'Morena', '', 'Baccarin', 'F', '', 'actors/morena-baccarin_Cover.jpg'),
(171, 'Josh', '', 'Brolin', 'M', '', 'actors/josh-brolin_Cover.jpg'),
(172, 'Julian', '', 'Dennison', 'M', '', 'actors/julian-dennison_Cover.jpg'),
(173, 'Zazie', '', 'Beetz', 'F', '', 'actors/zazie-beetz_Cover.jpg'),
(174, 'Leslie', '', 'Uggams', 'F', '', 'actors/leslie-uggams_Cover.jpg'),
(175, 'Jack', '', 'Kesy', 'M', '', 'actors/jack-kesy_Cover.jpg'),
(176, 'Eddie', '', 'Marsan', 'M', '', 'actors/eddie-marsan_Cover.jpg'),
(177, 'Shioli', '', 'Kutsuna', 'F', '', 'actors/shioli-kutsuna_Cover.jpg'),
(178, 'Nikolai', '', 'Witschl', 'M', '', 'actors/nikolai-witschl_Cover.jpg'),
(179, 'Richard', '', 'Harris', 'M', '', 'actors/richard-harris_Cover.jpg'),
(180, 'Robbie', '', 'Coltrane', 'M', '', 'actors/robbie-coltrane_Cover.jpg'),
(181, 'Daniel', '', 'Radcliffe', 'M', '', 'actors/daniel-radcliffe_Cover.jpg'),
(182, 'Fiona', '', 'Shaw', 'F', '', 'actors/fiona-shaw_Cover.jpg'),
(183, 'Harry', '', 'Melling', 'M', '', 'actors/harry-melling_Cover.jpg'),
(184, 'Richard', '', 'Griffiths', 'M', '', 'actors/richard-griffiths_Cover.jpg'),
(185, 'Ian', '', 'Hart', 'M', '', 'actors/ian-hart_Cover.jpg'),
(186, 'Warwick', '', 'Davis', 'M', '', 'actors/warwick-davis_Cover.jpg'),
(187, 'Verne', '', 'Troyer', 'M', '', 'actors/verne-troyer_Cover.jpg'),
(188, 'John', '', 'Hurt', 'M', '', 'actors/john-hurt_Cover.jpg'),
(189, 'Richard', '', 'Bremmer', 'M', '', 'actors/richard-bremmer_Cover.jpg'),
(190, 'Rupert', '', 'Grint', 'M', '', 'actors/rupert-grint_Cover.jpg'),
(191, 'Emma', '', 'Watson', 'F', '', 'actors/emma-watson_Cover.jpg'),
(192, 'Toby', '', 'Jones', 'M', '', 'actors/toby-jones_Cover.jpg'),
(193, 'Jim', '', 'Norton', 'M', '', 'actors/jim-norton_Cover.jpg'),
(194, 'Veronica', '', 'Clifford', 'F', '', 'actors/veronica-clifford_Cover.jpg'),
(195, 'James', '', 'Phelps', 'M', '', 'actors/james-phelps_Cover.jpg'),
(196, 'Oliver', '', 'Phelps', 'M', '', 'actors/oliver-phelps_Cover.jpg'),
(197, 'Julie', '', 'Walters', 'F', '', 'actors/julie-walters_Cover.jpg'),
(198, 'Bonnie', '', 'Wright', 'F', '', 'actors/bonnie-wright_Cover.jpg'),
(199, 'Mark', '', 'Williams', 'M', '', 'actors/mark-williams_Cover.jpg'),
(200, 'Chris', '', 'Rankin', 'M', '', 'actors/chris-rankin_Cover.jpg'),
(201, 'Pam', '', 'Ferris', 'F', '', 'actors/pam-ferris_Cover.jpg'),
(202, 'Adrian', '', 'Rawlins', 'M', '', 'actors/adrian-rawlins_Cover.jpg'),
(203, 'Geraldine', '', 'Somerville', 'F', '', 'actors/geraldine-somerville_Cover.jpg'),
(204, 'Lee', '', 'Ingleby', 'M', '', 'actors/lee-ingleby_Cover.jpg'),
(205, 'Lenny', '', 'Henry', 'M', '', 'actors/lenny-henry_Cover.jpg'),
(206, 'Jim', '', 'Tavaré', 'M', '', 'actors/jim-tavare_Cover.jpg'),
(207, 'Robert', '', 'Hardy', 'M', '', 'actors/robert-hardy_Cover.jpg'),
(208, 'Abby', '', 'Ford', 'F', '', 'actors/abby-ford_Cover.jpg'),
(209, 'Jimmy', '', 'Gardner', 'M', '', 'actors/jimmy-gardner_Cover.jpg'),
(210, 'Eric', '', 'Sykes', 'M', '', 'actors/eric-sykes_Cover.jpg'),
(211, 'Timothy', '', 'Spall', 'M', '', 'actors/timothy-spall_Cover.jpg'),
(212, 'David', '', 'Tennant', 'M', '', 'actors/david-tennant_Cover.jpg'),
(213, 'Jeff', '', 'Rawle', 'M', '', 'actors/jeff-rawle_Cover.jpg'),
(214, 'Robert', '', 'Pattinson', 'M', '', 'actors/robert-pattinson_Cover.jpg'),
(215, 'Jason', '', 'Isaacs', 'M', '', 'actors/jason-isaacs_Cover.jpg'),
(216, 'Tom', '', 'Felton', 'M', '', 'actors/tom-felton_Cover.jpg'),
(217, 'Stanislav', '', 'Yanevski', 'M', '', 'actors/stanislav-yanevski_Cover.jpg'),
(218, 'Jason', '', 'Boyd', 'M', '', 'actors/jason-boyd_Cover.jpg'),
(219, 'Kathryn', '', 'Hunter', 'F', '', 'actors/kathryn-hunter_Cover.jpg'),
(220, 'Miles', '', 'Jupp', 'M', '', 'actors/miles-jupp_Cover.jpg'),
(221, 'Jessica', '', 'Hynes', 'F', '', 'actors/jessica-hynes_Cover.jpg'),
(222, 'Natalia', '', 'Tena', 'F', '', 'actors/natalia-tena_Cover.jpg'),
(223, 'Brendan', '', 'Gleeson', 'M', '', 'actors/brendan-gleeson_Cover.jpg'),
(224, 'Ralph', '', 'Fiennes', 'M', '', 'actors/ralph-fiennes_Cover.jpg'),
(225, 'Alan', '', 'Rickman', 'M', '', 'actors/alan-rickman_Cover.jpg'),
(226, 'Dave', '', 'Legeno', 'M', '', 'actors/dave-legeno_Cover.jpg'),
(227, 'Michael', '', 'Gambon', 'M', '', 'actors/michael-gambon_Cover.jpg'),
(228, 'Elarica', '', 'Johnson', 'F', '', 'actors/elarica-johnson_Cover.jpg'),
(229, 'Jim', '', 'Broadbent', 'M', '', 'actors/jim-broadbent_Cover.jpeg'),
(230, 'Helena', 'Bonham', 'Carter', 'F', '', 'actors/helena-bonham-carter_Cover.jpg'),
(231, 'Helen', '', 'McCrory', 'F', '', 'actors/helen-mccrory_Cover.jpg'),
(232, 'Bill', '', 'Nighy', 'M', '', 'actors/bill-nighy_Cover.jpg'),
(233, 'Ian', '', 'Kelly', 'M', '', 'actors/ian-kelly_Cover.png'),
(234, 'Michelle', '', 'Fairley', 'F', '', 'actors/michelle-fairley_Cover.jpg'),
(235, 'Carolyn', '', 'Pickles', 'F', '', 'actors/carolyn-pickles_Cover.jpg'),
(236, 'Evanna', '', 'Lynch', 'F', '', 'actors/evanna-lynch_Cover.jpg'),
(237, 'Clémence', '', 'Poésy', 'F', '', 'actors/clemence-poesy_Cover.jpg'),
(238, 'Graham', '', 'Duff', 'M', '', 'actors/graham-duff_Cover.jpeg'),
(239, 'Anthony', '', 'Allgood', 'M', '', 'actors/anthony-allgood_Cover.jpg'),
(240, 'Rusty', '', 'Goffe', 'M', '', 'actors/rusty-goffe_Cover.jpg'),
(241, 'Domhnall', '', 'Gleeson', 'M', '', 'actors/domhnall-gleeson_Cover.jpg'),
(242, 'Tommy', 'Lee', 'Jones', 'M', '', 'actors/tommy-lee-jones_Cover.jpg'),
(243, 'Vincent', '', 'Cassel', 'M', '', 'actors/vincent-cassel_Cover.jpg'),
(244, 'Ato', '', 'Essandoh', 'M', '', 'actors/ato-essandoh_Cover.jpg'),
(245, 'Scott', '', 'Shepherd', 'M', '', 'actors/scott-shepherd_Cover.jpg'),
(246, 'Bill', '', 'Camp', 'M', '', 'actors/bill-camp_Cover.jpg'),
(247, 'Vinzenz', '', 'Kiefer', 'M', '', 'actors/vinzenz-kiefer_Cover.jpg'),
(248, 'Stephen', '', 'Kunken', 'M', '', 'actors/stephen-kunken_Cover.jpg'),
(249, 'Ben', '', 'Stylianou', 'M', '', 'actors/ben-stylianou_Cover.jpg'),
(250, 'Kaya', '', 'Yuzuki', 'F', '', 'actors/kaya-yuzuki_Cover.jpg'),
(251, 'Matthew', '', 'O\'Neill', 'M', '', 'actors/matthew-oneill_Cover.jpg'),
(252, 'Keanu', '', 'Reeves', 'M', '', 'actors/keanu-reeves_Cover.jpg'),
(253, 'Michael', '', 'Nyqvist', 'M', '', 'actors/michael-nyqvist_Cover.jpg'),
(254, 'Alfie', '', 'Allen', 'M', '', 'actors/alfie-allen_Cover.jpg'),
(255, 'Willem', '', 'Dafoe', 'M', '', 'actors/willem-dafoe_Cover.jpg'),
(256, 'Dean', '', 'Winters', 'M', '', 'actors/dean-winters_Cover.jpg'),
(257, 'Adrianne', '', 'Palicki', 'F', '', 'actors/adrianne-palicki_Cover.jpg'),
(258, 'Omer', '', 'Barnea', 'M', '', 'actors/omer-barnea_Cover.jpg'),
(259, 'Toby', 'Leonard', 'Moore', 'M', '', 'actors/toby-leonard-Moore_Cover.jpg'),
(260, 'Daniel', '', 'Bernhardt', 'M', '', 'actors/daniel-bernhardt_Cover.jpg'),
(261, 'Bridget', '', 'Moynahan', 'F', '', 'actors/bridget-moynahan_Cover.jpg'),
(262, 'John', '', 'Leguizamo', 'M', '', 'actors/john-leguizamo_Cover.jpg'),
(263, 'Ian', '', 'McShane', 'M', '', 'actors/ian-mcshane_Cover.jpeg'),
(264, 'Bridget', '', 'Regan', 'F', '', 'actors/bridget-regan_Cover.jpg'),
(265, 'Lance', '', 'Reddick', 'M', '', 'actors/lance-reddick_Cover.jpg'),
(266, 'Keith', '', 'Jardine', 'M', '', 'actors/keith-jardine_Cover.jpg'),
(267, 'Riccardo', '', 'Scamarcio', 'M', '', 'actors/riccardo-scamarcio_Cover.jpg'),
(268, 'Ruby', '', 'Rose', 'F', '', 'actors/ruby-rose_Cover.jpg'),
(269, 'Common', '', '', 'M', '', 'actors/common_Cover.jpg'),
(270, 'Claudia', '', 'Gerini', 'F', '', 'actors/claudia-gerini_Cover.jpg'),
(271, 'Laurence', '', 'Fishburne', 'M', '', 'actors/laurence-fishburne_Cover.jpg'),
(272, 'Tobias', '', 'Segal', 'M', '', 'actors/tobias-segal_Cover.jpg'),
(273, 'Thomas', '', 'Sadoski', 'M', '', 'actors/thomas-sadoski_Cover.jpg'),
(274, 'Erik', '', 'Frandsen', 'M', '', 'actors/erik-frandsen_Cover.jpg'),
(275, 'David', 'Patrick', 'Kelly', 'M', '', 'actors/david-patrick-kelly_Cover.jpg'),
(276, 'Perry', '', 'Yung', 'M', '', 'actors/perry-yung_Cover.jpg'),
(277, 'Tom', '', 'Cruise', 'M', '', 'actors/tom-cruise_Cover.png'),
(278, 'Jon', '', 'Voight', 'M', '', 'actors/jon-voight_Cover.jpg'),
(279, 'Emmanuelle', '', 'Béart', 'F', '', 'actors/emmanuelle-beart_Cover.jpg'),
(280, 'Henry', '', 'Czerny', 'M', '', 'actors/henry-czerny_Cover.jpg'),
(281, 'Jean', '', 'Reno', 'M', '', 'actors/jean-reno_Cover.jpg'),
(282, 'Ving', '', 'Rhames', 'M', '', 'actors/ving-rhames_Cover.jpg'),
(283, 'Kristin', 'Scott', 'Thomas', 'F', '', 'actors/kristin-scott-thomas_Cover.jpg'),
(284, 'Vanessa', '', 'Redgrave', 'F', '', 'actors/vanessa-redgrave_Cover.png'),
(285, 'Ingeborga', '', 'Dapkunaite', 'F', '', 'actors/ingeborga-dapkunaite_Cover.jpg'),
(286, 'Valentina', '', 'Yakunina', 'F', '', 'actors/valentina-yakunina_Cover.jpg'),
(287, 'Marek', '', 'Vasut', 'M', '', 'actors/marek-vasut_Cover.jpg'),
(288, 'Nathan', '', 'Osgood', 'M', '', 'actors/nathan-osgood_Cover.jpg'),
(289, 'John', '', 'McLaughlin', 'M', '', 'actors/john-mclaughlin_Cover.jpg'),
(290, 'Rolf', '', 'Saxon', 'M', '', 'actors/rolf-saxon_Cover.jpg'),
(291, 'Karel', '', 'Dobry', 'M', '', 'actors/karel-dobry_Cover.jpg'),
(292, 'Dougray', '', 'Scott', 'M', '', 'actors/dougray-scott_Cover.jpg'),
(293, 'Richard', '', 'Roxburgh', 'M', '', 'actors/richard-roxburgh_Cover.jpg'),
(294, 'John', '', 'Polson', 'M', '', 'actors/john-polson_Cover.jpg'),
(295, 'Rade', '', 'Serbedzija', 'M', '', 'actors/rade-serbedzija_Cover.jpg'),
(296, 'William', '', 'Mapother', 'M', '', 'actors/william-mapother_Cover.jpg'),
(297, 'Dominic', '', 'Purcell', 'M', '', 'actors/dominic-purcell_Cover.jpg'),
(298, 'Mathew', '', 'Wilkinson', 'M', '', 'actors/mathew-wilkinson_Cover.jpeg'),
(299, 'Nicholas', '', 'Bell', 'M', '', 'actors/nicholas-bell_Cover.jpg'),
(300, 'Kee', '', 'Chan', 'M', '', 'actors/kee-chan_Cover.jpg'),
(301, 'Philip', 'Seymour', 'Hoffman', 'M', '', 'actors/philip-seymour-hoffman_Cover.jpg'),
(302, 'Billy', '', 'Crudup', 'M', '', 'actors/billy-crudup_Cover.jpg'),
(303, 'Jonathan', 'Rhys', 'Meyers', 'M', '', 'actors/jonathan-rhys-meyers_Cover.jpg'),
(304, 'Keri', '', 'Russell', 'F', '', 'actors/keri-russell_Cover.jpg'),
(305, 'Maggie', '', 'Q', 'F', '', 'actors/maggie-q_Cover.jpeg'),
(306, 'Simon', '', 'Pegg', 'M', '', 'actors/simon-pegg_Cover.jpg'),
(307, 'Bahar', '', 'Soomekh', 'M', '', 'actors/bahar-soomekh_Cover.jpg'),
(308, 'Jeff', '', 'Chase', 'M', '', 'actors/jeff-chase_Cover.jpg'),
(309, 'Michael', '', 'Berry Jr.', 'M', '', 'actors/michael-berry-jr_Cover.jpg'),
(310, 'Carla', '', 'Gallo', 'F', '', 'actors/carla-gallo_Cover.jpg'),
(311, 'Paula', '', 'Patton', 'M', '', 'actors/paula-patton_Cover.jpg'),
(312, 'Vladimir', '', 'Mashkov', 'M', '', 'actors/vladimir-mashkov_Cover.jpg'),
(313, 'Samuli', '', 'Edelmann', 'M', '', 'actors/samuli-edelmann_Cover.jpg'),
(314, 'Ivan', '', 'Shvedoff', 'M', '', 'actors/ivan-shvedoff_Cover.jpg'),
(315, 'Anil', '', 'Kapoor', 'M', '', 'actors/anil-kapoor_Cover.jpg'),
(316, 'Léa', '', 'Seydoux', 'F', '', 'actors/lea-seydoux_Cover.jpg'),
(317, 'Josh', '', 'Holloway', 'M', '', 'actors/josh-holloway_Cover.jpg'),
(318, 'Pavel', '', 'Kríz', 'M', '', 'actors/pavel-kriz_Cover.jpg'),
(319, 'Miraj', '', 'Grbic', 'M', '', 'actors/miraj-grbic_Cover.jpg'),
(320, 'Ilia', '', 'Volok', 'F', '', 'actors/ilia-volok_Cover.jpg'),
(321, 'Goran', '', 'Navojec', 'M', '', 'actors/goran-navojec_Cover.jpeg'),
(322, 'Sean', '', 'Bean', 'M', '', 'actors/sean-bean_Cover.jpg'),
(323, 'Mark', '', 'Addy', 'M', '', 'actors/mark-addy_Cover.jpg'),
(324, 'Nikolaj', '', 'Coster-Waldau', 'M', '', 'actors/nikolaj-costerwaldau_Cover.jpg'),
(325, 'Lena', '', 'Headey', 'F', '', 'actors/lena-headey_Cover.jpg'),
(326, 'Emilia', '', 'Clarke', 'F', '', 'actors/emilia-clarke_Cover.jpg'),
(327, 'Iain', '', 'Glen', 'M', '', 'actors/iain-glen_Cover.jpg'),
(328, 'Harry', '', 'Lloyd', 'M', '', 'actors/harry-lloyd_Cover.jpg'),
(329, 'Kit', '', 'Harington', 'M', '', 'actors/kit-harington_Cover.jpg'),
(330, 'Sophie', '', 'Turner', 'F', '', 'actors/sophie-turner_Cover.jpg'),
(331, 'Maisie', '', 'Williams', 'F', '', 'actors/maisie-williams_Cover.jpg'),
(332, 'Richard', '', 'Madden', 'M', '', 'actors/richard-madden_Cover.jpg'),
(333, 'Isaac', 'Hempstead', 'Wright', 'M', '', 'actors/isaac-hempstead-wright_Cover.jpg'),
(334, 'Jack', '', 'Gleeson', 'M', '', 'actors/jack-gleeson_Cover.png'),
(335, 'Rory', '', 'McCann', 'M', '', 'actors/rory-mccann_Cover.jpg'),
(336, 'Donald', '', 'Sumpter', 'M', '', 'actors/donald-sumpter_Cover.jpg'),
(337, 'Conleth', '', 'Hill', 'M', '', 'actors/conleth-hill_Cover.jpg'),
(338, 'James', '', 'Cosmo', 'M', '', 'actors/james-cosmo_Cover.jpg'),
(339, 'Owen', '', 'Teale', 'M', '', 'actors/owen-teale_Cover.jpg'),
(340, 'André', '', 'Holland', 'M', '', 'actors/andre-holland_Cover.jpg'),
(341, 'Melanie', '', 'Lynskey', 'F', '', 'actors/melanie-lynskey_Cover.jpg'),
(342, 'Bill', '', 'Skarsgård', 'M', '', 'actors/bill-skarsgard_Cover.jpg'),
(343, 'Jane', '', 'Levy', 'F', '', 'actors/jane-levy_Cover.jpg'),
(344, 'Sissy', '', 'Spacek', 'F', '', 'actors/sissy-spacek_Cover.jpg'),
(345, 'Noel', '', 'Fisher', 'M', '', 'actors/noel-fisher_Cover.jpg'),
(346, 'Frances', '', 'Conroy', 'F', '', 'actors/frances-conroy_Cover.jpg'),
(347, 'Ann', '', 'Cusack', 'F', '', 'actors/ann-cusack_Cover.jpg'),
(348, 'Phyllis', '', 'Somerville', 'F', '', 'actors/phyllis-somerville_Cover.jpg'),
(349, 'Chris', '', 'Coy', 'M', '', 'actors/chris-coy_Cover.jpeg'),
(350, 'Josh', '', 'Cooke', 'M', '', 'actors/josh-cooke_Cover.jpg'),
(351, 'Caleel', '', 'Harris', 'M', '', 'actors/caleel-harris_Cover.jpg'),
(352, 'Schuyler', '', 'Fisk', 'F', '', 'actors/schuyler-fisk_Cover.jpg'),
(353, 'Jeffrey', '', 'Pierce', 'M', '', 'actors/jeffrey-pierce_Cover.jpg'),
(354, 'Allison', '', 'Tolman', 'F', '', 'actors/allison-tolman_Cover.jpg'),
(355, 'Adam', '', 'Rothenberg', 'M', '', 'actors/adam-rothenberg_Cover.jpg'),
(356, 'Aaron', '', 'Staton', 'M', '', 'actors/aaron-staton_Cover.jpg'),
(357, 'Charlie', '', 'Tahan', 'M', '', 'actors/charlie-tahan_Cover.jpg'),
(358, 'Cassady', '', 'McClincy', 'F', '', 'actors/cassady-mcclincy_Cover.jpg'),
(359, 'Russell', '', 'Posner', 'M', '', 'actors/russell-posner_Cover.jpg'),
(360, 'Burke', '', 'Moses', 'M', '', 'actors/burke-moses_Cover.jpg'),
(361, 'Mark', '', 'Zeisler', 'M', '', 'actors/mark-zeisler_Cover.jpg'),
(362, 'Mark', '', 'Harelik', 'M', '', 'actors/mark-harelik_Cover.jpg'),
(363, 'Lauren', '', 'Bowles', 'F', '', 'actors/lauren-bowles_Cover.jpg'),
(364, 'David', '', 'Selby', 'M', '', 'actors/david-selby_Cover.jpg'),
(365, 'Joseph', '', 'Bonamico', 'M', '', 'actors/joseph-bonamico_Cover.jpg'),
(366, 'Richard', '', 'Schiff', 'M', '', 'actors/richard-schiff_Cover.jpg'),
(367, 'Zabryna', '', 'Guevara', 'F', '', 'actors/zabryna-guevara_Cover.jpg'),
(368, 'James', 'Le', 'Gros', 'M', '', 'actors/james-le-gros_Cover.png'),
(369, 'Peta', '', 'Sergeant', 'F', '', 'actors/peta-sergeant_Cover.jpg'),
(370, 'Amanda', '', 'Brooks', 'F', '', 'actors/amanda-brooks_Cover.jpg'),
(371, 'Chosen', '', 'Jacobs', 'M', '', 'actors/chosen-jacobs_Cover.jpg'),
(372, 'Rory', '', 'Culkin', 'M', '', 'actors/rory-culkin_Cover.jpg'),
(373, 'CJ', '', 'Jones', 'M', '', 'actors/cj-jones_Cover.jpg'),
(374, 'William', '', 'Xifaras', 'M', '', 'actors/william-xifaras_Cover.jpg'),
(375, 'Caroline', '', 'Lawton', 'F', '', 'actors/caroline-lawton_Cover.jpg'),
(376, 'Andrea', '', 'Higgins', 'F', '', 'actors/andrea-higgins_Cover.jpg'),
(377, 'Michael', '', 'Rodrick', 'M', '', 'actors/michael-rodrick_Cover.jpg'),
(378, 'Jayne', '', 'Atkinson', 'F', '', 'actors/jayne-atkinson_Cover.jpg'),
(379, 'Rodrigo', '', 'Lopresti', 'M', '', 'actors/rodrigo-lopresti_Cover.jpg'),
(380, 'Julienne', 'Hanzelka', 'Kim', 'F', '', 'actors/julienne-hanzelka-kim_Cover.jpg'),
(381, 'Mamie', '', 'Gummer', 'F', '', 'actors/mamie-gummer_Cover.jpg'),
(382, 'Brett', '', 'Rickaby', 'M', '', 'actors/brett-rickaby_Cover.jpg'),
(383, 'Evan', 'Rachel', 'Wood', 'F', '', 'actors/evan-rachel-wood_Cover.jpg'),
(384, 'Jeffrey', '', 'Wright', 'M', '', 'actors/jeffrey-wright_Cover.jpg'),
(385, 'James', '', 'Marsden', 'M', '', 'actors/james-marsden_Cover.jpg'),
(386, 'Ingrid', 'Bolso', 'Berdal', 'F', '', 'actors/ingrid-bolso-berdal_Cover.jpg'),
(387, 'Luke', '', 'Hemsworth', 'M', '', 'actors/luke-hemsworth_Cover.jpg'),
(388, 'Sidse', 'Babett', 'Knudsen', 'F', '', 'actors/sidse-babett-knudsen_Cover.jpg'),
(389, 'Simon', '', 'Quarterman', 'M', '', 'actors/simon-quarterman_Cover.png'),
(390, 'Rodrigo', '', 'Santoro', 'M', '', 'actors/rodrigo-santoro_Cover.jpg'),
(391, 'Angela', '', 'Sarafyan', 'F', '', 'actors/angela-sarafyan_Cover.jpg'),
(392, 'Shannon', '', 'Woodward', 'F', '', 'actors/shannon-woodward_Cover.jpg'),
(393, 'Ed', '', 'Harris', 'M', '', 'actors/ed-harris_Cover.jpg'),
(394, 'Anthony', '', 'Hopkins', 'M', '', 'actors/anthony-hopkins_Cover.jpg'),
(395, 'Louis', '', 'Herthum', 'M', '', 'actors/louis-herthum_Cover.jpg'),
(396, 'Steven', '', 'Ogg', 'M', '', 'actors/steven-ogg_Cover.jpg'),
(397, 'Ben', '', 'Barnes', 'M', '', 'actors/ben-barnes_Cover.jpg'),
(398, 'Clifton', '', 'Collins Jr.', 'M', '', 'actors/clifton-collins-jr_Cover.jpg'),
(399, 'Jimmi', '', 'Simpson', 'M', '', 'actors/jimmi-simpson_Cover.jpg'),
(400, 'Ptolemy', '', 'Slocum', 'M', '', 'actors/ptolemy-slocum_Cover.jpg'),
(401, 'Bradford', '', 'Tatum', 'M', '', 'actors/bradford-tatum_Cover.jpg'),
(402, 'Michael', '', 'Wincott', 'M', '', 'actors/michael-wincott_Cover.jpg'),
(403, 'Leonardo', '', 'Nam', 'M', '', 'actors/leonardo-nam_Cover.jpg'),
(404, 'James', 'Landry', 'Hébert', 'M', '', 'actors/james-landry-hebert_Cover.jpg'),
(405, 'Oliver', '', 'Bell', 'M', '', 'actors/oliver-bell_Cover.jpg'),
(406, 'Tessa', '', 'Thompson', 'F', '', 'actors/tessa-thompson_Cover.jpg'),
(407, 'Talulah', '', 'Riley', 'F', '', 'actors/talulah-riley_Cover.jpg'),
(408, 'Fares', '', 'Fares', 'M', '', 'actors/fares-fares_Cover.jpg'),
(409, 'Gustaf', '', 'Skarsgård', 'M', '', 'actors/gustaf-skarsgard_Cover.jpg'),
(410, 'Betty', '', 'Gabriel', 'F', '', 'actors/betty-gabriel_Cover.jpg'),
(411, 'Zahn', '', 'McClarnon', 'M', '', 'actors/zahn-mcclarnon_Cover.jpg'),
(412, 'Katja', '', 'Herbers', 'F', '', 'actors/katja-herbers_Cover.jpg'),
(413, 'Peter', '', 'Mullan', 'M', '', 'actors/peter-mullan_Cover.jpg'),
(414, 'Jonathan', '', 'Tucker', 'M', '', 'actors/jonathan-tucker_Cover.jpg'),
(415, 'Rinko', '', 'Kikuchi', 'F', '', 'actors/rinko-kikuchi_Cover.jpg'),
(416, 'Julia', '', 'Jones', 'F', '', 'actors/julia-jones_Cover.jpg'),
(417, 'Martin', '', 'Sensmeier', 'M', '', 'actors/martin-sensmeier_Cover.png'),
(418, 'Irene', '', 'Bedard', 'F', '', 'actors/irene-bedard_Cover.jpg'),
(419, 'Booboo', '', 'Stewart', 'M', '', 'actors/booboo-stewart_Cover.jpg'),
(420, 'Sela', '', 'Ward', 'F', '', 'actors/sela-ward_Cover.jpg'),
(421, 'Jack', '', 'Conley', 'M', '', 'actors/jack-conley_Cover.jpg'),
(422, 'Rupert', '', 'Graves', 'M', '', 'actors/rupert-graves_Cover.jpg'),
(423, 'Una', '', 'Stubbs', 'F', '', 'actors/una-stubbs_Cover.jpg'),
(424, 'Jonathan', '', 'Aris', 'M', '', 'actors/jonathan-aris_Cover.jpg'),
(425, 'Louise', '', 'Brealey', 'F', '', 'actors/louise-brealey_Cover.jpg'),
(426, 'Zawe', '', 'Ashton', 'F', '', 'actors/zawe-ashton_Cover.jpg'),
(427, 'Joseph', '', 'Long', 'M', '', 'actors/joseph-long_Cover.jpg'),
(428, 'David', '', 'Nellist', 'M', '', 'actors/david-nellist_Cover.jpg'),
(429, 'Tanya', '', 'Moodie', 'F', '', 'actors/tanya-moodie_Cover.jpg'),
(430, 'James', '', 'Harper', 'M', '', 'actors/james-harper_Cover.jpg'),
(431, 'Phil', '', 'Davis', 'M', '', 'actors/phil-davis_Cover.jpg'),
(432, 'Vinette', '', 'Robinson', 'F', '', 'actors/vinette-robinson_Cover.jpg'),
(433, 'Siobhan', '', 'Hewlett', 'F', '', 'actors/siobhan-hewlett_Cover.jpg'),
(434, 'William', '', 'Scott-Masson', 'M', '', 'actors/william-scottmasson_Cover.jpg'),
(435, 'Victoria', '', 'Wicks', 'F', '', 'actors/victoria-wicks_Cover.jpg'),
(436, 'Sean', 'Joseph', 'Young', 'M', '', 'actors/sean-joseph-young_Cover.jpg'),
(437, 'Syrus', '', 'Lowe', 'M', '', 'actors/syrus-lowe_Cover.jpg'),
(438, 'Katy', '', 'Maw', 'F', '', 'actors/katy-maw_Cover.jpg'),
(439, 'Zoe', '', 'Telford', 'F', '', 'actors/zoe-telford_Cover.jpg'),
(440, 'Gemma', '', 'Chan', 'F', '', 'actors/gemma-chan_Cover.jpg'),
(441, 'Al', '', 'Weaver', 'M', '', 'actors/al-weaver_Cover.jpg'),
(442, 'Bertie', '', 'Carvel', 'M', '', 'actors/bertie-carvel_Cover.jpg'),
(443, 'Daniel', '', 'Percival', 'M', '', 'actors/daniel-percival_Cover.jpg'),
(444, 'Paul', '', 'Chequer', 'M', '', 'actors/paul-chequer_Cover.jpg'),
(445, 'Howard', '', 'Coggins', 'M', '', 'actors/howard-coggins_Cover.jpg'),
(446, 'Janice', '', 'Acquah', 'F', '', 'actors/janice-acquah_Cover.jpg'),
(447, 'Jack', '', 'Bence', 'M', '', 'actors/jack-bence_Cover.jpg'),
(448, 'John', '', 'Macmillan', 'M', '', 'actors/john-macmillan_Cover.jpg'),
(449, 'Olivia', '', 'Poulet', 'F', '', 'actors/olivia-poulet_Cover.jpg'),
(450, 'Andrew', '', 'Scott', 'M', '', 'actors/andrew-scott_Cover.jpg'),
(451, 'Matthew', '', 'Needham', 'M', '', 'actors/matthew-needham_Cover.jpg'),
(452, 'Kemal', '', 'Sylvester', 'M', '', 'actors/kemal-sylvester_Cover.jpg'),
(453, 'San', '', 'Shella', 'M', '', 'actors/san-shella_Cover.jpg'),
(454, 'Deborah', '', 'Moore', 'F', '', 'actors/deborah-moore_Cover.jpg'),
(455, 'Lauren', '', 'Crace', 'F', '', 'actors/lauren-crace_Cover.jpg'),
(456, 'Caroline', '', 'Trowbridge', 'F', '', 'actors/caroline-trowbridge_Cover.jpg'),
(457, 'Dean', '', 'Norris', 'M', '', 'actors/dean-norris_Cover.jpg'),
(458, 'Betsy', '', 'Brandt', 'F', '', 'actors/betsy-brandt_Cover.jpeg'),
(459, 'RJ', '', 'Mitte', 'M', '', 'actors/rj-mitte_Cover.jpg'),
(460, 'Max', '', 'Arciniega', 'M', '', 'actors/max-arciniega_Cover.jpg'),
(461, 'John', '', 'Koyama', 'M', '', 'actors/john-koyama_Cover.jpg'),
(462, 'Steven', 'Michael', 'Quezada', 'M', '', 'actors/steven-michael-quezada_Cover.jpg'),
(463, 'Marius', '', 'Stan', 'M', '', 'actors/marius-stan_Cover.jpg'),
(464, 'Aaron', '', 'Hill', 'M', '', 'actors/aaron-hill_Cover.jpg'),
(465, 'Carmen', '', 'Serano', 'F', '', 'actors/carmen-serano_Cover.jpg'),
(466, 'Jessica', '', 'Hecht', 'F', '', 'actors/jessica-hecht_Cover.jpg'),
(467, 'Julia', '', 'Minesci', 'F', '', 'actors/julia-minesci_Cover.jpg'),
(468, 'Tess', '', 'Harper', 'F', '', 'actors/tess-harper_Cover.jpg'),
(469, 'Michael', '', 'Bofshever', 'M', '', 'actors/michael-bofshever_Cover.jpg'),
(470, 'Kyle', '', 'Bornheimer', 'M', '', 'actors/kyle-bornheimer_Cover.jpg'),
(471, 'Benjamin', '', 'Petry', 'M', '', 'actors/benjamin-petry_Cover.jpg'),
(472, 'David', '', 'House', 'M', '', 'actors/david-house_Cover.jpg'),
(473, 'Jon', 'Kristian', 'Moore', 'M', '', 'actors/jon-kristian-moore_Cover.jpg'),
(474, 'Charles', '', 'Baker', 'M', '', 'actors/charles-baker_Cover.jpg'),
(475, 'Adam', '', 'Godley', 'M', '', 'actors/adam-godley_Cover.jpg'),
(476, 'Matt', '', 'Jones', 'M', '', 'actors/matt-jones_Cover.jpg'),
(477, 'William', '', 'Sterchi', 'M', '', 'actors/william-sterchi_Cover.jpg'),
(478, 'Kiira', '', 'Arai', 'F', '', 'actors/kiira-arai_Cover.jpg'),
(479, 'Bill', '', 'Allen', 'M', '', 'actors/bill-allen_Cover.jpg'),
(480, 'Loren', '', 'Haynes', 'M', '', 'actors/loren-haynes_Cover.jpg'),
(481, 'Raymond', '', 'Cruz', 'M', '', 'actors/raymond-cruz_Cover.jpg'),
(482, 'Pierre', '', 'Barrera', 'M', '', 'actors/pierre-barrera_Cover.jpg'),
(483, 'Cesar', '', 'Garcia', 'M', '', 'actors/cesar-garcia_Cover.jpg'),
(484, 'Vivian', '', 'Nesbitt', 'F', '', 'actors/vivian-nesbitt_Cover.jpg'),
(485, 'Beth', '', 'Bailey', 'F', '', 'actors/beth-bailey_Cover.jpg'),
(486, 'Geoffrey', '', 'Rivas', 'M', '', 'actors/geoffrey-rivas_Cover.jpg'),
(487, 'Lorri', '', 'Oliver', 'F', '', 'actors/lorri-oliver_Cover.jpg');

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
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
(1, 'Agnès', '', 'Varda', 'F', '', 'directors/agnes-varda_Cover.jpg'),
(2, 'Akira', '', 'Kurosawa', 'M', '', 'directors/akira-kurosawa_Cover.jpg'),
(3, 'Alejandro', 'González', 'Iñárritu', 'M', '', 'directors/alejandro-gonzalez-inarritu_Cover.jpg'),
(4, 'Alfonso', '', 'Cuarón', 'M', '', 'directors/alfonso-cuaron_Cover.jpg'),
(5, 'Alfred', '', 'Hitchcock', 'M', '', 'directors/alfred-hitchcock_Cover.jpg'),
(6, 'Amy', '', 'Heckerling', 'F', '', 'directors/amy-heckerling_Cover.jpg'),
(7, 'Andrea', '', 'Arnold', 'F', '', 'directors/andrea-arnold_Cover.jpg'),
(8, 'Ang', '', 'Lee', 'M', '', 'directors/ang-lee_Cover.jpg'),
(9, 'Anthony', '', 'Minghella', 'M', '', 'directors/anthony-minghella_Cover.jpg'),
(10, 'Barbara', '', 'Kopple', 'F', '', 'directors/barbara-kopple_Cover.jpg'),
(11, 'Barbara', '', 'Loden', 'F', '', 'directors/barbara-loden_Cover.jpg'),
(12, 'Barbra', '', 'Streisand', 'F', '', 'directors/barbra-streisand_Cover.jpg'),
(13, 'Barry', '', 'Levinson', 'M', '', 'directors/barry-levinson_Cover.jpg'),
(14, 'Bernardo', '', 'Bertolucci', 'M', '', 'directors/bernardo-bertolucci_Cover.jpg'),
(15, 'Bob', '', 'Fosse', 'M', '', 'directors/bob-fosse_Cover.jpg'),
(16, 'Chantal', '', 'Akerman', 'F', '', 'directors/chantal-akerman_Cover.jpg'),
(17, 'Chloé', '', 'Zhao', 'F', '', 'directors/chloe-zhao_Cover.jpg'),
(18, 'Christopher', '', 'Nolan', 'M', '', 'directors/chris-nolan_Cover.jpeg'),
(19, 'Claire', '', 'Denis', 'F', '', 'directors/claire-denis_Cover.png'),
(20, 'Clint', '', 'Eastwood', 'M', '', 'directors/clint-eastwood_Cover.jpg'),
(21, '', '', 'Coen brothers', 'M', '', 'directors/coen-brothers_Cover.jpg'),
(22, 'Damien', '', 'Chazelle', 'M', '', 'directors/damian-chazelle_Cover.png'),
(23, 'Danny', '', 'Boyle', 'M', '', 'directors/danny-boyle_Cover.jpg'),
(24, 'David', '', 'Fincher', 'M', '', 'directors/david-fincher_Cover.jpg'),
(25, 'David', '', 'Lynch', 'M', '', 'directors/david-lynch_Cover.jpg'),
(26, 'Debra', '', 'Granik', 'F', '', 'directors/debra-granik_Cover.jpg'),
(27, 'Dorothy', '', 'Arzner', 'F', '', 'directors/dorothy-arzner_Cover.jpg'),
(28, 'Francis', 'Ford', 'Coppola', 'M', '', 'directors/francis-coppola_Cover.jpg'),
(29, 'Franklin', 'J.', 'Schaffner', 'M', '', 'directors/franklin-j-schaffner_Cover.jpg'),
(30, 'George', 'Roy', 'Hill', 'M', '', 'directors/george-roy-hill_Cover.jpg'),
(31, 'Greta', '', 'Gerwig', 'F', '', 'directors/greta-gerwig_Cover.jpg'),
(32, 'Guillermo', 'del', 'Toro', 'M', '', 'directors/guillermo-del-toro_Cover.jpg'),
(33, 'James', '', 'Cameron', 'M', '', 'directors/james-cameron_Cover.jpg'),
(34, 'James', 'L.', 'Brooks', 'M', '', 'directors/james-l-brooks_Cover.jpeg'),
(35, 'Jane', '', 'Campion', 'F', '', 'directors/jane-campion_Cover.jpg'),
(36, 'John', 'G.', 'Avildsen', 'M', '', 'directors/john-g-avildsen_Cover.jpg'),
(37, 'Jonathan', '', 'Demme', 'M', '', 'directors/jonathan-demme_Cover.jpg'),
(38, 'Julie', '', 'Dash', 'F', '', 'directors/julie-dash_Cover.png'),
(39, 'Kasi', '', 'Lemmons', 'F', '', 'directors/kasi_lemmons_Cover.jpg'),
(40, 'Kathleen', '', 'Collins', 'F', '', 'directors/kathleen-collins_Cover.jpg'),
(41, 'Kathryn', '', 'Bigelow', 'F', '', 'directors/kathryn-bigelow_Cover.jpg'),
(42, 'Kevin', '', 'Costner', 'M', '', 'directors/kevin-costner_Cover.jpg'),
(43, 'Lina', '', 'Wertmüller', 'F', '', 'directors/lina-wertmuller_Cover.jpg'),
(44, 'Lois', '', 'Weber', 'F', '', 'directors/lois-weber_Cover.png'),
(45, 'Lucrecia', '', 'Martel', 'F', '', 'directors/lucrecia-martel_Cover.jpg'),
(46, 'Lynne', '', 'Ramsay', 'F', '', 'directors/lynne-ramsay_Cover.jpg'),
(47, 'Marjane', '', 'Satrapi', 'F', '', 'directors/marjane-satrapi_Cover.jpg'),
(48, 'Martin', '', 'Scorsese', 'M', '', 'directors/martin-scorsese_Cover.jpg'),
(49, 'Mel', '', 'Gibson', 'M', '', 'directors/mel-gibson_Cover.jpg'),
(50, 'Michel', '', 'Hazanavicius', 'M', '', 'directors/michel-hazanavicius_Cover.jpg'),
(51, 'Milos', '', 'Forman', 'M', '', 'directors/milos-forman_Cover.jpeg'),
(52, 'Oliver', '', 'Stone', 'M', '', 'directors/oliver-stone_Cover.jpg'),
(53, 'Penny', '', 'Marshall', 'F', '', 'directors/penny-marshall_Cover.jpg'),
(54, 'Peter', '', 'Jackson', 'M', '', 'directors/peter-jackson_Cover.jpg'),
(55, 'Paul', 'Thomas', 'Anderson', 'M', '', 'directors/p-t-a_Cover.jpg'),
(56, 'Quentin', '', 'Tarantino', 'M', '', 'directors/quentin-tarantino_Cover.jpg'),
(57, 'Richard', '', 'Attenborough', 'M', '', 'directors/richard-attenborough_Cover.jpg'),
(58, 'Robert', '', 'Benton', 'M', '', 'directors/robert-benton_Cover.jpg'),
(59, 'Robert', '', 'Redford', 'M', '', 'directors/robert-redford_Cover.jpg'),
(60, 'Robert', '', 'Zemeckis', 'M', '', 'directors/robert-zemeckis_Cover.jpg'),
(61, 'Roman', '', 'Polanski', 'M', '', 'directors/roman-polanski_Cover.jpg'),
(62, 'Ron', '', 'Howard', 'M', '', 'directors/ron-howard_Cover.jpg'),
(63, 'Sam', '', 'Mendes', 'M', '', 'directors/sam-mendes_Cover.jpg'),
(64, 'Spike', '', 'Jonze', 'M', '', 'directors/spike-jonze_Cover.jpg'),
(65, 'Stanley', '', 'Kubrick', 'M', '', 'directors/stanley-kubrick_Cover.jpg'),
(66, 'Steven', '', 'Soderbergh', 'M', '', 'directors/steven-soderbergh_Cover.jpg'),
(67, 'Steven', '', 'Spielberg', 'M', '', 'directors/steven-spielberg_Cover.jpg'),
(68, 'Susan', '', 'Seidelman', 'F', '', 'directors/susan-seidelman_Cover.jpg'),
(69, 'Sydney', '', 'Pollack', 'M', '', 'directors/sydney-pollack_Cover.jpg'),
(70, 'Tom', '', 'Hooper', 'M', '', 'directors/tom-hooper_Cover.jpg'),
(71, 'Vera', '', 'Chytilová', 'F', '', 'directors/vera-chytilova_Cover.jpg'),
(72, 'Warren', '', 'Beatty', 'M', '', 'directors/warren-beatty_Cover.jpg'),
(73, 'Wes', '', 'Anderson', 'M', '', 'directors/wes-anderson_Cover.jpg'),
(74, 'William', '', 'Friedkin', 'M', '', 'directors/william-friedkin_Cover.jpg'),
(75, 'Woody', '', 'Allen', 'M', '', 'directors/woody-allen_Cover.jpeg'),
(76, 'Doug', '', 'Liman', 'M', '', 'directors/doug-liman_Cover.jpeg'),
(77, 'Tony', '', 'Gilroy', 'M', '', 'directors/tony-gilroy_Cover.jpg'),
(78, 'Paul', '', 'Greengrass', 'M', '', 'directors/paul-greengrass_Cover.jpg'),
(79, 'Tim', '', 'Miller', 'M', '', 'directors/tim-miller_Cover.png'),
(80, 'David', '', 'Leitch', 'M', '', 'directors/david-leitch_Cover.jpg'),
(81, 'Chris', '', 'Columbus', 'M', '', 'directors/chris-columbus_Cover.jpg'),
(82, 'Mike', '', 'Newell', 'M', '', 'directors/mike-newell_Cover.jpg'),
(83, 'David', '', 'Yates', 'M', '', 'directors/david-yates_Cover.png'),
(84, 'Chad', '', 'Stahelski', 'M', '', 'directors/chad-stahelski_Cover.jpg'),
(85, 'Brian', 'De', 'Palma', 'M', '', 'directors/brian-de-palma_Cover.jpg'),
(86, 'John', '', 'Woo', 'M', '', 'directors/john-woo_Cover.jpg'),
(87, 'J.J.', '', 'Abrams', 'M', '', 'directors/jj-abrams_Cover.jpeg'),
(88, 'Brad', '', 'Bird', 'M', '', 'directors/brad-bird_Cover.jpg'),
(89, 'Timothy', 'Van', 'Patten', 'M', '', 'directors/timothy-van-patten_Cover.jpg'),
(90, 'Brian', '', 'Kirk', 'M', '', 'directors/brian-kirk_Cover.jpg'),
(91, 'Daniel', '', 'Minahan', 'M', '', 'directors/daniel-minahan_Cover.jpg'),
(92, 'Alan', '', 'Taylor', 'M', '', 'directors/alan-taylor_Cover.jpg'),
(93, 'Michael', '', 'Uppendahl', 'M', '', 'directors/michael-uppendahl_Cover.jpg'),
(94, 'Daniel', '', 'Attias', 'M', '', 'directors/daniel-attias_Cover.jpg'),
(95, 'Andrew', '', 'Bernstein', 'M', '', 'directors/andrew-bernstein_Cover.jpg'),
(96, 'Kevin', '', 'Hooks', 'M', '', 'directors/kevin-hooks_Cover.jpg'),
(97, 'Greg', '', 'Yaitanes', 'M', '', 'directors/greg-yaitanes_Cover.jpg'),
(98, 'Ana', 'Lily', 'Amirpour', 'F', '', 'directors/ana-lily-amirpour_Cover.jpg'),
(99, 'Julie', 'Anne', 'Robinson', 'F', '', 'directors/julie-anne-robinson_Cover.jpg'),
(100, 'Nicole', '', 'Kassell', 'F', '', 'directors/nicole-kassell_Cover.jpg'),
(101, 'Jonathan', '', 'Nolan', 'M', '', 'directors/jonathan-nolan_Cover.jpg'),
(102, 'Richard', 'J.', 'Lewis', 'M', '', 'directors/richard-j-lewis_Cover.jpg'),
(103, 'Neil', '', 'Marshall', 'M', '', 'directors/neil-marshall_Cover.jpg'),
(104, 'Vincenzo', '', 'Natali', 'M', '', 'directors/vincenzo-natali_Cover.jpg'),
(105, 'Jonny', '', 'Campbell', 'M', '', 'directors/jonny-campbell_Cover.jpg'),
(106, 'Frederick', 'E.O.', 'Toye', 'M', '', 'directors/frederick-eo-toye_Cover.jpg'),
(107, 'Stephen', '', 'Williams', 'M', '', 'directors/stephen-williams_Cover.png'),
(108, 'Michelle', '', 'MacLaren', 'F', '', 'directors/michelle-maclaren_Cover.jpg'),
(109, 'Lisa', '', 'Joy', 'F', '', 'directors/lisa-joy_Cover.jpeg'),
(110, 'Craig', '', 'Zobel', 'M', '', 'directors/craig-zobel_Cover.jpg'),
(111, 'Tarik', '', 'Saleh', 'M', '', 'directors/tarik-saleh_Cover.jpg'),
(112, 'Uta', '', 'Briesewitz', 'F', '', 'directors/uta-briesewitz_Cover.jpg'),
(113, 'Coky', '', 'Giedroyc', 'F', '', 'directors/coky-giedroyc_Cover.jpg'),
(114, 'Paul', '', 'McGuigan', 'M', '', 'directors/paul-mcguigan_Cover.jpg'),
(115, 'Euros', '', 'Lyn', 'M', '', 'directors/euros-lyn_Cover.jpg'),
(116, 'Vince', '', 'Gilligan', 'M', '', 'directors/vince-gilligan_Cover.png'),
(117, 'Adam', '', 'Bernstein', 'M', '', 'directors/adam-bernstein_Cover.jpg'),
(118, 'Jim', '', 'McKay', 'M', '', 'directors/jim-mckay_Cover.jpg'),
(119, 'Tricia', '', 'Brock', 'F', '', 'directors/tricia-brock_Cover.jpg'),
(120, 'Bronwen', '', 'Hughes', 'F', '', 'directors/bronwen-hughes_Cover.jpg'),
(121, 'Tim', '', 'Hunter', 'M', '', 'directors/tim-hunter_Cover.jpg');

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
(1, 'Agnès', '', 'Godard', 'F', '', 'dp/agnesgodard_Cover.jpg'),
(2, 'Alfonso', '', 'Cuarón', 'M', '', 'dp/alfonsocuaron_Cover.jpg'),
(3, 'Andrew', '', 'Lesnie', 'M', '', 'dp/andrewlesnie_Cover.jpg'),
(4, 'Anthony', 'Dod', 'Mantle', 'M', '', 'dp/anthonydodmantle_Cover.jpg'),
(5, 'Asakazu', '', 'Nakai', 'M', '', 'dp/asakazunakai_Cover.jpg'),
(6, 'Billy', '', 'Williams', 'M', '', 'dp/billywilliams_Cover.jpg'),
(7, 'Birgit', '', 'Gudjónsdóttir', 'F', '', 'dp/birgitgudjonsdottir_Cover.jpg'),
(8, 'Bradford', '', 'Young', 'M', '', 'dp/bradfordyoung_Cover.jpg'),
(9, 'Bruno', '', 'Delbonnel', 'M', '', 'dp/brunodelbonnel_Cover.jpg'),
(10, 'Burnett', '', 'Guffey', 'M', '', 'dp/burnettguffey_Cover.jpg'),
(11, 'Charles', '', 'Lang', 'M', '', 'dp/charleslang_Cover.jpg'),
(12, 'Charlotte', 'Bruus', 'Christensen', 'F', '', 'dp/charlottebruuschristensen_Cover.jpg'),
(13, 'Chris', '', 'Menges', 'M', '', 'dp/chrismenges_Cover.jpg'),
(14, 'Claudio', '', 'Miranda', 'M', '', 'dp/claudiomiranda_Cover.jpg'),
(15, 'Conrad', '', 'Hall', 'M', '', 'dp/conradhall_Cover.jpg'),
(16, 'Dan', '', 'Laustsen', 'M', '', 'dp/danlaustsen_Cover.jpg'),
(17, 'David', '', 'Watkin', 'M', '', 'dp/davidwatkin_Cover.jpg'),
(18, 'Dean', '', 'Semler', 'M', '', 'dp/deansemler_Cover.jpg'),
(19, 'Dion', '', 'Beebe', 'M', '', 'dp/dionbeebe_Cover.jpg'),
(20, 'Edward', '', 'Cronjager', 'M', '', 'dp/edwardcronjager_Cover.jpg'),
(21, 'Edward', '', 'Lachman', 'M', '', 'dp/edwardlachman_Cover.jpg'),
(22, 'Ellen', '', 'Kuras', 'F', '', 'dp/ellenkuras_Cover.jpg'),
(23, 'Emmanuel', '', 'Lubezki', 'M', '', 'dp/emmanuellubezki_Cover.jpg'),
(24, 'Ernest', '', 'Laszlo', 'M', '', 'dp/ernestlaszlo_Cover.jpg'),
(25, 'Freddie', '', 'Francis', 'M', '', 'dp/freddiefrancis_Cover.jpg'),
(26, 'Freddie', '', 'Young', 'M', '', 'dp/freddieyoung_Cover.jpg'),
(27, 'Fred', 'J.', 'Koenekamp', 'M', '', 'dp/fredjkoenekamp_Cover.jpg'),
(28, 'Geoffrey', '', 'Unsworth', 'M', '', 'dp/geoffreyunsworth_Cover.jpg'),
(29, 'Greig', '', 'Fraser', 'M', '', 'dp/greigfraser_Cover.jpg'),
(30, 'Guillermo', '', 'Navarro', 'M', '', 'dp/guillermonavarro_Cover.jpg'),
(31, 'Harry', '', 'Stradling Jr.', 'M', '', 'dp/harrystradlingjr_Cover.jpg'),
(32, 'Haskell', '', 'Wexler', 'M', '', 'dp/haskellwexler_Cover.jpg'),
(33, 'Hoyte', 'van', 'Hoytema', 'M', '', 'dp/hoytevanhoytema_Cover.jpg'),
(34, 'Iris', '', 'Ng', 'F', '', 'dp/irisng_Cover.jpg'),
(35, 'James', '', 'Laxton', 'M', '', 'dp/jameslaxton_Cover.jpg'),
(36, 'James', 'Wong', 'Howe', 'M', '', 'dp/jameswonghowe_Cover.jpg'),
(37, 'Janusz', '', 'Kaminski', 'M', '', 'dp/januszkaminski_Cover.jpg'),
(38, 'John', '', 'Alcott', 'M', '', 'dp/johnalcott_Cover.jpg'),
(39, 'John', '', 'Seale', 'M', '', 'dp/johnseale_Cover.jpg'),
(40, 'John', '', 'Toll', 'M', '', 'dp/johntoll_Cover.jpg'),
(41, 'Joseph', '', 'Ruttenberg', 'M', '', 'dp/josephruttenberg_Cover.jpg'),
(42, 'Kira', '', 'Kelly', 'F', '', 'dp/kirakelly_Cover.jpg'),
(43, 'Laura', '', 'Bellingham', 'F', '', 'dp/laurabellingham_Cover.jpg'),
(44, 'Leon', '', 'Shamroy', 'M', '', 'dp/leonshamroy_Cover.jpg'),
(45, 'Linus', '', 'Sandgren', 'M', '', 'dp/linussandgren_Cover.jpg'),
(46, 'Lionel', '', 'Lindon', 'M', '', 'dp/lionellindon_Cover.jpg'),
(47, 'Lukasz', '', 'Zal', 'M', '', 'dp/lukaszzal_Cover.jpg'),
(48, 'Maryse', '', 'Alberti', 'F', '', 'dp/marysealberti_Cover.jpg'),
(49, 'Matthew', '', 'Libatique', 'M', '', 'dp/matthewlibatique_Cover.jpg'),
(50, 'Mauro', '', 'Fiore', 'M', '', 'dp/maurofiore_Cover.jpg'),
(51, 'Milton', '', 'Krasner', 'M', '', 'dp/miltonkrasner_Cover.jpg'),
(52, 'Néstor', '', 'Almendros', 'M', '', 'dp/nestoralmendros_Cover.jpg'),
(53, 'Oswald', '', 'Morris', 'M', '', 'dp/oswaldmorris_Cover.jpg'),
(54, 'Peter', '', 'Pau', 'M', '', 'dp/peterpau_Cover.jpg'),
(55, 'Philippe', '', 'Rousselot', 'M', '', 'dp/philipperousselot_Cover.jpg'),
(56, 'Polly', '', 'Morgan', 'F', '', 'dp/pollymorgan_Cover.jpg'),
(57, 'Rachel', '', 'Morrison', 'F', '', 'dp/rachelmorrison_Cover.jpg'),
(58, 'Reed', '', 'Morano', 'F', '', 'dp/reedmorano_Cover.jpg'),
(59, 'Robbie', '', 'Ryan', 'M', '', 'dp/robbieryan_Cover.jpg'),
(60, 'Robert', '', 'Elswit', 'M', '', 'dp/robertelswit_Cover.jpg'),
(61, 'Robert', '', 'Richardson', 'M', '', 'dp/robertrichardson_Cover.jpg'),
(62, 'Robert', '', 'Surtees', 'M', '', 'dp/robertsurtees_Cover.jpg'),
(63, 'Robert', '', 'Yeoman', 'M', '', 'dp/robertyeoman_Cover.jpg'),
(64, 'Rodrigo', '', 'Prieto', 'M', '', 'dp/rodrigoprieto_Cover.jpg'),
(65, 'Roger', '', 'Deakins', 'M', '', 'dp/rogerdeakins_Cover.jpg'),
(66, 'Ronnie', '', 'Taylor', 'M', '', 'dp/ronnietaylor_Cover.jpg'),
(67, 'Russell', '', 'Boyd', 'M', '', 'dp/russellboyd_Cover.jpeg'),
(68, 'Russell', '', 'Carpenter', 'M', '', 'dp/russellcarpenter_Cover.jpg'),
(69, 'Russell', '', 'Metty', 'M', '', 'dp/russellmetty_Cover.jpg'),
(70, 'Sven', '', 'Nykvist', 'M', '', 'dp/svennykvist_Cover.jpg'),
(71, 'Vilmos', '', 'Zsigmond', 'M', '', 'dp/vilmoszsigmond_Cover.jpg'),
(72, 'Vittorio', '', 'Storaro', 'M', '', 'dp/vittoriostoraro_Cover.jpg'),
(73, 'Wally', '', 'Pfister', 'M', '', 'dp/wallypfister_Cover.jpg'),
(74, 'Walter', '', 'Lassally', 'M', '', 'dp/walterlassally_Cover.jpg'),
(75, 'Oliver', '', 'Wood', 'M', '', 'dp/oliver-wood_Cover.jpg'),
(76, 'Ken', '', 'Seng', 'M', '', 'dp/ken-seng_Cover.jpg'),
(77, 'Jonathan', '', 'Sela', 'M', '', 'dp/jonathan-sela_Cover.jpg'),
(78, 'Roger', '', 'Pratt', 'M', '', 'dp/roger-pratt_Cover.jpg'),
(79, 'Michael', '', 'Seresin', 'M', '', 'dp/michael-seresin_Cover.jpg'),
(80, 'Slawomir', '', 'Idziak', 'M', '', 'dp/slawomir-idziak_Cover.jpg'),
(81, 'Eduardo', '', 'Serra', 'M', '', 'dp/eduardo-serra_Cover.jpg'),
(82, 'Barry', '', 'Ackroyd', 'M', '', 'dp/barry-ackroyd_Cover.jpg'),
(83, 'Stephen', 'H.', 'Burum', 'M', '', 'dp/stephen-h-burum_Cover.jpg'),
(84, 'Jeffrey', 'L.', 'Kimball', 'M', '', 'dp/jeffrey-l-kimball_Cover.jpg'),
(85, 'Dan', '', 'Mindel', 'M', '', 'dp/dan-mindel_Cover.jpg'),
(86, 'Alik', '', 'Sakharov', 'M', '', 'dp/alik-sakharov_Cover.jpeg'),
(87, 'Marco', '', 'Pontecorvo', 'M', '', 'dp/marco-pontecorvo_Cover.jpg'),
(88, 'Matthew', '', 'Jensen', 'M', '', 'dp/matthew-jensen_Cover.jpg'),
(89, 'Richard', '', 'Rutkowski', 'M', '', 'dp/richard-rutkowski_Cover.jpg'),
(90, 'Paul', '', 'Cameron', 'M', '', 'dp/paul-cameron_Cover.jpg'),
(91, 'Brendan', '', 'Galvin', 'M', '', 'dp/brendan-galvin_Cover.jpg'),
(92, 'Robert', '', 'McLachlan', 'M', '', 'dp/robert-mclachlan_Cover.jpg'),
(93, 'Jeffrey', '', 'Jur', 'M', '', 'dp/jeffrey-jur_Cover.jpg'),
(94, 'David', '', 'Franco', 'M', '', 'dp/david-franco_Cover.jpg'),
(95, 'Darran', '', 'Tiernan', 'M', '', 'dp/darran-tiernan_Cover.jpg'),
(96, 'John', '', 'Grillo', 'M', '', 'dp/john-grillo_Cover.jpg'),
(97, 'M.', 'David', 'Mullen', 'M', '', 'dp/m-david-mullen_Cover.jpg'),
(98, 'Matt', '', 'Gray', 'M', '', 'dp/matt-gray_Cover.jpg'),
(99, 'Steve', '', 'Lawes', 'M', '', 'dp/steve-lawes_Cover.jpg'),
(100, 'Reynaldo', '', 'Villalobos', 'M', '', 'dp/reynaldo-villalobos_Cover.jpg');

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
  `unit_price` decimal(5,2) UNSIGNED NOT NULL,
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `shipper_id` int(10) UNSIGNED NOT NULL,
  `ordered_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `total` decimal(5,2) UNSIGNED DEFAULT NULL,
  `credit_card_num` mediumint(4) UNSIGNED ZEROFILL NOT NULL,
  `shipping` int(10) UNSIGNED NOT NULL DEFAULT '0'
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
(1, 'Aaron', '', 'Sorkin', 'M', '', 'producers/aaron-sorkin_Cover.jpg'),
(2, 'Adam', '', 'McKay', 'M', '', 'producers/adam-mckay_Cover.jpg'),
(3, 'Adele', '', 'Romanski', 'F', '', 'producers/adele-romanski_Cover.jpg'),
(4, 'Alex', '', 'Gansa', 'M', '', 'producers/alex-gansa_Cover.jpg'),
(5, 'Alfonso', '', 'Cuarón', 'M', '', 'producers/alfonso-cuaron_Cover.jpg'),
(6, 'Allie', '', 'Goss', 'F', '', 'producers/allie-goss_Cover.jpg'),
(7, 'Amanda', '', 'Posey', 'F', '', 'producers/amanda-posey_Cover.jpg'),
(8, 'Amy', '', 'Pascal', 'F', '', 'producers/amy-pascal_Cover.jpg'),
(9, 'Amy', '', 'Sherman-Palladino', 'F', '', 'producers/amy-shermanpalladino_Cover.jpg'),
(10, 'Angie', '', 'Fielder', 'F', '', 'producers/angie-fielder_Cover.jpg'),
(11, 'Bill', '', 'Gerber', 'M', '', 'producers/bill-gerber_Cover.jpg'),
(12, 'Bradley', '', 'Cooper', 'M', '', 'producers/bradley-cooper_Cover.jpg'),
(13, 'Brian', 'Hayes', 'Currie', 'M', '', 'producers/brian-currie_Cover.jpg'),
(14, 'Bruce', '', 'Miller', 'M', '', 'producers/bruce-miller_Cover.jpg'),
(15, 'Carla', '', 'Hacken', 'F', '', 'producers/carla-hacken_Cover.jpg'),
(16, 'Carolyn', '', 'Strauss', 'F', '', 'producers/carolyn-strauss_Cover.jpg'),
(17, 'Cecci', '', 'Dempsey', 'F', '', 'producers/ceci-dempsey_Cover.jpg'),
(18, 'Charles', 'B.', 'Wessler', 'M', '', 'producers/charles-b-wessler_Cover.jpg'),
(19, 'Christopher', '', 'Nolan', 'M', '', 'producers/chris-nolan_Cover.jpeg'),
(20, 'Christopher', '', 'Lloyd', 'M', '', 'producers/christopher-lloyd_Cover.jpg'),
(21, 'Cindy', '', 'Holland', 'F', '', 'producers/cindy-holland_Cover.jpg'),
(22, 'Claire', '', 'Danes', 'F', '', 'producers/claire-danes_Cover.jpg'),
(23, 'Daniel', '', 'Palladino', 'M', '', 'producers/daniel-palladino_Cover.jpg'),
(24, 'David', '', 'Benioff', 'M', '', 'producers/david_benioff_Cover.png'),
(25, 'David', '', 'Chase', 'M', '', 'producers/david-chase_Cover.jpg'),
(26, 'D.B.', '', 'Weiss', 'M', '', 'producers/d-b-weiss_Cover.png'),
(27, 'Dede', '', 'Gardner', 'F', '', 'producers/dede_gardner_Cover.png'),
(28, 'Donna', '', 'Gigliotti', 'F', '', 'producers/donnagigliotti_Cover.jpg'),
(29, 'Ed', '', 'Guiney', 'M', '', 'producers/ed-guiney_Cover.jpg'),
(30, 'Elaine', '', 'Ko', 'F', '', 'producers/elaine-ko_Cover.jpg'),
(31, 'Émilie', '', 'Georges', 'F', '', 'producers/emilie-georges_Cover.jpg'),
(32, 'Emma', '', 'Thomas', 'F', '', 'producers/emma-thomas_Cover.jpg'),
(33, 'Finola', '', 'Dwyer', 'F', '', 'producers/finola-dwyer_Cover.jpg'),
(34, 'Frank', '', 'Doelger', 'M', '', 'producers/frank_doelger_Cover.jpg'),
(35, 'George', 'R. R.', 'Martin', 'M', '', 'producers/george-r-r-martin_Cover.jpg'),
(36, 'Graham', '', 'King', 'M', '', 'producers/graham-king_Cover.jpg'),
(37, 'Ilene', '', 'Chaiken', 'F', '', 'producers/ilene-chaiken_Cover.jpg'),
(38, 'Ilene', 'S.', 'Landress', 'F', '', 'producers/ilene-s-landress_Cover.jpg'),
(39, 'Janet', '', 'Leahy', 'F', '', 'producers/janet-leahy_Cover.jpg'),
(40, 'Jason', '', 'Blum', 'M', '', 'producers/jason-blum_Cover.png'),
(41, 'Jenno', '', 'Topping', 'F', '', 'producers/jenno-topping_Cover.jpg'),
(42, 'Jeremy', '', 'Kleiner', 'M', '', 'producers/jeremy-kleiner_Cover.png'),
(43, 'Jim', '', 'Burke', 'M', '', 'producers/jim-burke_Cover.jpg'),
(44, 'Jordan', '', 'Peele', 'M', '', 'producers/jordan-peele_Cover.jpg'),
(45, 'Julie', '', 'Yorn', 'F', '', 'producers/julie-yorn_Cover.jpg'),
(46, 'Kevin', '', 'Feige', 'M', '', 'producers/kevin-feige_Cover.png'),
(47, 'Kevin', 'J.', 'Messick', 'M', '', 'producers/kevin-messick_Cover.jpg'),
(48, 'Kimberly', '', 'Steward', 'F', '', 'producers/kimberly-steward_cover.jpeg'),
(49, 'Kristie', 'Macosko', 'Krieger', 'F', '', 'producers/kristie-macosko-krieger_Cover.jpg'),
(50, 'Larry', '', 'David', 'M', '', 'producers/larry-david_Cover.jpg'),
(51, 'Lesli', 'Linka', 'Glatter', 'F', '', 'producers/lesli-linka-glatter_Cover.jpg'),
(52, 'Lisa', '', 'Bruce', 'F', '', 'producers/lisa-bruce_Cover.jpg'),
(53, 'Lorne', '', 'Michaels', 'M', '', 'producers/lorne-michaels_Cover.jpg'),
(54, 'Lynette', 'Howell', 'Taylor', 'F', '', 'producers/lynette-howell-taylor_Cover.jpg'),
(55, 'Maria', '', 'Jacquemetton', 'F', '', 'producers/maria-jacquemetton_Cover.jpg'),
(56, 'Mark', '', 'Johnson', 'M', '', 'producers/mark-johnson_Cover.png'),
(57, 'Marta', '', 'Kauffman', 'F', '', 'producers/marta-kauffman_Cover.jpg'),
(58, 'Mary', '', 'Parent', 'F', '', 'producers/mary-parent_Cover.png'),
(59, 'Matthew', '', 'Weiner', 'M', '', 'producers/matthew-weiner_Cover.jpg'),
(60, 'Megan', '', 'Ellison', 'F', '', 'producers/megan-ellison_Cover.png'),
(61, 'Meredith', '', 'Stiehm', 'F', '', 'producers/meredith-stiehm_Cover.jpg'),
(62, 'Michelle', '', 'MacLaren', 'F', '', 'producers/michelle-maclaren_Cover.jpg'),
(63, 'Mindy', '', 'Kaling', 'F', '', 'producers/mindy-kaling_Cover.jpg'),
(64, 'Moira', '', 'Walley-Beckett', 'F', '', 'producers/moira-walleybeckett_Cover.jpg'),
(65, 'Nick', '', 'Vallelonga', 'M', '', 'producers/nick-vallelonga_Cover.jpg'),
(66, 'Patty', '', 'Lin', 'F', '', 'producers/patty-lin_Cover.jpg'),
(67, 'Peter', '', 'Farrelly', 'M', '', 'producers/peter-farrelly_Cover.jpg'),
(68, 'Sam', '', 'Catlin', 'M', '', 'producers/sam-catlin_Cover.jpg'),
(69, 'Sean', '', 'McKittrick', 'M', '', 'producers/sean-mckittrick_Cover.jpg'),
(70, 'Steven', '', 'Levitan', 'M', '', 'producers/stevenlevitan_Cover.jpeg'),
(71, 'Tina', '', 'Fey', 'F', '', 'producers/tina-fey_Cover.jpg'),
(72, 'Vali', '', 'Chandrasekaran', 'M', '', 'producers/vali-chandrasekaran_Cover.png'),
(73, 'Vince', '', 'Gilligan', 'M', '', 'producers/vince-gilligan_Cover.png'),
(74, 'Warren', '', 'Littlefield', 'M', '', 'producers/warren_littlefield_Cover.png'),
(75, 'Yorgos', '', 'Lanthimos', 'M', '', 'producers/yorgos-lanthimos_Cover.jpg'),
(76, 'Larry', '', 'Franco', 'M', '', 'producers/larry-franco_Cover.jpg'),
(77, 'Benjamin', '', 'Melniker', 'M', '', 'producers/benjamin-melniker_Cover.jpg'),
(78, 'Lorne', '', 'Orleans', 'M', '', 'producers/lorne-orleans_Cover.jpg'),
(79, 'Charles', '', 'Roven', 'M', '', 'producers/charles-roven_Cover.png'),
(80, 'Michael', 'E.', 'Uslan', 'M', '', 'producers/michael-e-uslan_Cover.jpg'),
(81, 'Patrick', '', 'Crowley', 'M', '', 'producers/patrick-crowley_Cover.jpg'),
(82, 'Richard', 'N.', 'Gladstein', 'M', '', 'producers/richard-n-gladstein_Cover.jpg'),
(83, 'Doug', '', 'Liman', 'M', '', 'producers/doug-liman_Cover.jpeg'),
(84, 'Robert', '', 'Ludlum', 'M', '', 'producers/robert-ludlum_Cover.jpg'),
(85, 'Frank', '', 'Marshall', 'M', '', 'producers/frank-marshall_cover.png'),
(86, 'Jennifer', '', 'Fox', 'F', '', 'producers/jennifer-fox_Cover.jpg'),
(87, 'Daniel', 'M.', 'Stillman', 'M', '', 'producers/daniel-m-stillman_Cover.jpg'),
(88, 'Jeffrey', 'M.', 'Weiner', 'M', '', 'producers/jeffrey-m-weiner_Cover.jpg'),
(89, 'Henning', '', 'Molfenter', 'M', '', 'producers/henning-molfenter_Cover.jpg'),
(90, 'Thierry', '', 'Potok', 'M', '', 'producers/thierry-potok_Cover.jpg'),
(91, 'Paul', '', 'Sandberg', 'M', '', 'producers/paul-sandberg_Cover.jpg'),
(92, 'Kevin', 'De La', 'Noy', 'M', '', 'producers/kevin-de-la-noy_Cover.jpg'),
(93, 'Jordan', '', 'Goldberg', 'M', '', 'producers/jordan-goldberg_Cover.jpg'),
(94, 'Philip', '', 'Lee', 'M', '', 'producers/philip-lee_Cover.jpg'),
(95, 'Thomas', '', 'Tull', 'M', '', 'producers/thomas-tull_Cover.jpg'),
(96, 'Zakaria', '', 'Alaoui', 'M', '', 'producers/zakaria-alaoui_Cover.png'),
(97, 'John', '', 'Bernard', 'M', '', 'producers/john-bernard_Cover.jpeg'),
(98, 'John', 'J.', 'Kelly', 'M', '', 'producers/john-j-kelly_Cover.jpg'),
(99, 'Simon', '', 'Kinberg', 'M', '', 'producers/simon-kinberg_Cover.jpg'),
(100, 'Jonathon', 'Komack', 'Martin', 'M', '', 'producers/jonathon-komack-martin_Cover.jpg'),
(101, 'Rhett', '', 'Reese', 'M', '', 'producers/rhett-reese_Cover.jpg'),
(102, 'Ryan', '', 'Reynolds', 'M', '', 'producers/ryan-reynolds_Cover.jpg'),
(103, 'Lauren', 'Shuler', 'Donner', 'F', '', 'producers/lauren-shuler-donner_Cover.jpg'),
(104, 'Aditya', '', 'Sood', 'M', '', 'producers/aditya-sood_Cover.jpg'),
(105, 'Paul', '', 'Wernick', 'M', '', 'producers/paul-wernick_Cover.jpg'),
(106, 'Stan', '', 'Lee', 'M', '', 'producers/stan-lee_Cover.jpg'),
(107, 'Kelly', '', 'McCormick', 'F', '', 'producers/kelly-mccormick_Cover.jpg'),
(108, 'Todd', '', 'Arnow', 'M', '', 'producers/todd-arnow_Cover.jpg'),
(109, 'Michael', '', 'Barnathan', 'M', '', 'producers/michael-barnathan_Cover.jpg'),
(110, 'Chris', '', 'Columbus', 'M', '', 'producers/chris-columbus_Cover.jpg'),
(111, 'Paula', 'DuPré', 'Pesmen', 'F', '', 'producers/paula-dupre-pesmen_Cover.jpg'),
(112, 'Duncan', '', 'Henderson', 'M', '', 'producers/duncan-henderson_Cover.jpg'),
(113, 'David', '', 'Heyman', 'M', '', 'producers/david-heyman_Cover.jpg'),
(114, 'Mark', '', 'Radcliffe', 'M', '', 'producers/mark-radcliffe_Cover.jpg'),
(115, 'Tanya', '', 'Seghatchian', 'F', '', 'producers/tanya-seghatchian_Cover.jpg'),
(116, 'David', '', 'Barron', 'M', '', 'producers/david-barron_Cover.jpg'),
(117, 'Chris', '', 'Carreras', 'M', '', 'producers/chris-carreras_Cover.jpg'),
(118, 'Callum', '', 'McDougall', 'M', '', 'producers/callum-mcdougall_Cover.jpg'),
(119, 'Peter', '', 'MacDonald', 'M', '', 'producers/peter-macdonald_Cover.jpg'),
(120, 'Geraldine', '', 'Patten', 'F', '', 'producers/geraldine-patten_Cover.jpg'),
(121, 'Lionel', '', 'Wigram', 'M', '', 'producers/lional-wigram_Cover.jpg'),
(122, 'J.K.', '', 'Rowling', 'F', '', 'producers/jk-rowling_Cover.jpg'),
(123, 'Debbi', '', 'Bossi', 'F', '', 'producers/debbi-bossi_Cover.jpeg'),
(124, 'Roy', '', 'Button', 'M', '', 'producers/roy-button_Cover.jpg'),
(125, 'Matt', '', 'Damon', 'M', '', 'producers/matt-damon_Cover.jpg'),
(126, 'Gregory', '', 'Goodman', 'M', '', 'producers/gregory-goodman_Cover.jpg'),
(127, 'Paul', '', 'Greengrass', 'M', '', 'producers/paul-greengrass_Cover.jpg'),
(128, 'Juan', 'Cano', 'Nono', 'M', '', 'producers/juan-cano-nono_Cover.jpg'),
(129, 'Christopher', '', 'Rouse', 'M', '', 'producers/christopher-rouse_Cover.jpg'),
(130, 'Jennifer', '', 'Todd', 'F', '', 'producers/jennifer-todd_Cover.jpg'),
(131, 'Andreas', '', 'Wentz', 'M', '', 'producers/andreas-wentz_Cover.jpg'),
(132, 'Tara', '', 'Finegan', 'F', '', 'producers/tara-finegan_Cover.jpg'),
(133, 'Kevin', 'Scott', 'Frakes', 'M', '', 'producers/kevin-scott-frakes_Cover.jpg'),
(134, 'Basil', '', 'Iwanyk', 'M', '', 'producers/basil-iwanyk_Cover.jpg'),
(135, 'Peter', '', 'Lawson', 'M', '', 'producers/peter-lawson_Cover.jpg'),
(136, 'Erica', '', 'Lee', 'F', '', 'producers/erica-lee_Cover.jpg'),
(137, 'David', '', 'Leitch', 'M', '', 'producers/david-leitch_Cover.jpg'),
(138, 'Eva', '', 'Longoria', 'F', '', 'producers/eva-longoria_Cover.jpg'),
(139, 'Raj', 'Brinder', 'Singh', 'M', '', 'producers/raj-brinder-singh_Cover.jpg'),
(140, 'Jared', '', 'Underwood', 'M', '', 'producers/jared-underwood_Cover.jpg'),
(141, 'Joseph', '', 'Vincenti', 'M', '', 'producers/joseph-vincenti_Cover.jpg'),
(142, 'Stephen', '', 'Hamel', 'M', '', 'producers/stephen-hamel_Cover.jpg'),
(143, 'Robert', '', 'Bernacchi', 'M', '', 'producers/robert-bernacchi_Cover.jpg'),
(144, 'Marco', 'Valerio', 'Pugini', 'M', '', 'producers/marco-valerio-pugini_Cover.jpg'),
(145, 'Vishal', '', 'Rungta', 'M', '', 'producers/vishal-rungta_Cover.jpg'),
(146, 'Jeff', 'G.', 'Waxman', 'M', '', 'producers/jeff-g-waxman_Cover.jpeg'),
(147, 'Shixing', '', 'Zhou', 'M', '', 'producers/shixing-zhou_Cover.jpg'),
(148, 'J.C.', '', 'Calciano', 'M', '', 'producers/jc-calciano_Cover.jpg'),
(149, 'Paula', '', 'Wagner', 'F', '', 'producers/paula-wagner_Cover.jpg'),
(150, 'Tom', '', 'Cruise', 'M', '', 'producers/tom-cruise_Cover.png'),
(151, 'Terence', '', 'Chang', 'M', '', 'producers/terence-chang_Cover.jpg'),
(152, 'Michael', '', 'Doven', 'M', '', 'producers/michael-doven_Cover.jpg'),
(153, 'Arthur', '', 'Anderson', 'M', '', 'producers/arthur-anderson_Cover.jpg'),
(154, 'Bill', '', 'Borden', 'M', '', 'producers/bill-borden_Cover.jpeg'),
(155, 'Sanping', '', 'Han', 'M', '', 'producers/sanping-han_Cover.jpg'),
(156, 'Stratton', '', 'Leopold', 'M', '', 'producers/stratton-leopold_Cover.jpg'),
(157, 'Enzo', '', 'Sisti', 'M', '', 'producers/enzo-sisti_Cover.jpg'),
(158, 'Haicheng', '', 'Zhao', 'M', '', 'producers/haicheng-zhao_Cover.jpg'),
(159, 'J.J.', '', 'Abrams', 'M', '', 'producers/jj-abrams_Cover.jpeg'),
(160, 'Josh', '', 'Appelbaum', 'M', '', 'producers/josh-appelbaum_Cover.jpg'),
(161, 'Bryan', '', 'Burk', 'M', '', 'producers/bryan-burk_Cover.jpg'),
(162, 'Jeffrey', '', 'Chernov', 'M', '', 'producers/jeffrey-chernov_Cover.jpg'),
(163, 'David', '', 'Ellison', 'M', '', 'producers/david-ellison_Cover.png'),
(164, 'Dana', '', 'Goldberg', 'F', '', 'producers/dana-goldberg_Cover.jpg'),
(165, 'Tommy', '', 'Harper', 'M', '', 'producers/tommy-harper_Cover.jpg'),
(166, 'David', '', 'Minkowski', 'M', '', 'producers/david-minkowski_Cover.jpg'),
(167, 'André', '', 'Nemec', 'M', '', 'producers/andre-nemec_Cover.jpg'),
(168, 'Tabrez', '', 'Noorani', 'M', '', 'producers/tabrez-noorani_Cover.jpeg'),
(169, 'Tom', 'C.', 'Peitzman', 'M', '', 'producers/tom-c-peitzman_Cover.jpg'),
(170, 'Ben', '', 'Rosenblatt', 'M', '', 'producers/ben-rosenblatt_Cover.jpg'),
(171, 'Pravesh', '', 'Sahni', 'M', '', 'producers/pravesh-sahni_Cover.jpg'),
(172, 'Paul', '', 'Schwake', 'M', '', 'producers/paul-schwake_Cover.jpg'),
(173, 'Tim', '', 'Smythe', 'M', '', 'producers/tim-smythe_Cover.jpg'),
(174, 'Matthew', '', 'Stillman', 'M', '', 'producers/matthew-stillman_Cover.jpeg'),
(175, 'Guymon', '', 'Casady', 'M', '', 'producers/guymon-casady_Cover.jpg'),
(176, 'Vince', '', 'Gerardis', 'M', '', 'producers/vince-gerardis_Cover.jpg'),
(177, 'Mark', '', 'Huffam', 'M', '', 'producers/mark-huffam_Cover.jpg'),
(178, 'Tom', '', 'McCarthy', 'M', '', 'producers/tom-mccarthy_Cover.jpg'),
(179, 'Christopher', '', 'Newman', 'M', '', 'producers/christopher-newman_Cover.jpg'),
(180, 'Greg', '', 'Spence', 'M', '', 'producers/greg-spence_Cover.jpg'),
(181, 'Ralph', '', 'Vicinanza', 'M', '', 'producers/ralph-vicinanza_Cover.jpg'),
(182, 'Scott', '', 'Brown', 'M', '', 'producers/scott-brown_Cover.jpg'),
(183, 'Lila', '', 'Byock', 'F', '', 'producers/lila-byock_Cover.jpg'),
(184, 'Stephen', '', 'King', 'M', '', 'producers/stephen-king_Cover.jpg'),
(185, 'Mark', '', 'Lafferty', 'M', '', 'producers/mark-lafferty_Cover.jpg'),
(186, 'Sam', '', 'Shaw', 'M', '', 'producers/sam-shaw_Cover.jpg'),
(187, 'Tom', '', 'Spezialy', 'M', '', 'producers/tom-spezialy_Cover.jpg'),
(188, 'Ben', '', 'Stephenson', 'M', '', 'producers/ben-stephenson_Cover.jpg'),
(189, 'Robin', '', 'Sweet', 'F', '', 'producers/robin-sweet_Cover.jpg'),
(190, 'Dustin', '', 'Thomason', 'M', '', 'producers/dustin-thomason_Cover.jpg'),
(191, 'Michael', '', 'Uppendahl', 'M', '', 'producers/michael-uppendahl_Cover.jpg'),
(192, 'Vinnie', '', 'Wilhelm', 'M', '', 'producers/vinnie_wilhelm_Cover.jpg'),
(193, 'Liz', '', 'Glotzer', 'F', '', 'producers/liz-glotzer_Cover.jpg'),
(194, 'David', '', 'Coatsworth', 'M', '', 'producers/david-coatsworth_Cover.jpg'),
(195, 'Susan', '', 'Ekins', 'F', '', 'producers/susan-ekins_Cover.jpg'),
(196, 'Lisa', '', 'Joy', 'F', '', 'producers/lisa-joy_Cover.jpeg'),
(197, 'Kathy', '', 'Lingg', 'F', '', 'producers/kathy-lingg_Cover.jpg'),
(198, 'Jonathan', '', 'Nolan', 'M', '', 'producers/jonathan-nolan_Cover.jpg'),
(199, 'Stephen', '', 'Semel', 'M', '', 'producers/stephen-semel_Cover.jpeg'),
(200, 'Jerry', '', 'Weintraub', 'M', '', 'producers/jerry-weintraub_Cover.jpg'),
(201, 'Athena', '', 'Wickham', 'F', '', 'producers/athena-wickham_Cover.png'),
(202, 'Ed', '', 'Brubaker', 'M', '', 'producers/ed-brubaker_Cover.png'),
(203, 'Richard', 'J.', 'Lewis', 'M', '', 'producers/richard-j-lewis_Cover.jpg'),
(204, 'Kath', '', 'Lingenfelter', 'F', '', 'producers/kath-lingenfelter_Cover.jpg'),
(205, 'Cherylanne', '', 'Martin', 'F', '', 'producers/cherylanne-martin_Cover.jpg'),
(206, 'Dominic', '', 'Mitchell', 'M', '', 'producers/dominic-mitchell_Cover.jpg'),
(207, 'Roberto', '', 'Patino', 'M', '', 'producers/roberto-patino_Cover.jpg'),
(208, 'Alan', '', 'Poul', 'M', '', 'producers/alan-poul_Cover.jpeg'),
(209, 'Daniel', 'T.', 'Thomsen', 'M', '', 'producers/daniel-t-thomsen_Cover.jpg'),
(210, 'Bridget', '', 'Carpenter', 'F', '', 'producers/bridget-carpenter_Cover.jpg'),
(211, 'Howard', '', 'Cummings', 'M', '', 'producers/howard-cummings_Cover.jpg'),
(212, 'Dan', '', 'Dietz', 'M', '', 'producers/dan-dietz_Cover.jpg'),
(213, 'Ron', '', 'Fitzgerald', 'M', '', 'producers/ron-fitzgerald_Cover.jpg'),
(214, 'Eugene', '', 'Kelly', 'M', '', 'producers/eugene-kelly_Cover.jpg'),
(215, 'Michael', '', 'Polaire', 'M', '', 'producers/michael-polaire_Cover.jpg'),
(216, 'Frederick', 'E.O.', 'Toye', 'M', '', 'producers/frederick-eo-toye_Cover.jpg'),
(217, 'Carly', '', 'Wray', 'F', '', 'producers/carly-wray_Cover.jpg'),
(218, 'Kelly', '', 'Calligan', 'F', '', 'producers/kelly-calligan_Cover.jpg'),
(219, 'Chevy', '', 'Chen', 'M', '', 'producers/chevy-chen_Cover.jpg'),
(220, 'Mark', '', 'Gatiss', 'M', '', 'producers/mark-gatiss_Cover.jpeg'),
(221, 'Steven', '', 'Moffat', 'M', '', 'producers/steven-moffat_Cover.jpg'),
(222, 'Beryl', '', 'Vertue', 'F', '', 'producers/beryl-vertue_Cover.jpg'),
(223, 'Sue', '', 'Vertue', 'F', '', 'producers/sue-vertue_Cover.jpg'),
(224, 'Rebecca', '', 'Eaton', 'F', '', 'producers/rebecca-eaton_Cover.jpeg'),
(225, 'Bethan', '', 'Jones', 'F', '', 'producers/bethan-jones_Cover.png'),
(226, 'Melissa', '', 'Bernstein', 'F', '', 'producers/melissa-bernstein_Cover.jpg'),
(227, 'Stewart', '', 'Lyons', 'M', '', 'producers/stewart-lyons_Cover.jpg');

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
(32, 13, 34, '', 2, 346, '2010-03-16', 'Cast and Crew Commentaries. Deleted/Extended Scenes. Making of Breaking Bad. AMC Shootout - Interview with Vince Gilligan and Bryan Cranston. Screen Tests. Inside Breaking Bad. Vince Gilligan\'s Photo Gallery');

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
  `unit_price` decimal(4,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `stock` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `image_1` varchar(50) NOT NULL,
  `image_2` varchar(50) DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
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
(32, 2, 1, 'Breaking Bad: Season 1 (Blu-ray)', '', '2008-01-20', 'Walter White is a down-on-his-luck chemistry teacher struggling to make ends meet for his wife and physically challenged son. Everything changes when Walter receives a startling diagnosis: terminal lung cancer. With only a few years to live and nothing to lose, Walter uses his training as a chemist to cook and sell crystal meth with one of his former students. As his status grows, so do his lies, but Walt will stop at nothing to make sure his family is taken care of after he\'s gone, even if it means putting all their lives on the line.', 'c4840956b4', 'BB1VGBRY0310AMC', '13.26', 33, '5d8c4850cec6d7.82641621.jpg', NULL, '2019-09-26 05:10:24');

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
(32, 487);

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
(32, 121);

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
(32, 100);

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
(32, 25);

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
(32, 227);

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
(32, 112);

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
(32, 138);

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

--
-- Dumping data for table `shippingaddress`
--

INSERT INTO `shippingaddress` (`id`, `user_id`, `address_1`, `address_2`, `city`, `state`, `zip`, `country`) VALUES
(2, 2, '1372 S Reed Ave', '', 'Reedley', 'CA', '93654', 'United States');

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
(33, '4K UHD EPISODES', 'Upscaled 4K 2160p 1.78:1', 'English: DTS-HD Master Audio 5.1', 'English SDH');

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
(2, '20th Century Fox Animation', '', 'studios/20th-century-fox-animation_Cover.png'),
(3, 'Adult Swim', '', 'studios/adult-swim_Cover.png'),
(4, 'Affirm Films', '', 'studios/affirm-films_Cover.png'),
(5, 'Amazon Studios', '', 'studios/amazon-studios_Cover.png'),
(6, 'Amblin Partners', '', 'studios/amblin-partners_Cover.png'),
(7, 'Bardel Entertainment', '', 'studios/bardel-entertainment_Cover.jpg'),
(8, 'Big Idea Entertainment', '', 'studios/big-idea-entertainment_Cover.png'),
(9, 'Blue Sky Studios', '', 'studios/blue-sky-studios_Cover.png'),
(10, 'Carnival Films', '', 'studios/carnival-films_Cover.jpg'),
(11, 'Cartoon Network Studios', '', 'studios/cartoon-network-studios_Cover.png'),
(12, 'Castle Rock Entertainment', '', 'studios/castle-rock-entertainment_Cover.png'),
(13, 'CBS Films', '', 'studios/cbs-films_Cover.png'),
(14, 'Columbia Pictures', '', 'studios/columbia-pictures_Cover.png'),
(15, 'Comedy Central', '', 'studios/comedy-central_Cover.png'),
(16, 'Constantin Films', '', 'studios/constantin-film_Cover.png'),
(17, 'CORE Media Group', '', 'studios/core-media-group_Cover.png'),
(18, 'Crunchyroll', '', 'studios/crunchyroll_Cover.png'),
(19, 'DC Films', '', 'studios/dc-films_Cover.png'),
(20, 'Destination Films', '', 'studios/destination-films_Cover.png'),
(21, 'Disneynature', '', 'studios/disneynature_Cover.png'),
(22, 'DreamWorks Animation', '', 'studios/dreamworks-animation_Cover.png'),
(23, 'ESPN Films', '', 'studios/espn-films_Cover.png'),
(24, 'FilmDistrict', '', 'studios/filmdistrict_Cover.jpg'),
(25, 'Flagship Entertainment', '', 'studios/flagship-entertainment_Cover.jpg'),
(26, 'Focus Features', '', 'studios/focus-features_Cover.png'),
(27, 'Fox Searchlight Pictures', '', 'studios/fox-searchlight-pictures_Cover.png'),
(28, 'Funimation', '', 'studios/funimation_Cover.png'),
(29, 'Gaumont', '', 'studios/gaumont_Cover.png'),
(30, 'Hanna-Barbera', '', 'studios/hannabarbera_Cover.png'),
(31, 'HBO Films', '', 'studios/hbo-films_Cover.png'),
(32, 'Hello Sunshine', '', 'studios/hello-sunshine_Cover.jpg'),
(33, 'Illumination', '', 'studios/illumination_Cover.png'),
(34, 'Illumination Mac Guff', '', 'studios/illumination-mac-guff_Cover.png'),
(35, 'Lionsgate', '', 'studios/lionsgate_Cover.png'),
(36, 'Lucasfilm', '', 'studios/lucasfilm_Cover.png'),
(37, 'Lucasfilm Animation', '', 'studios/lucasfilm-animation_Cover.png'),
(38, 'Marvel Animation', '', 'studios/marvel-animation_Cover.jpg'),
(39, 'Marvel Studios', '', 'studios/marvel-studios_Cover.png'),
(40, 'Metro-Goldwyn-Mayer', '', 'studios/metrogoldwynmayer_Cover.png'),
(41, 'MTV Films', '', 'studios/mtv-films_Cover.png'),
(42, 'Netflix', '', 'studios/netflix_Cover.png'),
(43, 'New Line Cinema', '', 'studios/new-line-cinema_Cover.png'),
(44, 'Nickelodeon Animation Studio', '', 'studios/nickelodeon-animation-studio_Cover.png'),
(45, 'Nickelodeon Movies', '', 'studios/nickelodeon-movies_Cover.png'),
(46, 'Nordisk Film', '', 'studios/nordisk-film_Cover.png'),
(47, 'Paramount Pictures', '', 'studios/paramount-pictures_Cover.png'),
(48, 'Paramount Vantage', '', 'studios/paramount-vantage_Cover.png'),
(49, 'Pixar', '', 'studios/pixar_Cover.png'),
(50, 'Regency Enterprises', '', 'studios/regency-enterprises_Cover.png'),
(51, 'RKO Pictures', '', 'studios/rko-pictures_Cover.png'),
(52, 'Rooster Teeth', '', 'studios/rooster-teeth_Cover.png'),
(53, 'Screen Gems', '', 'studios/screen-gems_Cover.png'),
(54, 'Sony Pictures Animation', '', 'studios/sony-pictures-animation_Cover.png'),
(55, 'Sony Pictures Classics', '', 'studios/sony-pictures-classics_Cover.png'),
(56, 'Sony Pictures Imageworks', '', 'studios/sony-pictures-imageworks_Cover.png'),
(57, 'Sony Pictures Worldwide Acquisitions', '', 'studios/sony-pictures-worldwide-acquisitions_Cover.png'),
(58, 'Stage 6 Films', '', 'studios/stage-6-films_Cover.png'),
(59, 'STX Entertainment', '', 'studios/stx-entertainment_Cover.png'),
(60, 'TriStar Pictures', '', 'studios/tristar-Pictures_Cover.png'),
(61, 'Triumph Films', '', 'studios/triumph-films_Cover.png'),
(62, 'United Artists', '', 'studios/united-artists_Cover.png'),
(63, 'Universal Animation Studios', '', 'studios/universal-animation-studios_Cover.png'),
(64, 'Universal Pictures', '', 'studios/universal-pictures_Cover.png'),
(65, 'Universal Pictures Home Entertainment', '', 'studios/universal-studios-home-entertainment_Cover.png'),
(66, 'Walt Disney', '', 'studios/walt-disney_Cover.png'),
(67, 'Walt Disney Animation Studios', '', 'studios/walt-disney-animation-studios_Cover.png'),
(68, 'Walt Disney Studios Motion Pictures', '', 'studios/walt-disney-studios-motion-pictures_Cover.png'),
(69, 'Warner Animation Group', '', 'studios/warner-animation-group_Cover.png'),
(70, 'Warner Bros.', '', 'studios/warner-bros_Cover.png'),
(71, 'Warner Bros. Animation', '', 'studios/warner-bros-animation_Cover.png'),
(72, 'Working Title Films', '', 'studios/working-title-films_Cover.png'),
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
  `registration_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
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
(5, 31);

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
  `response_reason` tinytext,
  `transaction_id` bigint(20) UNSIGNED NOT NULL,
  `response` text NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
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
  `registration_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `middle_name`, `last_name`, `email`, `pass`, `phone_num`, `profile_pic`, `verify_code`, `registration_date`) VALUES
(2, 'Elias', '', 'Gutierrez', 'gutierrezelias1991@gmail.com', '$2y$10$tp5Iq/CMKi7FjLe5BnDCtuzxkylBeQS1jmAs.JW3n8T1LhB0GHy4K', '559-595-3839', NULL, NULL, '2019-08-04 05:21:06');

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
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
(1, 'Aaron', '', 'Sorkin', 'M', '', 'writers/aaron-sorkin_Cover.jpg'),
(2, 'Abi', '', 'Morgan', 'F', '', 'writers/abi-morgan_Cover.jpg'),
(3, 'Adam', '', 'McKay', 'M', '', 'writers/adam-mckay_Cover.jpg'),
(4, 'Alan', '', 'Yang', 'M', '', 'writers/alan-yang_Cover.jpg'),
(5, 'Alejandro', 'González', 'Iñárritu', 'M', '', 'writers/alejandro-gonzalez-inarritu_Cover.jpg'),
(6, 'Alexander', '', 'Dinelaris Jr.', 'M', '', 'writers/alexander-dinelaris-jr_Cover.jpg'),
(7, 'Alexander', '', 'Payne', 'M', '', 'writers/alexander-payne_Cover.jpg'),
(8, 'Alex', '', 'Gansa', 'M', '', 'writers/alex-gansa_Cover.jpg'),
(9, 'Amy', '', 'Sherman-Palladino', 'F', '', 'writers/amy-shermanpalladino_Cover.jpg'),
(10, 'Armando', '', 'Bó', 'M', '', 'writers/armando-bo_Cover.jpg'),
(11, 'Armando', '', 'Iannucci', 'M', '', 'writers/armando-iannucci_Cover.jpg'),
(12, 'Aziz', '', 'Ansari', 'M', '', 'writers/aziz-ansari_Cover.jpg'),
(13, 'Barry', '', 'Jenkins', 'M', '', 'writers/barry-jenkins_Cover.jpg'),
(14, 'Bruce', '', 'Miller', 'M', '', 'writers/bruce-miller_Cover.jpg'),
(15, 'Charles', '', 'Randolph', 'M', '', 'writers/charles-randolph_Cover.jpg'),
(16, 'Chris', '', 'Terrio', 'M', '', 'writers/chris-terrio_Cover.jpg'),
(17, '', '', 'Coen brothers', 'M', '', 'writers/coen-brothers_Cover.jpg'),
(18, 'David', '', 'Benioff', 'M', '', 'writers/david_benioff_Cover.png'),
(19, 'David', '', 'Chase', 'M', '', 'writers/david-chase_Cover.jpg'),
(20, 'David', '', 'Seidler', 'M', '', 'writers/david-seidler_Cover.jpg'),
(21, 'D.B.', '', 'Weiss', 'M', '', 'writers/d-b-weiss_Cover.png'),
(22, 'Diablo', '', 'Cody', 'F', '', 'writers/diablo-cody_Cover.jpg'),
(23, 'Dustin', 'Lance', 'Black', 'M', '', 'writers/dustin-lance-black_Cover.jpg'),
(24, 'Emma', '', 'Thompson', 'F', '', 'writers/emma-thompson_Cover.jpg'),
(25, 'Erin', '', 'Levy', 'F', '', 'writers/erin-levy_Cover.jpg'),
(26, 'Geoffrey', 'S.', 'Fletcher', 'M', '', 'writers/geoffrey-s-fletcher_Cover.jpg'),
(27, 'Gideon', '', 'Raff', 'M', '', 'writers/gideon-raff_Cover.jpg'),
(28, 'Gillian', '', 'Flynn', 'F', '', 'writers/gillian-flynn_Cover.jpg'),
(29, 'Graham', '', 'Moore', 'M', '', 'writers/graham-moore_Cover.jpg'),
(30, 'Greg', '', 'Daniels', 'M', '', 'writers/greg-daniels_Cover.jpg'),
(31, 'Henry', '', 'Bromell', 'M', '', 'writers/henry-bromell_Cover.jpg'),
(32, 'Howard', '', 'Gordon', 'M', '', 'writers/howard-gordon_Cover.jpg'),
(33, 'James', '', 'Ivory', 'M', '', 'writers/james-ivory_Cover.jpg'),
(34, 'Jane', '', 'Goldman', 'F', '', 'writers/jane-goldman_Cover.jpg'),
(35, 'Jason', '', 'Katims', 'M', '', 'writers/jason-katims_Cover.jpeg'),
(36, 'Jeffrey', '', 'Richman', 'M', '', 'writers/jeffrey-richman_Cover.jpg'),
(37, 'Jim', '', 'Rash', 'M', '', 'writers/jim-rash_Cover.jpg'),
(38, 'Joel', '', 'Fields', 'M', '', 'writers/joel-fields_Cover.jpg'),
(39, 'Joe', '', 'Weisberg', 'M', '', 'writers/joe-weisberg_Cover.jpg'),
(40, 'John', '', 'Ridley', 'M', '', 'writers/john-ridley_Cover.jpg'),
(41, 'Jordan', '', 'Peele', 'M', '', 'writers/jordan-peele_Cover.jpg'),
(42, 'Josh', '', 'Singer', 'M', '', 'writers/josh-singer_Cover.jpg'),
(43, 'Karen', '', 'Kroner', 'F', '', 'writers/karen-croner_Cover.png'),
(44, 'Karen', '', 'McCullah', 'F', '', 'writers/karen-mccullah_Cover.jpg'),
(45, 'Kater', '', 'Gordon', 'F', '', 'writers/kater-gordon_Cover.jpg'),
(46, 'Kelly', '', 'Marcel', 'F', '', 'writers/kelly-marcel_Cover.jpg'),
(47, 'Kenneth', '', 'Lonergan', 'M', '', 'writers/kenneth-lonergan_Cover.jpg'),
(48, 'Kirsten', '', 'Smith', 'F', '', 'writers/kirsten-smith_Cover.jpeg'),
(49, 'Larry', '', 'Wilmore', 'M', '', 'writers/larry-wilmore_Cover.jpg'),
(50, 'Lena', '', 'Waithe', 'F', '', 'writers/lena-waithe_Cover.jpeg'),
(51, 'Leslie', '', 'Dixon', 'F', '', 'writers/leslie-dixon_Cover.png'),
(52, 'Lucinda', '', 'Coxon', 'F', '', 'writers/lucinda-coxon_Cover.jpg'),
(53, 'Mark', '', 'Boal', 'M', '', 'writers/mark-boal_Cover.jpg'),
(54, 'Matthew', '', 'Weiner', 'M', '', 'writers/matthew-weiner_Cover.jpg'),
(55, 'Matt', '', 'Hubbard', 'M', '', 'writers/matt-hubbard_Cover.jpg'),
(56, 'Melissa', '', 'Mathison', 'F', '', 'writers/melissa-mathison_Cover.jpg'),
(57, 'Melissa', '', 'Rosenberg', 'F', '', 'writers/melissa-rosenberg_Cover.jpeg'),
(58, 'Mitchell', '', 'Hurwitz', 'M', '', 'writers/mitchell-hurwitz_Cover.jpg'),
(59, 'Moira', '', 'Walley-Beckett', 'F', '', 'writers/moira-walleybeckett_Cover.jpg'),
(60, 'Nat', '', 'Faxon', 'M', '', 'writers/nat-faxon_Cover.jpg'),
(61, 'Nicolás', '', 'Giacobone', 'M', '', 'writers/nicolas-giacobone_Cover.jpg'),
(62, 'Nicole', '', 'Perlman', 'F', '', 'writers/nicole-perlman_Cover.jpg'),
(63, 'Quentin', '', 'Tarantino', 'M', '', 'writers/quentin-tarantino_Cover.jpg'),
(64, 'Shauna', '', 'Cross', 'F', '', 'writers/shauna-cross_Cover.jpg'),
(65, 'Simon', '', 'Beaufoy', 'M', '', 'writers/simon-beaufoy_Cover.jpeg'),
(66, 'Simon', '', 'Blackwell', 'M', '', 'writers/simon-blackwell_Cover.jpg'),
(67, 'Spike', '', 'Jonze', 'M', '', 'writers/spike-jonze_Cover.jpg'),
(68, 'Steven', '', 'Levitan', 'M', '', 'writers/stevenlevitan_Cover.jpeg'),
(69, 'Tina', '', 'Fey', 'F', '', 'writers/tina-fey_Cover.jpg'),
(70, 'Tom', '', 'McCarthy', 'M', '', 'writers/tom-mccarthy_Cover.jpg'),
(71, 'Tracey', '', 'Wigfield', 'F', '', 'writers/tracey-wigfield_Cover.jpg'),
(72, 'Tucker', '', 'Cawley', 'M', '', 'writers/tucker-cawley_Cover.jpg'),
(73, 'Vanessa', '', 'Taylor', 'F', '', 'writers/vanessa-taylor_Cover.jpg'),
(74, 'William', '', 'Monahan', 'M', '', 'writers/william-monahan_Cover.jpg'),
(75, 'Woody', '', 'Allen', 'M', '', 'writers/woody-allen_Cover.jpeg'),
(76, 'Christopher', '', 'Nolan', 'M', '', 'writers/chris-nolan_Cover.jpeg'),
(77, 'Bob', '', 'Kane', 'M', '', 'writers/bob-kane_Cover.jpg'),
(78, 'David', 'S.', 'Goyer', 'M', '', 'writers/david-s-goyer_Cover.png'),
(79, 'Tony', '', 'Gilroy', 'M', '', 'writers/tony-gilroy_Cover.jpg'),
(80, 'William', 'Blake', 'Herron', 'M', '', 'writers/william-blake-herron_Cover.jpg'),
(81, 'Robert', '', 'Ludlum', 'M', '', 'writers/robert-ludlum_Cover.jpg'),
(82, 'Dan', '', 'Gilroy', 'M', '', 'writers/dan-gilroy_Cover.jpg'),
(83, 'Jonathan', '', 'Nolan', 'M', '', 'writers/jonathan-nolan_Cover.jpg'),
(84, 'Scott', 'Z.', 'Burns', 'M', '', 'writers/scott-z-burns_Cover.jpg'),
(85, 'George', '', 'Nolfi', 'M', '', 'writers/george-nolfi_Cover.jpg'),
(86, 'Rhett', '', 'Reese', 'M', '', 'writers/rhett-reese_Cover.jpg'),
(87, 'Paul', '', 'Wernick', 'M', '', 'writers/paul-wernick_Cover.jpg'),
(88, 'Ryan', '', 'Reynolds', 'M', '', 'writers/ryan-reynolds_Cover.jpg'),
(89, 'Rob', '', 'Liefeld', 'M', '', 'writers/rob-liefeld_Cover.jpg'),
(90, 'Fabian', '', 'Nicieza', 'M', '', 'writers/fabian-nicieza_Cover.jpg'),
(91, 'J.K.', '', 'Rowling', 'F', '', 'writers/jk-rowling_Cover.jpg'),
(92, 'Steve', '', 'Kloves', 'M', '', 'writers/steve-kloves_Cover.jpg'),
(93, 'Michael', '', 'Goldenberg', 'M', '', 'writers/michael-goldenberg_Cover.jpg'),
(94, 'Paul', '', 'Greengrass', 'M', '', 'writers/paul-greengrass_Cover.jpg'),
(95, 'Christopher', '', 'Rouse', 'M', '', 'writers/christopher-rouse_Cover.jpg'),
(96, 'Derek', '', 'Kolstad', 'M', '', 'writers/derek-kolstad_Cover.jpg'),
(97, 'Bruce', '', 'Geller', 'M', '', 'writers/bruce-geller_Cover.jpg'),
(98, 'David', '', 'Koepp', 'M', '', 'writers/david-koepp_Cover.jpg'),
(99, 'Steven', '', 'Zaillian', 'M', '', 'writers/steven-zaillian_Cover.jpg'),
(100, 'Robert', '', 'Towne', 'M', '', 'writers/robert-towne_Cover.jpg'),
(101, 'Ronald', 'D.', 'Moore', 'M', '', 'writers/ronald-d-moore_Cover.jpg'),
(102, 'Brannon', '', 'Braga', 'M', '', 'writers/brannon-braga_Cover.jpg'),
(103, 'Alex', '', 'Kurtzman', 'M', '', 'writers/alex-kurtzman_Cover.png'),
(104, 'Roberto', '', 'Orci', 'M', '', 'writers/roberto-orci_Cover.jpg'),
(105, 'J.J.', '', 'Abrams', 'M', '', 'writers/jj-abrams_Cover.jpeg'),
(106, 'Josh', '', 'Appelbaum', 'M', '', 'writers/josh-appelbaum_Cover.jpg'),
(107, 'André', '', 'Nemec', 'M', '', 'writers/andre-nemec_Cover.jpg'),
(108, 'George', 'R.R.', 'Martin', 'M', '', 'writers/george-r-r-martin_Cover.jpg'),
(109, 'Sam', '', 'Shaw', 'M', '', 'writers/sam-shaw_Cover.jpg'),
(110, 'Dustin', '', 'Thomason', 'M', '', 'writers/dustin-thomason_Cover.jpg'),
(111, 'Stephen', '', 'King', 'M', '', 'writers/stephen-king_Cover.jpg'),
(112, 'Scott', '', 'Brown', 'M', '', 'writers/scott-brown_Cover.jpg'),
(113, 'Lila', '', 'Byock', 'F', '', 'writers/lila-byock_Cover.jpg'),
(114, 'Vinnie', '', 'Wilhelm', 'M', '', 'writers/vinnie_wilhelm_Cover.jpg'),
(115, 'Marc', '', 'Bernardin', 'M', '', 'writers/marc-bernardin_Cover.png'),
(116, 'Mark', '', 'Lafferty', 'M', '', 'writers/mark-lafferty_Cover.jpg'),
(117, 'Lisa', '', 'Joy', 'F', '', 'writers/lisa-joy_Cover.jpeg'),
(118, 'Michael', '', 'Crichton', 'M', '', 'writers/michael-crichton_Cover.jpg'),
(119, 'Charles', '', 'Yu', 'M', '', 'writers/charles-yu_Cover.jpg'),
(120, 'Halley', 'Wegryn', 'Gross', 'F', '', 'writers/halley-wegryn-gross_Cover.jpg'),
(121, 'Daniel', 'T.', 'Thomsen', 'M', '', 'writers/daniel-t-thomsen_Cover.jpg'),
(122, 'Ed', '', 'Brubaker', 'M', '', 'writers/ed-brubaker_Cover.png'),
(123, 'Dominic', '', 'Mitchell', 'M', '', 'writers/dominic-mitchell_Cover.jpg'),
(124, 'Dan', '', 'Dietz', 'M', '', 'writers/dan-dietz_Cover.jpg'),
(125, 'Kath', '', 'Lingenfelter', 'F', '', 'writers/kath-lingenfelter_Cover.jpg'),
(126, 'Roberto', '', 'Patino', 'M', '', 'writers/roberto-patino_Cover.jpg'),
(127, 'Gina', '', 'Atwater', 'F', '', 'writers/gina-atwater_Cover.jpg'),
(128, 'Carly', '', 'Wray', 'F', '', 'writers/carly-wray_Cover.jpg'),
(129, 'Ron', '', 'Fitzgerald', 'M', '', 'writers/ron-fitzgerald_Cover.jpg'),
(130, 'Jordan', '', 'Goldberg', 'M', '', 'writers/jordan-goldberg_Cover.jpg'),
(131, 'Steven', '', 'Moffat', 'M', '', 'writers/steven-moffat_Cover.jpg'),
(132, 'Mark', '', 'Gatiss', 'M', '', 'writers/mark-gatiss_Cover.jpeg'),
(133, 'Arthur', 'Conan', 'Doyle', 'M', '', 'writers/arthur-conan-doyle_Cover.jpg'),
(134, 'Steve', '', 'Thompson', 'M', '', 'writers/steve-thompson_Cover.jpeg'),
(135, 'Vince', '', 'Gilligan', 'M', '', 'writers/vince-gilligan_Cover.png'),
(136, 'Patty', '', 'Lin', 'F', '', 'writers/patty-lin_Cover.jpg'),
(137, 'George', '', 'Mastras', 'M', '', 'writers/george-mastras_Cover.jpg'),
(138, 'Peter', '', 'Gould', 'M', '', 'writers/peter-gould_Cover.jpg');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `directors`
--
ALTER TABLE `directors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dps`
--
ALTER TABLE `dps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `formats`
--
ALTER TABLE `formats`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `productdetails`
--
ALTER TABLE `productdetails`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shippers`
--
ALTER TABLE `shippers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shippingaddress`
--
ALTER TABLE `shippingaddress`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `specs`
--
ALTER TABLE `specs`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `studios`
--
ALTER TABLE `studios`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supplieraddress`
--
ALTER TABLE `supplieraddress`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `writers`
--
ALTER TABLE `writers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

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
