---
external help file: PSUnidecode-help.xml
Module Name: PSUnidecode
online version:
schema: 2.0.0
---

# ConvertFrom-Unicode

## SYNOPSIS
Convert any Unicode data (string) to its ASCII equivalent.

## SYNTAX

```
ConvertFrom-Unicode [-InputObject] <Char[]> [-DACH] [-RemoveNonAlphabeticChars] [<CommonParameters>]
```

## DESCRIPTION
ConvertFrom-Unicode checks the input char by char and tries
the conversion to an ASCII equivalent char if possible.
The length of the input and output can differ, as chars can be discarded
if they fall e.g.
under the unicode private range.

## EXAMPLES

### BEISPIEL 1
```
ConvertFrom-Unicode -InputObject "Testä__"
```

Testa__

### BEISPIEL 2
```
ConvertFrom-Unicode -InputObject "Testä__" -RemoveNonAlphabeticChars
```

Testa

### BEISPIEL 3
```
ConvertFrom-Unicode -InputObject "Testä__" -DACH -RemoveNonAlphabeticChars
```

Testae

## PARAMETERS

### -InputObject
Data to be converted to ASCII

```yaml
Type: Char[]
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -DACH
Specifies if a conversion by the standard of Germany/Switzerland/Austria is desired.
This changes the behavior from e.g.
ä-\>a to ä-\>ae.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -RemoveNonAlphabeticChars
Removes any character from the converted output not being an alphabetic char.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### System.String
## NOTES
Use with care.
No guarantees of functionality are made.
If you want to specify custom behavior, just alter the files underneath /lib.

## RELATED LINKS
