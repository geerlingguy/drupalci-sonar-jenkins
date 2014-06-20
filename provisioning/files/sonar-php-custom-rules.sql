# Add custom PHP CodeSniffer rules for Drupal into SonarQube.
#
# This must be run AFTER SonarQube has been installed and started, so the MySQL
# database schema exists.
#
# Command: mysql -u root -ppass sonar < sonar-php-custom-rules.sql
#
# See: https://drupal.org/node/2082563

# Insert new 'Drupal 7' ruleset (should be id 8).
INSERT INTO rules_profiles VALUES (NULL, 'Drupal 7', 'php', 'All PHPMD Rules', 1, 0);

# Insert custom rules for PHP Codesniffer into the properties table.
INSERT INTO properties VALUES (NULL, 'sonar.phpCodesniffer.customRules.definition', NULL, '<?xml version="1.0" encoding="UTF-8"?>
<rules>
  <rule key="Drupal.Commenting.FunctionComment.ParamCommentNewLine" priority="MAJOR">
    <name>Drupal.Commenting.FunctionComment.ParamCommentNewLine</name>
    <configKey>PARAMCOMMENTNEWLINE</configKey>
    <description>Drupal.Commenting.FunctionComment.ParamCommentNewLine</description>
  </rule>
  <rule key="Drupal.Commenting.FunctionComment.HookReturnDoc" priority="MAJOR">
    <name>Drupal.Commenting.FunctionComment.HookReturnDoc</name>
    <configKey>HOOKRETURNDOC</configKey>
    <description>Drupal.Commenting.FunctionComment.HookReturnDoc</description>
  </rule>
  <rule key="Drupal.Commenting.FunctionComment.MissingReturnType" priority="MAJOR">
    <name>Drupal.Commenting.FunctionComment.MissingReturnType</name>
    <configKey>MISSINGRETURNTYPE</configKey>
    <description>Drupal.Commenting.FunctionComment.MissingReturnType</description>
  </rule>
  <rule key="Drupal.Commenting.FunctionComment.HookParamDoc" priority="MAJOR">
    <name>Drupal.Commenting.FunctionComment.HookParamDoc</name>
    <configKey>HOOKPARAMDOC</configKey>
    <description>Drupal.Commenting.FunctionComment.HookParamDoc</description>
  </rule>
  <rule key="Drupal.Commenting.FunctionComment.ParamNameNoMatch" priority="MAJOR">
    <name>Drupal.Commenting.FunctionComment.ParamNameNoMatch</name>
    <configKey>PARAMNAMENOMATCH</configKey>
    <description>Drupal.Commenting.FunctionComment.ParamNameNoMatch</description>
  </rule>
  <rule key="Drupal.Commenting.FunctionComment.SpacingBeforeParamType" priority="MAJOR">
    <name>Drupal.Commenting.FunctionComment.SpacingBeforeParamType</name>
    <configKey>SPACINGBEFOREPARAMTYPE</configKey>
    <description>Drupal.Commenting.FunctionComment.SpacingBeforeParamType</description>
  </rule>
  <rule key="Drupal.Commenting.InlineComment.SpacingBefore" priority="MAJOR">
    <name>Drupal.Commenting.InlineComment.SpacingBefore</name>
    <configKey>SPACINGBEFORE</configKey>
    <description>Drupal.Commenting.InlineComment.SpacingBefore</description>
  </rule>
  <rule key="Drupal.Commenting.FileComment" priority="MAJOR">
    <name>Drupal.Commenting.FileComment</name>
    <configKey>FILECOMMENT</configKey>
    <description>Drupal.Commenting.FileComment</description>
  </rule>
  <rule key="Drupal.ControlStructures.InlineControlStructure.NotAllowed" priority="MAJOR">
    <name>Drupal.ControlStructures.InlineControlStructure.NotAllowed</name>
    <configKey>NOTALLOWED</configKey>
    <description>Drupal.ControlStructures.InlineControlStructure.NotAllowed</description>
  </rule>
  <rule key="Drupal.Commenting.FunctionComment" priority="MAJOR">
    <name>Drupal.Commenting.FunctionComment</name>
    <configKey>FUNCTIONCOMMENT</configKey>
    <description>Drupal.Commenting.FunctionComment</description>
  </rule>
  <rule key="Drupal.Files.LineLength.TooLong" priority="MAJOR">
    <name>Drupal.Files.LineLength.TooLong</name>
    <configKey>TOOLONG</configKey>
    <description>Drupal.Files.LineLength.TooLong</description>
  </rule>
  <rule key="Drupal.Semantics.FunctionCall.LArg" priority="MAJOR">
    <name>Drupal.Semantics.FunctionCall.LArg</name>
    <configKey>LARG</configKey>
    <description>Drupal.Semantics.FunctionCall.LArg</description>
  </rule>
  <rule key="Drupal.WhiteSpace.OperatorSpacing.SpacingAfter" priority="MAJOR">
    <name>Drupal.WhiteSpace.OperatorSpacing.SpacingAfter</name>
    <configKey>SPACINGAFTER</configKey>
    <description>Drupal.WhiteSpace.OperatorSpacing.SpacingAfter</description>
  </rule>
  <rule key="Drupal.Formatting.DisallowCloseTag.FinalClose" priority="MAJOR">
    <name>Drupal.Formatting.DisallowCloseTag.FinalClose</name>
    <configKey>FINALCLOSE</configKey>
    <description>Drupal.Formatting.DisallowCloseTag.FinalClose</description>
  </rule>
  <rule key="Drupal.WhiteSpace.OpenBracketSpacing.OpeningWhitespace" priority="MAJOR">
    <name>Drupal.WhiteSpace.OpenBracketSpacing.OpeningWhitespace</name>
    <configKey>OPENINGWHITESPACE</configKey>
    <description>Drupal.WhiteSpace.OpenBracketSpacing.OpeningWhitespace</description>
  </rule>
  <rule key="Drupal.Commenting.FileComment.DescriptionMissing" priority="MAJOR">
    <name>Drupal.Commenting.FileComment.DescriptionMissing</name>
    <configKey>DESCRIPTIONMISSING</configKey>
    <description>Drupal.Commenting.FileComment.DescriptionMissing</description>
  </rule>
  <rule key="Drupal.Commenting.InlineComment.NoSpaceBefore" priority="MAJOR">
    <name>Drupal.Commenting.InlineComment.NoSpaceBefore</name>
    <configKey>NOSPACEBEFORE</configKey>
    <description>Drupal.Commenting.InlineComment.NoSpaceBefore</description>
  </rule>
  <rule key="Drupal.Strings.ConcatenationSpacing.Missing" priority="MAJOR">
    <name>Drupal.Strings.ConcatenationSpacing.Missing</name>
    <configKey>MISSING</configKey>
    <description>Drupal.Strings.ConcatenationSpacing.Missing</description>
  </rule>
  <rule key="Drupal.Commenting.InlineComment.WrongStyle" priority="MAJOR">
    <name>Drupal.Commenting.InlineComment.WrongStyle</name>
    <configKey>WRONGSTYLE</configKey>
    <description>Drupal.Commenting.InlineComment.WrongStyle</description>
  </rule>
  <rule key="Drupal.Semantics.Br.XHTMLBr" priority="MAJOR">
    <name>Drupal.Semantics.Br.XHTMLBr</name>
    <configKey>XHTMLBR</configKey>
    <description>Drupal.Semantics.Br.XHTMLBr</description>
  </rule>
  <rule key="Drupal.Strings.UnnecessaryStringConcat.Found" priority="MAJOR">
    <name>Drupal.Strings.UnnecessaryStringConcat.Found</name>
    <configKey>FOUND</configKey>
    <description>Drupal.Strings.UnnecessaryStringConcat.Found</description>
  </rule>
  <rule key="Drupal.Commenting.FunctionComment.Empty" priority="MAJOR">
    <name>Drupal.Commenting.FunctionComment.Empty</name>
    <configKey>EMPTY</configKey>
    <description>Drupal.Commenting.FunctionComment.Empty</description>
  </rule>
  <rule key="Drupal.NamingConventions.ValidClassName.NoUnderscores" priority="MAJOR">
    <name>Drupal.NamingConventions.ValidClassName.NoUnderscores</name>
    <configKey>NOUNDERSCORES</configKey>
    <description>Drupal.NamingConventions.ValidClassName.NoUnderscores</description>
  </rule>
  <rule key="Drupal.Commenting.FileComment.SpacingAfter" priority="MAJOR">
    <name>Drupal.Commenting.FileComment.SpacingAfter</name>
    <configKey>SPACINGAFTER</configKey>
    <description>Drupal.Commenting.FileComment.SpacingAfter</description>
  </rule>
  <rule key="Drupal.Commenting.FunctionComment.$InReturnType" priority="MAJOR">
    <name>Drupal.Commenting.FunctionComment.$InReturnType</name>
    <configKey>$INRETURNTYPE</configKey>
    <description>Drupal.Commenting.FunctionComment.$InReturnType</description>
  </rule>
  <rule key="Drupal.Array.Array.LongLineDeclaration" priority="MAJOR">
    <name>Drupal.Array.Array.LongLineDeclaration</name>
    <configKey>LONGLINEDECLARATION</configKey>
    <description>Drupal.Array.Array.LongLineDeclaration</description>
  </rule>
  <rule key="Drupal.Commenting.DocCommentAlignment.SpaceBeforeAsterisk" priority="MAJOR">
    <name>Drupal.Commenting.DocCommentAlignment.SpaceBeforeAsterisk</name>
    <configKey>SPACEBEFOREASTERISK</configKey>
    <description>Drupal.Commenting.DocCommentAlignment.SpaceBeforeAsterisk</description>
  </rule>
  <rule key="Drupal.Commenting.FunctionComment.ShortSingleLine" priority="MAJOR">
    <name>Drupal.Commenting.FunctionComment.ShortSingleLine</name>
    <configKey>SHORTSINGLELINE</configKey>
    <description>Drupal.Commenting.FunctionComment.ShortSingleLine</description>
  </rule>
  <rule key="Drupal.Semantics.FunctionCall.NotLiteralString" priority="MAJOR">
    <name>Drupal.Semantics.FunctionCall.NotLiteralString</name>
    <configKey>NOTLITERALSTRING</configKey>
    <description>Drupal.Semantics.FunctionCall.NotLiteralString</description>
  </rule>
  <rule key="Drupal.Commenting.FunctionComment.ShortFullStop" priority="MAJOR">
    <name>Drupal.Commenting.FunctionComment.ShortFullStop</name>
    <configKey>SHORTFULLSTOP</configKey>
    <description>Drupal.Commenting.FunctionComment.ShortFullStop</description>
  </rule>
  <rule key="Drupal.Commenting.InlineComment.NotCapital" priority="MAJOR">
    <name>Drupal.Commenting.InlineComment.NotCapital</name>
    <configKey>NOTCAPITAL</configKey>
    <description>Drupal.Commenting.InlineComment.NotCapital</description>
  </rule>
  <rule key="Drupal.Commenting.InlineComment.SpacingAfter" priority="MAJOR">
    <name>Drupal.Commenting.InlineComment.SpacingAfter</name>
    <configKey>SPACINGAFTER</configKey>
    <description>Drupal.Commenting.InlineComment.SpacingAfter</description>
  </rule>
  <rule key="Drupal.Commenting.FileComment.WrongStyle" priority="MAJOR">
    <name>Drupal.Commenting.FileComment.WrongStyle</name>
    <configKey>WRONGSTYLE</configKey>
    <description>Drupal.Commenting.FileComment.WrongStyle</description>
  </rule>
  <rule key="Drupal.Formatting.SpaceInlineIf.NoSpaceAfter" priority="MAJOR">
    <name>Drupal.Formatting.SpaceInlineIf.NoSpaceAfter</name>
    <configKey>NOSPACEAFTER</configKey>
    <description>Drupal.Formatting.SpaceInlineIf.NoSpaceAfter</description>
  </rule>
  <rule key="Drupal.Commenting.FunctionComment.ShortNotCapital" priority="MAJOR">
    <name>Drupal.Commenting.FunctionComment.ShortNotCapital</name>
    <configKey>SHORTNOTCAPITAL</configKey>
    <description>Drupal.Commenting.FunctionComment.ShortNotCapital</description>
  </rule>
  <rule key="Drupal.Array.Array.ArrayIndentation" priority="MAJOR">
    <name>Drupal.Array.Array.ArrayIndentation</name>
    <configKey>ARRAYINDENTATION</configKey>
    <description>Drupal.Array.Array.ArrayIndentation</description>
  </rule>
  <rule key="Drupal.Commenting.FunctionComment.MissingParamType" priority="MAJOR">
    <name>Drupal.Commenting.FunctionComment.MissingParamType</name>
    <configKey>MISSINGPARAMTYPE</configKey>
    <description>Drupal.Commenting.FunctionComment.MissingParamType</description>
  </rule>
  <rule key="Drupal.ControlStructures.ElseIf" priority="MAJOR">
    <name>Drupal.ControlStructures.ElseIf</name>
    <configKey>ELSEIF</configKey>
    <description>Drupal.ControlStructures.ElseIf</description>
  </rule>
  <rule key="Drupal.Array.Array" priority="MAJOR">
    <name>Drupal.Array.Array</name>
    <configKey>ARRAY</configKey>
    <description>Drupal.Array.Array</description>
  </rule>
  <rule key="Drupal.ControlStructures.TemplateControlStructure.CurlyBracket" priority="MAJOR">
    <name>Drupal.ControlStructures.TemplateControlStructure.CurlyBracket</name>
    <configKey>CURLYBRACKET</configKey>
    <description>Drupal.ControlStructures.TemplateControlStructure.CurlyBracket</description>
  </rule>
  <rule key="Drupal.Array.Array.ArrayClosingIndentation" priority="MAJOR">
    <name>Drupal.Array.Array.ArrayClosingIndentation</name>
    <configKey>ARRAYCLOSINGINDENTATION</configKey>
    <description>Drupal.Array.Array.ArrayClosingIndentation</description>
  </rule>
  <rule key="Drupal.WhiteSpace.ScopeIndent.IncorrectExact" priority="MAJOR">
    <name>Drupal.WhiteSpace.ScopeIndent.IncorrectExact</name>
    <configKey>INCORRECTEXACT</configKey>
    <description>Drupal.WhiteSpace.ScopeIndent.IncorrectExact</description>
  </rule>
  <rule key="Drupal.ControlStructures.ControlSignature" priority="MAJOR">
    <name>Drupal.ControlStructures.ControlSignature</name>
    <configKey>CONTROLSIGNATURE</configKey>
    <description>Drupal.ControlStructures.ControlSignature</description>
  </rule>
  <rule key="Drupal.Formatting.SpaceInlineIf.NoSpaceBefore" priority="MAJOR">
    <name>Drupal.Formatting.SpaceInlineIf.NoSpaceBefore</name>
    <configKey>NOSPACEBEFORE</configKey>
    <description>Drupal.Formatting.SpaceInlineIf.NoSpaceBefore</description>
  </rule>
  <rule key="Drupal.Semantics.EmptyInstall.EmptyInstall" priority="MAJOR">
    <name>Drupal.Semantics.EmptyInstall.EmptyInstall</name>
    <configKey>EMPTYINSTALL</configKey>
    <description>Drupal.Semantics.EmptyInstall.EmptyInstall</description>
  </rule>
  <rule key="Drupal.Commenting.FunctionComment.ShortStartSpace" priority="MAJOR">
    <name>Drupal.Commenting.FunctionComment.ShortStartSpace</name>
    <configKey>SHORTSTARTSPACE</configKey>
    <description>Drupal.Commenting.FunctionComment.ShortStartSpace</description>
  </rule>
  <rule key="Drupal.WhiteSpace.OperatorSpacing.NoSpaceAfter" priority="MAJOR">
    <name>Drupal.WhiteSpace.OperatorSpacing.NoSpaceAfter</name>
    <configKey>NOSPACEAFTER</configKey>
    <description>Drupal.WhiteSpace.OperatorSpacing.NoSpaceAfter</description>
  </rule>
  <rule key="Drupal.ControlStructures.ElseCatchNewline.ElseNewline" priority="MAJOR">
    <name>Drupal.ControlStructures.ElseCatchNewline.ElseNewline</name>
    <configKey>ELSENEWLINE</configKey>
    <description>Drupal.ControlStructures.ElseCatchNewline.ElseNewline</description>
  </rule>
  <rule key="Drupal.Commenting.InlineComment.InvalidEndChar" priority="MAJOR">
    <name>Drupal.Commenting.InlineComment.InvalidEndChar</name>
    <configKey>INVALIDENDCHAR</configKey>
    <description>Drupal.Commenting.InlineComment.InvalidEndChar</description>
  </rule>
  <rule key="Drupal.WhiteSpace.CloseBracketSpacing.ClosingWhitespace" priority="MAJOR">
    <name>Drupal.WhiteSpace.CloseBracketSpacing.ClosingWhitespace</name>
    <configKey>CLOSINGWHITESPACE</configKey>
    <description>Drupal.WhiteSpace.CloseBracketSpacing.ClosingWhitespace</description>
  </rule>
  <rule key="Drupal.Semantics.TInHookMenu.TFound" priority="MAJOR">
    <name>Drupal.Semantics.TInHookMenu.TFound</name>
    <configKey>TFOUND</configKey>
    <description>Drupal.Semantics.TInHookMenu.TFound</description>
  </rule>
  <rule key="Drupal.Commenting.FunctionComment.Missing" priority="MAJOR">
    <name>Drupal.Commenting.FunctionComment.Missing</name>
    <configKey>MISSING</configKey>
    <description>Drupal.Commenting.FunctionComment.Missing</description>
  </rule>
  <rule key="Drupal.Semantics.FunctionCall.EmptyString" priority="MAJOR">
    <name>Drupal.Semantics.FunctionCall.EmptyString</name>
    <configKey>EMPTYSTRING</configKey>
    <description>Drupal.Semantics.FunctionCall.EmptyString</description>
  </rule>
  <rule key="Drupal.Semantics.FunctionCall.ConstantStart" priority="MAJOR">
    <name>Drupal.Semantics.FunctionCall.ConstantStart</name>
    <configKey>CONSTANTSTART</configKey>
    <description>Drupal.Semantics.FunctionCall.ConstantStart</description>
  </rule>
  <rule key="Drupal.Formatting.MultiLineAssignment" priority="MAJOR">
    <name>Drupal.Formatting.MultiLineAssignment</name>
    <configKey>MULTILINEASSIGNMENT</configKey>
    <description>Drupal.Formatting.MultiLineAssignment</description>
  </rule>
  <rule key="Drupal.Commenting.InlineComment.Empty" priority="MAJOR">
    <name>Drupal.Commenting.InlineComment.Empty</name>
    <configKey>EMPTY</configKey>
    <description>Drupal.Commenting.InlineComment.Empty</description>
  </rule>
  <rule key="Drupal.NamingConventions.ValidVariableName" priority="MAJOR">
    <name>Drupal.NamingConventions.ValidVariableName</name>
    <configKey>VALIDVARIABLENAME</configKey>
    <description>Drupal.NamingConventions.ValidVariableName</description>
  </rule>
  <rule key="Drupal.Commenting.DocCommentAlignment.BlankLine" priority="MAJOR">
    <name>Drupal.Commenting.DocCommentAlignment.BlankLine</name>
    <configKey>BLANKLINE</configKey>
    <description>Drupal.Commenting.DocCommentAlignment.BlankLine</description>
  </rule>
  <rule key="Drupal.WhiteSpace.OperatorSpacing.NoSpaceBefore" priority="MAJOR">
    <name>Drupal.WhiteSpace.OperatorSpacing.NoSpaceBefore</name>
    <configKey>NOSPACEBEFORE</configKey>
    <description>Drupal.WhiteSpace.OperatorSpacing.NoSpaceBefore</description>
  </rule>
  <rule key="Drupal.WhiteSpace.EmptyLines.EmptyLines" priority="MAJOR">
    <name>Drupal.WhiteSpace.EmptyLines.EmptyLines</name>
    <configKey>EMPTYLINES</configKey>
    <description>Drupal.WhiteSpace.EmptyLines.EmptyLines</description>
  </rule>
  <rule key="Drupal.WhiteSpace.FileEnd.FileEnd" priority="MAJOR">
    <name>Drupal.WhiteSpace.FileEnd.FileEnd</name>
    <configKey>FILEEND</configKey>
    <description>Drupal.WhiteSpace.FileEnd.FileEnd</description>
  </rule>
  <rule key="Drupal.WhiteSpace.ScopeIndent.Incorrect" priority="MAJOR">
    <name>Drupal.WhiteSpace.ScopeIndent.Incorrect</name>
    <configKey>INCORRECT</configKey>
    <description>Drupal.WhiteSpace.ScopeIndent.Incorrect</description>
  </rule>
  <rule key="Drupal.WhiteSpace.ScopeClosingBrace.BreakIdent" priority="MAJOR">
    <name>Drupal.WhiteSpace.ScopeClosingBrace.BreakIdent</name>
    <configKey>BREAKIDENT</configKey>
    <description>Drupal.WhiteSpace.ScopeClosingBrace.BreakIdent</description>
  </rule>
  <rule key="Drupal.WhiteSpace.ObjectOperatorSpacing.After" priority="MAJOR">
    <name>Drupal.WhiteSpace.ObjectOperatorSpacing.After</name>
    <configKey>AFTER</configKey>
    <description>Drupal.WhiteSpace.ObjectOperatorSpacing.After</description>
  </rule>
  <rule key="Drupal.NamingConventions.ValidClassName.StartWithCaptial" priority="MAJOR">
    <name>Drupal.NamingConventions.ValidClassName.StartWithCaptial</name>
    <configKey>STARTWITHCAPTIAL</configKey>
    <description>Drupal.NamingConventions.ValidClassName.StartWithCaptial</description>
  </rule>
  <rule key="Drupal.WhiteSpace.ScopeClosingBrace.Indent" priority="MAJOR">
    <name>Drupal.WhiteSpace.ScopeClosingBrace.Indent</name>
    <configKey>INDENT</configKey>
    <description>Drupal.WhiteSpace.ScopeClosingBrace.Indent</description>
  </rule>
  <rule key="Drupal.Commenting.FileComment.Missing" priority="MAJOR">
    <name>Drupal.Commenting.FileComment.Missing</name>
    <configKey>MISSING</configKey>
    <description>Drupal.Commenting.FileComment.Missing</description>
  </rule>
  <rule key="Drupal.WhiteSpace.ObjectOperatorSpacing.Before" priority="MAJOR">
    <name>Drupal.WhiteSpace.ObjectOperatorSpacing.Before</name>
    <configKey>BEFORE</configKey>
    <description>Drupal.WhiteSpace.ObjectOperatorSpacing.Before</description>
  </rule>
  <rule key="Drupal.Classes.ClassCreateInstance" priority="MAJOR">
    <name>Drupal.Classes.ClassCreateInstance</name>
    <configKey>CLASSCREATEINSTANCE</configKey>
    <description>Drupal.Classes.ClassCreateInstance</description>
  </rule>
  <rule key="Drupal.Semantics.FunctionCall.FunctionAlias" priority="MAJOR">
    <name>Drupal.Semantics.FunctionCall.FunctionAlias</name>
    <configKey>FUNCTIONALIAS</configKey>
    <description>Drupal.Semantics.FunctionCall.FunctionAlias</description>
  </rule>
  <rule key="Drupal.Commenting.FunctionComment.MissingParamComment" priority="MAJOR">
    <name>Drupal.Commenting.FunctionComment.MissingParamComment</name>
    <configKey>MISSINGPARAMCOMMENT</configKey>
    <description>Drupal.Commenting.FunctionComment.MissingParamComment</description>
  </rule>
  <rule key="Drupal.Commenting.FunctionComment.EmptyLinesAfterDoc" priority="MAJOR">
    <name>Drupal.Commenting.FunctionComment.EmptyLinesAfterDoc</name>
    <configKey>EMPTYLINESAFTERDOC</configKey>
    <description>Drupal.Commenting.FunctionComment.EmptyLinesAfterDoc</description>
  </rule>
  <rule key="Drupal.Semantics.FunctionCall.BackslashSingleQuote" priority="MAJOR">
    <name>Drupal.Semantics.FunctionCall.BackslashSingleQuote</name>
    <configKey>BACKSLASHSINGLEQUOTE</configKey>
    <description>Drupal.Semantics.FunctionCall.BackslashSingleQuote</description>
  </rule>
  <rule key="Drupal.Formatting.SpaceInlineIf.SpacingBefore" priority="MAJOR">
    <name>Drupal.Formatting.SpaceInlineIf.SpacingBefore</name>
    <configKey>SPACINGBEFORE</configKey>
    <description>Drupal.Formatting.SpaceInlineIf.SpacingBefore</description>
  </rule>
  <rule key="Drupal.Semantics.FunctionCall.Concat" priority="MAJOR">
    <name>Drupal.Semantics.FunctionCall.Concat</name>
    <configKey>CONCAT</configKey>
    <description>Drupal.Semantics.FunctionCall.Concat</description>
  </rule>
  <rule key="Drupal.Semantics.FunctionCall.WatchdogT" priority="MAJOR">
    <name>Drupal.Semantics.FunctionCall.WatchdogT</name>
    <configKey>WATCHDOGT</configKey>
    <description>Drupal.Semantics.FunctionCall.WatchdogT</description>
  </rule>
  <rule key="Drupal.Commenting.FunctionComment.SeePunctuation" priority="MAJOR">
    <name>Drupal.Commenting.FunctionComment.SeePunctuation</name>
    <configKey>SEEPUNCTUATION</configKey>
    <description>Drupal.Commenting.FunctionComment.SeePunctuation</description>
  </rule>
  <rule key="Drupal.Semantics.InstallT.TranslationFound" priority="MAJOR">
    <name>Drupal.Semantics.InstallT.TranslationFound</name>
    <configKey>TRANSLATIONFOUND</configKey>
    <description>Drupal.Semantics.InstallT.TranslationFound</description>
  </rule>
  <rule key="Drupal.Commenting.FunctionComment.MissingShort" priority="MAJOR">
    <name>Drupal.Commenting.FunctionComment.MissingShort</name>
    <configKey>MISSINGSHORT</configKey>
    <description>Drupal.Commenting.FunctionComment.MissingShort</description>
  </rule>
  <rule key="Drupal.NamingConventions.ValidFunctionName.NotLowerCamel" priority="MAJOR">
    <name>Drupal.NamingConventions.ValidFunctionName.NotLowerCamel</name>
    <configKey>NOTLOWERCAMEL</configKey>
    <description>Drupal.NamingConventions.ValidFunctionName.NotLowerCamel</description>
  </rule>
  <rule key="Drupal.WhiteSpace.ScopeClosingBrace" priority="MAJOR">
    <name>Drupal.WhiteSpace.ScopeClosingBrace</name>
    <configKey>SCOPECLOSINGBRACE</configKey>
    <description>Drupal.WhiteSpace.ScopeClosingBrace</description>
  </rule>
  <rule key="Drupal.Commenting.FunctionComment.MissingReturnComment" priority="MAJOR">
    <name>Drupal.Commenting.FunctionComment.MissingReturnComment</name>
    <configKey>MISSINGRETURNCOMMENT</configKey>
    <description>Drupal.Commenting.FunctionComment.MissingReturnComment</description>
  </rule>
  <rule key="Drupal.Commenting.FunctionComment.ReturnCommentNewLine" priority="MAJOR">
    <name>Drupal.Commenting.FunctionComment.ReturnCommentNewLine</name>
    <configKey>RETURNCOMMENTNEWLINE</configKey>
    <description>Drupal.Commenting.FunctionComment.ReturnCommentNewLine</description>
  </rule>
  <rule key="Drupal.Commenting.FunctionComment.MissingParamName" priority="MAJOR">
    <name>Drupal.Commenting.FunctionComment.MissingParamName</name>
    <configKey>MISSINGPARAMNAME</configKey>
    <description>Drupal.Commenting.FunctionComment.MissingParamName</description>
  </rule>
  <rule key="Drupal.Classes.ClassDeclaration" priority="MAJOR">
    <name>Drupal.Classes.ClassDeclaration</name>
    <configKey>CLASSDECLARATION</configKey>
    <description>Drupal.Classes.ClassDeclaration</description>
  </rule>
  <rule key="Drupal.WhiteSpace.OperatorSpacing.SpacingBefore" priority="MAJOR">
    <name>Drupal.WhiteSpace.OperatorSpacing.SpacingBefore</name>
    <configKey>SPACINGBEFORE</configKey>
    <description>Drupal.WhiteSpace.OperatorSpacing.SpacingBefore</description>
  </rule>
  <rule key="Drupal.NamingConventions.ValidVariableName.LowerCamelName" priority="MAJOR">
    <name>Drupal.NamingConventions.ValidVariableName.LowerCamelName</name>
    <configKey>LOWERCAMELNAME</configKey>
    <description>Drupal.NamingConventions.ValidVariableName.LowerCamelName</description>
  </rule>
  <rule key="Drupal.Commenting.InlineComment.DocBlock" priority="MAJOR">
    <name>Drupal.Commenting.InlineComment.DocBlock</name>
    <configKey>DOCBLOCK</configKey>
    <description>Drupal.Commenting.InlineComment.DocBlock</description>
  </rule>
  <rule key="Drupal.Commenting.FunctionComment.ContentAfterOpen" priority="MAJOR">
    <name>Drupal.Commenting.FunctionComment.ContentAfterOpen</name>
    <configKey>CONTENTAFTEROPEN</configKey>
    <description>Drupal.Commenting.FunctionComment.ContentAfterOpen</description>
  </rule>
  <rule key="Drupal.Functions.FunctionDeclaration.SpaceBeforeParenthesis" priority="MAJOR">
    <name>Drupal.Functions.FunctionDeclaration.SpaceBeforeParenthesis</name>
    <configKey>SPACEBEFOREPARENTHESIS</configKey>
    <description>Drupal.Functions.FunctionDeclaration.SpaceBeforeParenthesis</description>
  </rule>
  <rule key="Drupal.Commenting.FunctionComment.SpacingAfterParams" priority="MAJOR">
    <name>Drupal.Commenting.FunctionComment.SpacingAfterParams</name>
    <configKey>SPACINGAFTERPARAMS</configKey>
    <description>Drupal.Commenting.FunctionComment.SpacingAfterParams</description>
  </rule>
  <rule key="Drupal.Commenting.FunctionComment.ExtraParamComment" priority="MAJOR">
    <name>Drupal.Commenting.FunctionComment.ExtraParamComment</name>
    <configKey>EXTRAPARAMCOMMENT</configKey>
    <description>Drupal.Commenting.FunctionComment.ExtraParamComment</description>
  </rule>
  <rule key="Drupal.Commenting.FunctionComment.SeeAdditionalText" priority="MAJOR">
    <name>Drupal.Commenting.FunctionComment.SeeAdditionalText</name>
    <configKey>SEEADDITIONALTEXT</configKey>
    <description>Drupal.Commenting.FunctionComment.SeeAdditionalText</description>
  </rule>
  <rule key="Drupal.Commenting.FunctionComment.SpacingBeforeParams" priority="MAJOR">
    <name>Drupal.Commenting.FunctionComment.SpacingBeforeParams</name>
    <configKey>SPACINGBEFOREPARAMS</configKey>
    <description>Drupal.Commenting.FunctionComment.SpacingBeforeParams</description>
  </rule>
  <rule key="Drupal.Commenting.FunctionComment.InvalidParamTypeName" priority="MAJOR">
    <name>Drupal.Commenting.FunctionComment.InvalidParamTypeName</name>
    <configKey>INVALIDPARAMTYPENAME</configKey>
    <description>Drupal.Commenting.FunctionComment.InvalidParamTypeName</description>
  </rule>
  <rule key="Drupal.NamingConventions.ValidFunctionName.ScopeNotLowerCamel" priority="MAJOR">
    <name>Drupal.NamingConventions.ValidFunctionName.ScopeNotLowerCamel</name>
    <configKey>SCOPENOTLOWERCAMEL</configKey>
    <description>Drupal.NamingConventions.ValidFunctionName.ScopeNotLowerCamel</description>
  </rule>
  <rule key="Drupal.Commenting.DocCommentAlignment.SpaceBeforeTag" priority="MAJOR">
    <name>Drupal.Commenting.DocCommentAlignment.SpaceBeforeTag</name>
    <configKey>SPACEBEFORETAG</configKey>
    <description>Drupal.Commenting.DocCommentAlignment.SpaceBeforeTag</description>
  </rule>
  <rule key="Drupal.Commenting.FunctionComment.ParamCommentIndentation" priority="MAJOR">
    <name>Drupal.Commenting.FunctionComment.ParamCommentIndentation</name>
    <configKey>PARAMCOMMENTINDENTATION</configKey>
    <description>Drupal.Commenting.FunctionComment.ParamCommentIndentation</description>
  </rule>
  <rule key="Drupal.Formatting.SpaceInlineIf.SpacingAfter" priority="MAJOR">
    <name>Drupal.Formatting.SpaceInlineIf.SpacingAfter</name>
    <configKey>SPACINGAFTER</configKey>
    <description>Drupal.Formatting.SpaceInlineIf.SpacingAfter</description>
  </rule>
  <rule key="Drupal.Commenting.FunctionComment.InvalidReturnTypeName" priority="MAJOR">
    <name>Drupal.Commenting.FunctionComment.InvalidReturnTypeName</name>
    <configKey>INVALIDRETURNTYPENAME</configKey>
    <description>Drupal.Commenting.FunctionComment.InvalidReturnTypeName</description>
  </rule>
  <rule key="Drupal.Commenting.FunctionComment.VoidReturn" priority="MAJOR">
    <name>Drupal.Commenting.FunctionComment.VoidReturn</name>
    <configKey>VOIDRETURN</configKey>
    <description>Drupal.Commenting.FunctionComment.VoidReturn</description>
  </rule>
  <rule key="Drupal.Commenting.FunctionComment.SpacingBeforeReturnType" priority="MAJOR">
    <name>Drupal.Commenting.FunctionComment.SpacingBeforeReturnType</name>
    <configKey>SPACINGBEFORERETURNTYPE</configKey>
    <description>Drupal.Commenting.FunctionComment.SpacingBeforeReturnType</description>
  </rule>
</rules>', NULL);
