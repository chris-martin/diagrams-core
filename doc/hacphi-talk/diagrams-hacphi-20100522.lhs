%% -*- LaTeX -*-
\documentclass[xcolor=svgnames]{beamer}

%include polycode.fmt

\renewcommand{\onelinecomment}{--- \itshape}
\renewcommand{\Conid}{\mathsf}
\renewcommand{\Varid}{\mathsf}

\mode<presentation>
{
  \usetheme{default}                          % use a default (plain) theme
  \setbeamertemplate{navigation symbols}{}    % don't show navigation
                                              % buttons along the
                                              % bottom

  \setbeamertemplate{footline}[frame number]

  \AtBeginSection[]
  {
    \begin{frame}<beamer>
      \frametitle{Outline}
      \tableofcontents[currentsection,currentsubsection]
    \end{frame}
  }
}

\usepackage[english]{babel}
\usepackage{graphicx}
\usepackage{ulem}
\usepackage{url}

\newif \iftext \texttrue 

\newcommand{\stext}[1]{\iftext \begin{center}#1\end{center} \fi}

\title{Declarative, embedded drawing with \texttt{diagrams}: past and future}
\date{Hac $\varphi$ \\ May 22, 2010}
\author{Brent Yorgey \\ University of Pennsylvania}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\begin{document}

\begin{frame}{}
  \titlepage
\end{frame}

\begin{frame}{}
  \begin{center}
    \includegraphics[width=2in]{images/man-itch.jpg}
  \end{center}
  \stext{The diagrams library started to scratch a personal itch.}
\end{frame}

\begin{frame}{}
  \begin{center}
    \includegraphics[width=4in]{images/code-to-dia.pdf}
  \end{center}
  \stext{The goal: programmatically generate drawings and diagrams in
    a way that is declarative, powerful, and semantically elegant.}
\end{frame}

\begin{frame}{}
  \vspace{0.3in}
  \begin{center}
    \includegraphics[width=1.5in]{images/MPlogo.png}
  \end{center}
  \stext{I first looked into existing solutions.  The most obvious
    candidate is MetaPost.}
\end{frame}

\begin{frame}{}
  \begin{center}
    \includegraphics[width=1.75in]{images/MPlogo-no.png}
  \end{center}
  \stext{But it's not sufficiently declarative, and uses a weird ad-hoc language.}
\end{frame}

\begin{frame}{}
  \vspace{0.1in}
  \begin{center}
    \includegraphics[width=1.5in]{images/Asymptote-logo.png}
  \end{center}
  \stext{What about Asymptote, which is supposed to be a modern
    replacement for MetaPost?}
\end{frame}

\begin{frame}{}
  \begin{center}
    \includegraphics[width=1.72in]{images/Asymptote-logo-no.png}
  \end{center}
  \stext{No thanks, it uses a TERRIBLE ad-hoc language ``based on'' C++\dots}
\end{frame}

\begin{frame}{}
  \begin{center}
    % XXX
  \end{center}
  \stext{What about PGF/TikZ?}
\end{frame}

\begin{frame}{}
  \begin{center}
    % XXX
  \end{center}
  \stext{That's right, it uses an ad-hoc language and\dots sigh.}
\end{frame}

\begin{frame}{}
  \begin{center}
    \includegraphics[width=4in]{images/diagrams.pdf}
  \end{center}
  \stext{Thus, the \texttt{diagrams} library was born!  It's gotten a
    bit of use, people seem to like it. It got quite a few things
    right, but let's look at some things it got wrong.}
\end{frame}

\begin{frame}{}
  \begin{center}
    \includegraphics[width=3in]{images/ab.pdf}
  \end{center}
  \stext{A fundamental ability of the library is to put two diagrams
    next to each other to create a larger diagram.}
\end{frame}

\begin{frame}{}
  \begin{center}
    \includegraphics[width=3in]{images/ab-boxed.pdf}
  \end{center}
  \stext{An obvious way to accomplish this is with bounding boxes.}
\end{frame}

\begin{frame}{}
  \begin{center}
    \includegraphics[width=3in]{images/ab-boxed-rot.pdf}
  \end{center}
  \stext{What happens when we want to rotate the triangle?}
\end{frame}

\begin{frame}{}
  \begin{center}
    \includegraphics[width=3in]{images/ab-boxed-rot-adj.pdf}
  \end{center}
  \stext{Not so fast\dots this is hard to do! Current version lets you
    sort of get around this with lots of ugly hacks.}
\end{frame}

\begin{frame}{}
  \begin{center}
    \includegraphics[width=3in]{images/ab-boxed-diag.pdf}
  \end{center}
  \stext{And what about putting things next to each other along a line
    that isn't vertical or horizontal?  We get this\dots}
\end{frame}

\begin{frame}{}
  \begin{center}
    \includegraphics[width=3in]{images/ab-boxed-diag-adj.pdf}
  \end{center}
  \stext{\dots instead of this.}  
\end{frame}


% Solution: bounding functions

% Ability to refer to subparts

% Solution: named points, expressions


\end{document}
