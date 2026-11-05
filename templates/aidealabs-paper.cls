\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{aidealabs-paper}[2026/08/17 v1.0 AIdeaLabs research paper]

\LoadClass[12pt,a4paper]{article}

\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage[american]{babel}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage{mathpazo}
\RequirePackage[xcharter,bigdelims,vvarbb]{newtxmath}
\RequirePackage[scaled=1.1]{zlmtt}
\RequirePackage[scaled=0.94]{helvet}
\RequirePackage{graphicx}
% Shared brand assets live one level up, in templates/paper/assets. The first
% entry covers a copy that carries its own assets/ folder, the second resolves
% the shared folder while compiling in place.
\graphicspath{{assets/}{../assets/}}
\RequirePackage[
  left=2.5cm,
  right=2.5cm,
  top=3cm,
  bottom=3cm,
  headheight=40pt,
  headsep=20pt,
  a4paper
]{geometry}
\RequirePackage{xcolor}
\RequirePackage{microtype}
\RequirePackage{setspace}
\RequirePackage{booktabs}
\RequirePackage{tabularx}
\RequirePackage{enumitem}
\RequirePackage{caption}
\RequirePackage{subcaption}
\RequirePackage{titlesec}
\RequirePackage{needspace}
\RequirePackage{fancyhdr}
\RequirePackage{csquotes}
\RequirePackage[
  backend=biber,
  bibstyle=templates/aidealabs-aea,
  citestyle=templates/aidealabs-author-year,
  sorting=nyt,
  sortlocale=en_US,
  sortcites=true,
  maxcitenames=4,
  mincitenames=1,
  uniquelist=false,
  maxbibnames=10,
  minbibnames=7
]{biblatex}
\RequirePackage{xurl}
\RequirePackage[hyperfootnotes=false]{hyperref}
\RequirePackage[nameinlink,noabbrev]{cleveref}

\definecolor{AideaInk}{HTML}{171816}
\definecolor{AideaMuted}{HTML}{666A67}
\definecolor{AideaRule}{HTML}{D9DBD8}
\definecolor{AideaAccent}{HTML}{C45C3E}
\definecolor{AideaSoft}{HTML}{F4F2EF}
\definecolor{AideaLink}{HTML}{9B472F}
\definecolor{AideaCite}{HTML}{315E9B}

\AtEveryCite{\color{AideaCite}}

\hypersetup{
  colorlinks=true,
  linkcolor=AideaInk,
  citecolor=AideaCite,
  urlcolor=AideaInk,
  pdfborder={0 0 0}
}

\setlength{\parindent}{1.5em}
\setlength{\parskip}{0.5\baselineskip}
\setstretch{1.15}
\setlist{leftmargin=1.45em,itemsep=0pt,parsep=0pt,topsep=0.35\baselineskip}
\setlength{\emergencystretch}{1em}
\setlength{\footnotesep}{0.55\baselineskip}

\renewcommand{\footnoterule}{%
  \kern-3pt
  {\color{AideaRule}\hrule width 0.22\textwidth height 0.45pt}%
  \kern2.6pt
}

\DeclareCaptionLabelSeparator{aideapipe}{\enspace\textbar\enspace}
\captionsetup{
  font=small,
  labelfont={color=AideaInk},
  textfont={color=AideaInk},
  labelsep=aideapipe,
  singlelinecheck=false,
  skip=7pt
}
\captionsetup[table]{
  justification=centering,
  singlelinecheck=true
}

\titleformat{\section}[block]
  {\centering\bfseries\fontsize{14}{16}\selectfont\color{AideaInk}}
  {\thesection.}{0.5em}{}
\titleformat{\subsection}
  {\bfseries\normalsize\color{AideaInk}}
  {\thesubsection.}{0.5em}{}
\titleformat{\subsubsection}
  {\bfseries\itshape\normalsize\color{AideaInk}}
  {\thesubsubsection.}{0.5em}{}
\titlespacing*{\section}{0pt}{3ex plus 4pt minus 3pt}{5pt}
\titlespacing*{\subsection}{0pt}{2.5ex plus 3pt minus 2pt}{2pt}
\titlespacing*{\subsubsection}{0pt}{2ex plus 2.5pt minus 1.5pt}{2pt}

\let\aidea@articleappendix\appendix
\renewcommand{\appendix}{%
  \aidea@articleappendix
  \titleformat{\section}[block]
    {\centering\bfseries\fontsize{14}{16}\selectfont\color{AideaInk}}
    {Appendix \thesection.}{0.5em}{}%
}

\newcommand{\subtitle}[1]{\gdef\@subtitle{#1}}
\newcommand{\affiliation}[1]{\gdef\@affiliation{#1}}
\newcommand{\correspondingauthor}[1]{\gdef\@correspondingauthor{#1}}
\newcommand{\authornote}[2][1]{%
  \g@addto@macro\@authornotes{\footnotetext[#1]{#2}}%
}
\newcommand{\equalcontributionnote}[1]{\authornote[1]{#1}}
\newcommand{\correspondingauthornote}[1]{\authornote[2]{#1}}
\newcommand{\authorentry}[3]{%
  \begin{minipage}[t]{0.305\textwidth}
    \centering
    {\normalfont\fontsize{11}{14}\selectfont\color{AideaInk}#1\par}
    \vspace{0.36em}
    {\normalfont\fontsize{10}{13}\selectfont\color{AideaMuted}#2\par}
    \vspace{0.22em}
    {\ttfamily\fontsize{9.5}{12}\selectfont\color{AideaInk}%
      \href{mailto:#3}{\nolinkurl{#3}}\par}
  \end{minipage}%
}
\newcommand{\authorcontact}[2]{%
  \begin{minipage}[t]{0.305\textwidth}
    \centering
    {\normalfont\fontsize{11}{14}\selectfont\color{AideaInk}#1\par}
    \vspace{0.28em}
    {\ttfamily\fontsize{9.5}{12}\selectfont\color{AideaInk}%
      \href{mailto:#2}{\nolinkurl{#2}}\par}
  \end{minipage}%
}
\newcommand{\keywords}[1]{\gdef\@keywords{#1}}
\newcommand{\logofile}[1]{\gdef\@logofile{#1}}
\newcommand{\runningtitle}[1]{\gdef\@runningtitle{#1}}

\newcommand{\@subtitle}{}
\newcommand{\@affiliation}{}
\newcommand{\@correspondingauthor}{}
\newcommand{\@authornotes}{}
\newcommand{\@keywords}{}
\newcommand{\@logofile}{aidealabs-mark.png}
\let\@runningtitle\@empty

\fancypagestyle{plain}{%
  \fancyhf{}
  \fancyfoot[C]{\normalfont\fontsize{11}{12}\selectfont\thepage}
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footrulewidth}{0pt}
}
\pagestyle{plain}

\fancypagestyle{firstpage}{%
  \fancyhf{}
  \fancyhead[L]{%
    \includegraphics[height=8mm]{\@logofile}\hspace{0.65em}%
    \raisebox{1.2mm}{\sffamily\bfseries\fontsize{14}{16}\selectfont AIdeaLabs}%
  }
  \renewcommand{\headrulewidth}{0.6pt}
  \renewcommand{\footrulewidth}{0pt}
  \renewcommand{\headrule}{\hbox to\headwidth{\color{AideaMuted}\leaders\hrule height \headrulewidth\hfill}}
}

\date{}

\renewcommand{\maketitle}{%
  \thispagestyle{firstpage}%
  \begingroup
  \singlespacing
  \setlength{\parindent}{0pt}%
  \setlength{\parskip}{0pt}%
  \renewcommand\thefootnote{\@fnsymbol\c@footnote}%
  \vspace*{0.35em}
  {\centering\normalfont\bfseries\fontsize{18}{22}\selectfont\color{AideaInk}\@title\par}
  \ifx\@subtitle\@empty\else
    \vspace{0.55em}
    {\centering\normalfont\itshape\fontsize{12}{15}\selectfont\color{AideaMuted}\@subtitle\par}
  \fi
  \vspace{1.55em}

  {\centering\normalfont\fontsize{12}{16}\selectfont\color{AideaInk}\@author\par}
  \ifx\@affiliation\@empty\else
    \vspace{0.55em}
    {\centering\normalfont\fontsize{10}{13}\selectfont\color{AideaMuted}\@affiliation\par}
  \fi
  \ifx\@correspondingauthor\@empty\else
    {\centering\normalfont\fontsize{10}{13}\selectfont\color{AideaMuted}\@correspondingauthor\par}
  \fi
  \ifx\@date\@empty\else
    \vspace{0.55em}
    {\centering\normalfont\fontsize{10}{13}\selectfont\color{AideaMuted}\@date\par}
  \fi
  \vspace{2em}
  \@authornotes
  \@thanks
  \endgroup
  \setcounter{footnote}{0}%
  \global\let\@thanks\@empty
}

\renewenvironment{abstract}{%
  \par
  {\centering\normalfont\bfseries\fontsize{16}{18}\selectfont\color{AideaInk}Abstract\par}
  \vspace{2.1em}
  \begingroup
  \normalsize\color{AideaInk}\noindent\ignorespaces
}{%
  \par
  \ifx\@keywords\@empty\else
    \vspace{0.75em}
    {\normalfont\itshape\fontsize{10}{12}\selectfont\color{AideaMuted}Keywords: \@keywords\par}
  \fi
  \endgroup
  \vspace{1.2em}
}

\newtheorem{proposition}{Proposition}
\newtheorem{lemma}{Lemma}
\newtheorem{theorem}{Theorem}
\theoremstyle{definition}
\newtheorem{definition}{Definition}

\newcommand{\note}[1]{%
  \par\medskip
  \noindent\colorbox{AideaSoft}{%
    \parbox{\dimexpr\textwidth-2\fboxsep\relax}{\small\textbf{Note.} #1}%
  }
  \par\medskip
}

\setlength{\bibhang}{0.5in}
\setlength{\bibitemsep}{0pt}
\renewcommand*{\bibfont}{\normalsize}
\AtBeginBibliography{\doublespacing}
\defbibheading{bibliography}[\refname]{%
  \par\noindent
  \begin{center}
    \normalfont\normalsize\bfseries #1
  \end{center}
  \par
}

\AtBeginDocument{%
  \color{AideaInk}
  \urlstyle{same}
}
