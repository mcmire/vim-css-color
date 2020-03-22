call css_color#init('css', 'extended', 'cssMediaBlock,cssFunction,cssDefinition,cssAttrRegion,cssComment')

syn clear cssFunction

" Have to override all of these over again because of the clear :(
" Source: <https://github.com/neovim/neovim/blob/master/runtime/syntax/css.vim>
syn region cssFunction contained matchgroup=cssFunctionName start="\<\(var\|calc\)\s*(" end=")" contains=cssCustomProp,cssValue.*,cssFunction,cssColor,cssStringQ,cssStringQQ oneline
syn region cssFunction contained matchgroup=cssFunctionName start="\<\(rgb\|clip\|attr\|counter\|rect\|cubic-bezier\|steps\)\s*(" end=")" oneline  contains=cssValueInteger,cssValueNumber,cssValueLength,cssFunctionComma
syn region cssFunction contained matchgroup=cssFunctionName start="\<\(rgba\|hsl\|hsla\|hsluv\|color-stop\|from\|to\)\s*(" end=")" oneline  contains=cssColor,cssValueInteger,cssValueNumber,cssValueLength,cssFunctionComma,cssFunction
syn region cssFunction contained matchgroup=cssFunctionName start="\<\(linear-\|radial-\)\=\gradient\s*(" end=")" oneline  contains=cssColor,cssValueInteger,cssValueNumber,cssValueLength,cssFunction,cssGradientAttr,cssFunctionComma
syn region cssFunction contained matchgroup=cssFunctionName start="\<\(matrix\(3d\)\=\|scale\(3d\|X\|Y\|Z\)\=\|translate\(3d\|X\|Y\|Z\)\=\|skew\(X\|Y\)\=\|rotate\(3d\|X\|Y\|Z\)\=\|perspective\)\s*(" end=")" oneline contains=cssValueInteger,cssValueNumber,cssValueLength,cssValueAngle,cssFunctionComma
