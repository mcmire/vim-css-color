call css_color#init('css', 'extended', 'sassCssAttribute,sassComment,sassCssComment,sassFunction')

syn clear sassFunction

" Have to override all of these over again because of the clear :(
" Source: <https://github.com/neovim/neovim/blob/master/runtime/syntax/sass.vim>
syn match sassFunction "\<\%(rgb\|rgba\|red\|green\|blue\|mix\)\>(\@=" contained
syn match sassFunction "\<\%(hsl\|hsla\|hsluv\|hue\|saturation\|lightness\|adjust-hue\|lighten\|darken\|saturate\|desaturate\|grayscale\|complement\)\>(\@=" contained
syn match sassFunction "\<\%(alpha\|opacity\|rgba\|opacify\|fade-in\|transparentize\|fade-out\)\>(\@=" contained
syn match sassFunction "\<\%(unquote\|quote\)\>(\@=" contained
syn match sassFunction "\<\%(percentage\|round\|ceil\|floor\|abs\)\>(\@=" contained
syn match sassFunction "\<\%(type-of\|unit\|unitless\|comparable\)\>(\@=" contained
