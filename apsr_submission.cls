%% APSR Submission Class File
%% Minimal implementation for compilation
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{apsr_submission}[2025/11/13 APSR Submission Class]

%% Declare options
\newif\if@bibtex\@bibtextrue
\newif\if@biblatex\@biblatexfalse
\newif\if@blind\@blindfalse
\newif\if@twocol\@twocolfalse
\newif\if@autowc\@autowcfalse

\DeclareOption{bibtex}{\@bibtextrue\@biblatexfalse}
\DeclareOption{biblatex}{\@biblatexfalse\@bibtextrue}
\DeclareOption{blind}{\@blindtrue}
\DeclareOption{nonblind}{\@blindfalse}
\DeclareOption{twocolumn}{\@twocoltrue}
\DeclareOption{singlespace}{\def\@linespacing{1}}
\DeclareOption{onehalfspace}{\def\@linespacing{1.5}}
\DeclareOption{doublespace}{\def\@linespacing{2}}
\DeclareOption{autowc}{\@autowctrue}

\ProcessOptions\relax

%% Load base class
\LoadClass[12pt,letterpaper]{article}

%% Required packages
\RequirePackage[margin=1in]{geometry}
\RequirePackage{setspace}

%% Set line spacing
\setstretch{\@linespacing}

%% Custom author command - takes 3 arguments
\def\@authorlist{}
\def\@affillist{}
\def\@thankslist{}

\renewcommand{\author}[3]{%
  \if@blind
    \gdef\@author{Author Name Withheld}
    \gdef\@affil{Affiliation Withheld}
  \else
    \gdef\@author{#1}
    \gdef\@affil{#2}
    \gdef\@authorthanks{#3}
  \fi
}

%% Running title and author
\newcommand{\runningtitle}[1]{\def\@runningtitle{#1}}
\newcommand{\runningauthor}[1]{\def\@runningauthor{#1}}

%% Redefine maketitle
\renewcommand{\maketitle}{%
  \begin{center}
    {\Large\bfseries\@title\par}
    \vskip 1em
    {\large\@author\par}
    \if@blind\else
      {\normalsize\itshape\@affil\par}
    \fi
  \end{center}
  \if@blind\else
    \if\@authorthanks\@empty\else
      \footnotetext{\@authorthanks}
    \fi
  \fi
}

%% Frontmatter environment
\newenvironment{frontmatter}{%
  \maketitle
  \thispagestyle{empty}
}{%
}

%% Drop cap command (simplified)
\newcommand{\dropcap}[1]{{\Large\textbf{#1}}}

%% Bibliography setup
\if@bibtex
  \RequirePackage[authoryear]{natbib}
  \bibliographystyle{chicago}
\fi

\if@biblatex
  \RequirePackage[style=authoryear,backend=biber]{biblatex}
\fi

\endinput
