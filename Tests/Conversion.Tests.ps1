Remove-Module PSUnidecode -Force -ErrorAction SilentlyContinue

$ManifestPath = '{0}\..\src\PSUnidecode.psd1' -f $PSScriptRoot

Import-Module $ManifestPath -Force

Describe "Conversion tests for $moduleName" -Tags Build {
    It "¡¿ -> !?" {
        (ConvertFrom-Unicode -InputObject "¡¿") | Should Be "!?"
    }
	
	It "ÄäÀàÁáÂâÃãÅåǍǎĄąĂăÆæĀā -> AaAaAaAaAaAaAaAaAaAEaeAa" {
        (ConvertFrom-Unicode -InputObject "ÄäÀàÁáÂâÃãÅåǍǎĄąĂăÆæĀā") | Should Be "AaAaAaAaAaAaAaAaAaAEaeAa"
	}
	
	It "ÇçĆćĈĉČč -> CcCcCcCc" {
		(ConvertFrom-Unicode -InputObject "ÇçĆćĈĉČč") | Should Be "CcCcCcCc"
	}
	
	It "ĎđĐďð -> DdDdd"{
		(ConvertFrom-Unicode -InputObject "ĎđĐďð") | Should Be "DdDdd"
	}
	
	It "ÈèÉéÊêËëĚěĘęĖėĒē -> EeEeEeEeEeEeEeEe" {
		(ConvertFrom-Unicode -InputObject "ÈèÉéÊêËëĚěĘęĖėĒē") | Should Be "EeEeEeEeEeEeEeEe"
	}
	
	It "ĜĝĢģĞğ -> GgGgGg"{
		(ConvertFrom-Unicode -InputObject "ĜĝĢģĞğ") | Should Be "GgGgGg"
	}
	
	It "Ĥĥ -> Hh"{
		(ConvertFrom-Unicode -InputObject "Ĥĥ") | Should Be "Hh"
	}
	
	It "ÌìÍíÎîÏïıĪīĮį -> IiIiIiIiiIiIi" {
		(ConvertFrom-Unicode -InputObject "ÌìÍíÎîÏïıĪīĮį") | Should Be "IiIiIiIiiIiIi"
	}
	It "Ķķ -> Kk"{
		(ConvertFrom-Unicode -InputObject "Ķķ") | Should Be "Kk"
	}
	
	It "ĹĺĻļŁłĽľ -> LlLlLlLl"{
		(ConvertFrom-Unicode -InputObject "ĹĺĻļŁłĽľ") | Should Be "LlLlLlLl"
	}
	
	It "ÑñŃńŇňŅņ -> NnNnNnNn"{
		(ConvertFrom-Unicode -InputObject "ÑñŃńŇňŅņ") | Should Be "NnNnNnNn"
	}
	
	It "ÖöÒòÓóÔôÕõŐőØøŒœ -> OoOoOoOoOoOoOoOEoe" {
		(ConvertFrom-Unicode -InputObject "ÖöÒòÓóÔôÕõŐőØøŒœ") | Should Be "OoOoOoOoOoOoOoOEoe"
	}
	
	It "ŔŕŘř -> RrRr"{
		(ConvertFrom-Unicode -InputObject "ŔŕŘř") | Should Be "RrRr"
	}
	
	It "ẞßŚśŜŝŞşŠšȘș -> SsssSsSsSsSsSs"{
		(ConvertFrom-Unicode -InputObject "ẞßŚśŜŝŞşŠšȘș") | Should Be "SsssSsSsSsSsSs"
	}
	
	It "ŤťŢţÞþȚț -> TtTtThthTt"{
		(ConvertFrom-Unicode -InputObject "ŤťŢţÞþȚț") | Should Be "TtTtThthTt"
	}
	
	It "ÜüÙùÚúÛûŰűŨũŲųŮůŪū -> UuUuUuUuUuUuUuUuUu"{
		(ConvertFrom-Unicode -InputObject "ÜüÙùÚúÛûŰűŨũŲųŮůŪū") | Should Be "UuUuUuUuUuUuUuUuUu"
	}
	
	It "Ŵŵ -> Ww" {
		(ConvertFrom-Unicode -InputObject "Ŵŵ") | Should Be "Ww"
	}
	
	It "ÝýŸÿŶŷ -> YyYyYy" {
		(ConvertFrom-Unicode -InputObject "ÝýŸÿŶŷ") | Should Be "YyYyYy"
	}
	
	It "ŹźŽžŻż -> ZzZzZz" {
		(ConvertFrom-Unicode -InputObject "ŹźŽžŻż") | Should Be "ZzZzZz"
	}
	
	It "АБВГДЕЖЗИКЛМНОПРСТУФХЦЧШ -> ABVGDEZhZIKLMNOPRSTUFKhTsChSh" {
		(ConvertFrom-Unicode -InputObject "АБВГДЕЖЗИКЛМНОПРСТУФХЦЧШ") | Should Be "ABVGDEZhZIKLMNOPRSTUFKhTsChSh"
	}
	
	It "ΑΒΓΔΕΖΗΘΙΚΛΜΝΞΟΠΡΣΤΥΦΧΨΩαβγδεζηθικλμνξοπρσςτυφχψω -> ABGDEZEThIKLMNKsOPRSTUPhKhPsOabgdezethiklmnxoprsstuphkhpso" {
		(ConvertFrom-Unicode -InputObject "ΑΒΓΔΕΖΗΘΙΚΛΜΝΞΟΠΡΣΤΥΦΧΨΩαβγδεζηθικλμνξοπρσςτυφχψω") | Should Be "ABGDEZEThIKLMNKsOPRSTUPhKhPsOabgdezethiklmnxoprsstuphkhpso"
	}
}