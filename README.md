# BJEDIS_template
## _Template candidate for BJEDIS journal (bjedis.org)_

### Developed by hfsf - hanniel.freitas@ifrn.edu.br

## ~ Template candidate usage ~

- ### Edit the following fields for generating titling information

```latex
\Title{BJEDIS article template for \LaTeX}
\Volume{1}
\Year{2021}
\DOI{xx.xxxx/xxxxxxxxxxxxx}
\EISSN{xxxx-xxxx/xx}
\Affiliations{$^{1}$ Department Name, Faculty Name, University Name, City, Country; $^{2}$ Department Name, Faculty Name, University Name, City, Country; $^3$ Department Name, Faculty Name, University Name, City, Country;}
\Author{First Author$^{1}$, Corresponding Author$^{*1}$, Co-author$^{1,2}$ and Co-author$^{3}$}
\CorrespondingAddress{*Address correspondence to this author at the Department of xxxy, Faculty of xxx, xxx University, P.O. Box: 0000-000, City, Country; Tel/Fax: ++0-000-000-0000, +0-000-000-0000; E-mails: author@institute.xxx}
\Adherence{Text explaining the adherence to BJEDIS' scope.}
\AbstractText{Insert the abstract text here.}
\Keywords{Provide 6 to 8 keywords, separated by semicolons.}
\Code{xxxxxxxxxx}
\ShortTitle{Insert a short title for headers}
\ShortAuthor{Author name abbreviation for headers}
```
- ### Place references in your .BIB file, indicate in TEX file.
```latex
\bibliography{REFERENCES_FILE_NAME.bib}
```
- ### Limit pretextual, textual and postextual sections
```latex
\pretextual
```
> Here the titling information will be displayed

```latex
\textual
```
> Here comes the proper text

```latex
\postextual
```
> Here comes the conflict of interests statement, and references

- ### Remember to insert the command for printing titling information (title, affiliations, abstract, etc) in first page

```latex
\PrintTitlePage
```

- ### Compile with the well-known 4-steps recipe
```latex
pdflatex FILE_NAME.tex
biblatex FILE_NAME.aux
pdflatex FILE_NAME.tex
pdflatex FILE_NAME.tex
```
