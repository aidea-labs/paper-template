\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{aidealabs-paper-zh}[2026/08/17 v1.0 AIdeaLabs Chinese research paper]

\LoadClass[UTF8,12pt,a4paper,fontset=fandol]{ctexart}

\RequirePackage{fontspec}
\setmainfont{texgyrepagella-regular.otf}[
  BoldFont=texgyrepagella-bold.otf,
  ItalicFont=texgyrepagella-italic.otf,
  BoldItalicFont=texgyrepagella-bolditalic.otf
]
\setsansfont{texgyreheros-regular.otf}[
  BoldFont=texgyreheros-bold.otf,
  ItalicFont=texgyreheros-italic.otf,
  BoldItalicFont=texgyreheros-bolditalic.otf
]
\setmonofont{lmmono10-regular.otf}

\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{unicode-math}
\setmathfont{texgyrepagella-math.otf}
\RequirePackage{graphicx}
% 品牌资源集中放在上一级目录 templates/paper/assets/。第一个路径用于自带
% assets/ 的拷贝，第二个路径用于在当前位置直接编译。
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
\RequirePackage{setspace}
\RequirePackage{booktabs}
\RequirePackage{tabularx}
\RequirePackage{enumitem}
\RequirePackage{caption}
\RequirePackage{subcaption}
\RequirePackage{titlesec}
\RequirePackage{indentfirst}
\RequirePackage{needspace}
\RequirePackage{fancyhdr}
\RequirePackage{csquotes}
\RequirePackage[
  backend=biber,
  bibstyle=templates/aidealabs-ceq,
  citestyle=templates/aidealabs-author-year,
  sorting=nyt,
  sortlocale=en_US,
  sortcites=true,
  maxcitenames=4,
  mincitenames=1,
  uniquelist=false,
  maxbibnames=999
]{biblatex}
\DefineBibliographyStrings{english}{
  bibliography={参考文献},
  references={参考文献}
}
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

\setlength{\parindent}{2em}
\setlength{\parskip}{0.42\baselineskip}
\setstretch{1.32}
\setlist{leftmargin=2em,itemsep=0pt,parsep=0pt,topsep=0.35\baselineskip}
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
  {\centering\bfseries\fontsize{14}{18}\selectfont\color{AideaInk}}
  {\thesection.}{0.5em}{}
\titleformat{\subsection}
  {\bfseries\normalsize\color{AideaInk}}
  {\thesubsection.}{0.5em}{}
\titleformat{\subsubsection}
  {\bfseries\normalsize\color{AideaInk}}
  {\thesubsubsection.}{0.5em}{}
\titlespacing{\section}{0pt}{3ex plus 4pt minus 3pt}{6pt}
\titlespacing{\subsection}{0pt}{2.5ex plus 3pt minus 2pt}{3pt}
\titlespacing{\subsubsection}{0pt}{2ex plus 2.5pt minus 1.5pt}{3pt}

\let\aidea@articleappendix\appendix
\renewcommand{\appendix}{%
  \aidea@articleappendix
  \titleformat{\section}[block]
    {\centering\bfseries\fontsize{14}{18}\selectfont\color{AideaInk}}
    {附录 \thesection.}{0.5em}{}%
}

\crefname{equation}{式}{式}
\Crefname{equation}{式}{式}
\crefname{figure}{图}{图}
\Crefname{figure}{图}{图}
\crefname{table}{表}{表}
\Crefname{table}{表}{表}
\crefname{section}{节}{节}
\Crefname{section}{节}{节}

\newcommand{\subtitle}[1]{\gdef\@subtitle{#1}}
\newcommand{\affiliation}[1]{\gdef\@affiliation{#1}}
\newcommand{\correspondingauthor}[1]{\gdef\@correspondingauthor{#1}}
\newcommand{\authornote}[2][1]{%
  \g@addto@macro\@authornotes{\footnotetext[#1]{#2}}%
}
\newcommand{\equalcontributionnote}[1]{\authornote[1]{#1}}
\newcommand{\correspondingauthornote}[1]{\authornote[2]{#1}}
\newcommand{\authorcontact}[2]{%
  \begin{minipage}[t]{0.305\textwidth}
    \centering
    {\normalfont\fontsize{11}{15}\selectfont\color{AideaInk}#1\par}
    \vspace{0.28em}
    {\ttfamily\fontsize{9.5}{12}\selectfont\color{AideaInk}%
      \href{mailto:#2}{\nolinkurl{#2}}\par}
  \end{minipage}%
}
\newcommand{\keywords}[1]{\gdef\@keywords{#1}}
\newcommand{\logofile}[1]{\gdef\@logofile{#1}}

\newcommand{\@subtitle}{}
\newcommand{\@affiliation}{}
\newcommand{\@correspondingauthor}{}
\newcommand{\@authornotes}{}
\newcommand{\@keywords}{}
\newcommand{\@logofile}{aidealabs-mark.png}

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
  {\centering\normalfont\bfseries\fontsize{18}{24}\selectfont\color{AideaInk}\@title\par}
  \ifx\@subtitle\@empty\else
    \vspace{0.55em}
    {\centering\normalfont\fontsize{12}{17}\selectfont\color{AideaMuted}\@subtitle\par}
  \fi
  \vspace{1.55em}

  {\centering\normalfont\fontsize{12}{17}\selectfont\color{AideaInk}\@author\par}
  \ifx\@affiliation\@empty\else
    \vspace{0.55em}
    {\centering\normalfont\fontsize{10}{14}\selectfont\color{AideaMuted}\@affiliation\par}
  \fi
  \ifx\@correspondingauthor\@empty\else
    {\centering\normalfont\fontsize{10}{14}\selectfont\color{AideaMuted}\@correspondingauthor\par}
  \fi
  \ifx\@date\@empty\else
    \vspace{0.55em}
    {\centering\normalfont\fontsize{10}{14}\selectfont\color{AideaMuted}\@date\par}
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
  {\centering\normalfont\bfseries\fontsize{16}{21}\selectfont\color{AideaInk}摘要\par}
  \vspace{1.65em}
  \begingroup
  \normalsize\color{AideaInk}\ignorespaces
}{%
  \par
  \ifx\@keywords\@empty\else
    \vspace{0.75em}
    {\normalfont\fontsize{10}{14}\selectfont\color{AideaMuted}\textbf{关键词：}\@keywords\par}
  \fi
  \endgroup
  \vspace{1.2em}
}

\newtheorem{proposition}{命题}
\newtheorem{lemma}{引理}
\newtheorem{theorem}{定理}
\theoremstyle{definition}
\newtheorem{definition}{定义}

\newcommand{\note}[1]{%
  \par\medskip
  \noindent\colorbox{AideaSoft}{%
    \parbox{\dimexpr\textwidth-2\fboxsep\relax}{\small\textbf{提示：}#1}%
  }
  \par\medskip
}

\setlength{\bibhang}{2em}
\setlength{\bibitemsep}{0.55\baselineskip}
\renewcommand*{\bibfont}{\normalsize}
\AtBeginBibliography{\setstretch{1.2}}
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
