%%
%% This is file `metrobk.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% metropol.dtx  (with options: `metrobk')
%% 
%% Diese Datei wurde aus dem Makropaket metropol.dtx erzeugt. Sie ist Teil
%% des Makropaketes fuer Autorinnen und Autoren des Metropolis-Verlages.
%% 
%% Copyright 1998-2004 Metropolis-Verlag, Marburg
%% Alle Rechte vorbehalten
%% 
%% Metropolis-Verlag
%% Bahnhofstr. 16a
%% 35037 Marburg/Lahn
%% 
%% Tel: 06421/67377    Fax: 06421/681918
%% 
%% http://www.metropolis-verlag.de
%% 
%% LaTeX-Support fuer Autorinnen und Autoren des Metropolis-Verlages:
%% Soenke Schippmann, tjosso.net, Bremen
%% E-Mail: schippmann@tjosso.net
%% Tel.: 0421/52079433
%% 
%% Diese Datei gehoert nicht zum LaTeX-Standard-Paket. Fehlerbeschrei-
%% bungen, Probleme bei der Verwendung etc. erbitten wir an unsere oben
%% genannte Adresse.
%% 
%% In dieser Datei werden Teile der Datei classes.dtx des LaTeX2e-Stan-
%% dard-Pakets verwendet. Die Datei classes.dtx wurde vom LaTeX3-Projekt
%% (Leslie Lamport, Johannes Braams, David Carlisle, Alan Jeffrey, Frank
%% Mittelbach, Chris Rowley und Rainer Schoepf) erstellt. Das LaTeX2e-
%% Makropaket mit der Originalversion der Datei classes.dtx wird
%% AutorInnen des Metropolis-Verlages auf Anfrage kostenlos vom Metro-
%% polis-Verlag bereitgestellt.
%% \CharacterTable
%%  {Upper-case    \A\B\C\D\E\F\G\H\I\J\K\L\M\N\O\P\Q\R\S\T\U\V\W\X\Y\Z
%%   Lower-case    \a\b\c\d\e\f\g\h\i\j\k\l\m\n\o\p\q\r\s\t\u\v\w\x\y\z
%%   Digits        \0\1\2\3\4\5\6\7\8\9
%%   Exclamation   \!     Double quote  \"     Hash (number) \#
%%   Dollar        \$     Percent       \%     Ampersand     \&
%%   Acute accent  \'     Left paren    \(     Right paren   \)
%%   Asterisk      \*     Plus          \+     Comma         \,
%%   Minus         \-     Point         \.     Solidus       \/
%%   Colon         \:     Semicolon     \;     Less than     \<
%%   Equals        \=     Greater than  \>     Question mark \?
%%   Commercial at \@     Left bracket  \[     Backslash     \\
%%   Right bracket \]     Circumflex    \^     Underscore    \_
%%   Grave accent  \`     Left brace    \{     Vertical bar  \|
%%   Right brace   \}     Tilde         \~}
\ProvidesClass{metrobk}
              [2004/05/10 v2.0
    Klassendatei des Metropolis-Verlags fuer Monografien
]
\LoadClass[a4paper]{book}
\DeclareOption{draft}{\setlength\overfullrule{5pt}}
\DeclareOption{final}{\setlength\overfullrule{0pt}}
\newcommand{\@S@tzspiegel}{\relax}
\DeclareOption{gross}{\renewcommand{\@S@tzspiegel}{%
               \SeitenRand{2cm}{5.8cm}{4cm}{4.2cm}{3cm}}}
\DeclareOption{normal}{\renewcommand{\@S@tzspiegel}{%
               \SeitenRand{2cm}{6.5cm}{4cm}{4.8cm}{3cm}}}
\newcommand{\@metptsize}{2}
\DeclareOption{12ptt}{\renewcommand\@metptsize{2t}}
\DeclareOption{12pt}{\renewcommand\@metptsize{2}}
\DeclareOption{fleqn}{\input{fleqn.clo}%
               \AtEndOfClass{\setlength{\mathindent}{1cm}}}
\DeclareOption{nofleqn}{\relax}
\ExecuteOptions{12pt,final,normal,fleqn}
\ProcessOptions
\input{mtbk1\@metptsize.clo}
\clubpenalty  5000
\widowpenalty 10000
\displaywidowpenalty 10000
\predisplaypenalty   500

\newcounter{@tempcnta}
\newcommand{\SeitenRand}[5]{%
    \setlength\textwidth{\paperwidth}%
    \addtolength\textwidth{-#1}%
    \addtolength\textwidth{-#2}%
    \setlength\evensidemargin{#1}%
        \setlength\marginparwidth{\evensidemargin}%
        \addtolength\marginparwidth{-1.5cm}
        \setlength\marginparsep{16pt}
    \addtolength\evensidemargin{-1in}%
    \setlength\oddsidemargin{\evensidemargin}%
    \setlength\topmargin{#5}%
    \setlength\headsep{#3}%
    \addtolength\headsep{-\topmargin}%
    \addtolength\headsep{-\headheight}%
    \addtolength\topmargin{-1in}
    \setlength\@tempdima{\paperheight}%
    \addtolength\@tempdima{-\topskip}%
    \addtolength\@tempdima{-#3}%
    \addtolength\@tempdima{-#4}%
    \divide\@tempdima\baselineskip%
    \setcounter{@tempcnta}{\@tempdima}%
    \setlength\textheight{\value{@tempcnta}\baselineskip}%
    \addtolength\textheight{\topskip}%
    \setlength\footskip{#4}
    \addtolength\footskip{-1cm}
    }
\@S@tzspiegel
\setcounter{topnumber}{3}
\renewcommand\topfraction{.8}
\setcounter{bottomnumber}{2}
\renewcommand\bottomfraction{.8}
\setcounter{totalnumber}{4}
\renewcommand\textfraction{.2}
\renewcommand\floatpagefraction{.7}
\let\ps@plain=\ps@empty
\def\ps@headings{%
      \def\@oddfoot{\tiny\today\quad\quad\hfil}
      \let\@evenfoot\@oddfoot
      \def\@evenhead{\small\rlap\thepage\hfil\leftmark\hfil}%
      \def\@oddhead{\hfil\small\rightmark\hfil\llap\thepage}%
      \let\@mkboth\markboth
          \def@ps@mark}
\def\@partmark{%
        \let\sectionmark\@gobble
    \def\partmark##1{%
      \markboth {%
     \if@mainmatter
        \ifnum \c@secnumdepth >-2
          \thepart. \ %
        \fi
        ##1%
     \fi}{%
     \if@mainmatter
        \ifnum \c@secnumdepth >-2
          \thepart. \ %
        \fi
        ##1%
     \fi}}
    \def\chaptermark##1{%
      \markright {%
        \ifnum \c@secnumdepth >\m@ne
     \if@mainmatter
            \thechapter. \ %
         \fi
        \fi
        ##1}}}%
\def\@sectionmark{%
    \def\chaptermark##1{%
      \markboth {%
     \if@mainmatter
        \ifnum \c@secnumdepth >\m@ne
          \thechapter. \ %
        \fi
        ##1%
     \fi}{%
     \if@mainmatter
        \ifnum \c@secnumdepth >\m@ne
          \thechapter. \ %
        \fi
        ##1%
     \fi}}
    \def\sectionmark##1{%
      \markright {%
        \ifnum \c@secnumdepth >0
     \if@mainmatter
            \thesection\ %
         \fi
        \fi
        ##1}}}%
\let\def@ps@mark\@sectionmark
\newcommand{\UsePartmark}[1]{%
\let\def@ps@mark\@partmark
\def@ps@mark
\markboth{#1}{}
}
\newcommand{\NoPartmark}{%
\let\def@ps@mark\@sectionmark
\def@ps@mark
}
\let\@mkboth\@gobbletwo
\let\chaptermark\@gobble
\let\partmark\@gobble
\let\sectionmark\@gobble
 \newcommand*{\subtitle}[1]{\gdef\@subtitle{#1}}
 \global\let\@subtitle\@empty

\newcommand*{\ISBN}[1]{\gdef\@ISBN{#1}}
\newcommand*{\Jahr}[1]{\gdef\@Jahr{#1}}
\newcommand*{\Reihe}[1]{\gdef\@Reihe{#1}}
\newcommand*{\Band}[1]{\gdef\@Band{#1}}
\newcommand*{\Druck}[1]{\gdef\@Druck{#1}}
\newcommand{\SeiteZwei}[1]{\gdef\@SeiteZwei{#1}}
\newcommand{\SeiteVier}[1]{\gdef\@SeiteVier{#1}}
\global\let\@ISBN\@empty
\global\let\@Jahr\@empty
\global\let\@Reihe\@empty
\global\let\@Band\@empty
\global\let\@SeiteZwei\@empty
\global\let\@SeiteVier\@empty
\global\let\@Druck\@empty
\newcommand{\makefulltitle}{%
  \begingroup\sloppy%
    \parindent0pt%
    \thispagestyle{empty}\normalfont%
{\raggedright\fontsize{14}{20}\selectfont\@author\\[1ex]\@title\par}%
    \clearpage\thispagestyle{empty}%
    \null%
    \ifx\@Reihe\@empty\else
       {\raggedleft\fontsize{16}{22}\selectfont\@Reihe%
        \ifx\@Band\@empty\else\\[22pt]Band \@Band\fi\par}%
    \fi
    {\@SeiteZwei\par}%
    \clearpage
    \thispagestyle{empty}
    \vspace*{60pt}
    \begin{center}
\fontsize{18}{24}\selectfont\@author\par
\vspace{48pt}
  \fontsize{26}{34}\selectfont\textbf{\@title}\par
  \vspace{40pt}
  \fontsize{18}{24}\selectfont\@subtitle\par
     \vfill
     \fontsize{14}{18}\selectfont
     Metropolis-Verlag\par
     Marburg {\@Jahr}\par
    \end{center}\pagebreak
    \thispagestyle{empty}
    \normalsize
    \ifx\@SeiteVier\@empty \null%
    \else {\@SeiteVier\par}%
    \fi
    \vfill
    \begingroup\raggedright
     \DDBtext\par
    \endgroup
    \vfill
    Metropolis-Verlag f\"ur \"Okonomie, Gesellschaft und Politik GmbH\par
    Bahnhofstr. 16a, D-35037 Marburg\par
    http://www.metropolis-verlag.de\par
    Copyright: Metropolis-Verlag, Marburg \@Jahr\par
    Alle Rechte vorbehalten\par
    \ifx\@Druck\@empty
            \else Druck: {\@Druck}\par
    \fi
    \smallskip\quad ISBN {\@ISBN}\par
    \pagebreak
  \endgroup
\global\let\@ISBN\@empty
\global\let\@Jahr\@empty
\global\let\@Reihe\@empty
\global\let\@Band\@empty
\global\let\@SeiteZwei\@empty
\global\let\@SeiteVier\@empty
\global\let\@Druck\@empty
\global\let\@title\@empty
\global\let\@xtitle\@empty
\global\let\@subtitle\@empty
\global\let\@xsubtitle\@empty
\global\let\@author\@empty
\global\let\@xauthor\@empty
}
\renewcommand\maketitle{\begin{titlepage}%
\let\footnotesize\small
\let\footnoterule\relax
\let \footnote \thanks
\null\vfil
\vskip 60\p@
\begin{center}%
{\Large
 \lineskip .75em%
  \begin{tabular}[t]{c}%
    \@author
  \end{tabular}\par}%
\vskip 2em%
{\huge\bfseries \@title \par}%
\vskip 1em%
{\LARGE \@subtitle \par}%
  \vfill%
{\normalsize \@date \par}%
\end{center}\par
\@thanks
\vfil\null
\end{titlepage}%
\setcounter{footnote}{0}%
\global\let\thanks\relax
\global\let\maketitle\relax
\global\let\@thanks\@empty
\global\let\@author\@empty
\global\let\@title\@empty
\global\let\@date\@empty
\global\let\title\relax
\global\let\author\relax
\global\let\date\relax
\global\let\and\relax
}
\def\@seccntformat#1{\csname the#1\endcsname\,\,}
\renewcommand\thepart{\@Roman\c@part}
\renewcommand\thechapter      {\@arabic\c@chapter}
\renewcommand\frontmatter{\clearpage\pagestyle{empty}%
        \cleardoublepage
        \@mainmatterfalse\pagenumbering{arabic}}
\renewcommand\mainmatter{\clearpage\thispagestyle{empty}%
   \cleardoublepage\pagestyle{headings}
   \@mainmattertrue}
\renewcommand\backmatter{\clearpage\thispagestyle{empty}%
  \cleardoublepage
  \@mainmatterfalse}
\renewcommand\part{\clearpage\thispagestyle{empty}\cleardoublepage
             \thispagestyle{empty}%
             \secdef\@part\@spart}
\def\@part[#1]#2{%
\null\vfil
\ifnum \c@secnumdepth >-2\relax
  \refstepcounter{part}%
      \typeout{\partname\space\thepart}%
  \addcontentsline{toc}{part}%
     {\thepart\\\protect\MakeUppercase{#1}}%
\else
  \addcontentsline{toc}{part}{\protect\MakeUppercase{#1}}%
\fi
\markboth{}{}%
    \let\def@ps@mark\@partmark
    \def@ps@mark
    \partmark{#1}
{\centering
 \interlinepenalty \@M
 \normalfont
 \ifnum \c@secnumdepth >-2\relax
   \Large\partname\space \thepart\par
   \vskip\bigskipamount
 \fi
 \huge\textbf{#2}\par}%
 \vfil\newpage
 \null
 \thispagestyle{empty}%
 \newpage
\@endpart}
\def\@spart#1{%
\addcontentsline{toc}{part}{\protect\MakeUppercase{#1}}%
\@endpart}
\def\@endpart{\relax}
\newcommand\m@chapter{\clearpage\thispagestyle{empty}\cleardoublepage%
                \thispagestyle{empty}%
                \global\@topnum\z@
                \@afterindentfalse
                \secdef\@chapter\@schapter}
\let\chapter\m@chapter
\def\@chapter[#1]#2{\ifnum \c@secnumdepth >\m@ne
           \if@mainmatter
             \refstepcounter{chapter}%
             \typeout{\@chapapp\space\thechapter}%
             \addcontentsline{toc}{chapter}%
                       {\@chapapp\space \thechapter\\ #1}%
           \else
             \addcontentsline{toc}{chapter}{#1}%
           \fi
        \else
          \addcontentsline{toc}{chapter}{#1}%
        \fi
        \chaptermark{#1}%
        \addtocontents{lof}{\protect\addvspace{\bigskipamount}}%
        \addtocontents{lot}{\protect\addvspace{\bigskipamount}}%
        \@makechapterhead{#2}%
        \@afterheading}
\def\@makechapterhead#1{%
  \vspace*{12\p@}%
  {\parindent \z@ \centering \normalfont
    \ifnum \c@secnumdepth >\m@ne
      \if@mainmatter
        \Large \@chapapp\space \thechapter
        \par\nobreak
        \vskip 8\p@ \@plus3\p@ \@minus2\p@
      \fi
    \fi
    \interlinepenalty\@M
    \LARGE\bfseries #1\par\nobreak
    \vskip 72\p@ \@plus8\p@ \@minus12\p@
  }}
\def\@schapter#1{\@makeschapterhead{#1}%
                  \@afterheading}
\def\@makeschapterhead#1{%
  \vspace*{24\p@}%
  {\parindent \z@ \centering
    \normalfont
    \interlinepenalty\@M
    \LARGE\bfseries #1\par\nobreak
    \vskip 72\p@ \@plus8\p@ \@minus12\p@
  }}
\def\no@hangfrom#1{\setbox\@tempboxa\hbox{{#1}}\noindent\box\@tempboxa}
\renewcommand\section{\@startsection {section}{1}{\z@}%
    {-40pt \@plus -16pt \@minus -8pt}%
    {8pt \@plus4pt \@minus2pt}%
    {\let\@hangfrom\no@hangfrom\normalfont\normalsize\itshape\centering}}
\renewcommand\subsection{\@startsection {subsection}{2}{\z@}%
       {-32pt \@plus -12pt \@minus -4pt}%
       {8pt \@plus4pt \@minus2pt}%
       {\let\@hangfrom\no@hangfrom\normalfont\normalsize\itshape\centering}}
\renewcommand\subsubsection{\@startsection {subsubsection}{3}{\z@}%
       {-32pt \@plus -12pt \@minus -4pt}%
       {8pt \@plus4pt \@minus2pt}%
       {\let\@hangfrom\no@hangfrom\normalfont\normalsize\itshape\centering}}
\renewcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
       {15.5pt \@plus 8pt \@minus 4pt}%
       {-0.5em}%
       {\let\@hangfrom\no@hangfrom\normalfont\normalsize\itshape\centering}}
\renewcommand\subparagraph{\@startsection{subparagraph}{5}{\parindent}%
       {8pt \@plus 4pt \@minus 2pt}%
       {-0.5em}%
       {\let\@hangfrom\no@hangfrom\normalfont\normalsize\itshape\centering}}

\setlength\labelsep {.4em}
\setlength\leftmargini{0.65cm}
\settowidth\leftmarginii{.9}
\addtolength\leftmarginii\leftmargini
\settowidth\leftmarginiii{.9.9}
\addtolength\leftmarginiii\leftmargini
\settowidth\leftmarginiv{.9.9.9}
\addtolength\leftmarginiv\leftmargini
\leftmargin \leftmargini
\setlength\labelwidth {\leftmargini}
\addtolength\labelwidth{-\labelsep}
\def\@mklab#1{#1\hfil}
\renewcommand\labelitemi{\normalfont --}
\renewcommand\labelitemii{\normalfont --}
\renewcommand{\descriptionlabel}[1]{\hspace{\labelsep}\textit{#1}}
\def\enumerate{%
  \ifnum \@enumdepth >\thr@@\@toodeep\else
    \advance\@enumdepth\@ne
    \edef\@enumctr{enum\romannumeral\the\@enumdepth}%
      \expandafter
      \list
        \csname label\@enumctr\endcsname
        {\usecounter\@enumctr\def\makelabel##1{\rlap{##1}\hss}}%
  \fi}
\def\itemize{%
  \ifnum \@itemdepth >\thr@@\@toodeep\else
    \advance\@itemdepth\@ne
    \edef\@itemitem{labelitem\romannumeral\the\@itemdepth}%
    \expandafter
    \list
      \csname\@itemitem\endcsname
      {\def\makelabel##1{\rlap{##1}\hss}}%
  \fi}
\let\benumerate=\enumerate
\let\endbenumerate=\endlist
\renewenvironment{quotation}
 {\list{}{\listparindent 0.5cm%
                     \itemindent \listparindent
     \leftmargin 0.7cm%
                     \rightmargin \leftmargin
     \topsep 12\p@  \@plus2\p@ \@minus2\p@
     \itemsep \z@
                     \parsep        \z@}%
                 \item\relax\small}
 {\endlist}
\renewenvironment{quote}
 {\list{}{\leftmargin 0.7cm%
                     \rightmargin\leftmargin
     \topsep 12\p@  \@plus2\p@ \@minus2\p@
     \itemsep 12\p@ \@plus2\p@ \@minus2\p@
 }%
                 \item\relax\small}
 {\endlist}
\setlength\jot {10pt}
\setlength\abovecaptionskip{8\p@}
\setlength\belowcaptionskip{12\p@}
\long\def\@makecaption#1#2{%
     \addvspace{\abovecaptionskip}
     \vspace*{3pt} %Fehlen aus irgendeinem Grunde
     \itshape\centering #1: #2\par
     \addvspace{\belowcaptionskip}}
\renewcommand\@tocrmarg{2.5cm plus 1fil}
\renewcommand{\tableofcontents}{%
     \m@chapter*{\contentsname}
        \@mkboth{\contentsname}{\contentsname}%
\begingroup\hyphenpenalty=10000
        \@starttoc{toc}\endgroup}
\renewcommand\l@part[2]{%
  \ifnum \c@tocdepth >-2\relax
    \addpenalty{-\@highpenalty}%
    \addvspace{30\p@ \@plus8\p@ \@minus8\p@}%
    \setlength\@tempdima{2em}%
    \begingroup
      \parindent \z@
      {\leavevmode
       \bfseries\centering #1\par}
       \nobreak
         \global\@nobreaktrue
         \everypar{\global\@nobreakfalse\everypar{}}%
    \endgroup
  \fi}
\renewcommand*\l@chapter[2]{%
   \ifnum \c@tocdepth >-1\relax
      \vskip\bigskipamount
      {\@dottedtocline{0}{\z@}{0em}{\textbf{#1}}{#2}}
   \fi}
\renewcommand*{\l@section}[2]{%
   \ifnum \c@tocdepth >0\relax
      \vskip 3pt
      \@dottedtocline{1}{\z@}{1cm}{#1}{#2}
   \fi}
\renewcommand{\l@subsection}{\@dottedtocline{2}{1cm}{1.4cm}}
\renewcommand{\l@subsubsection}{\@dottedtocline{3}{1cm}{1.4cm}}
\renewcommand{\l@paragraph}{\@dottedtocline{4}{2.4cm}{1.75cm}}
\renewcommand{\l@subparagraph}{\@dottedtocline{5}{2.4cm}{1.75cm}}
\renewcommand{\listoffigures}{%
     \m@chapter{\listfigurename}
        \@mkboth{\listfigurename}{\listfigurename}%
\begingroup\hyphenpenalty=10000
        \@starttoc{lof}\endgroup}
\renewcommand{\listoftables}{%
     \m@chapter{\listtablename}
        \@mkboth{\listtablename}{\listtablename}%
\begingroup\hyphenpenalty=10000
        \@starttoc{lot}\endgroup}

\renewcommand*\l@figure{\@dottedtocline{1}{\z@}{1cm}}
\let\l@table=\l@figure
\renewenvironment{thebibliography}[1]{%
\chapter*{\bibname\@mkboth{\bibname}{\bibname}}%
\addcontentsline{toc}{chapter}{\bibname}%
  \litsize\list
  {\relax}{\setlength{\labelsep}{\z@}\setlength{\labelwidth}{\z@}%
     \setlength{\itemindent}{-1cm}
     \setlength{\leftmargin}{1cm}
     \setlength{\itemsep}{3pt plus1pt minus0pt}}
    \def\newblock{\relax}
    \sloppy\relax}{\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}
\newenvironment{literatur}{%
\chapter*{\bibname\@mkboth{\bibname}{\bibname}}%
\addcontentsline{toc}{chapter}{\bibname}%
  \litsize\list
  {\relax}{\setlength{\labelsep}{\z@}\setlength{\labelwidth}{\z@}%
     \setlength{\itemindent}{-1cm}
     \setlength{\leftmargin}{1cm}
        \setlength{\itemsep}{3pt plus1pt minus0pt}}
    \def\newblock{\relax}
    \sloppy\relax}{\def\@noitemerr
       {\@latex@warning{Empty `literatur' environment}}%
      \endlist}
\renewcommand{\footnoterule}{\relax}
\renewcommand\@makefntext[1]{%
    \parindent \z@%
    \noindent
    \hbox{\@makefnmark\,\,}#1}
\AtBeginDocument{%
\def\captionsgerman{%
  \def\DDBtext{%
       \textbf{Bibliografische Information Der Deutschen
Bibliothek}\par\medskip
       Die Deutsche Bibliothek verzeichnet diese Publikation in der
       Deutschen Nationalbibliografie; detaillierte bibliografische
       Daten sind im Internet
       \"uber <http://dnb.ddb.de> abrufbar.}
  \def\prefacename{Vorwort}%
  \def\refname{Literatur}%
  \def\abstractname{Zusammenfassung}%
  \def\bibname{Literatur}%
  \def\chaptername{Kapitel}%
  \def\appendixname{Anhang}%
  \def\contentsname{Inhalt}%
  \def\listfigurename{Abbildungsverzeichnis}%
  \def\listtablename{Tabellenverzeichnis}%
  \def\indexname{Index}%
  \def\figurename{Abbildung}%
  \def\tablename{Tabelle}%
  \def\partname{Teil}%
  \def\enclname{Anlage(n)}%
  \def\ccname{Verteiler}%
  \def\headtoname{An}%
  \def\pagename{Seite}%
  \def\seename{siehe}%
  \def\alsoname{siehe auch}}
  \captionsgerman
  \let\captionsaustrian=\captionsgerman
  \def\captionsenglish{%
  \def\DDBtext{%
       \textbf{Bibliographic information published by Die
Deutsche Bibliothek}\par\medskip
Die Deutsche Bibliothek lists this publication in the
Deutsche Nationalbibliografie; detailed bibliographic
data is available in the
Internet at <http://dnb.ddb.de>.}
  \def\prefacename{Preface}%
  \def\refname{References}%
  \def\abstractname{Abstract}%
  \def\bibname{Bibliography}%
  \def\chaptername{Chapter}%
  \def\appendixname{Appendix}%
  \def\contentsname{Contents}%
  \def\listfigurename{List of Figures}%
  \def\listtablename{List of Tables}%
  \def\indexname{Index}%
  \def\figurename{Figure}%
  \def\tablename{Table}%
  \def\partname{Part}%
  \def\enclname{encl}%
  \def\ccname{cc}%
  \def\headtoname{To}%
  \def\pagename{Page}%
  \def\seename{see}%
  \def\alsoname{see also}}
\let\captionsUSenglish=\captionsenglish
\def\extrasUSenglish{\frenchspacing}
\let\extrasenglish=\extrasUSenglish
\def\noextrasUSenglish{\ifnum\sfcode`\.=\@m%
       \else \noexpand\nonfrenchspacing \fi}
\let\noextrasenglish=\noextrasUSenglish
\frenchspacing}
\pagestyle{headings}
\pagenumbering{arabic}
\tolerance=800
\setlength{\emergencystretch}{24pt}
\leftskip0pt minus 0.5pt
\rightskip0pt minus 0.5pt
\doublehyphendemerits5000
\setcounter{tocdepth}{2}
\setcounter{secnumdepth}{2}
\newcommand{\engl}{\selectlanguage{english}\frenchspacing}
\newcommand{\ger}{\selectlanguage{ngerman}\frenchspacing}
\newcommand{\marg}[1]{\marginpar{\small\raggedright\sloppy #1}}
\newcommand{\quelle}[1]{\par\addvspace{8pt}\begingroup%
              \parindent\z@\normalfont\scriptsize #1\par
              \endgroup}
\endinput
%%
%% End of file `metrobk.cls'.
