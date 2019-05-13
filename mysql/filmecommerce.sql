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
(32, 'Jeff', '', 'Daniels', 'M', '<p>An American actor, musician, and playwright whose career includes roles in films, stage productions, and on television, for which he has won two Emmy Awards and received several Golden Globe, Screen Actors Guild and Tony Award nominations.</p>\r\n<p>Jeffrey Warren Daniels was born in Clarke County, Georgia, to Marjorie J. (née Ferguson) and Robert Lee \"Bob\" Daniels. He spent the first six weeks of his life in Georgia, where his father was then teaching, and grew up in Chelsea, Michigan. His father owned the Chelsea Lumber Company and was also a one-time mayor of Chelsea.</p>\r\n<p>Daniels was raised Methodist. He attended Central Michigan University and participated in the school\'s theater program. In the summer of 1976, he attended the Eastern Michigan University drama school to participate in a special Bicentennial Repertory program, where he performed in <i>The Hot l Baltimore</i> and three other plays performed in repertoire. Marshall W. Mason was the guest director at EMU, and he invited Jeff to come to New York to work at the Circle Repertory Theatre, where he performed in <i>Fifth of July</i> by Lanford Wilson in the 1977-78 season. Daniels performed in New York in <i>The Shortchanged Review</i> (1979) at Second Stage Theatre. It was the first show of the inaugural season for Second Stage Theatre.</p>\r\n<p>Making his film debut in <i>Ragtime</i> (1981), Daniels\'s film credits include <i>Terms of Endearment</i> (1983), <i>Arachnophobia</i> (1990), <i>Gettysburg</i> (1993), <i>Speed</i> (1994), <i>101 Dalmatians</i> (1996), <i>Fly Away Home</i> (1996), <i>Pleasantville</i> (1998), <i>The Hours</i> (2002), <i>Gods and Generals</i> (2003), <i>Good Night, and Good Luck</i> (2005), <i>Infamous</i> (2006), <i>The Lookout</i> (2007), <i>Looper</i> (2012), <i>Steve Jobs</i> (2015), and <i>The Martian</i> (2015).</p>\r\n<p>Daniels is also known for playing Harry Dunne in the buddy comedy <i>Dumb and Dumber</i> (1994) and its sequel <i>Dumb and Dumber To</i> (2014). He received Golden Globe Award nominations for Best Actor, for his performances in <i>The Purple Rose of Cairo</i> (1985), <i>Something Wild</i> (1986), and <i>The Squid and the Whale</i> (2005).</p>\r\n<p>Mr. Daniels has received a number of award nominations for his work on stage, including Tony Award nominations for Best Actor for his roles in the plays <i>God of Carnage</i>, <i>Blackbird</i> and <i>To Kill a Mockingbird</i>. He is the founder and current executive director of the Chelsea, Michigan-based Purple Rose Theatre Company.</p>\r\n<p>From 2012 to 2014 Daniels starred as Will McAvoy in the HBO political drama series <i>The Newsroom</i>, for which he won the 2013 Primetime Emmy Award for Outstanding Lead Actor in a Drama Series and received Golden Globe and Screen Actors Guild Award nominations. He won a second Primetime Emmy Award in 2018 for his supporting performance in the Netflix miniseries <i>Godless</i> (2017), receiving an additional nomination that year for his leading performance as John P. O\'Neill in the Hulu miniseries <i>The Looming Tower</i> (2018).</p>', 'actors/jeff-daniels_Cover.jpg');

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

-- --------------------------------------------------------

--
-- Table structure for table `formats`
--

CREATE TABLE `formats` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `format` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `genre` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

-- --------------------------------------------------------

--
-- Table structure for table `products_actors`
--

CREATE TABLE `products_actors` (
  `product_id` mediumint(8) UNSIGNED NOT NULL,
  `actor_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products_directors`
--

CREATE TABLE `products_directors` (
  `product_id` mediumint(8) UNSIGNED NOT NULL,
  `director_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products_dps`
--

CREATE TABLE `products_dps` (
  `product_id` mediumint(8) UNSIGNED NOT NULL,
  `dp_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products_genres`
--

CREATE TABLE `products_genres` (
  `product_id` mediumint(8) UNSIGNED NOT NULL,
  `genre_id` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products_producers`
--

CREATE TABLE `products_producers` (
  `product_id` mediumint(8) UNSIGNED NOT NULL,
  `producer_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products_studios`
--

CREATE TABLE `products_studios` (
  `product_id` mediumint(8) UNSIGNED NOT NULL,
  `studio_id` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products_writers`
--

CREATE TABLE `products_writers` (
  `product_id` mediumint(8) UNSIGNED NOT NULL,
  `writer_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `rated` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

-- --------------------------------------------------------

--
-- Table structure for table `studios`
--

CREATE TABLE `studios` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `studio_name` varchar(55) NOT NULL,
  `about` text NOT NULL,
  `img` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

-- --------------------------------------------------------

--
-- Table structure for table `suppliers_products`
--

CREATE TABLE `suppliers_products` (
  `supplier_id` int(10) UNSIGNED NOT NULL,
  `product_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gender` (`gender`);

--
-- Indexes for table `dps`
--
ALTER TABLE `dps`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gender` (`gender`);

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gender` (`gender`);

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gender` (`gender`);

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
