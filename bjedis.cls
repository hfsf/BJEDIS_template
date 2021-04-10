%==========================================================
%Class file for BJEDIS journal
%Developed by Hanniel Freitas - hanniel.freitas@ifrn.edu.br
%==========================================================

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{bjedis}[BJEDIS LaTeX class]
%Load abntex2 as main class
\LoadClass[11pt, twoside, a4paper, english, brazil]{abntex2}

%Removing different margins from twoside paper options
\renewcommand{\cleardoublepage}{\clearpage}
%Packages required
\RequirePackage[num]{abntex2cite}
\RequirePackage{booktabs}
\RequirePackage{tabularx}
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage{lmodern}
\RequirePackage{graphicx}
\RequirePackage{microtype}
\RequirePackage[a4paper,
                asymmetric,
                top=1.37cm,
                bottom=1.9cm,
                left=2.25cm,
                right=1.25cm,
                headheight=17pt,
                footskip=40pt,
                includehead,
                includefoot,
                heightrounded,
                ]{geometry}
\RequirePackage{titling}
\RequirePackage{float}
\RequirePackage{indentfirst}
\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\RequirePackage{hyperref}
\RequirePackage{fancyhdr}

%Declare not used options
\DeclareOption{twocolumn}{\OptionNotUsed}
%Declare not declared option (pass to abntex2)
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{abntex2}}
\ProcessOptions\relax
%\LoadClass[a4paper, margin=1in]{geometry}

%Create command for definition of bibliographic information
\newcommand{\Title}[1]{\def\Title{#1}}
\newcommand{\Volume}[1]{\def\Volume{#1}}
\newcommand{\Year}[1]{\def\Year{#1}}
\newcommand{\DOI}[1]{\def\DOI{#1}}
\newcommand{\EISSN}[1]{\def\EISSN{#1}}
\newcommand{\Affiliations}[1]{\def\Affiliations{#1}}
\newcommand{\Author}[1]{\def\Author{#1}}
\newcommand{\Code}[1]{\def\Code{#1}}
\newcommand{\CorrespondingAddress}[1]{\def\CorrespondingAddress{#1}}
\newcommand{\AbstractText}[1]{\def\AbstractText{#1}}
\newcommand{\Keywords}[1]{\def\Keywords{#1}}
\newcommand{\Adherence}[1]{\def\Adherence{#1}}
\newcommand{\ShortTitle}[1]{\def\ShortTitle{#1}}
\newcommand{\ShortAuthor}[1]{\def\ShortAuthor{#1}}

%Style for first page
\fancypagestyle{first_page_style}{%
    \fancyhead{}
    \fancyfoot{}
    \fancyhead[L, C, R]{}
    \renewcommand{\headrulewidth}{0pt}
    \renewcommand{\footrulewidth}{0pt}
    \fancyfoot[L]{\tiny{\textbf{Code:{\Code}}}}
    \fancyfoot[C]{\tiny{\textbf{UFRJ/Brazil}}}
    \fancyfoot[R]{
            \includegraphics[scale=.7]{creative_commons_logo.png}
            \\ \tiny{\textbf{Creative commons}}
    }
}

%Style for second page
\fancypagestyle{second_page_style}{%
    \fancyhead{}
    \fancyfoot{}
    \fancyhead[C]{\tiny{\textbf{Brazilian Journal of Experimental Design, Data Analysis and Inferential Statistics}}}    
    \fancyhead[R]{\tiny{\textbf{\thepage}}}
    \renewcommand{\headrulewidth}{0pt}
    \renewcommand{\footrulewidth}{0pt}
    \fancyfoot[L]{\tiny{\textbf{Code:{\Code}}}}
    \fancyfoot[C]{\tiny{\textbf{UFRJ/Brazil}}}
    \fancyfoot[R]{
            \includegraphics[scale=.7]{creative_commons_logo.png}
            \\ \tiny{\textbf{Creative commons}}
    }
}


%Style for beyond second page
\fancypagestyle{beyond_second_page_style}{%
    \fancyhead{}
    \fancyfoot{}
    \fancyhead[LE]{\tiny{\textbf{\ShortTitle}}}
    \fancyhead[RE]{\tiny{\textbf{BJEDIS\;\;\;\thepage}}}
    \fancyhead[RO]{\tiny{\textbf{\ShortAuthor}}}
    \fancyhead[LO]{\tiny{\textbf{\thepage\;\;\;BJEDIS}}}

    \renewcommand{\headrulewidth}{0pt}
    \renewcommand{\footrulewidth}{0pt}
}

\newcommand{\StartText}{\pagestyle{beyond_second_page_style}}

%%%%%%%%% BIBLIOGRAPHY NOT ON NEW PAGE %%%%%%%%%%%%%%%
\renewcommand\bibsection{{}}
\makeatother
%%%%%%%%%%%%%%%%%
\counterwithout{section}{section}
\counterwithout{figure}{chapter}
\counterwithout{table}{chapter}    

\newcommand{\PrintTitlePage}{
    \thispagestyle{first_page_style}
    \vspace{1.27cm}
    \begin{minipage}{\linewidth}
        \centering
        \includegraphics[width=.9\linewidth]{bjedis_logo.png}
    \end{minipage}
    \null \\
    \vspace{3ex}
    \begin{minipage}{\linewidth}
        \begin{flushright}
            Federal University of Rio de Janeiro \\
            BJEDIS, Rio de Janeiro, v. {\Volume}, {\Year} \\
            DOI: \href{https://doi.org/{\DOI}}{\DOI} \\
            E-ISSN: {\EISSN} \\
        \end{flushright}
    \end{minipage}
    \vspace{2ex}
    \begin{minipage}{\linewidth}
        \centering
        \LARGE
        \textbf{\Title}
        \medskip
    \end{minipage}
    \vspace{2ex}
    \begin{minipage}{\linewidth}
        \centering
        \large{\Author} \\[2ex]
        \small{\Affiliations}
        \vspace{2ex}
    \end{minipage}
    \vspace{2ex}
    \begin{minipage}{\linewidth}
        \textbf{Abstract:} {\AbstractText} \\
    \end{minipage}
    \begin{minipage}{\linewidth}
        \textbf{Keywords:} {\Keywords} \\
    \end{minipage}
    \begin{minipage}{\linewidth}
        \vspace{4ex}
        \textbf{Adherence to BJEDIS' scope:} {\Adherence}\\
    \end{minipage}
    \vspace{\fill} \\
    \rule{\linewidth}{0.4pt} \\
    \begin{minipage}{.95\linewidth}
        %\begin{flushleft}
        \tiny{\CorrespondingAddress} \\
        %\end{flushleft}
    \end{minipage}
    \clearpage
    \thispagestyle{second_page_style}
    \pagestyle{beyond_second_page_style}
}

%Paragraph size:
\setlength{\parindent}{1.3cm}

%Inter-paragraph spacing
\setlength{\parskip}{0.2cm}  % tente também \onelineskip
