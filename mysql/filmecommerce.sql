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
(10, 'Benedict', '', 'Cumberbatch', 'M', '<p>Benedict Timothy Carlton Cumberbatch was born at Queen Charlotte\'s and Chelsea Hospital in the White City district of West London\'s Hammersmith and Fulham borough, to actors Timothy Carlton (born Timothy Carlton Congdon Cumberbatch) and Wanda Ventham. He grew up in the Royal Borough of Kensington and Chelsea. He has a half-sister, Tracy Peacock, from his mother\'s first marriage. His grandfather, Henry Carlton Cumberbatch, was a submarine officer of both World Wars, and a prominent figure of London high society. His great-grandfather, Henry Arnold Cumberbatch, was a diplomat who served as consul in Turkey and Lebanon. His great-great-grandfather, Robert William Cumberbatch, also was a British consul in Turkey and the Russian Empire. Cumberbatch is third cousin 16 times removed of King Richard III, whom he portrayed in <i>The Hollow Crown</i>. Motivated by this connection, he attended Richard III\'s 2015 reburial and read a poem.</p>\r\n<p>Mr. Cumberbatch attended boarding schools from the age of 8; he was educated at Brambletye School in West Sussex and was an arts scholar at Harrow School. He was a member of The Rattigan Society, Harrow\'s principal club for the dramatic arts, which was named after Old Harrovian and playwright Terence Rattigan. He was involved in numerous Shakespearean works at school and made his acting debut as Titania, Queen of the Fairies, in <i>A Midsummer Night\'s Dream</i> when he was 12. Cumberbatch\'s drama teacher, Martin Tyrell, called him \"the best schoolboy actor\" he had ever worked with.</p>\r\n<p>After leaving Harrow, Cumberbatch took a gap year to volunteer as an English teacher at a Tibetan monastery in Darjeeling, India. He then attended the Victoria University of Manchester (now the University of Manchester), where he studied Drama. He continued his training as an actor at the London Academy of Music and Dramatic Art (LAMDA) graduating with an MA in Classical Acting. On 16 January 2018, it was announced that Cumberbatch would succeed Timothy West as President of LAMDA. On being appointed Cumberbatch stated it would be \"an honour to watch the next generation of actors, directors and technicians blossom\".</p>\r\n<p>He first performed at the Open Air Theatre, Regent\'s Park in Shakespearean productions and made his West End debut in Richard Eyre\'s revival of <i>Hedda Gabler</i> in 2005. Since then he has starred in the Royal National Theatre productions <i>After the Dance</i> (2010) and <i>Frankenstein</i> (2011). In 2015, he played William Shakespeare\'s <i>Hamlet</i> at the Barbican Theatre.</p>\r\n<p>Cumberbatch\'s television work includes appearances in <i>Silent Witness</i> (2002) and <i>Fortysomething</i> (2003) before playing Stephen Hawking in the television film <i>Hawking</i> in 2004. He has starred as Sherlock Holmes in the series <i>Sherlock</i> since 2010. He has also headlined Tom Stoppard\'s adaptation of <i>Parade\'s End</i> (2012), <i>The Hollow Crown: The Wars of the Roses</i> (2016) and <i>Patrick Melrose</i> (2018). In film, Cumberbatch has starred in <i>Amazing Grace</i> (2006) as William Pitt the Younger, <i>Star Trek Into Darkness</i> (2013) as Khan, <i>12 Years a Slave</i> (2013) as William Prince Ford, <i>The Fifth Estate</i> (2013) as Julian Assange and <i>The Imitation Game</i> (2014) as Alan Turing. From 2012 to 2014, through voice and motion capture, he played the characters of Smaug and the Necromancer in <i>The Hobbit</i> film series. Cumberbatch portrays the Marvel Comics character Dr. Stephen Strange in the Marvel Cinematic Universe, appearing in <i>Doctor Strange</i> (2016), <i>Thor: Ragnarok</i> (2017), <i>Avengers: Infinity War</i> (2018) and <i>Avengers: Endgame</i> (2019).</p>\r\n<p>Cumberbatch has received numerous awards and nominations for acting including three Laurence Olivier Award nominations, winning Best Actor in a Play for <i>Frankenstein</i>. He has also received six Primetime Emmy Award nominations, winning Outstanding Lead Actor in a Miniseries or a Movie for <i>Sherlock</i>. His performance in <i>The Imitation Game</i> earned him an Academy Award nomination for Best Actor. In addition, he has received seven BAFTA nominations, five Screen Actors Guild Award nominations and two Golden Globe Award nominations among others. In 2014, Time magazine included him in its annual <i>Time</i> 100 as one of the \"Most Influential People in the World\". He was appointed with a Commander of the Order of the British Empire by Queen Elizabeth II in June 2015 for his services to the performing arts and to charity.</p>', 'actors/benedictcumberbatch_Cover.jpg');

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
