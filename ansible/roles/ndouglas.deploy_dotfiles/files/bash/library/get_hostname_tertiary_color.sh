#!/usr/bin/env bash

# Get the tertiary color for the hostname.
nd_get_hostname_tertiary_color() {
  : "${1?"Usage: ${FUNCNAME} HOSTNAME"}";
  the_hostname="${1}";
  case "${the_hostname}" in
    algood*)       color="$(tput setaf 94)";;
    allyrion*)     color="$(tput setaf 52)";;
    ambrose*)      color="$(tput setaf 172)";;
    appleton*)     color="$(tput setaf 102)";;
    arlan*)        color="$(tput setaf 108)";;
    arryn*)        color="$(tput setaf 117)";;
    ashford*)      color="$(tput setaf 222)";;
    ball*)         color="$(tput setaf 160)";;
    bar_emmon*)    color="$(tput setaf 102)";;
    baratheon*)    color="$(tput setaf 94)";;
    beesbury*)     color="$(tput setaf 100)";;
    belmore*)      color="$(tput setaf 59)";;
    bettley*)      color="$(tput setaf 94)";;
    bittersteel*)  color="$(tput setaf 94)";;
    blackbar*)     color="$(tput setaf 102)";;
    blackfyre*)    color="$(tput setaf 224)";;
    blackmont*)    color="$(tput setaf 100)";;
    blacktyde*)    color="$(tput setaf 28)";;
    blackwood*)    color="$(tput setaf 102)";;
    blanetree*)    color="$(tput setaf 94)";;
    bloodraven*)   color="$(tput setaf 102)";;
    blount*)       color="$(tput setaf 59)";;
    bolling*)      color="$(tput setaf 101)";;
    bolton*)       color="$(tput setaf 52)";;
    botley*)       color="$(tput setaf 59)";;
    bracken*)      color="$(tput setaf 166)";;
    brax*)         color="$(tput setaf 102)";;
    bridges*)      color="$(tput setaf 143)";;
    bronn*)        color="$(tput setaf 188)";;
    broom*)        color="$(tput setaf 70)";;
    buckler*)      color="$(tput setaf 143)";;
    buckwell*)     color="$(tput setaf 220)";;
    burley*)       color="$(tput setaf 60)";;
    bushy*)        color="$(tput setaf 108)";;
    butterwell*)   color="$(tput setaf 101)";;
    byrch*)        color="$(tput setaf 71)";;
    bywater*)      color="$(tput setaf 62)";;
    cafferen*)     color="$(tput setaf 102)";;
    cargyll*)      color="$(tput setaf 58)";;
    caron*)        color="$(tput setaf 100)";;
    cassel*)       color="$(tput setaf 145)";;
    caswell*)      color="$(tput setaf 102)";;
    celtigar*)     color="$(tput setaf 102)";;
    cerwyn*)       color="$(tput setaf 59)";;
    charlton*)     color="$(tput setaf 71)";;
    chelsted*)     color="$(tput setaf 59)";;
    chester*)      color="$(tput setaf 220)";;
    chyttering*)   color="$(tput setaf 102)";;
    city_watch*)   color="$(tput setaf 100)";;
    clegane*)      color="$(tput setaf 100)";;
    cockshaw*)     color="$(tput setaf 102)";;
    coldwater*)    color="$(tput setaf 104)";;
    cole*)         color="$(tput setaf 130)";;
    condon*)       color="$(tput setaf 102)";;
    connington*)   color="$(tput setaf 145)";;
    corbray*)      color="$(tput setaf 124)";;
    cordwayner*)   color="$(tput setaf 100)";;
    costayne*)     color="$(tput setaf 136)";;
    crakehall*)    color="$(tput setaf 160)";;
    crane*)        color="$(tput setaf 30)";;
    cressey*)      color="$(tput setaf 160)";;
    crowl*)        color="$(tput setaf 52)";;
    cuy*)          color="$(tput setaf 100)";;
    dalt*)         color="$(tput setaf 22)";;
    darklyn*)      color="$(tput setaf 58)";;
    darry*)        color="$(tput setaf 59)";;
    dayne*)        color="$(tput setaf 59)";;
    doggett*)      color="$(tput setaf 145)";;
    dondarrion*)   color="$(tput setaf 102)";;
    donniger*)     color="$(tput setaf 160)";;
    drox*)         color="$(tput setaf 101)";;
    drumm*)        color="$(tput setaf 52)";;
    dunk*)         color="$(tput setaf 178)";;
    dustin*)       color="$(tput setaf 130)";;
    edgerton*)     color="$(tput setaf 166)";;
    egen*)         color="$(tput setaf 145)";;
    elesham*)      color="$(tput setaf 95)";;
    erenford*)     color="$(tput setaf 95)";;
    estermont*)    color="$(tput setaf 59)";;
    estren*)       color="$(tput setaf 124)";;
    farman*)       color="$(tput setaf 19)";;
    farring*)      color="$(tput setaf 145)";;
    farwynd*)      color="$(tput setaf 59)";;
    fell*)         color="$(tput setaf 102)";;
    fenn*)         color="$(tput setaf 59)";;
    fiddler*)      color="$(tput setaf 100)";;
    flint*)        color="$(tput setaf 59)";;
    florent*)      color="$(tput setaf 172)";;
    foote*)        color="$(tput setaf 102)";;
    footly*)       color="$(tput setaf 102)";;
    forrester*)    color="$(tput setaf 59)";;
    fossoway*)     color="$(tput setaf 160)";;
    fowler*)       color="$(tput setaf 59)";;
    frey*)         color="$(tput setaf 59)";;
    gardener*)     color="$(tput setaf 108)";;
    garner*)       color="$(tput setaf 130)";;
    gaunt*)        color="$(tput setaf 59)";;
    glover*)       color="$(tput setaf 102)";;
    goodbrook*)    color="$(tput setaf 94)";;
    goodbrother*)  color="$(tput setaf 167)";;
    gower*)        color="$(tput setaf 59)";;
    graceford*)    color="$(tput setaf 145)";;
    grafton*)      color="$(tput setaf 100)";;
    grandison*)    color="$(tput setaf 188)";;
    graves*)       color="$(tput setaf 108)";;
    greenfield*)   color="$(tput setaf 108)";;
    grell*)        color="$(tput setaf 103)";;
    greyjoy*)      color="$(tput setaf 59)";;
    grimm*)        color="$(tput setaf 52)";;
    haigh*)        color="$(tput setaf 137)";;
    hamell*)       color="$(tput setaf 100)";;
    harclay*)      color="$(tput setaf 19)";;
    hardyng*)      color="$(tput setaf 174)";;
    harlaw*)       color="$(tput setaf 102)";;
    harlton*)      color="$(tput setaf 102)";;
    harroway*)     color="$(tput setaf 95)";;
    harte*)        color="$(tput setaf 61)";;
    hastwyck*)     color="$(tput setaf 186)";;
    hasty*)        color="$(tput setaf 176)";;
    hayford*)      color="$(tput setaf 106)";;
    herston*)      color="$(tput setaf 58)";;
    hersy*)        color="$(tput setaf 95)";;
    hetherspoon*)  color="$(tput setaf 94)";;
    hewett*)       color="$(tput setaf 19)";;
    hightower*)    color="$(tput setaf 145)";;
    hoare*)        color="$(tput setaf 32)";;
    hollard*)      color="$(tput setaf 215)";;
    hornwood*)     color="$(tput setaf 215)";;
    hunter*)       color="$(tput setaf 145)";;
    hutcheson*)    color="$(tput setaf 94)";;
    inchfield*)    color="$(tput setaf 102)";;
    ironsmith*)    color="$(tput setaf 22)";;
    jast*)         color="$(tput setaf 145)";;
    jordayne*)     color="$(tput setaf 70)";;
    justman*)      color="$(tput setaf 103)";;
    karstark*)     color="$(tput setaf 102)";;
    keath*)        color="$(tput setaf 178)";;
    kellington*)   color="$(tput setaf 178)";;
    kettleblack*)  color="$(tput setaf 52)";;
    kidwell*)      color="$(tput setaf 114)";;
    kingsguard*)   color="$(tput setaf 102)";;
    knott*)        color="$(tput setaf 102)";;
    lake*)         color="$(tput setaf 58)";;
    langward*)     color="$(tput setaf 174)";;
    lannister*)    color="$(tput setaf 167)";;
    lefford*)      color="$(tput setaf 58)";;
    leygood*)      color="$(tput setaf 130)";;
    liddle*)       color="$(tput setaf 108)";;
    lightfoot*)    color="$(tput setaf 94)";;
    lipps*)        color="$(tput setaf 61)";;
    locke*)        color="$(tput setaf 94)";;
    lolliston*)    color="$(tput setaf 137)";;
    lonmouth*)     color="$(tput setaf 100)";;
    lothston*)     color="$(tput setaf 59)";;
    lowther*)      color="$(tput setaf 80)";;
    lyberr*)       color="$(tput setaf 102)";;
    lychester*)    color="$(tput setaf 215)";;
    lydden*)       color="$(tput setaf 102)";;
    lynderly*)     color="$(tput setaf 59)";;
    magnar*)       color="$(tput setaf 102)";;
    mallery*)      color="$(tput setaf 139)";;
    mallister*)    color="$(tput setaf 102)";;
    manderly*)     color="$(tput setaf 114)";;
    manning*)      color="$(tput setaf 59)";;
    manwoody*)     color="$(tput setaf 102)";;
    marbrand*)     color="$(tput setaf 52)";;
    marsh*)        color="$(tput setaf 94)";;
    martell*)      color="$(tput setaf 11)";;
    massey*)       color="$(tput setaf 102)";;
    melcolm*)      color="$(tput setaf 53)";;
    merryweather*) color="$(tput setaf 89)";;
    mertyns*)      color="$(tput setaf 102)";;
    middlebury*)   color="$(tput setaf 71)";;
    mollen*)       color="$(tput setaf 59)";;
    moore*)        color="$(tput setaf 186)";;
    mooton*)       color="$(tput setaf 102)";;
    moreland*)     color="$(tput setaf 58)";;
    mormont*)      color="$(tput setaf 59)";;
    morrigen*)     color="$(tput setaf 30)";;
    moss*)         color="$(tput setaf 208)";;
    mudd*)         color="$(tput setaf 22)";;
    mullendore*)   color="$(tput setaf 172)";;
    musgood*)      color="$(tput setaf 22)";;
    norcross*)     color="$(tput setaf 102)";;
    norrey*)       color="$(tput setaf 100)";;
    norridge*)     color="$(tput setaf 60)";;
    oakheart*)     color="$(tput setaf 100)";;
    oldflowers*)   color="$(tput setaf 188)";;
    orkwood*)      color="$(tput setaf 100)";;
    orme*)         color="$(tput setaf 59)";;
    osgrey*)       color="$(tput setaf 102)";;
    overton*)      color="$(tput setaf 102)";;
    paege*)        color="$(tput setaf 102)";;
    parren*)       color="$(tput setaf 137)";;
    patrek*)       color="$(tput setaf 60)";;
    payne*)        color="$(tput setaf 225)";;
    peake*)        color="$(tput setaf 59)";;
    peckledon*)    color="$(tput setaf 94)";;
    penrose*)      color="$(tput setaf 145)";;
    piper*)        color="$(tput setaf 17)";;
    plumm*)        color="$(tput setaf 94)";;
    pommingham*)   color="$(tput setaf 138)";;
    poole*)        color="$(tput setaf 19)";;
    prester*)      color="$(tput setaf 160)";;
    pryor*)        color="$(tput setaf 95)";;
    pyle*)         color="$(tput setaf 102)";;
    qoherys*)      color="$(tput setaf 101)";;
    qorgyle*)      color="$(tput setaf 160)";;
    rambton*)      color="$(tput setaf 88)";;
    redding*)      color="$(tput setaf 188)";;
    redfort*)      color="$(tput setaf 174)";;
    redwyne*)      color="$(tput setaf 131)";;
    reed*)         color="$(tput setaf 108)";;
    reyne*)        color="$(tput setaf 52)";;
    risley*)       color="$(tput setaf 184)";;
    rogers*)       color="$(tput setaf 102)";;
    rollingford*)  color="$(tput setaf 18)";;
    roote*)        color="$(tput setaf 40)";;
    rosby*)        color="$(tput setaf 102)";;
    rowan*)        color="$(tput setaf 101)";;
    roxton*)       color="$(tput setaf 59)";;
    royce*)        color="$(tput setaf 58)";;
    ruthermont*)   color="$(tput setaf 100)";;
    ruttiger*)     color="$(tput setaf 94)";;
    ryger*)        color="$(tput setaf 102)";;
    rykker*)       color="$(tput setaf 145)";;
    ryswell*)      color="$(tput setaf 138)";;
    santagar*)     color="$(tput setaf 184)";;
    sarsfield*)    color="$(tput setaf 28)";;
    sarwyck*)      color="$(tput setaf 52)";;
    seaworth*)     color="$(tput setaf 145)";;
    selmy*)        color="$(tput setaf 137)";;
    serrett*)      color="$(tput setaf 107)";;
    serry*)        color="$(tput setaf 174)";;
    shadrich*)     color="$(tput setaf 188)";;
    shawney*)      color="$(tput setaf 20)";;
    shermer*)      color="$(tput setaf 53)";;
    slate*)        color="$(tput setaf 102)";;
    sloane*)       color="$(tput setaf 189)";;
    slynt*)        color="$(tput setaf 59)";;
    smallwood*)    color="$(tput setaf 94)";;
    sparr*)        color="$(tput setaf 95)";;
    spicer*)       color="$(tput setaf 108)";;
    stackspear*)   color="$(tput setaf 144)";;
    staedmon*)     color="$(tput setaf 59)";;
    stark*)        color="$(tput setaf 102)";;
    staunton*)     color="$(tput setaf 102)";;
    stokeworth*)   color="$(tput setaf 71)";;
    stout*)        color="$(tput setaf 95)";;
    strong*)       color="$(tput setaf 28)";;
    sunderland*)   color="$(tput setaf 28)";;
    sunglass*)     color="$(tput setaf 102)";;
    swann*)        color="$(tput setaf 102)";;
    swyft*)        color="$(tput setaf 100)";;
    swygert*)      color="$(tput setaf 176)";;
    tallad*)       color="$(tput setaf 104)";;
    tallhart*)     color="$(tput setaf 71)";;
    tarbeck*)      color="$(tput setaf 104)";;
    targaryen*)    color="$(tput setaf 102)";;
    tarly*)        color="$(tput setaf 52)";;
    tarth*)        color="$(tput setaf 189)";;
    teague*)       color="$(tput setaf 100)";;
    templeton*)    color="$(tput setaf 100)";;
    terrick*)      color="$(tput setaf 94)";;
    thenn*)        color="$(tput setaf 102)";;
    thorne*)       color="$(tput setaf 59)";;
    tollett*)      color="$(tput setaf 102)";;
    toyne*)        color="$(tput setaf 101)";;
    trant*)        color="$(tput setaf 20)";;
    tudbury*)      color="$(tput setaf 106)";;
    tully*)        color="$(tput setaf 188)";;
    turnberry*)    color="$(tput setaf 172)";;
    tyrell*)       color="$(tput setaf 71)";;
    uffering*)     color="$(tput setaf 145)";;
    uller*)        color="$(tput setaf 136)";;
    upcliff*)      color="$(tput setaf 30)";;
    uthor*)        color="$(tput setaf 71)";;
    vaith*)        color="$(tput setaf 101)";;
    varner*)       color="$(tput setaf 102)";;
    velaryon*)     color="$(tput setaf 23)";;
    vikary*)       color="$(tput setaf 52)";;
    volmark*)      color="$(tput setaf 102)";;
    vypren*)       color="$(tput setaf 102)";;
    vyrwel*)       color="$(tput setaf 95)";;
    wagstaff*)     color="$(tput setaf 70)";;
    walder*)       color="$(tput setaf 60)";;
    waterman*)     color="$(tput setaf 137)";;
    waxley*)       color="$(tput setaf 160)";;
    wayn*)         color="$(tput setaf 20)";;
    waynwood*)     color="$(tput setaf 22)";;
    webber*)       color="$(tput setaf 102)";;
    wendwater*)    color="$(tput setaf 52)";;
    wensington*)   color="$(tput setaf 100)";;
    westbrook*)    color="$(tput setaf 106)";;
    westerling*)   color="$(tput setaf 186)";;
    westford*)     color="$(tput setaf 17)";;
    whent*)        color="$(tput setaf 102)";;
    whitehill*)    color="$(tput setaf 54)";;
    willum*)       color="$(tput setaf 188)";;
    wode*)         color="$(tput setaf 100)";;
    woodwright*)   color="$(tput setaf 167)";;
    woolfield*)    color="$(tput setaf 127)";;
    wull*)         color="$(tput setaf 59)";;
    wylde*)        color="$(tput setaf 94)";;
    wynch*)        color="$(tput setaf 167)";;
    wythers*)      color="$(tput setaf 102)";;
    yarwyck*)      color="$(tput setaf 102)";;
    yelshire*)     color="$(tput setaf 58)";;
    yew*)          color="$(tput setaf 102)";;
    yronwood*)     color="$(tput setaf 95)";;
    *)             color="$(tput setaf 4)";;
  esac
  echo "$(printf "\[${color}\]")";
}