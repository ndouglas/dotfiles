#!/usr/bin/env bash

# Get Emoji for hostname.
nd_get_hostname_emoji() {
  : "${1?"Usage: ${FUNCNAME[0]} HOSTNAME"}";
  the_hostname="${1}";
  case "${the_hostname}" in
    algood*)       emoji="ðŋ";;
    allyrion*)     emoji="â";;
    ambrose*)      emoji="ð";;
    appleton*)     emoji="ðģ";;
    arlan*)        emoji="ð·";;
    arryn*)        emoji="ðĶ";;
    ashford*)      emoji="ð";;
    ball*)         emoji="â­";;
    bar_emmon*)    emoji="ð";;
    baratheon*)    emoji="ðĶ";;
    beesbury*)     emoji="ð";;
    belmore*)      emoji="ð";;
    bettley*)      emoji="ð";;
    blackbar*)     emoji="â";;
    blackfyre*)    emoji="ð";;
    blackmont*)    emoji="ðĶ";;
    blackwood*)    emoji="ðĶ";;
    blanetree*)    emoji="ð";;
    blount*)       emoji="ðĶ";;
    bolling*)      emoji="ðĶ";;
    bolton*)       emoji="ð§ââïļ";;
    botley*)       emoji="ð";;
    bracken*)      emoji="ð";;
    brax*)         emoji="ðĶ";;
    bridges*)      emoji="ð";;
    broom*)        emoji="ðŠ";;
    buckwell*)     emoji="ðĶ";;
    burley*)       emoji="ðŠ";;
    butterwell*)   emoji="ã°ïļ";;
    byrch*)        emoji="ðŠ";;
    bywater*)      emoji="ð";;
    cafferen*)     emoji="ðĶ";;
    cargyll*)      emoji="ðĶĒ";;
    caron*)        emoji="ðĶ";;
    cassel*)       emoji="ðš";;
    caswell*)      emoji="ðđ";;
    celtigar*)     emoji="ðĶ";;
    cerwyn*)       emoji="";;
    charlton*)     emoji="";;
    chelsted*)     emoji="";;
    chester*)      emoji="";;
    chyttering*)   emoji="";;
    city_watch*)   emoji="";;
    clegane*)      emoji="";;
    cockshaw*)     emoji="";;
    coldwater*)    emoji="";;
    cole*)         emoji="";;
    condon*)       emoji="";;
    connington*)   emoji="";;
    corbray*)      emoji="";;
    cordwayner*)   emoji="ðĒ";;
    costayne*)     emoji="";;
    crakehall*)    emoji="ð";;
    crane*)        emoji="";;
    cressey*)      emoji="";;
    crowl*)        emoji="";;
    cuy*)          emoji="";;
    dalt*)         emoji="ð";;
    darklyn*)      emoji="ðĄ";;
    darry*)        emoji="ð§âðū";;
    dayne*)        emoji="ðŦ";;
    doggett*)      emoji="ðĶ";;
    dondarrion*)   emoji="ðĐïļ";;
    donniger*)     emoji="ð";;
    drox*)         emoji="ðđ";;
    drumm*)        emoji="";;
    dunk*)         emoji="";;
    dustin*)       emoji="";;
    edgerton*)     emoji="";;
    egen*)         emoji="ð";;
    elesham*)      emoji="â°ïļ";;
    erenford*)     emoji="ðĶĐ";;
    errol*)        emoji="ðū";;
    estermont*)    emoji="ðĒ";;
    estren*)       emoji="â";;
    farman*)       emoji="âĩ";;
    farring*)      emoji="";;
    farwynd*)      emoji="";;
    fell*)         emoji="ðē";;
    fenn*)         emoji="ðš";;
    fiddler*)      emoji="ðŧ";;
    flint*)        emoji="";;
    florent*)      emoji="ðĶ";;
    foote*)        emoji="ðĄïļ ";;
    footly*)       emoji="";;
    forrester*)    emoji="";;
    fossoway*)     emoji="ð";;
    fowler*)       emoji="ðĶ";;
    frey*)         emoji="";;
    gardener*)     emoji="ð§Ī";;
    garner*)       emoji="ðĶ";;
    gaunt*)        emoji="ðą";;
    glover*)       emoji="â";;
    goodbrook*)    emoji="";;
    goodbrother*)  emoji="";;
    gower*)        emoji="ð";;
    graceford*)    emoji="ðĐ";;
    grafton*)      emoji="ðŊ";;
    grandison*)    emoji="";;
    graves*)       emoji="";;
    greenfield*)   emoji="";;
    grell*)        emoji="";;
    greyjoy*)      emoji="ðĶ";;
    grimm*)        emoji="";;
    haigh*)        emoji="ðą";;
    hamell*)       emoji="";;
    harclay*)      emoji="ð";;
    hardyng*)      emoji="";;
    harlaw*)       emoji="";;
    harlton*)      emoji="ðģ";;
    harroway*)     emoji="ð°";;
    harte*)        emoji="";;
    hastwyck*)     emoji="";;
    hasty*)        emoji="";;
    hayford*)      emoji="";;
    herston*)      emoji="ð";;
    hersy*)        emoji="";;
    hetherspoon*)  emoji="ðĨ";;
    hewett*)       emoji="";;
    hightower*)    emoji="";;
    hoare*)        emoji="";;
    hollard*)      emoji="";;
    hornwood*)     emoji="";;
    hunter*)       emoji="";;
    hutcheson*)    emoji="";;
    inchfield*)    emoji="";;
    ironsmith*)    emoji="";;
    jast*)         emoji="";;
    jordayne*)     emoji="";;
    justman*)      emoji="âïļ ";;
    karstark*)     emoji="âž";;
    keath*)        emoji="";;
    kellington*)   emoji="ð";;
    kenning*)      emoji="";;
    kettleblack*)  emoji="ðŊ";;
    kidwell*)      emoji="";;
    kingsguard*)   emoji="";;
    knott*)        emoji="";;
    langward*)     emoji="";;
    lannister*)    emoji="";;
    lefford*)      emoji="âïļ ";;
    leygood*)      emoji="";;
    liddle*)       emoji="ð°";;
    lightfoot*)    emoji="ðĢ";;
    lipps*)        emoji="ð";;
    locke*)        emoji="ðïļ ";;
    lolliston*)    emoji="ðĒïļ ";;
    lonmouth*)     emoji="";;
    lothston*)     emoji="ðĶ";;
    lowther*)      emoji="ðŽ";;
    lyberr*)       emoji="ðą";;
    lychester*)    emoji="";;
    lydden*)       emoji="";;
    lynderly*)     emoji="ð";;
    magnar*)       emoji="";;
    mallery*)      emoji="";;
    mallister*)    emoji="ðĶ";;
    manderly*)     emoji="ð§âïļ";;
    manning*)      emoji="";;
    manwoody*)     emoji="ð";;
    marbrand*)     emoji="";;
    marsh*)        emoji="ðļ";;
    martell*)      emoji="";;
    massey*)       emoji="ð";;
    melcolm*)      emoji="â  ";;
    merryweather*) emoji="";;
    mertyns*)      emoji="ðĶ";;
    middlebury*)   emoji="";;
    mollen*)       emoji="";;
    moore*)        emoji="";;
    mooton*)       emoji="";;
    moreland*)     emoji="";;
    mormont*)      emoji="ðŧ";;
    morrigen*)     emoji="";;
    moss*)         emoji="";;
    mudd*)         emoji="ð";;
    mullendore*)   emoji="ðĶ";;
    musgood*)      emoji="";;
    norcross*)     emoji="";;
    norrey*)       emoji="";;
    norridge*)     emoji="";;
    oakheart*)     emoji="";;
    oldflowers*)   emoji="";;
    orkwood*)      emoji="";;
    orme*)         emoji="";;
    osgrey*)       emoji="";;
    overton*)      emoji="";;
    paege*)        emoji="";;
    parren*)       emoji="";;
    patrek*)       emoji="";;
    payne*)        emoji="";;
    peake*)        emoji="";;
    peckledon*)    emoji="";;
    penrose*)      emoji="";;
    piper*)        emoji="";;
    plumm*)        emoji="";;
    pommingham*)   emoji="";;
    poole*)        emoji="ðĩ";;
    prester*)      emoji="ð";;
    pryor*)        emoji="";;
    pyle*)         emoji="";;
    qoherys*)      emoji="";;
    qorgyle*)      emoji="ðĶ";;
    rambton*)      emoji="ð";;
    redding*)      emoji="";;
    redfort*)      emoji="";;
    redwyne*)      emoji="ð";;
    reed*)         emoji="ð";;
    reyne*)        emoji="";;
    risley*)       emoji="";;
    rogers*)       emoji="";;
    rollingford*)  emoji="";;
    roote*)        emoji="ð";;
    rosby*)        emoji="";;
    rowan*)        emoji="";;
    roxton*)       emoji="";;
    royce*)        emoji="";;
    ruthermont*)   emoji="";;
    ruttiger*)     emoji="";;
    ryger*)        emoji="";;
    rykker*)       emoji="";;
    ryswell*)      emoji="ðī";;
    santagar*)     emoji="ð";;
    sarsfield*)    emoji="";;
    sarwyck*)      emoji="";;
    seaworth*)     emoji="";;
    selmy*)        emoji="ðū";;
    serrett*)      emoji="";;
    serry*)        emoji="";;
    shadrich*)     emoji="ð";;
    shawney*)      emoji="";;
    shermer*)      emoji="";;
    shett*)        emoji="";;
    slate*)        emoji="";;
    sloane*)       emoji="";;
    slynt*)        emoji="";;
    smallwood*)    emoji="";;
    sparr*)        emoji="";;
    spicer*)       emoji="";;
    stackspear*)   emoji="â";;
    staedmon*)     emoji="";;
    stark*)        emoji="ðš";;
    staunton*)     emoji="";;
    stokeworth*)   emoji="ð";;
    stout*)        emoji="";;
    strong*)       emoji="";;
    sunderland*)   emoji="";;
    sunglass*)     emoji="";;
    swann*)        emoji="";;
    swyft*)        emoji="ð";;
    swygert*)      emoji="ð";;
    tallad*)       emoji="";;
    tallhart*)     emoji="";;
    tarbeck*)      emoji="";;
    targaryen*)    emoji="ð";;
    tarly*)        emoji="ðđ";;
    tarth*)        emoji="";;
    teague*)       emoji="ðą\b";;
    templeton*)    emoji="";;
    terrick*)      emoji="";;
    thenn*)        emoji="";;
    thorne*)       emoji="";;
    tollett*)      emoji="";;
    toyne*)        emoji="";;
    trant*)        emoji="";;
    tudbury*)      emoji="ðĒ";;
    tully*)        emoji="";;
    turnberry*)    emoji="ð";;
    tyrell*)       emoji="ðĩïļ ";;
    uffering*)     emoji="";;
    uller*)        emoji="ðĨ";;
    upcliff*)      emoji="";;
    uthor*)        emoji="ð";;
    vaith*)        emoji="";;
    vance*)        emoji="";;
    varner*)       emoji="";;
    velaryon*)     emoji="";;
    vikary*)       emoji="";;
    volmark*)      emoji="";;
    vypren*)       emoji="";;
    vyrwel*)       emoji="";;
    wagstaff*)     emoji="";;
    walder*)       emoji="";;
    waterman*)     emoji="";;
    waxley*)       emoji="ðŊïļ ";;
    wayn*)         emoji="";;
    waynwood*)     emoji="";;
    webber*)       emoji="ð·ïļ";;
    wendwater*)    emoji="";;
    wensington*)   emoji="ðš";;
    westbrook*)    emoji="";;
    westerling*)   emoji="";;
    westford*)     emoji="ðķ";;
    whent*)        emoji="";;
    whitehill*)    emoji="";;
    willum*)       emoji="";;
    wode*)         emoji="ðĶ";;
    woodwright*)   emoji="";;
    woolfield*)    emoji="";;
    wull*)         emoji="";;
    wylde*)        emoji="ð";;
    wynch*)        emoji="";;
    wythers*)      emoji="ðŋïļ ";;
    yarwyck*)      emoji="";;
    yelshire*)     emoji="";;
    yew*)          emoji="";;
    yronwood*)     emoji="âĐïļ ";;
    *)             emoji="â";;
  esac
  echo "$(printf "${emoji}")";
}
