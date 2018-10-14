%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% NoTeX
% LaTeX Template
% Version 0.0.1 (14/10/18)
%
% Original author: Omar Gutiérrez (omar.vpa@gmail.com) 
% License: The MIT License (see included LICENSE file)
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mynotex}[2018/01/01 mynotex class]
\LoadClass{report}

%\DeclareOption{latex}{
%}

\newif\ifkindle

\DeclareOption{normal}{
    \kindlefalse
    \usepackage[a4paper, top=2.5cm, bottom=3.4cm, left=1cm, right=1cm]{geometry}
    %\setlength\paperheight{297mm}
    %\setlength\paperwidth{210mm}
    %\setlength\topmargin{-2.875in}
}
\DeclareOption{kindle}{
    \kindletrue
    %\RequirePackage[papersize={108mm,144mm},left=5mm,right=5mm,top=5mm,bottom=15mm]{geometry}
    \setlength\paperheight{144mm}
    \setlength\paperwidth{108mm}
    \setlength\textheight{134mm}
    \setlength\textwidth{98mm}
}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{kindle}}
\ProcessOptions\relax

% execute default options
\ExecuteOptions{normal}

\RequirePackage[T1]{fontenc}
\RequirePackage{kpfonts}
\RequirePackage{amsthm, amsmath, amsfonts}
\RequirePackage{amssymb}
\RequirePackage{wasysym}
\RequirePackage{mathtools}
\RequirePackage{fancyhdr}
\RequirePackage{multicol}
\RequirePackage{float}
\RequirePackage{calc}
\RequirePackage{color}
\RequirePackage[font=scriptsize]{subfig}
\RequirePackage[linesnumbered,algoruled,boxed,lined]{algorithm2e}
% pgfplots
\RequirePackage{pgfplots}
\pgfplotsset{compat=1.13}
\usepgfplotslibrary{fillbetween}
% tikz
\RequirePackage{tikz}
\RequirePackage{tikz-3dplot}
\RequirePackage{tikz-qtree}
\RequirePackage{xinttools}
\RequirePackage[explicit]{titlesec}
\usetikzlibrary{calc, positioning, fit, backgrounds, arrows, matrix}
\RequirePackage[font=scriptsize]{subfig}

\RequirePackage{hyperref}
\hypersetup{
    colorlinks,
    citecolor=black,
    filecolor=black,
    linkcolor=black,
    urlcolor=black,
    % metadata
    pdftitle={\@title},
    %pdfsubject={Machine Learning},
    pdfauthor={\@author},
    %pdfkeywords={Machine Learning, Decision Trees, Neural Networks, Support Vector Machines, Bayesian Learning}
}


% argmax
\newcommand{\argmax}[1]{\underset{#1}{\operatorname{arg}\,\operatorname{max}}\;}
% arg min
\newcommand{\argmin}[1]{\underset{#1}{\operatorname{arg}\,\operatorname{min}}\;}
\newcommand{\R}{\mathbb{R}}
\newcommand{\E}{\mathbb{E}}

% renewcommands

% enumerate
\renewcommand{\theenumi}{\alph{enumi}}
\renewcommand{\labelenumi}{\theenumi)}

% itemize
\renewcommand{\labelitemi}{}
\renewcommand{\labelitemii}{$\Rightarrow$}

% chapter
\renewcommand{\labelenumi}{$\implies$}

\renewcommand{\normalsize}{\fontsize{9}{10}\selectfont}

\newenvironment{myproof}[1][\textbf{\proofname}]{%
\begin{proof}[#1]$ $\textbf\nobreak\ignorespaces
}{%
\end{proof}
}

\newtheorem{exercise}{Exercise}
\newtheorem{claim}{Claim}
\newtheorem{theorem}{Theorem}
\newtheorem*{claim*}{Claim}

% long equations in different pages
\allowdisplaybreaks

% keep this?
\newenvironment{QandA}{\begin{enumerate}[label=\bfseries\alph*.]\bfseries}
                {\end{enumerate}}
\newenvironment{answered}{\par\normalfont}{}
