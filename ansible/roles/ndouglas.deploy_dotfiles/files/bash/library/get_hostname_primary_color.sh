#!/usr/bin/env bash

# Get the primary color for the hostname.
nd_get_hostname_primary_color() {
  : "${1?"Usage: ${FUNCNAME[0]} HOSTNAME"}";
  the_hostname="${1}";
  case "${the_hostname}" in
    algood*)       color="$(tput setaf 184)";;
    allyrion*)     color="$(tput setaf 124)";;
    ambrose*)      color="$(tput setaf 11)";;
    appleton*)     color="$(tput setaf 58)";;
    arlan*)        color="$(tput setaf 94)";;
    arryn*)        color="$(tput setaf 32)";;
    ashford*)      color="$(tput setaf 208)";;
    ball*)         color="$(tput setaf 160)";;
    bar_emmon*)    color="$(tput setaf 188)";;
    baratheon*)    color="$(tput setaf 220)";;
    beesbury*)     color="$(tput setaf 11)";;
    belmore*)      color="$(tput setaf 127)";;
    bettley*)      color="$(tput setaf 220)";;
    bittersteel*)  color="$(tput setaf 220)";;
    blackbar*)     color="$(tput setaf 188)";;
    blackfyre*)    color="$(tput setaf 124)";;
    blackmont*)    color="$(tput setaf 11)";;
    blacktyde*)    color="$(tput setaf 28)";;
    blackwood*)    color="$(tput setaf 166)";;
    blanetree*)    color="$(tput setaf 28)";;
    bloodraven*)   color="$(tput setaf 188)";;
    blount*)       color="$(tput setaf 28)";;
    bolling*)      color="$(tput setaf 172)";;
    bolton*)       color="$(tput setaf 210)";;
    botley*)       color="$(tput setaf 114)";;
    bracken*)      color="$(tput setaf 94)";;
    brax*)         color="$(tput setaf 188)";;
    bridges*)      color="$(tput setaf 20)";;
    bronn*)        color="$(tput setaf 65)";;
    broom*)        color="$(tput setaf 187)";;
    buckler*)      color="$(tput setaf 101)";;
    buckwell*)     color="$(tput setaf 19)";;
    burley*)       color="$(tput setaf 19)";;
    bushy*)        color="$(tput setaf 28)";;
    butterwell*)   color="$(tput setaf 28)";;
    byrch*)        color="$(tput setaf 28)";;
    bywater*)      color="$(tput setaf 188)";;
    cafferen*)     color="$(tput setaf 28)";;
    cargyll*)      color="$(tput setaf 124)";;
    caron*)        color="$(tput setaf 11)";;
    cassel*)       color="$(tput setaf 145)";;
    caswell*)      color="$(tput setaf 220)";;
    celtigar*)     color="$(tput setaf 52)";;
    cerwyn*)       color="$(tput setaf 59)";;
    charlton*)     color="$(tput setaf 28)";;
    chelsted*)     color="$(tput setaf 28)";;
    chester*)      color="$(tput setaf 28)";;
    chyttering*)   color="$(tput setaf 220)";;
    city_watch*)   color="$(tput setaf 220)";;
    clegane*)      color="$(tput setaf 59)";;
    cockshaw*)     color="$(tput setaf 173)";;
    coldwater*)    color="$(tput setaf 124)";;
    cole*)         color="$(tput setaf 202)";;
    condon*)       color="$(tput setaf 124)";;
    connington*)   color="$(tput setaf 160)";;
    corbray*)      color="$(tput setaf 124)";;
    cordwayner*)   color="$(tput setaf 28)";;
    costayne*)     color="$(tput setaf 185)";;
    crakehall*)    color="$(tput setaf 94)";;
    crane*)        color="$(tput setaf 39)";;
    cressey*)      color="$(tput setaf 19)";;
    crowl*)        color="$(tput setaf 124)";;
    cuy*)          color="$(tput setaf 184)";;
    dalt*)         color="$(tput setaf 127)";;
    darklyn*)      color="$(tput setaf 184)";;
    darry*)        color="$(tput setaf 94)";;
    dayne*)        color="$(tput setaf 140)";;
    doggett*)      color="$(tput setaf 28)";;
    dondarrion*)   color="$(tput setaf 182)";;
    donniger*)     color="$(tput setaf 108)";;
    drox*)         color="$(tput setaf 220)";;
    drumm*)        color="$(tput setaf 124)";;
    dunk*)         color="$(tput setaf 22)";;
    dustin*)       color="$(tput setaf 11)";;
    edgerton*)     color="$(tput setaf 53)";;
    egen*)         color="$(tput setaf 19)";;
    elesham*)      color="$(tput setaf 59)";;
    erenford*)     color="$(tput setaf 210)";;
    estermont*)    color="$(tput setaf 114)";;
    estren*)       color="$(tput setaf 28)";;
    farman*)       color="$(tput setaf 184)";;
    farring*)      color="$(tput setaf 90)";;
    farwynd*)      color="$(tput setaf 172)";;
    fell*)         color="$(tput setaf 28)";;
    fenn*)         color="$(tput setaf 140)";;
    fiddler*)      color="$(tput setaf 19)";;
    flint*)        color="$(tput setaf 59)";;
    florent*)      color="$(tput setaf 188)";;
    foote*)        color="$(tput setaf 130)";;
    footly*)       color="$(tput setaf 188)";;
    forrester*)    color="$(tput setaf 59)";;
    fossoway*)     color="$(tput setaf 220)";;
    fowler*)       color="$(tput setaf 19)";;
    frey*)         color="$(tput setaf 145)";;
    gardener*)     color="$(tput setaf 28)";;
    garner*)       color="$(tput setaf 28)";;
    gaunt*)        color="$(tput setaf 210)";;
    glover*)       color="$(tput setaf 202)";;
    goodbrook*)    color="$(tput setaf 220)";;
    goodbrother*)  color="$(tput setaf 124)";;
    gower*)        color="$(tput setaf 188)";;
    graceford*)    color="$(tput setaf 94)";;
    grafton*)      color="$(tput setaf 202)";;
    grandison*)    color="$(tput setaf 11)";;
    graves*)       color="$(tput setaf 28)";;
    greenfield*)   color="$(tput setaf 28)";;
    grell*)        color="$(tput setaf 19)";;
    greyjoy*)      color="$(tput setaf 220)";;
    grimm*)        color="$(tput setaf 65)";;
    haigh*)        color="$(tput setaf 94)";;
    hamell*)       color="$(tput setaf 220)";;
    harclay*)      color="$(tput setaf 19)";;
    hardyng*)      color="$(tput setaf 160)";;
    harlaw*)       color="$(tput setaf 145)";;
    harlton*)      color="$(tput setaf 28)";;
    harroway*)     color="$(tput setaf 208)";;
    harte*)        color="$(tput setaf 19)";;
    hastwyck*)     color="$(tput setaf 100)";;
    hasty*)        color="$(tput setaf 90)";;
    hayford*)      color="$(tput setaf 28)";;
    herston*)      color="$(tput setaf 124)";;
    hersy*)        color="$(tput setaf 174)";;
    hetherspoon*)  color="$(tput setaf 188)";;
    hewett*)       color="$(tput setaf 188)";;
    hightower*)    color="$(tput setaf 102)";;
    hoare*)        color="$(tput setaf 22)";;
    hollard*)      color="$(tput setaf 167)";;
    hornwood*)     color="$(tput setaf 172)";;
    hunter*)       color="$(tput setaf 94)";;
    hutcheson*)    color="$(tput setaf 220)";;
    inchfield*)    color="$(tput setaf 102)";;
    ironsmith*)    color="$(tput setaf 65)";;
    jast*)         color="$(tput setaf 11)";;
    jordayne*)     color="$(tput setaf 34)";;
    justman*)      color="$(tput setaf 19)";;
    karstark*)     color="$(tput setaf 102)";;
    keath*)        color="$(tput setaf 102)";;
    kellington*)   color="$(tput setaf 38)";;
    kenning*)      color="$(tput setaf 144)";;
    kettleblack*)  color="$(tput setaf 124)";;
    kidwell*)      color="$(tput setaf 114)";;
    kingsguard*)   color="$(tput setaf 102)";;
    knott*)        color="$(tput setaf 94)";;
    langward*)     color="$(tput setaf 131)";;
    lannister*)    color="$(tput setaf 124)";;
    lefford*)      color="$(tput setaf 220)";;
    leygood*)      color="$(tput setaf 208)";;
    liddle*)       color="$(tput setaf 28)";;
    lightfoot*)    color="$(tput setaf 94)";;
    lipps*)        color="$(tput setaf 18)";;
    locke*)        color="$(tput setaf 224)";;
    lolliston*)    color="$(tput setaf 94)";;
    lonmouth*)     color="$(tput setaf 124)";;
    lothston*)     color="$(tput setaf 184)";;
    lowther*)      color="$(tput setaf 188)";;
    lyberr*)       color="$(tput setaf 188)";;
    lychester*)    color="$(tput setaf 172)";;
    lydden*)       color="$(tput setaf 22)";;
    lynderly*)     color="$(tput setaf 28)";;
    magnar*)       color="$(tput setaf 188)";;
    mallery*)      color="$(tput setaf 90)";;
    mallister*)    color="$(tput setaf 188)";;
    manderly*)     color="$(tput setaf 37)";;
    manning*)      color="$(tput setaf 188)";;
    manwoody*)     color="$(tput setaf 223)";;
    marbrand*)     color="$(tput setaf 65)";;
    marsh*)        color="$(tput setaf 184)";;
    martell*)      color="$(tput setaf 208)";;
    massey*)       color="$(tput setaf 23)";;
    melcolm*)      color="$(tput setaf 80)";;
    merryweather*) color="$(tput setaf 184)";;
    mertyns*)      color="$(tput setaf 102)";;
    middlebury*)   color="$(tput setaf 22)";;
    mollen*)       color="$(tput setaf 194)";;
    moore*)        color="$(tput setaf 178)";;
    mooton*)       color="$(tput setaf 220)";;
    moreland*)     color="$(tput setaf 28)";;
    mormont*)      color="$(tput setaf 28)";;
    morrigen*)     color="$(tput setaf 37)";;
    moss*)         color="$(tput setaf 145)";;
    mudd*)         color="$(tput setaf 94)";;
    mullendore*)   color="$(tput setaf 188)";;
    musgood*)      color="$(tput setaf 223)";;
    norcross*)     color="$(tput setaf 102)";;
    norrey*)       color="$(tput setaf 22)";;
    norridge*)     color="$(tput setaf 19)";;
    oakheart*)     color="$(tput setaf 28)";;
    oldflowers*)   color="$(tput setaf 28)";;
    orkwood*)      color="$(tput setaf 11)";;
    orme*)         color="$(tput setaf 184)";;
    osgrey*)       color="$(tput setaf 22)";;
    overton*)      color="$(tput setaf 222)";;
    paege*)        color="$(tput setaf 174)";;
    parren*)       color="$(tput setaf 125)";;
    patrek*)       color="$(tput setaf 19)";;
    payne*)        color="$(tput setaf 127)";;
    peake*)        color="$(tput setaf 208)";;
    peckledon*)    color="$(tput setaf 220)";;
    penrose*)      color="$(tput setaf 94)";;
    piper*)        color="$(tput setaf 223)";;
    plumm*)        color="$(tput setaf 90)";;
    pommingham*)   color="$(tput setaf 160)";;
    poole*)        color="$(tput setaf 19)";;
    prester*)      color="$(tput setaf 160)";;
    pryor*)        color="$(tput setaf 217)";;
    pyle*)         color="$(tput setaf 188)";;
    qoherys*)      color="$(tput setaf 179)";;
    qorgyle*)      color="$(tput setaf 124)";;
    rambton*)      color="$(tput setaf 124)";;
    redding*)      color="$(tput setaf 131)";;
    redfort*)      color="$(tput setaf 124)";;
    redwyne*)      color="$(tput setaf 19)";;
    reed*)         color="$(tput setaf 65)";;
    reyne*)        color="$(tput setaf 188)";;
    risley*)       color="$(tput setaf 59)";;
    rogers*)       color="$(tput setaf 145)";;
    rollingford*)  color="$(tput setaf 102)";;
    roote*)        color="$(tput setaf 95)";;
    rosby*)        color="$(tput setaf 188)";;
    rowan*)        color="$(tput setaf 188)";;
    roxton*)       color="$(tput setaf 220)";;
    royce*)        color="$(tput setaf 179)";;
    ruthermont*)   color="$(tput setaf 184)";;
    ruttiger*)     color="$(tput setaf 208)";;
    ryger*)        color="$(tput setaf 22)";;
    rykker*)       color="$(tput setaf 19)";;
    ryswell*)      color="$(tput setaf 179)";;
    santagar*)     color="$(tput setaf 188)";;
    sarsfield*)    color="$(tput setaf 28)";;
    sarwyck*)      color="$(tput setaf 124)";;
    seaworth*)     color="$(tput setaf 145)";;
    selmy*)        color="$(tput setaf 94)";;
    serrett*)      color="$(tput setaf 29)";;
    serry*)        color="$(tput setaf 124)";;
    shadrich*)     color="$(tput setaf 19)";;
    shawney*)      color="$(tput setaf 22)";;
    shermer*)      color="$(tput setaf 130)";;
    shett*)        color="$(tput setaf 94)";;
    slate*)        color="$(tput setaf 145)";;
    sloane*)       color="$(tput setaf 184)";;
    slynt*)        color="$(tput setaf 178)";;
    smallwood*)    color="$(tput setaf 11)";;
    sparr*)        color="$(tput setaf 94)";;
    spicer*)       color="$(tput setaf 28)";;
    stackspear*)   color="$(tput setaf 220)";;
    staedmon*)     color="$(tput setaf 124)";;
    stark*)        color="$(tput setaf 188)";;
    staunton*)     color="$(tput setaf 102)";;
    stokeworth*)   color="$(tput setaf 230)";;
    stout*)        color="$(tput setaf 94)";;
    strong*)       color="$(tput setaf 23)";;
    sunderland*)   color="$(tput setaf 22)";;
    sunglass*)     color="$(tput setaf 220)";;
    swann*)        color="$(tput setaf 230)";;
    swyft*)        color="$(tput setaf 11)";;
    swygert*)      color="$(tput setaf 127)";;
    tallad*)       color="$(tput setaf 224)";;
    tallhart*)     color="$(tput setaf 94)";;
    tarbeck*)      color="$(tput setaf 19)";;
    targaryen*)    color="$(tput setaf 124)";;
    tarly*)        color="$(tput setaf 28)";;
    tarth*)        color="$(tput setaf 209)";;
    teague*)       color="$(tput setaf 184)";;
    templeton*)    color="$(tput setaf 220)";;
    terrick*)      color="$(tput setaf 220)";;
    thenn*)        color="$(tput setaf 124)";;
    thorne*)       color="$(tput setaf 160)";;
    tollett*)      color="$(tput setaf 102)";;
    toyne*)        color="$(tput setaf 220)";;
    trant*)        color="$(tput setaf 19)";;
    tudbury*)      color="$(tput setaf 185)";;
    tully*)        color="$(tput setaf 19)";;
    turnberry*)    color="$(tput setaf 28)";;
    tyrell*)       color="$(tput setaf 220)";;
    uffering*)     color="$(tput setaf 95)";;
    uller*)        color="$(tput setaf 124)";;
    upcliff*)      color="$(tput setaf 37)";;
    uthor*)        color="$(tput setaf 188)";;
    vaith*)        color="$(tput setaf 208)";;
    vance*)        color="$(tput setaf 188)";;
    varner*)       color="$(tput setaf 188)";;
    velaryon*)     color="$(tput setaf 37)";;
    vikary*)       color="$(tput setaf 124)";;
    volmark*)      color="$(tput setaf 102)";;
    vypren*)       color="$(tput setaf 28)";;
    vyrwel*)       color="$(tput setaf 59)";;
    wagstaff*)     color="$(tput setaf 28)";;
    walder*)       color="$(tput setaf 19)";;
    waterman*)     color="$(tput setaf 19)";;
    waxley*)       color="$(tput setaf 145)";;
    wayn*)         color="$(tput setaf 20)";;
    waynwood*)     color="$(tput setaf 28)";;
    webber*)       color="$(tput setaf 174)";;
    wendwater*)    color="$(tput setaf 224)";;
    wensington*)   color="$(tput setaf 19)";;
    westbrook*)    color="$(tput setaf 28)";;
    westerling*)   color="$(tput setaf 186)";;
    westford*)     color="$(tput setaf 19)";;
    whent*)        color="$(tput setaf 11)";;
    whitehill*)    color="$(tput setaf 54)";;
    willum*)       color="$(tput setaf 188)";;
    wode*)         color="$(tput setaf 11)";;
    woodwright*)   color="$(tput setaf 94)";;
    woolfield*)    color="$(tput setaf 127)";;
    wull*)         color="$(tput setaf 19)";;
    wylde*)        color="$(tput setaf 37)";;
    wynch*)        color="$(tput setaf 127)";;
    wythers*)      color="$(tput setaf 188)";;
    yarwyck*)      color="$(tput setaf 160)";;
    yelshire*)     color="$(tput setaf 28)";;
    yew*)          color="$(tput setaf 124)";;
    yronwood*)     color="$(tput setaf 222)";;
    *)             color="$(tput setaf 2)";;
  esac
  echo "$(printf "\[${color}\]")";
}
