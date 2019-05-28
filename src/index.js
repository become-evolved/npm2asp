window.npm2asp = {

MarkdownIt: require("markdown-it")({
	html: false,
	xhtmlOut: true,
	typographer: true
}).use( require("markdown-it-abbr") )
  .use( require("markdown-it-anchor"), { permalink: true, permalinkBefore: true } )
  .use( require("markdown-it-attrs") )
  .use( require("markdown-it-deflist") )
  .use( require("markdown-it-footnote") )
  .use( require("markdown-it-mark") )
  .use( require("markdown-it-sub") )
  .use( require("markdown-it-sup") )
  .use( require("markdown-it-toc-done-right") ),

moment: require("moment")

};
