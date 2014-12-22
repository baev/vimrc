set wildmenu
set wcm=<Tab>
" проверка орфографии:
menu SetSpell.ru  :set spl=ru spell<CR>
menu SetSpell.en  :set spl=en spell<CR>
menu SetSpell.off :set nospell<CR>
map <F7> :emenu SetSpell.<Tab>
" выбор альтернатив:
imap <F8> <Esc> z=<CR>i
map <F8> z=<CR>

syntax on

set tabstop=4
set shiftwidth=4
set smarttab
set et 
" — включим автозамену по умолчанию 

set wrap 
" — попросим Vim переносить длинные строки

set ai 
" — включим автоотступы для новых строк
set cin 
" — включим отступы в стиле Си

" Далее настроим поиск и подсветку результатов поиска и совпадения скобок
set showmatch 
set hlsearch
set incsearch
set ignorecase

set lz 
" — ленивая перерисовка экрана при выполнении скриптов

" Показываем табы в начале строки точками
set listchars=tab:··
set list

" Порядок применения кодировок и формата файлов

set ffs=unix,dos,mac
set fencs=utf-8,cp1251,koi8-r,ucs-2,cp866

" Взаимодействие и элементы интерфейса

if !has('gui_running')
set mouse= 
endif

" Избавляемся от меню и тулбара:
set guioptions-=T 
set guioptions-=m 

" В разных графических системах используем разные шрифты:
if has('gui')
colorscheme darkblue 
if has('win32')
set guifont=Lucida_Console:h12:cRUSSIAN::
else
set guifont=Terminus\ 14
endif
endif

" Пытаемся занять максимально большое пространство на экране. Как водится, по-разному на разных системах:
if has('gui')
if has('win32')
au GUIEnter * call libcallnr('maximize', 'Maximize', 1)
elseif has('gui_gtk2')
au GUIEnter * :set lines=99999 columns=99999
endif
endif

" Опять же, системы сборки для разных платформ могут быть переопределены:
if has('win32')
set makeprg=nmake
compiler msvc
else
set makeprg=make
compiler gcc
endif

" Key binding for inserting text from outside
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

set number
