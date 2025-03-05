\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{uitphd}[2023/10/01 v1.4 PhD Application Class for UiT]
% Load the base class
\LoadClass{article}
% Load necessary packages
\RequirePackage[a4paper, margin=1in]{geometry}
\RequirePackage{graphicx}
\RequirePackage{hyperref}
\RequirePackage{enumitem}
\RequirePackage{atbegshi}
\RequirePackage{eso-pic}
\RequirePackage[table]{xcolor}
\RequirePackage{fancyhdr}
\RequirePackage{import}
\RequirePackage{tikz}
\RequirePackage{tabularx}
\RequirePackage{ifthen}
\RequirePackage[parfill]{parskip}
% Set default font size
\renewcommand{\normalsize}{\fontsize{11pt}{13pt}\selectfont}
% Custom list settings
\setlist[itemize]{left=0pt}
% Define custom commands and environment
\newcommand{\email}[1]{\href{mailto:#1}{#1}}

% Hypersetup
\hypersetup{
  colorlinks=true,
  linkcolor=blue,
  filecolor=magenta,
  urlcolor=cyan,
  citecolor=blue,
}

\parindent 0pt

\newcommand{\signature}[4]{%
  \vspace{1cm}
  % \noindent\makebox[2.5in]{\hrulefill} \\
  \noindent\textbf{#1} - \textbf{#2} \\
  Place: #3 \\
  Date: #4    \flushright \makebox[2.5in]{\hrulefill}\flushleft
}
\newcommand{\revision}[1]{\textbf{Revision:} #1}


\AddToShipoutPictureBG*{%
  \AtPageUpperLeft{%
    \hspace{1cm}\raisebox{-4cm}{\includegraphics[width=3cm]{graphics/uit_corner_photo.png}} % Replace 'logo.png' with your image file name
  }
  \AtPageUpperLeft{%
    \hspace*{\dimexpr\paperwidth-8cm\relax}\raisebox{-2cm}{\textbf{Faculty of Science and Technology}}
  }
}

\AddToShipoutPictureBG*{%
  \AtPageUpperLeft{%
    \hspace{17cm}\raisebox{-28.5cm}{\includegraphics[width=2.5cm]{graphics/UiT_Segl_Eng_Sort_960px.png}} % Replace 'logo.png' with your image file name
  }
}

% UiT standard colours
\definecolor{lightblue}{RGB}{89,190,201}
\definecolor{darkblue}{RGB}{0,115,150}
\definecolor{maincolor}{RGB}{0,51,73}
\definecolor{Lightgray}{RGB}{220,220,220}

% Things to do when \begin{document}
\AtBeginDocument{%
  \vspace*{3cm}
  \begin{flushleft}
    \color{darkblue}\small\textbf{APPLICATION FOR ADMISSION TO THE PHD DEGREE IN SCIENCE AT THE FACULTY OF SCIENCE AND TECHNOLOGY, UIT - THE ARCTIC UNIVERSITY OF NORWAY}
  \end{flushleft}
%   \vspace{1cm}
  \begin{flushleft}
    Once your application is approved at your department, send the application to: \color{blue}\email{postmottak@uit.no}\newline
    \color{black}Please attach your Bachelor and Master Diploma and transcript of records.
    The deadline is no later than 2 months after the starting date of your PhD position.
  \end{flushleft}
}

\pagestyle{fancy}
\fancyhf{} % Clear all header and footer fields
% Define the footer
\fancyfoot[L]{\small Postboks 6050 Langnes, N-9037 Tromsø {\textcolor{darkblue}/} 77 64 40 00 {\textcolor{darkblue}/} postmottak@uit.no {\textcolor{darkblue}/} uit.no}
\fancyfoot[R]{\thepage} % Page number on the right
% Optional: Remove the footer line if desired
\renewcommand{\footrulewidth}{0pt}
% Suppress page number on the first page
\AtBeginDocument{\thispagestyle{empty}}



% New commands for this class
\makeatletter
\newcommand{\uitsection}{%
  \@ifstar{\uitsectionstar}{\uitsectionnostar}%
}
\newcommand{\uitsectionstar}[1]{%
  \section*{\textcolor{darkblue}{\MakeUppercase{#1}}}%
}
\newcommand{\uitsectionnostar}[1]{%
  {\color{darkblue}\section{\MakeUppercase{#1}}}%
}
\makeatother

% PERSONAL INFORMATION TABLE

% EMPTY VARIABLES
\newcommand{\LastName}{}
\newcommand{\FirstName}{}
\newcommand{\DOB}{}
\newcommand{\Address}{}
\newcommand{\Zip}{}
\newcommand{\Place}{}
\newcommand{\Country}{}
\newcommand{\Citizenship}{}
\newcommand{\Gender}{}
\newcommand{\Mail}{}
\newcommand{\PhDprogramme}{}
\newcommand{\Department}{}
\newcommand{\ProjectTitle}{}
\newcommand{\StartDate}{}
\newcommand{\EndDate}{}
\newcommand{\RevisedEndDate}{}
\newcommand{\Employer}{}
\newcommand{\TypeEmployment}{}
\newcommand{\EmployedFrom}{}
\newcommand{\EmployedUntil}{}
\newcommand{\SourceOfFunding}{}
\newcommand{\MainSource}{}
\newcommand{\FundingType}{}
\newcommand{\FundingFrom}{}
\newcommand{\FundingTo}{}
\newcommand{\SecondSourceOfFunding}{}
\newcommand{\SecondMainSource}{}
\newcommand{\SecondFundingType}{}
\newcommand{\SecondFundingFrom}{}
\newcommand{\SecondFundingTo}{}

% DEFINE COMMANDS TO STORE VALUES
\newcommand{\setLastName}[1]{\renewcommand{\LastName}{#1}}
\newcommand{\setFirstName}[1]{\renewcommand{\FirstName}{#1}}
\newcommand{\setDOB}[1]{\renewcommand{\DOB}{#1}}
\newcommand{\setAddress}[1]{\renewcommand{\Address}{#1}}
\newcommand{\setZip}[1]{\renewcommand{\Zip}{#1}}
\newcommand{\setPlace}[1]{\renewcommand{\Place}{#1}}
\newcommand{\setCountry}[1]{\renewcommand{\Country}{#1}}
\newcommand{\setCitizenship}[1]{\renewcommand{\Citizenship}{#1}}
\newcommand{\setGender}[1]{\renewcommand{\Gender}{#1}}
\newcommand{\setMail}[1]{\renewcommand{\Mail}{#1}}
\newcommand{\setPhDprogramme}[1]{\renewcommand{\PhDprogramme}{#1}}
\newcommand{\setDepartment}[1]{\renewcommand{\Department}{#1}}
\newcommand{\setProjectTitle}[1]{\renewcommand{\ProjectTitle}{#1}}
\newcommand{\setStartDate}[1]{\renewcommand{\StartDate}{#1}}
\newcommand{\setEndDate}[1]{\renewcommand{\EndDate}{#1}}
\newcommand{\setRevisedEndDate}[1]{\renewcommand{\RevisedEndDate}{#1}}
\newcommand{\setEmployer}[1]{\renewcommand{\Employer}{#1}}
\newcommand{\setTypeEmployment}[1]{\renewcommand{\TypeEmployment}{#1}}
\newcommand{\setEmployedFrom}[1]{\renewcommand{\EmployedFrom}{#1}}
\newcommand{\setEmployedUntil}[1]{\renewcommand{\EmployedUntil}{#1}}
\newcommand{\setSourceOfFunding}[1]{\renewcommand{\SourceOfFunding}{#1}}
\newcommand{\setMainSource}[1]{\renewcommand{\MainSource}{#1}}
\newcommand{\setFundingType}[1]{\renewcommand{\FundingType}{#1}}
\newcommand{\setFundingFrom}[1]{\renewcommand{\FundingFrom}{#1}}
\newcommand{\setFundingTo}[1]{\renewcommand{\FundingTo}{#1}}
\newcommand{\setSecondSourceOfFunding}[1]{\renewcommand{\SecondSourceOfFunding}{#1}}
\newcommand{\setSecondMainSource}[1]{\renewcommand{\SecondMainSource}{#1}}
\newcommand{\setSecondFundingType}[1]{\renewcommand{\SecondFundingType}{#1}}
\newcommand{\setSecondFundingFrom}[1]{\renewcommand{\SecondFundingFrom}{#1}}
\newcommand{\setSecondFundingTo}[1]{\renewcommand{\SecondFundingTo}{#1}}


\newcommand{\CreatePersonalInfoTable}{%
    \begin{tabularx}{\textwidth}{|X|X|X|X|X|X|}
        \hline
        \rowcolor{lightgray}
        \multicolumn{6}{|l|}{\textbf{Personal information}} \\
        % \rowcolor{lightgray}\\
        \hline
        \rowcolor{Lightgray}
        \multicolumn{2}{|X|}{\small Last name} & \multicolumn{2}{X|}{\small All first and middle names} & \multicolumn{2}{X|}{\small Date of birth DDMMYYYY}\\
        \hline
        \multicolumn{2}{|X|}{\LastName} & \multicolumn{2}{X|}{\FirstName} & \multicolumn{2}{X|}{\DOB}\\
        \hline
        \rowcolor{Lightgray}
        \multicolumn{2}{|l|}{\small Home address} & \multicolumn{1}{l|}{\small Postal code} & \multicolumn{2}{l|}{\small Place} & \multicolumn{1}{l|}{\small Country} \\
        \hline
        \multicolumn{2}{|l|}{\Address} & \multicolumn{1}{l|}{\Zip} & \multicolumn{2}{l|}{\Place} & \multicolumn{1}{l|}{\Country} \\
        \hline
        \rowcolor{Lightgray}
        \multicolumn{2}{|X|}{\small Citizenship} & \multicolumn{2}{X|}{\small Gender} & \multicolumn{2}{X|}{\small E-mail}\\
        \hline
        \multicolumn{2}{|X|}{\Citizenship} & \multicolumn{2}{X|}{\Gender} & \multicolumn{2}{X|}{\Mail} \\
        \hline
    \end{tabularx}
    \vspace{1cm}
}

\newcommand{\CreatePhDInfoTable}{%
    \begin{tabularx}{\textwidth}{|X|X|X|X|X|X|}
        \hline
        \rowcolor{lightgray}
        \multicolumn{6}{|X|}{\textbf{PhD programme}} \\
        \hline
        \multicolumn{6}{|X|}{\PhDprogramme} \\
        \hline
        \rowcolor{lightgray}
        \multicolumn{6}{|X|}{\textbf{Department}} \\
        \hline
        \multicolumn{6}{|X|}{\Department} \\
        \hline
        \rowcolor{lightgray}
        \multicolumn{6}{|X|}{\textbf{Project title}} \\
        \hline
        \multicolumn{6}{|X|}{\ProjectTitle} \\
        \hline
        \rowcolor{lightgray}
        \multicolumn{6}{|X|}{\textbf{Project duration}} \\
        \hline
        \multicolumn{1}{|l|}{\cellcolor{Lightgray}\small Start} & \multicolumn{1}{l|}{\StartDate} & \multicolumn{1}{l|}{\cellcolor{Lightgray}\small End} & \multicolumn{1}{l|}{\EndDate} & 
        \multicolumn{1}{l|}{\cellcolor{Lightgray}\small Revised end} & \multicolumn{1}{l|}{\RevisedEndDate} \\
        \hline
    \end{tabularx}
    \vspace{1cm}
}

\newcommand{\CreateEmploymentTable}{%
    \begin{tabularx}{\textwidth}{|X|X|X|X|X|X|}
        \hline
        \rowcolor{lightgray}
        \multicolumn{6}{|X|}{\textbf{Employment/plan for financing (if UiT is your employer, we already have this information)}} \\
        \hline
        \rowcolor{Lightgray}
        \multicolumn{2}{|l|}{\small Employer} & \multicolumn{1}{l|}{\small Type of employment} & \multicolumn{2}{l|}{\small From} & \multicolumn{1}{l|}{\small To} \\
        \hline
        \multicolumn{2}{|l|}{\Employer} & \multicolumn{1}{l|}{\TypeEmployment} & \multicolumn{2}{l|}{\EmployedFrom} & \multicolumn{1}{l|}{\EmployedUntil} \\
        \hline
        \rowcolor{Lightgray}
        \multicolumn{2}{|l|}{\small Source of funding} & \multicolumn{1}{l|}{\small Main (M)} & \multicolumn{1}{l|}{\small Type} & \multicolumn{1}{l|}{\small From} & \multicolumn{1}{l|}{\small To}\\
        \hline
        \multicolumn{2}{|l|}{\SourceOfFunding} & \multicolumn{1}{l|}{\MainSource} & \multicolumn{1}{l|}{\FundingType} & \multicolumn{1}{l|}{\FundingFrom} & \multicolumn{1}{l|}{\FundingTo}\\
        \hline
        \multicolumn{2}{|l|}{\SecondSourceOfFunding} & \multicolumn{1}{l|}{\SecondMainSource} & \multicolumn{1}{l|}{\SecondFundingType} & \multicolumn{1}{l|}{\SecondFundingFrom} & \multicolumn{1}{l|}{\SecondFundingTo}\\
        \hline
    \end{tabularx}
    \vspace{1cm}
}
% End of class file