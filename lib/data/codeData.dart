import '../models/Actions.dart';
import '../models/RejectCode.dart';

final List<Rejection> allRejectCodes = [
  Rejection(
    "00",
    textCode: "Unknown",
    definition: "Valid ticket/smartcard",
    laymansReason: "You've got a perfectly valid ticket. Woohoo.",
    helpText: "Your ticket is valid for entry/exit through this gateline.",
  ),
  Rejection(
    "01",
    textCode: "BAD TABLE",
    definition: "Gateline error: invalid table data",
    laymansReason:
        "It's not you, it's them. The ticket barrier you're using is faulty.",
    helpText: "This gateline has a faulty database.",
    action: Action.CONTACT_CTS,
  ),
  Rejection(
    "02",
    textCode: "TYPE/DIR",
    definition: "Wrong ticket type or direction",
    laymansReason:
        "Are you using a platform ticket? These can often only be used once, on one platform or set of platforms only.",
    helpText:
        "Your ticket is invalid for entry/exit through this gateline. Are you entering the wrong platform?",
    action: Action.IRREG_TRAVEL,
  ),
  Rejection(
    "03",
    textCode: "TYPE OOR",
    definition: "Ticket type out of table's range",
    laymansReason:
        "It's not you, it's them. The ticket barrier you're using doesn't understand your ticket type. This is fairly common, especially if you're using uncommon tickets such as 'super off-peak' or rovers.",
    helpText:
        "Your ticket type isn't in the barrier's database of valid ticket types.",
    action: Action.SEEK_ASSISTANCE,
  ),
  Rejection(
    "04",
    textCode: "CHK ERROR",
    definition: "Gateline error: check table error",
    laymansReason:
        "It's not you, it's them. This ticket barrier has a faulty database.",
    helpText: "This gateline has a fault.",
    action: Action.CONTACT_CTS,
  ),
  Rejection(
    "05",
    textCode: "TEST MODE",
    definition:
        "Undergound: customer ticket inserted while gate in test mode.\n\nOther: Test mode ticket inserted.",
    helpText:
        "The gateline is set to testing mode which refuses real transport tickets.",
    action: Action.DISABLE_TEST_MODE,
  ),
  Rejection(
    "06",
    textCode: "NOT TST MD",
    definition:
        "Undergound: test ticket/smartcard inserted while gate not in test mode.\n\nOther: Engineer signed on.",
    helpText: "Your ticket isn't valid for travel because it is a test ticket.",
    action: Action.IRREG_TRAVEL,
  ),
  Rejection(
    "07",
    textCode: "UNREAD TK",
    definition: "Ticket magnetic code unreadable",
    helpText:
        "Ticket's magnetic strip couldn't be read. Did you insert the ticket the right way round?",
    action: Action.TRY_AGAIN,
  ),
  Rejection(
    "08",
    textCode: "VRF FAIL",
    definition: "Ticket re-coding error",
    helpText:
        "Something went wrong when updating info on your ticket. Try again or seek assistance for a ticket replacement.",
    action: Action.REPLACE_TICKET,
  ),
  Rejection(
    "09",
    textCode: "INVAL CHK",
    definition: "Ticket code read error",
    helpText:
        "Ticket magnetic strip unreadable. Ticket is usually bent, demagnetised or corrupted. Seek assistance to get it replaced.",
    action: Action.REPLACE_TICKET,
  ),
  Rejection(
    "10",
    textCode: "Unknown",
    definition: "Carnet validated",
    helpText: "Your carnet ticket was successfully validated.",
  ),
  Rejection(
    "11",
    textCode: "DATE EXP",
    definition: "Ticket/card expired",
    helpText:
        "Your ticket has expired. Buy a new one at a ticket machine/office.",
    action: Action.TO_TICKET_OFFICE,
  ),
  Rejection(
    "12",
    textCode: "TIME O DAY",
    definition: "Ticket not yet valid",
    helpText:
        "Ticket isn't valid at this time of day. E.g. trying to use a freedom pass before 9 AM.",
    action: Action.TO_TICKET_OFFICE,
  ),
  Rejection(
    "13",
    textCode: "EXCESS",
    definition: "Additional fare due/excess to pay",
    helpText:
        "You might need to pay an extra charge as you're travelling beyond the validity of your ticket (exiting/entering during peak with an off-peak ticket).",
    action: Action.TO_TICKET_OFFICE,
  ),
  Rejection(
    "14",
    textCode: "HR NO ACC",
    definition: "Ticket not valid and no applicable excess charge",
    helpText:
        "Your ticket isn't valid and there's no applicable excess fee to charge you.",
    action: Action.IRREG_TRAVEL,
  ),
  Rejection(
    "15",
    textCode: "NO ON VAL",
    definition: "No onward validity",
    helpText:
        "Your ticket isn't valid and there's no applicable excess fee to charge you.",
    action: Action.IRREG_TRAVEL,
  ),
  Rejection(
    "16",
    textCode: "OUT ZONE",
    definition: "Not valid at this zone",
    helpText: "Your ticket isn't valid in this travel zone.",
    action: Action.TO_TICKET_OFFICE,
  ),
  Rejection(
    "17",
    textCode: "NOT ISS HR",
    definition: "Ticket not issued here",
    helpText:
        "You're trying to use a platform ticket issued at another station.",
    action: Action.IRREG_TRAVEL,
  ),
  Rejection(
    "18",
    textCode: "INVAL STN",
    definition: "Ticket not valid at this station",
    helpText:
        "You're trying to use a station permit which was issued at another station.",
    action: Action.TO_TICKET_OFFICE,
  ),
  Rejection(
    "19",
    textCode: "NOT YET VL",
    definition: "Ticket used before start date",
    helpText:
        "Your ticket isn't valid yet. Check the travel date on your ticket.",
    action: Action.TO_TICKET_OFFICE,
  ),
  Rejection(
    "20",
    textCode: "EXPIRED",
    definition: "Oyster/smartcard expired",
    helpText: "Your Oyster or Smartcard has expired. Please renew it.",
    action: Action.IRREG_TRAVEL,
  ),
  Rejection(
    "21",
    textCode: "DOUBLE ENT",
    definition: "Double entry attempted",
    laymansReason:
        "Your smartcard has already been used to enter this station recently. Have you tapped in more than once?",
    helpText: "Your Oyster or Smartcard has already touched in.",
    action: Action.IRREG_TRAVEL,
  ),
  Rejection(
    "22",
    textCode: "DOUBLE EXI",
    definition: "Double exit attempted",
    laymansReason:
        "Your smartcard has already been used to exit at this station recently. Have you tapped out more than once?",
    helpText: "Your Oyster or Smartcard has already touched out.",
    action: Action.IRREG_TRAVEL,
  ),
  Rejection(
    "23",
    textCode: "CARNET NVL",
    definition: "Carnet ticket not validated",
    helpText:
        "Your carnet ticket wasn't put though a ticket machine at the start of your journey, meaning it wasn't validated.",
  ),
  Rejection(
    "24",
    textCode: "LOW SV-NZ1",
    definition: "Insufficient PAYG credit",
    helpText:
        "You have a valid season ticket, but you've travelled beyond its validity and don't have enough PAYG balance to pay for this journey. Please top up before beginning your journey.",
    action: Action.TOP_UP_CARD,
  ),
  Rejection(
    "25",
    textCode: "NOT ENTERD",
    definition: "Unstarted journey",
    helpText:
        "You didn't touch in at the start of your journey or the touch in failed.",
    action: Action.SEEK_ASSISTANCE,
  ),
  Rejection(
    "26",
    textCode: "SM ENT EXT",
    definition: "Entry and exit at same station",
    laymansReason:
        "You've tapped in and out at the same station within a short amount of time. Did you decide not to travel?",
    helpText: "You touched in and touched out at the same station.",
    action: Action.TO_TICKET_OFFICE,
  ),
  Rejection(
    "27",
    textCode: "TNP DIS ZN",
    definition: "PAYG disabled in this zone",
    helpText: "PAYG on your Oyster or Smartcard is not enabled.",
  ),
  Rejection(
    "28",
    textCode: "SV DISBLD",
    definition: "PAYG capability disabled.",
    helpText: "PAYG on your Oyster or Smartcard is not enabled.",
    action: Action.TO_TICKET_OFFICE,
  ),
  Rejection(
    "29",
    textCode: "PPT DISBLD",
    definition: "PAYG capability disabled",
    helpText: "PAYG on your Oyster or Smartcard isn't enabled.",
    action: Action.TO_TICKET_OFFICE,
  ),
  Rejection(
    "30",
    textCode: "CARD DIS",
    definition: "Oyster or Smartcard disabled",
    laymansReason:
        "Have you reported your smartcard lost/stolen and found it again? You'll need to get a replacement as the other smartcard will have been deactivated.",
    helpText:
        "This Oyster or Smartcard has been disabled as it's been reported lost, stolen, it was misused, the payment card is due to expire, or an auto topup has failed.",
    action: Action.IRREG_TRAVEL,
  ),
  Rejection(
    "31",
    textCode: "F INV OSI",
    definition: "Illogical validation at out of station interchange.",
    helpText: "Seek assistance.",
    action: Action.TO_TICKET_OFFICE,
  ),
  Rejection(
    "32",
    textCode: "TO INV OSI",
    definition: "Illogical validation at out of station interchange.",
    helpText: "Seek assistance.",
    action: Action.TO_TICKET_OFFICE,
  ),
  Rejection(
    "33",
    textCode: "ILLOG OSI",
    definition: "Illogical validation at out of station interchange.",
    helpText: "Seek assistance.",
    action: Action.TO_TICKET_OFFICE,
  ),
  Rejection(
    "34",
    textCode: "EXT DISALL",
    definition: "Exit not allowed - PAYG not validated on journey.",
    helpText: "Seek assistance.",
    action: Action.SEEK_ASSISTANCE,
  ),
  Rejection(
    "35",
    textCode: "LOW SV-Z1",
    definition: "Insufficient PAYG credit",
    helpText:
        "Your Oyster or Smartcard has a negative or insufficient balance. Please top up before beginning your journey.",
    action: Action.TOP_UP_CARD,
  ),
  Rejection(
    "36",
    textCode: "LOW SV",
    definition: "Insufficient PAYG credit",
    laymansReason:
        "Not expecting to see a low balance? Check your journey history at a ticket machine. You might have been charged for an incomplete journey if you've forgotten to tap in or out.",
    helpText:
        "Your Oyster or Smartcard has a negative or insufficient balance and you have no valid season ticket. Please top up before beginning your journey.",
    action: Action.TOP_UP_CARD,
  ),
  Rejection(
    "41",
    textCode: "PASSB THRU",
    definition: "Pass back through",
    laymansReason:
        "If you touch in and out a few times at a station within a short amount of time, the barriers won't let you through as they think you might be handing the ticket back to other people.",
    helpText:
        "Attempt to touch in after a touch in and and touch out at the same station, or attempt to touch out after a touch out and touch in at the same station.",
  ),
  Rejection(
    "42",
    textCode: "PASSB OVER",
    definition: "Pass back",
    laymansReason:
        "If you touch in and out a few times at a station within a short amount of time, the barriers won't let you through as they think you might be handing the ticket back to other people.",
    helpText:
        "Oyster or Smartcard just used in the same direction at the same station.",
  ),
  Rejection(
    "43",
    textCode: "INVAL PSNG",
    definition: "Invalid passenger count",
    laymansReason:
        "For some reason, your smartcard has become corrupted, meaning you'll need a replacement smartcard. Contact the company you got it from to get a new one.",
    helpText:
        "Smartcard total passenger count is not equal to 1. Possible corrupted smartcard.",
    action: Action.REPLACE_ITSO_CARD,
  ),
  Rejection(
    "44",
    textCode: "NO RIDES",
    definition:
        "ITSO: There are no rides remaining on an IPE where that IPE is the only valid IPE on the card",
    laymansReason:
        "There's no valid ticket on your smartcard. Any loaded tickets are either no longer valid",
    helpText: "No valid Smartcard ticket. Check your loaded tickets.",
    action: Action.TO_TICKET_OFFICE,
  ),
  Rejection(
    "45",
    textCode: "INVAL IPE",
    definition: "ITSO: Invalid IPE field value",
    helpText:
        "Corrupt loaded ticket. Try reloading onto your Smartcard, or order a replacement card.",
    action: Action.REPLACE_ITSO_CARD,
  ),
  Rejection(
    "46",
    textCode: "INVAL ENTL",
    definition:
        "ITSO: Valid Entitlement on card doesn't provide Free travel (needs STR to go with it)",
    helpText: "Corrupted Smartcard. Order a replacement card.",
    action: Action.REPLACE_ITSO_CARD,
  ),
  Rejection(
    "47",
    textCode: "IPE SEAL",
    definition: "ITSO: IPE Seal Error",
    helpText: "Corrupted Smartcard. Order a replacement card.",
    action: Action.REPLACE_ITSO_CARD,
  ),
  Rejection(
    "48",
    textCode: "IPE ICHANGE",
    definition: "ITSO: Too long on interchange",
    helpText: "You took too long to make your interchange.",
    action: Action.TO_TICKET_OFFICE,
  ),
  Rejection(
    "49",
    textCode: "IPE TR TL",
    definition: "ITSO: Too long on tram-rail interchange",
    helpText:
        "You took too long to make your interchange between tram and rail.",
    action: Action.TO_TICKET_OFFICE,
  ),
  Rejection(
    "50",
    textCode: "IPE TR NA",
    definition: "ITSO: Tram-rail interchange not allowed here",
    helpText:
        "Interchanges between tram and rail at this station are not allowed.",
    action: Action.TO_TICKET_OFFICE,
  ),
  Rejection(
    "51",
    textCode: "ALREADY USED",
    definition: "Ticket has already been used",
    helpText:
        "You have already used this ticket. (e.g. you're trying to use a single twice)",
    action: Action.TO_TICKET_OFFICE,
  ),
  Rejection(
    "52",
    textCode: "BLACK PASS",
    definition: "Blacklisted staff pass",
    helpText:
        "This is a lost/stolen staff pass. Return it to a ticket office immediately.",
    action: Action.IRREG_TRAVEL,
  ),
  Rejection(
    "53",
    textCode: "BLACK PERM",
    definition: "Blacklisted travel permit",
    helpText:
        "This is a lost/stolen travel permit. Return it to a ticket office immediately.",
    action: Action.TO_TICKET_OFFICE,
  ),
  Rejection(
    "54",
    textCode: "ENIGMA",
    definition:
        "Valid ticket, but for a journey shorter than that travelled OR Cancelled due to use before start date",
    helpText: "You've travelled further than your ticket is valid for.",
    action: Action.TO_TICKET_OFFICE,
  ),
  Rejection(
    "55",
    textCode: "USED JOURN",
    definition: "Already used",
    helpText: "Your ticket has already been used for travel.",
    action: Action.TO_TICKET_OFFICE,
  ),
  Rejection(
    "56",
    textCode: "OUTOFTERM",
    definition: "Scholar Pass out of term",
    helpText:
        "Your student pass cannot be used outside of school term dates. Please buy a valid ticket.",
    action: Action.TO_TICKET_OFFICE,
  ),
  Rejection(
    "57",
    textCode: "PPT INVLD",
    definition: "Period ticket not valid",
    helpText: "Station not covered by period ticket.",
    action: Action.TO_TICKET_OFFICE,
  ),
  Rejection(
    "58",
    textCode: "ITSO ZONES",
    definition: "ITSO: Insufficient Zones",
    helpText:
        "You haven't got enough zones on your Oyster or Smartcard to begin/complete this journey.",
    action: Action.TO_TICKET_OFFICE,
  ),
  Rejection(
    "60",
    textCode: "ITSO OSI",
    definition: "ITSO: Too long on OSI",
    helpText:
        "Too long at interchange (too long spent changing stations during journey).",
    action: Action.TO_TICKET_OFFICE,
  ),
  Rejection(
    "61",
    textCode: "LONG OSI",
    definition: "Too long at interchange",
    helpText:
        "Too long at interchange (too long spent changing stations during journey).",
    action: Action.TO_TICKET_OFFICE,
  ),
  Rejection(
    "62",
    textCode: "LONG JOURN",
    definition: "Too long on journey",
    helpText: "Too long on journey (too long between journey start and end).",
    action: Action.TO_TICKET_OFFICE,
  ),
  Rejection(
    "63",
    textCode: "LONG PLAT",
    definition: "Too long on platform",
    helpText:
        "Too long on platform (too long spent on platform, with a platform ticket).",
    action: Action.TO_TICKET_OFFICE,
  ),
  Rejection(
    "64",
    textCode: "LONG XCESS",
    definition: "Too long on excess",
    helpText:
        "Too long on excess (too long between journey start and end, for which the excess fee applied).",
    action: Action.TO_TICKET_OFFICE,
  ),
  Rejection(
    "65",
    textCode: "ENT TIM XC",
    definition: "Entry time exceeded",
    helpText: "You haven't passed though the gateline in time for your ticket.",
    action: Action.TO_TICKET_OFFICE,
  ),
  Rejection(
    "67",
    textCode: "CPC DECLINE",
    definition: "Payment card declined",
    helpText: "Contactless payment not approved.",
    action: Action.HELPDESK,
  ),
  Rejection(
    "69",
    textCode: "CPC DECLINE",
    definition: "Payment card declined",
    helpText: "Contactless payment not approved.",
    action: Action.HELPDESK,
  ),
  Rejection(
    "70",
    textCode: "PRSNTN ERR",
    definition: "Unspecified Oyster/Smartcard",
    helpText: "Card not processed correctly.",
    action: Action.TRY_AGAIN_ONE_CARD,
  ),
  Rejection(
    "71",
    textCode: "TOO MANY",
    definition: "Card clash - multiple cards detected",
    helpText:
        "Multiple Oyster cards, Smartcards, or contactless cards detected.",
    action: Action.REPRESENT_ONE_CARD,
  ),
  Rejection(
    "73",
    textCode: "EMERG INV",
    definition: "Emergency not valid here",
    helpText: "Ticket returned for emergency use not valid at this station",
  ),
  Rejection(
    "74",
    textCode: "CARD BLOCK",
    definition: "Payment card is blocked by transport authority",
    helpText: "TfL have blocked this contactless payment card.",
    action: Action.HELPDESK,
  ),
  Rejection(
    "75",
    textCode: "OYST UNSUP",
    definition: "Oyster Card Capability unsupported",
    helpText: "Oyster Cards are not supported at this gateline/station.",
    action: Action.ALTN_PAYMENT,
  ),
  Rejection(
    "76",
    textCode: "PAYC UNSUP",
    definition: "Contactless Payment unsupported",
    helpText:
        "Contactless payments are not supported at this gateline/station.",
    action: Action.ALTN_PAYMENT,
  ),
  Rejection(
    "77",
    textCode: "ITSO UNSUP",
    definition: "ITSO: ITSO Smartcard Capability unsupported",
    helpText: "Smartcards are not supported at this gateline/station.",
    action: Action.ALTN_PAYMENT,
  ),
  Rejection(
    "78",
    textCode: "UNKN PCARD",
    definition: "Unknown Payment Card Type",
    helpText: "Contactless payment card type not recognised.",
    action: Action.ALTN_PAYMENT,
  ),
  Rejection(
    "79",
    textCode: "VAL FAIL",
    definition: "Payment Card Validation failure",
    helpText: "Payment card validation failed.",
    action: Action.ALTN_PAYMENT,
  ),
  Rejection(
    "80",
    textCode: "ISSR BLOCK",
    definition: "Payment Card blocked by issuer",
    helpText:
        "Payment card blocked by issuer. Card likely reported lost/stolen. If you found it, call the number on the back of the card.",
    action: Action.REFER_CARD_ISSUER,
  ),
  Rejection(
    "81",
    textCode: "GROSS OVER",
    definition: "Illogical use of ticker",
    helpText: "",
    action: Action.TO_TICKET_OFFICE,
  ),
  Rejection(
    "82",
    textCode: "INV HIST",
    definition: "Illogical use of ticker",
    helpText: "Invalid journey history.",
    action: Action.TO_TICKET_OFFICE,
  ),
  Rejection(
    "83",
    textCode: "INV TIME",
    definition: "Illogical use of ticker",
    helpText: "Invalid time.",
    action: Action.TO_TICKET_OFFICE,
  ),
  Rejection(
    "84",
    textCode: "INV GEOG",
    definition: "Invalid geography",
    helpText: "",
    action: Action.TO_TICKET_OFFICE,
  ),
  Rejection(
    "85",
    textCode: "PCARD EXPD",
    definition: "Contactless Payment Card expired",
    helpText: "Your payment card has expired.",
    action: Action.ALTN_PAYMENT,
  ),
  Rejection(
    "86",
    textCode: "AID BIN",
    definition: "Payment Card has an invalid AID or BIN",
    helpText: "Invalid payment card.",
    action: Action.ALTN_PAYMENT,
  ),
  Rejection(
    "87",
    textCode: "TXN TIMOUT",
    definition: "Contactless Payment transaction timeout",
    helpText: "Transaction timed out.",
    action: Action.ALTN_PAYMENT,
  ),
  Rejection(
    "88",
    textCode: "WRONG TYPE",
    definition: "Wrong system type",
    helpText: "",
    action: Action.ALTN_PAYMENT,
  ),
  Rejection(
    "89",
    textCode: "CARD TYPE",
    definition: "Unknown Card Type",
    helpText: "Presented card type not recognised.",
    action: Action.ALTN_PAYMENT,
  ),
  Rejection(
    "90",
    textCode: "REJECT MON",
    definition: "Rejecting monitored tickets",
    helpText:
        "Nothings wrong with your ticket. Sometimes ticket types are added to a list of those to be monitored (manually validated). This can often be the case with railcard tickets where a valid railcard and/or photocard should be checked.",
  ),
  Rejection(
    "91",
    textCode: "NOTYET VAL",
    definition: "Contactless Payment Card not yet valid",
    helpText:
        "Contactless payment card isn't valid yet. Use another payment card.",
    action: Action.ALTN_PAYMENT,
  ),
  Rejection(
    "92",
    textCode: "CARD DIR",
    definition: "Card directory corrupt",
    helpText: "Oyster/Smartcard/Payment card corrupted.",
    action: Action.ALTN_PAYMENT,
  ),
  Rejection(
    "93",
    textCode: "CARD CONT",
    definition: "Card contents corrupt",
    helpText: "Oyster/Smartcard/Payment card corrupted.",
    action: Action.ALTN_PAYMENT,
  ),
  Rejection(
    "94",
    textCode: "CARD COMMS",
    definition: "Card read failed",
    helpText:
        "Reading of card failed. Did you remove it before the green light showed?",
    action: Action.TRY_AGAIN_CARD,
  ),
  Rejection(
    "95",
    textCode: "PROC FAIL",
    definition: "Contactless Payment processing failed",
    helpText:
        "Payment might be declined. Use another payment method and contact your bank.",
    action: Action.ALTN_PAYMENT,
  ),
  Rejection(
    "96",
    textCode: "RDR INIT",
    definition: "Card reader initialisation failed",
    helpText: "Try again or use another barrier.",
    action: Action.TRY_AGAIN_CARD,
  ),
  Rejection(
    "97",
    textCode: "REM EARLY",
    definition: "Payment Card removed too early",
    helpText: "You removed your contactless card too early.",
    action: Action.TRY_AGAIN_CARD,
  ),
  Rejection(
    "98",
    textCode: "AUTH REQD",
    definition: "Payment Card needs online authorisation",
    helpText: "Contact your card issuer to learn more information.",
    action: Action.REFER_CARD_ISSUER,
  ),
  Rejection(
    "99",
    textCode: "CHK TIME",
    definition:
        "Payment Card or Magnetic Ticket check/processing time took too long",
    helpText: "Try again or use another gateline.",
    action: Action.TRY_AGAIN,
  ),
  Rejection(
    "100",
    textCode: "DELIVERY",
    definition: "Ticket issued in delivery mode",
    helpText: "Your ticket isn't valid for travel.",
    action: Action.TO_TICKET_OFFICE,
  ),
  Rejection(
    "101",
    textCode: "TECH",
    definition: "Ticket issued in technician mode",
    helpText: "Your ticket isn't valid for travel.",
    action: Action.TO_TICKET_OFFICE,
  ),
  Rejection(
    "102",
    textCode: "TRAINING",
    definition: "Ticket issued in training mode",
    helpText: "Your ticket isn't valid for travel.",
    laymansReason:
        "This ticket was printed by a ticket office, but the machine was in training mode, which is usually used to teach new staff members how to use the system.",
    action: Action.TO_TICKET_OFFICE,
  ),
  Rejection(
    "103",
    textCode: "BAD TDATA",
    definition: "Ticket had invalid data",
    helpText:
        "Your ticket has invalid data. Ask a ticket office for a replacement",
    action: Action.TO_TICKET_OFFICE,
  ),
  Rejection(
    "105",
    textCode: "XX INV",
    definition: "Invalid rail ticket type",
    helpText: "Your ticket type is invalid.",
    laymansReason:
        "It's not you, it's them. The ticket barrier you're using doesn't understand your ticket type. This is fairly common, especially if you're using uncommon tickets such as 'super off-peak' or rovers.",
    action: Action.SEEK_ASSISTANCE,
  ),
  Rejection(
    "106",
    textCode: "XX REJECT",
    definition: "Always to be rejected",
    helpText:
        "Something about your ticket is set to always be rejected by the barriers.",
    action: Action.SEEK_ASSISTANCE,
  ),
  Rejection(
    "107",
    textCode: "XX TTTT",
    definition: "Time restraint applied to this ticket type",
    helpText:
        "You're attempting to pass through the barriers with a time limited ticket.",
    action: Action.TO_TICKET_OFFICE,
  ),
  Rejection(
    "108",
    textCode: "PP TTTT",
    definition: "Time restraint applied to this passenger type",
    helpText:
        "You're attempting to pass through the barriers with a time limited ticket.",
    action: Action.TO_TICKET_OFFICE,
  ),
  Rejection(
    "109",
    textCode: "XX TTTT",
    definition:
        "Time restraint specified by London Underground data on your National Rail ticket",
    helpText:
        "You're attempting to pass through the barriers with a time limited ticket.",
    laymansReason:
        "Some tickets are restricted to certain times of day, such as off-peak. " +
            "Ask at a ticket office for the time restrictions on your ticket.",
    action: Action.TO_TICKET_OFFICE,
  ),
  Rejection(
    "111",
    textCode: "XX ZONES",
    definition: "National Rail ticket not valid in this zone",
    helpText:
        "Your ticket is not valid in your current zone. Buy a new ticket at the ticket office.",
    laymansReason:
        "Some London tickets are limited to specific zones (e.g. 1-3, 1-6, or 1-9). " +
            "Are you trying to pass through the barriers outside one of these zones?",
    action: Action.TO_TICKET_OFFICE,
  ),
  Rejection(
    "112",
    textCode: "XX DDMMYY",
    definition: "Single/return ticket not valid until date shown",
    helpText:
        "Your ticket is not valid yet. Buy a new ticket at the ticket office.",
    action: Action.TO_TICKET_OFFICE,
  ),
  Rejection(
    "113",
    textCode: "XX DDMMYY",
    definition: "Single/return ticket not valid after date shown",
    helpText:
        "Your season/rover ticket has expired. Check the date on your ticket and/or buy a new one at a ticket office.",
    action: Action.TO_TICKET_OFFICE,
  ),
  Rejection(
    "114",
    textCode: "XX DDMMYY",
    definition: "Season/rover ticket not valid until date shown",
    helpText:
        "Your season/rover ticket is not valid yet. Check the date on your ticket and/or buy a new one at a ticket office.",
    action: Action.TO_TICKET_OFFICE,
  ),
  Rejection(
    "115",
    textCode: "XX DDMMYY",
    definition: "Season/rover ticket not valid after date shown",
    helpText:
        "Your season/rover ticket has expired. Check the date on your ticket and/or buy a new one at a ticket office.",
    action: Action.TO_TICKET_OFFICE,
  ),
  Rejection(
    "116",
    textCode: "XX OOOO",
    definition:
        "Station not listed for entry/exit with this National Rail ticket",
    helpText: "Your ticket cannot be used for travel to/from this station.",
    action: Action.TO_TICKET_OFFICE,
  ),
  Rejection(
    "117",
    textCode: "XX DDMMYY",
    definition: "National Rail ticket ceased to be valid after date shown",
    helpText:
        "Your ticket cannot be used for travel anymore. Please buy a new ticket.",
    action: Action.TO_TICKET_OFFICE,
  ),
  Rejection(
    "118",
    textCode: "XX DDMMYY",
    definition: "National Rail ticket is not valid until date shown",
    helpText:
        "Your ticket cannot be used for travel yet. Please buy another ticket.",
    action: Action.TO_TICKET_OFFICE,
  ),
  Rejection(
    "119",
    textCode: "XX DDMMYY",
    definition: "National Rail pass is not valid until date shown",
    helpText: "Your pass cannot be used for travel yet.",
    action: Action.TO_TICKET_OFFICE,
  ),
  Rejection(
    "120",
    textCode: "XX DDMMYY",
    definition: "National Rail pass expired on date shown",
    helpText: "Your pass cannot be used for travel anymore: it has expired.",
    action: Action.TO_TICKET_OFFICE,
  ),
  Rejection(
    "121",
    textCode: "XX PZ",
    definition: "National Rail pass is not valid here",
    helpText: "Your pass cannot be used at this station or zone.",
    action: Action.TO_TICKET_OFFICE,
  ),
  Rejection(
    "122",
    textCode: "XX YY",
    definition: "London Underground ticket not valid here",
    helpText:
        "Your London Underground ticket cannot be used to travel on National Rail services.",
    action: Action.TO_TICKET_OFFICE,
  ),
  Rejection(
    "123",
    textCode: "XX ROUTE",
    definition: "National Rail ticket prohibits travel via this station",
    helpText:
        "Travel via this station isn't allowed with your ticket. Check your ticket for a URL to see the restrictions for travel.",
    action: Action.TO_TICKET_OFFICE,
  ),
  Rejection(
    "124",
    textCode: "PP PASNGR",
    definition: "National Rail",
    helpText:
        "Your London Underground ticket cannot be used to travel on National Rail services.",
    action: Action.TO_TICKET_OFFICE,
  ),
  Rejection(
    "125",
    textCode: "XX DDDD",
    definition: "National Rail ticket cannot be used to exit here",
    helpText:
        "The destination on your ticket doesn't match your current station.",
    action: Action.TO_TICKET_OFFICE,
  ),
  Rejection(
    "126",
    textCode: "XX OOOO",
    definition: "National Rail ticket cannot be used to enter here",
    helpText: "The origin on your ticket doesn't match your current station.",
    action: Action.TO_TICKET_OFFICE,
  ),
  Rejection(
    "127",
    textCode: "XX DDMMYY",
    definition: "National Rail ticket not valid today",
    helpText: "The date on your ticket doesn't match today's date.",
    action: Action.TO_TICKET_OFFICE,
  ),
  Rejection(
    "128",
    textCode: "XX LLLL",
    definition: "Ticket valid at London Underground stations only",
    helpText: "Your ticket can only be used at London Underground stations.",
    action: Action.SEEK_ASSISTANCE,
  ),
  Rejection(
    "129",
    textCode: "XX",
    definition: "National Rail ticket wrong direction",
    helpText:
        "Your ticket isn't valid for travel in this direction. Are you using the wrong set of barriers?",
    action: Action.SEEK_ASSISTANCE,
  ),
  Rejection(
    "130",
    textCode: "XX SSSS",
    definition: "Ticket valid at London Underground stations only",
    helpText:
        "Your ticket can only be used at London Underground stations. (Meaning of SSSS is unknown.)",
    action: Action.SEEK_ASSISTANCE,
  ),
  Rejection(
    "131",
    textCode: "XX FFFF",
    definition: "National Rail ticket has insufficient fare",
    helpText:
        "Meaning unknown. Maybe travelled too far, with an off-peak ticket during peak, or a fake ticket?",
    action: Action.SEEK_ASSISTANCE,
  ),
  Rejection(
    "132",
    textCode: "XX",
    definition: "London Underground route",
    helpText: "Meaning unknown.",
    action: Action.SEEK_ASSISTANCE,
  ),
  Rejection(
    "133",
    textCode: "XX TTTT",
    definition: "Ticket pass-back prevention",
    helpText:
        "This ticket was just used in this direction. Are you being naughty?",
    action: Action.IRREG_TRAVEL,
  ),
  Rejection(
    "134",
    textCode: "XX DDMMYY",
    definition: "Expired ticket",
    helpText: "Your ticket has expired.",
    action: Action.TO_TICKET_OFFICE,
  ),
  Rejection(
    "135",
    textCode: "XX RR",
    definition: "National Rail ticket/smartcard special rules",
    helpText: "Meaning unknown. Maybe rejecting ceratin ticket types?",
    action: Action.SEEK_ASSISTANCE,
  ),
  Rejection(
    "136",
    textCode: "XX TTTT",
    definition: "National Rail ticket direction of travel time restriction",
    helpText:
        "You can't travel with this ticket type in this direction at this time. Are you trying to use a railcard discounted ticket during peak?",
    action: Action.TO_TICKET_OFFICE,
  ),
  Rejection(
    "137",
    textCode: "XX TTTT",
    definition:
        "National Rail passenger type direction of travel time restriction",
    helpText:
        "You can't travel with this ticket type in this direction at this time. Are you trying to use a railcard discounted ticket during peak?",
    action: Action.TO_TICKET_OFFICE,
  ),
];
