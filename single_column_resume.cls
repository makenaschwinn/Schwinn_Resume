%This is largely unchanged from the original Deedy Resume
% A few extra commands have been added

% Intro Options
\ProvidesClass{deedy-resume-openfont}[2014/04/30 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[hmargin=1.25cm, vmargin=0.7cm]{geometry}
\usepackage[usenames,dvipsnames]{xcolor}
\usepackage{hyperref}
\usepackage{titlesec}
\usepackage[absolute]{textpos}
\usepackage[UKenglish]{babel}
\usepackage[UKenglish]{isodate}
\usepackage{fontspec,xltxtra,xunicode}

% Color definitions
\definecolor{date}{HTML}{666666} 
\definecolor{primary}{HTML}{2b2b2b} 
\definecolor{headings}{HTML}{6A6A6A}
\definecolor{subheadings}{HTML}{333333}

% Set main fonts
\defaultfontfeatures{Mapping=tex-text}
\setmainfont[Color=primary, Path = fonts/lato/]{Lato-Reg}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = fonts/raleway/]{Raleway-Light}
\newcommand{\custombold}[1]{\color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Reg}\selectfont #1 \normalfont}

% Date command
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}
\textblockorigin{0mm}{5mm} % start everyth
\newcommand{\lastupdated}{\begin{textblock}{60}(165,0)
\color{subheadings}\fontspec[Path = fonts/raleway/]{Raleway-SemiBold}\fontsize{10pt}{12pt}\selectfont 
Last Updated on
\today
\end{textblock}}

\newcommand\textbox[1]{%
  \parbox{.69\textwidth}{#1}% change back to 0.66 after Intel
}

% Name command
\newcommand{\namesection}[4]{
	\noindent\textbox{
		\sffamily
		\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{40pt}{10cm}\selectfont #1 
		\fontspec[Path = fonts/lato/]{Lato-Bol}\selectfont #2
		\hfill
	}
	%\vspace{5pt} 
	\textbox{ 
		\hfill
		\color{headings}\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{14pt}\selectfont #3
	}
	
	%line below is the black line
% 	\noindent\makebox[\linewidth]{\rule{\paperwidth}{0.4pt}}
	\vspace{15pt}
}
\titlespacing{\section}{0pt}{0pt}{0pt}

% Headings command
\titleformat{\section}{\color{headings}
\scshape\fontspec[Path = fonts/lato/]{Lato-Reg}\fontsize{16pt}{20pt}\selectfont \raggedright\uppercase}{} {0em}{}

% Subsubeadings command
\titleformat{\subsubsection}{\color{subheadings}
\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{10pt}{10pt}\selectfont\bfseries}{}{0em}{}
\titlespacing{\subsection}{0pt}{\parskip}{-\parskip}
\titlespacing{\subsubsection}{0pt}{\parskip}{-\parskip}

\newcommand{\runsubsubsection}[1]{\color{subheadings}
\fontspec[Path = fonts/raleway/]{Raleway-SemiBold}\fontsize{11pt}{10pt}\selectfont {#1} \normalfont}

% Subeadings command
\titleformat{\subsection}{\color{subheadings}
\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase}{}{0em}{}
\titlespacing{\subsection}{0pt}{\parskip}{-\parskip}
\titlespacing{\subsubsection}{0pt}{\parskip}{-\parskip}

\newcommand{\runsubsection}[1]{\color{subheadings}
\fontspec[Path = fonts/lato/]{Lato-Bla}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase {#1} \normalfont}

% Descriptors command
\newcommand{\descript}[1]{\color{subheadings}\raggedright\scshape\fontspec[Path = fonts/raleway/]{Raleway-SemiBold}\fontsize{12pt}{13pt}\selectfont {#1} \normalfont}

% small descriptors command - for projects
\newcommand{\smalldescript}[1]{\color{subheadings}\raggedright\scshape\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{13pt}\selectfont {#1} \normalfont}

% award command
\newcommand{\award}[1]{\color{subheadings}\raggedright\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{10pt}{10pt}\selectfont {#1} \normalfont}

% Location command
\newcommand{\location}[1]{\color{headings}\raggedright\fontspec[Path = fonts/raleway/]{Raleway-SemiBold}\fontsize{10pt}{12pt}\selectfont {#1 \\} \normalfont}

% Section seperators command
\newcommand{\sectionsep}[0]{\vspace{4pt}}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{\vspace{-\topsep}\begin{itemize}\color{subheadings} \fontsize{11pt}{13pt} \selectfont \itemsep1pt \parskip0pt \parsep0pt}{\end{itemize}\vspace{-\topsep}}

% Text List Command
\newcommand{\textlist}[1]{\fontsize{11pt}{12pt}\color{subheadings}\scshape\fontspec[Path = fonts/lato/]{Lato-Reg}\selectfont {#1} \normalfont}

