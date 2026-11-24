say 'hi'
::routine r1
  use arg a, b
  if a > b then x = a + 1 * (b - 1)
  else do; y = 'str1' || b; call r1 y, a; end
  return x~length + .array~of(a, b)~items
::routine r2
  use arg a, b
  if a > b then x = a + 2 * (b - 1)
  else do; y = 'str2' || b; call r1 y, a; end
  return x~length + .array~of(a, b)~items
::routine r3
  use arg a, b
  if a > b then x = a + 3 * (b - 1)
  else do; y = 'str3' || b; call r2 y, a; end
  return x~length + .array~of(a, b)~items
::routine r4
  use arg a, b
  if a > b then x = a + 4 * (b - 1)
  else do; y = 'str4' || b; call r3 y, a; end
  return x~length + .array~of(a, b)~items
::routine r5
  use arg a, b
  if a > b then x = a + 5 * (b - 1)
  else do; y = 'str5' || b; call r4 y, a; end
  return x~length + .array~of(a, b)~items
::routine r6
  use arg a, b
  if a > b then x = a + 6 * (b - 1)
  else do; y = 'str6' || b; call r5 y, a; end
  return x~length + .array~of(a, b)~items
::routine r7
  use arg a, b
  if a > b then x = a + 7 * (b - 1)
  else do; y = 'str7' || b; call r6 y, a; end
  return x~length + .array~of(a, b)~items
::routine r8
  use arg a, b
  if a > b then x = a + 8 * (b - 1)
  else do; y = 'str8' || b; call r7 y, a; end
  return x~length + .array~of(a, b)~items
::routine r9
  use arg a, b
  if a > b then x = a + 9 * (b - 1)
  else do; y = 'str9' || b; call r8 y, a; end
  return x~length + .array~of(a, b)~items
::routine r10
  use arg a, b
  if a > b then x = a + 10 * (b - 1)
  else do; y = 'str10' || b; call r9 y, a; end
  return x~length + .array~of(a, b)~items
::routine r11
  use arg a, b
  if a > b then x = a + 11 * (b - 1)
  else do; y = 'str11' || b; call r10 y, a; end
  return x~length + .array~of(a, b)~items
::routine r12
  use arg a, b
  if a > b then x = a + 12 * (b - 1)
  else do; y = 'str12' || b; call r11 y, a; end
  return x~length + .array~of(a, b)~items
::routine r13
  use arg a, b
  if a > b then x = a + 13 * (b - 1)
  else do; y = 'str13' || b; call r12 y, a; end
  return x~length + .array~of(a, b)~items
::routine r14
  use arg a, b
  if a > b then x = a + 14 * (b - 1)
  else do; y = 'str14' || b; call r13 y, a; end
  return x~length + .array~of(a, b)~items
::routine r15
  use arg a, b
  if a > b then x = a + 15 * (b - 1)
  else do; y = 'str15' || b; call r14 y, a; end
  return x~length + .array~of(a, b)~items
::routine r16
  use arg a, b
  if a > b then x = a + 16 * (b - 1)
  else do; y = 'str16' || b; call r15 y, a; end
  return x~length + .array~of(a, b)~items
::routine r17
  use arg a, b
  if a > b then x = a + 17 * (b - 1)
  else do; y = 'str17' || b; call r16 y, a; end
  return x~length + .array~of(a, b)~items
::routine r18
  use arg a, b
  if a > b then x = a + 18 * (b - 1)
  else do; y = 'str18' || b; call r17 y, a; end
  return x~length + .array~of(a, b)~items
::routine r19
  use arg a, b
  if a > b then x = a + 19 * (b - 1)
  else do; y = 'str19' || b; call r18 y, a; end
  return x~length + .array~of(a, b)~items
::routine r20
  use arg a, b
  if a > b then x = a + 20 * (b - 1)
  else do; y = 'str20' || b; call r19 y, a; end
  return x~length + .array~of(a, b)~items
::routine r21
  use arg a, b
  if a > b then x = a + 21 * (b - 1)
  else do; y = 'str21' || b; call r20 y, a; end
  return x~length + .array~of(a, b)~items
::routine r22
  use arg a, b
  if a > b then x = a + 22 * (b - 1)
  else do; y = 'str22' || b; call r21 y, a; end
  return x~length + .array~of(a, b)~items
::routine r23
  use arg a, b
  if a > b then x = a + 23 * (b - 1)
  else do; y = 'str23' || b; call r22 y, a; end
  return x~length + .array~of(a, b)~items
::routine r24
  use arg a, b
  if a > b then x = a + 24 * (b - 1)
  else do; y = 'str24' || b; call r23 y, a; end
  return x~length + .array~of(a, b)~items
::routine r25
  use arg a, b
  if a > b then x = a + 25 * (b - 1)
  else do; y = 'str25' || b; call r24 y, a; end
  return x~length + .array~of(a, b)~items
::routine r26
  use arg a, b
  if a > b then x = a + 26 * (b - 1)
  else do; y = 'str26' || b; call r25 y, a; end
  return x~length + .array~of(a, b)~items
::routine r27
  use arg a, b
  if a > b then x = a + 27 * (b - 1)
  else do; y = 'str27' || b; call r26 y, a; end
  return x~length + .array~of(a, b)~items
::routine r28
  use arg a, b
  if a > b then x = a + 28 * (b - 1)
  else do; y = 'str28' || b; call r27 y, a; end
  return x~length + .array~of(a, b)~items
::routine r29
  use arg a, b
  if a > b then x = a + 29 * (b - 1)
  else do; y = 'str29' || b; call r28 y, a; end
  return x~length + .array~of(a, b)~items
::routine r30
  use arg a, b
  if a > b then x = a + 30 * (b - 1)
  else do; y = 'str30' || b; call r29 y, a; end
  return x~length + .array~of(a, b)~items
::routine r31
  use arg a, b
  if a > b then x = a + 31 * (b - 1)
  else do; y = 'str31' || b; call r30 y, a; end
  return x~length + .array~of(a, b)~items
::routine r32
  use arg a, b
  if a > b then x = a + 32 * (b - 1)
  else do; y = 'str32' || b; call r31 y, a; end
  return x~length + .array~of(a, b)~items
::routine r33
  use arg a, b
  if a > b then x = a + 33 * (b - 1)
  else do; y = 'str33' || b; call r32 y, a; end
  return x~length + .array~of(a, b)~items
::routine r34
  use arg a, b
  if a > b then x = a + 34 * (b - 1)
  else do; y = 'str34' || b; call r33 y, a; end
  return x~length + .array~of(a, b)~items
::routine r35
  use arg a, b
  if a > b then x = a + 35 * (b - 1)
  else do; y = 'str35' || b; call r34 y, a; end
  return x~length + .array~of(a, b)~items
::routine r36
  use arg a, b
  if a > b then x = a + 36 * (b - 1)
  else do; y = 'str36' || b; call r35 y, a; end
  return x~length + .array~of(a, b)~items
::routine r37
  use arg a, b
  if a > b then x = a + 37 * (b - 1)
  else do; y = 'str37' || b; call r36 y, a; end
  return x~length + .array~of(a, b)~items
::routine r38
  use arg a, b
  if a > b then x = a + 38 * (b - 1)
  else do; y = 'str38' || b; call r37 y, a; end
  return x~length + .array~of(a, b)~items
::routine r39
  use arg a, b
  if a > b then x = a + 39 * (b - 1)
  else do; y = 'str39' || b; call r38 y, a; end
  return x~length + .array~of(a, b)~items
::routine r40
  use arg a, b
  if a > b then x = a + 40 * (b - 1)
  else do; y = 'str40' || b; call r39 y, a; end
  return x~length + .array~of(a, b)~items
::routine r41
  use arg a, b
  if a > b then x = a + 41 * (b - 1)
  else do; y = 'str41' || b; call r40 y, a; end
  return x~length + .array~of(a, b)~items
::routine r42
  use arg a, b
  if a > b then x = a + 42 * (b - 1)
  else do; y = 'str42' || b; call r41 y, a; end
  return x~length + .array~of(a, b)~items
::routine r43
  use arg a, b
  if a > b then x = a + 43 * (b - 1)
  else do; y = 'str43' || b; call r42 y, a; end
  return x~length + .array~of(a, b)~items
::routine r44
  use arg a, b
  if a > b then x = a + 44 * (b - 1)
  else do; y = 'str44' || b; call r43 y, a; end
  return x~length + .array~of(a, b)~items
::routine r45
  use arg a, b
  if a > b then x = a + 45 * (b - 1)
  else do; y = 'str45' || b; call r44 y, a; end
  return x~length + .array~of(a, b)~items
::routine r46
  use arg a, b
  if a > b then x = a + 46 * (b - 1)
  else do; y = 'str46' || b; call r45 y, a; end
  return x~length + .array~of(a, b)~items
::routine r47
  use arg a, b
  if a > b then x = a + 47 * (b - 1)
  else do; y = 'str47' || b; call r46 y, a; end
  return x~length + .array~of(a, b)~items
::routine r48
  use arg a, b
  if a > b then x = a + 48 * (b - 1)
  else do; y = 'str48' || b; call r47 y, a; end
  return x~length + .array~of(a, b)~items
::routine r49
  use arg a, b
  if a > b then x = a + 49 * (b - 1)
  else do; y = 'str49' || b; call r48 y, a; end
  return x~length + .array~of(a, b)~items
::routine r50
  use arg a, b
  if a > b then x = a + 50 * (b - 1)
  else do; y = 'str50' || b; call r49 y, a; end
  return x~length + .array~of(a, b)~items
::routine r51
  use arg a, b
  if a > b then x = a + 51 * (b - 1)
  else do; y = 'str51' || b; call r50 y, a; end
  return x~length + .array~of(a, b)~items
::routine r52
  use arg a, b
  if a > b then x = a + 52 * (b - 1)
  else do; y = 'str52' || b; call r51 y, a; end
  return x~length + .array~of(a, b)~items
::routine r53
  use arg a, b
  if a > b then x = a + 53 * (b - 1)
  else do; y = 'str53' || b; call r52 y, a; end
  return x~length + .array~of(a, b)~items
::routine r54
  use arg a, b
  if a > b then x = a + 54 * (b - 1)
  else do; y = 'str54' || b; call r53 y, a; end
  return x~length + .array~of(a, b)~items
::routine r55
  use arg a, b
  if a > b then x = a + 55 * (b - 1)
  else do; y = 'str55' || b; call r54 y, a; end
  return x~length + .array~of(a, b)~items
::routine r56
  use arg a, b
  if a > b then x = a + 56 * (b - 1)
  else do; y = 'str56' || b; call r55 y, a; end
  return x~length + .array~of(a, b)~items
::routine r57
  use arg a, b
  if a > b then x = a + 57 * (b - 1)
  else do; y = 'str57' || b; call r56 y, a; end
  return x~length + .array~of(a, b)~items
::routine r58
  use arg a, b
  if a > b then x = a + 58 * (b - 1)
  else do; y = 'str58' || b; call r57 y, a; end
  return x~length + .array~of(a, b)~items
::routine r59
  use arg a, b
  if a > b then x = a + 59 * (b - 1)
  else do; y = 'str59' || b; call r58 y, a; end
  return x~length + .array~of(a, b)~items
::routine r60
  use arg a, b
  if a > b then x = a + 60 * (b - 1)
  else do; y = 'str60' || b; call r59 y, a; end
  return x~length + .array~of(a, b)~items
::routine r61
  use arg a, b
  if a > b then x = a + 61 * (b - 1)
  else do; y = 'str61' || b; call r60 y, a; end
  return x~length + .array~of(a, b)~items
::routine r62
  use arg a, b
  if a > b then x = a + 62 * (b - 1)
  else do; y = 'str62' || b; call r61 y, a; end
  return x~length + .array~of(a, b)~items
::routine r63
  use arg a, b
  if a > b then x = a + 63 * (b - 1)
  else do; y = 'str63' || b; call r62 y, a; end
  return x~length + .array~of(a, b)~items
::routine r64
  use arg a, b
  if a > b then x = a + 64 * (b - 1)
  else do; y = 'str64' || b; call r63 y, a; end
  return x~length + .array~of(a, b)~items
::routine r65
  use arg a, b
  if a > b then x = a + 65 * (b - 1)
  else do; y = 'str65' || b; call r64 y, a; end
  return x~length + .array~of(a, b)~items
::routine r66
  use arg a, b
  if a > b then x = a + 66 * (b - 1)
  else do; y = 'str66' || b; call r65 y, a; end
  return x~length + .array~of(a, b)~items
::routine r67
  use arg a, b
  if a > b then x = a + 67 * (b - 1)
  else do; y = 'str67' || b; call r66 y, a; end
  return x~length + .array~of(a, b)~items
::routine r68
  use arg a, b
  if a > b then x = a + 68 * (b - 1)
  else do; y = 'str68' || b; call r67 y, a; end
  return x~length + .array~of(a, b)~items
::routine r69
  use arg a, b
  if a > b then x = a + 69 * (b - 1)
  else do; y = 'str69' || b; call r68 y, a; end
  return x~length + .array~of(a, b)~items
::routine r70
  use arg a, b
  if a > b then x = a + 70 * (b - 1)
  else do; y = 'str70' || b; call r69 y, a; end
  return x~length + .array~of(a, b)~items
::routine r71
  use arg a, b
  if a > b then x = a + 71 * (b - 1)
  else do; y = 'str71' || b; call r70 y, a; end
  return x~length + .array~of(a, b)~items
::routine r72
  use arg a, b
  if a > b then x = a + 72 * (b - 1)
  else do; y = 'str72' || b; call r71 y, a; end
  return x~length + .array~of(a, b)~items
::routine r73
  use arg a, b
  if a > b then x = a + 73 * (b - 1)
  else do; y = 'str73' || b; call r72 y, a; end
  return x~length + .array~of(a, b)~items
::routine r74
  use arg a, b
  if a > b then x = a + 74 * (b - 1)
  else do; y = 'str74' || b; call r73 y, a; end
  return x~length + .array~of(a, b)~items
::routine r75
  use arg a, b
  if a > b then x = a + 75 * (b - 1)
  else do; y = 'str75' || b; call r74 y, a; end
  return x~length + .array~of(a, b)~items
::routine r76
  use arg a, b
  if a > b then x = a + 76 * (b - 1)
  else do; y = 'str76' || b; call r75 y, a; end
  return x~length + .array~of(a, b)~items
::routine r77
  use arg a, b
  if a > b then x = a + 77 * (b - 1)
  else do; y = 'str77' || b; call r76 y, a; end
  return x~length + .array~of(a, b)~items
::routine r78
  use arg a, b
  if a > b then x = a + 78 * (b - 1)
  else do; y = 'str78' || b; call r77 y, a; end
  return x~length + .array~of(a, b)~items
::routine r79
  use arg a, b
  if a > b then x = a + 79 * (b - 1)
  else do; y = 'str79' || b; call r78 y, a; end
  return x~length + .array~of(a, b)~items
::routine r80
  use arg a, b
  if a > b then x = a + 80 * (b - 1)
  else do; y = 'str80' || b; call r79 y, a; end
  return x~length + .array~of(a, b)~items
::routine r81
  use arg a, b
  if a > b then x = a + 81 * (b - 1)
  else do; y = 'str81' || b; call r80 y, a; end
  return x~length + .array~of(a, b)~items
::routine r82
  use arg a, b
  if a > b then x = a + 82 * (b - 1)
  else do; y = 'str82' || b; call r81 y, a; end
  return x~length + .array~of(a, b)~items
::routine r83
  use arg a, b
  if a > b then x = a + 83 * (b - 1)
  else do; y = 'str83' || b; call r82 y, a; end
  return x~length + .array~of(a, b)~items
::routine r84
  use arg a, b
  if a > b then x = a + 84 * (b - 1)
  else do; y = 'str84' || b; call r83 y, a; end
  return x~length + .array~of(a, b)~items
::routine r85
  use arg a, b
  if a > b then x = a + 85 * (b - 1)
  else do; y = 'str85' || b; call r84 y, a; end
  return x~length + .array~of(a, b)~items
::routine r86
  use arg a, b
  if a > b then x = a + 86 * (b - 1)
  else do; y = 'str86' || b; call r85 y, a; end
  return x~length + .array~of(a, b)~items
::routine r87
  use arg a, b
  if a > b then x = a + 87 * (b - 1)
  else do; y = 'str87' || b; call r86 y, a; end
  return x~length + .array~of(a, b)~items
::routine r88
  use arg a, b
  if a > b then x = a + 88 * (b - 1)
  else do; y = 'str88' || b; call r87 y, a; end
  return x~length + .array~of(a, b)~items
::routine r89
  use arg a, b
  if a > b then x = a + 89 * (b - 1)
  else do; y = 'str89' || b; call r88 y, a; end
  return x~length + .array~of(a, b)~items
::routine r90
  use arg a, b
  if a > b then x = a + 90 * (b - 1)
  else do; y = 'str90' || b; call r89 y, a; end
  return x~length + .array~of(a, b)~items
::routine r91
  use arg a, b
  if a > b then x = a + 91 * (b - 1)
  else do; y = 'str91' || b; call r90 y, a; end
  return x~length + .array~of(a, b)~items
::routine r92
  use arg a, b
  if a > b then x = a + 92 * (b - 1)
  else do; y = 'str92' || b; call r91 y, a; end
  return x~length + .array~of(a, b)~items
::routine r93
  use arg a, b
  if a > b then x = a + 93 * (b - 1)
  else do; y = 'str93' || b; call r92 y, a; end
  return x~length + .array~of(a, b)~items
::routine r94
  use arg a, b
  if a > b then x = a + 94 * (b - 1)
  else do; y = 'str94' || b; call r93 y, a; end
  return x~length + .array~of(a, b)~items
::routine r95
  use arg a, b
  if a > b then x = a + 95 * (b - 1)
  else do; y = 'str95' || b; call r94 y, a; end
  return x~length + .array~of(a, b)~items
::routine r96
  use arg a, b
  if a > b then x = a + 96 * (b - 1)
  else do; y = 'str96' || b; call r95 y, a; end
  return x~length + .array~of(a, b)~items
::routine r97
  use arg a, b
  if a > b then x = a + 97 * (b - 1)
  else do; y = 'str97' || b; call r96 y, a; end
  return x~length + .array~of(a, b)~items
::routine r98
  use arg a, b
  if a > b then x = a + 98 * (b - 1)
  else do; y = 'str98' || b; call r97 y, a; end
  return x~length + .array~of(a, b)~items
::routine r99
  use arg a, b
  if a > b then x = a + 99 * (b - 1)
  else do; y = 'str99' || b; call r98 y, a; end
  return x~length + .array~of(a, b)~items
::routine r100
  use arg a, b
  if a > b then x = a + 100 * (b - 1)
  else do; y = 'str100' || b; call r99 y, a; end
  return x~length + .array~of(a, b)~items
::routine r101
  use arg a, b
  if a > b then x = a + 101 * (b - 1)
  else do; y = 'str101' || b; call r100 y, a; end
  return x~length + .array~of(a, b)~items
::routine r102
  use arg a, b
  if a > b then x = a + 102 * (b - 1)
  else do; y = 'str102' || b; call r101 y, a; end
  return x~length + .array~of(a, b)~items
::routine r103
  use arg a, b
  if a > b then x = a + 103 * (b - 1)
  else do; y = 'str103' || b; call r102 y, a; end
  return x~length + .array~of(a, b)~items
::routine r104
  use arg a, b
  if a > b then x = a + 104 * (b - 1)
  else do; y = 'str104' || b; call r103 y, a; end
  return x~length + .array~of(a, b)~items
::routine r105
  use arg a, b
  if a > b then x = a + 105 * (b - 1)
  else do; y = 'str105' || b; call r104 y, a; end
  return x~length + .array~of(a, b)~items
::routine r106
  use arg a, b
  if a > b then x = a + 106 * (b - 1)
  else do; y = 'str106' || b; call r105 y, a; end
  return x~length + .array~of(a, b)~items
::routine r107
  use arg a, b
  if a > b then x = a + 107 * (b - 1)
  else do; y = 'str107' || b; call r106 y, a; end
  return x~length + .array~of(a, b)~items
::routine r108
  use arg a, b
  if a > b then x = a + 108 * (b - 1)
  else do; y = 'str108' || b; call r107 y, a; end
  return x~length + .array~of(a, b)~items
::routine r109
  use arg a, b
  if a > b then x = a + 109 * (b - 1)
  else do; y = 'str109' || b; call r108 y, a; end
  return x~length + .array~of(a, b)~items
::routine r110
  use arg a, b
  if a > b then x = a + 110 * (b - 1)
  else do; y = 'str110' || b; call r109 y, a; end
  return x~length + .array~of(a, b)~items
::routine r111
  use arg a, b
  if a > b then x = a + 111 * (b - 1)
  else do; y = 'str111' || b; call r110 y, a; end
  return x~length + .array~of(a, b)~items
::routine r112
  use arg a, b
  if a > b then x = a + 112 * (b - 1)
  else do; y = 'str112' || b; call r111 y, a; end
  return x~length + .array~of(a, b)~items
::routine r113
  use arg a, b
  if a > b then x = a + 113 * (b - 1)
  else do; y = 'str113' || b; call r112 y, a; end
  return x~length + .array~of(a, b)~items
::routine r114
  use arg a, b
  if a > b then x = a + 114 * (b - 1)
  else do; y = 'str114' || b; call r113 y, a; end
  return x~length + .array~of(a, b)~items
::routine r115
  use arg a, b
  if a > b then x = a + 115 * (b - 1)
  else do; y = 'str115' || b; call r114 y, a; end
  return x~length + .array~of(a, b)~items
::routine r116
  use arg a, b
  if a > b then x = a + 116 * (b - 1)
  else do; y = 'str116' || b; call r115 y, a; end
  return x~length + .array~of(a, b)~items
::routine r117
  use arg a, b
  if a > b then x = a + 117 * (b - 1)
  else do; y = 'str117' || b; call r116 y, a; end
  return x~length + .array~of(a, b)~items
::routine r118
  use arg a, b
  if a > b then x = a + 118 * (b - 1)
  else do; y = 'str118' || b; call r117 y, a; end
  return x~length + .array~of(a, b)~items
::routine r119
  use arg a, b
  if a > b then x = a + 119 * (b - 1)
  else do; y = 'str119' || b; call r118 y, a; end
  return x~length + .array~of(a, b)~items
::routine r120
  use arg a, b
  if a > b then x = a + 120 * (b - 1)
  else do; y = 'str120' || b; call r119 y, a; end
  return x~length + .array~of(a, b)~items
::routine r121
  use arg a, b
  if a > b then x = a + 121 * (b - 1)
  else do; y = 'str121' || b; call r120 y, a; end
  return x~length + .array~of(a, b)~items
::routine r122
  use arg a, b
  if a > b then x = a + 122 * (b - 1)
  else do; y = 'str122' || b; call r121 y, a; end
  return x~length + .array~of(a, b)~items
::routine r123
  use arg a, b
  if a > b then x = a + 123 * (b - 1)
  else do; y = 'str123' || b; call r122 y, a; end
  return x~length + .array~of(a, b)~items
::routine r124
  use arg a, b
  if a > b then x = a + 124 * (b - 1)
  else do; y = 'str124' || b; call r123 y, a; end
  return x~length + .array~of(a, b)~items
::routine r125
  use arg a, b
  if a > b then x = a + 125 * (b - 1)
  else do; y = 'str125' || b; call r124 y, a; end
  return x~length + .array~of(a, b)~items
::routine r126
  use arg a, b
  if a > b then x = a + 126 * (b - 1)
  else do; y = 'str126' || b; call r125 y, a; end
  return x~length + .array~of(a, b)~items
::routine r127
  use arg a, b
  if a > b then x = a + 127 * (b - 1)
  else do; y = 'str127' || b; call r126 y, a; end
  return x~length + .array~of(a, b)~items
::routine r128
  use arg a, b
  if a > b then x = a + 128 * (b - 1)
  else do; y = 'str128' || b; call r127 y, a; end
  return x~length + .array~of(a, b)~items
::routine r129
  use arg a, b
  if a > b then x = a + 129 * (b - 1)
  else do; y = 'str129' || b; call r128 y, a; end
  return x~length + .array~of(a, b)~items
::routine r130
  use arg a, b
  if a > b then x = a + 130 * (b - 1)
  else do; y = 'str130' || b; call r129 y, a; end
  return x~length + .array~of(a, b)~items
::routine r131
  use arg a, b
  if a > b then x = a + 131 * (b - 1)
  else do; y = 'str131' || b; call r130 y, a; end
  return x~length + .array~of(a, b)~items
::routine r132
  use arg a, b
  if a > b then x = a + 132 * (b - 1)
  else do; y = 'str132' || b; call r131 y, a; end
  return x~length + .array~of(a, b)~items
::routine r133
  use arg a, b
  if a > b then x = a + 133 * (b - 1)
  else do; y = 'str133' || b; call r132 y, a; end
  return x~length + .array~of(a, b)~items
::routine r134
  use arg a, b
  if a > b then x = a + 134 * (b - 1)
  else do; y = 'str134' || b; call r133 y, a; end
  return x~length + .array~of(a, b)~items
::routine r135
  use arg a, b
  if a > b then x = a + 135 * (b - 1)
  else do; y = 'str135' || b; call r134 y, a; end
  return x~length + .array~of(a, b)~items
::routine r136
  use arg a, b
  if a > b then x = a + 136 * (b - 1)
  else do; y = 'str136' || b; call r135 y, a; end
  return x~length + .array~of(a, b)~items
::routine r137
  use arg a, b
  if a > b then x = a + 137 * (b - 1)
  else do; y = 'str137' || b; call r136 y, a; end
  return x~length + .array~of(a, b)~items
::routine r138
  use arg a, b
  if a > b then x = a + 138 * (b - 1)
  else do; y = 'str138' || b; call r137 y, a; end
  return x~length + .array~of(a, b)~items
::routine r139
  use arg a, b
  if a > b then x = a + 139 * (b - 1)
  else do; y = 'str139' || b; call r138 y, a; end
  return x~length + .array~of(a, b)~items
::routine r140
  use arg a, b
  if a > b then x = a + 140 * (b - 1)
  else do; y = 'str140' || b; call r139 y, a; end
  return x~length + .array~of(a, b)~items
::routine r141
  use arg a, b
  if a > b then x = a + 141 * (b - 1)
  else do; y = 'str141' || b; call r140 y, a; end
  return x~length + .array~of(a, b)~items
::routine r142
  use arg a, b
  if a > b then x = a + 142 * (b - 1)
  else do; y = 'str142' || b; call r141 y, a; end
  return x~length + .array~of(a, b)~items
::routine r143
  use arg a, b
  if a > b then x = a + 143 * (b - 1)
  else do; y = 'str143' || b; call r142 y, a; end
  return x~length + .array~of(a, b)~items
::routine r144
  use arg a, b
  if a > b then x = a + 144 * (b - 1)
  else do; y = 'str144' || b; call r143 y, a; end
  return x~length + .array~of(a, b)~items
::routine r145
  use arg a, b
  if a > b then x = a + 145 * (b - 1)
  else do; y = 'str145' || b; call r144 y, a; end
  return x~length + .array~of(a, b)~items
::routine r146
  use arg a, b
  if a > b then x = a + 146 * (b - 1)
  else do; y = 'str146' || b; call r145 y, a; end
  return x~length + .array~of(a, b)~items
::routine r147
  use arg a, b
  if a > b then x = a + 147 * (b - 1)
  else do; y = 'str147' || b; call r146 y, a; end
  return x~length + .array~of(a, b)~items
::routine r148
  use arg a, b
  if a > b then x = a + 148 * (b - 1)
  else do; y = 'str148' || b; call r147 y, a; end
  return x~length + .array~of(a, b)~items
::routine r149
  use arg a, b
  if a > b then x = a + 149 * (b - 1)
  else do; y = 'str149' || b; call r148 y, a; end
  return x~length + .array~of(a, b)~items
::routine r150
  use arg a, b
  if a > b then x = a + 150 * (b - 1)
  else do; y = 'str150' || b; call r149 y, a; end
  return x~length + .array~of(a, b)~items
::routine r151
  use arg a, b
  if a > b then x = a + 151 * (b - 1)
  else do; y = 'str151' || b; call r150 y, a; end
  return x~length + .array~of(a, b)~items
::routine r152
  use arg a, b
  if a > b then x = a + 152 * (b - 1)
  else do; y = 'str152' || b; call r151 y, a; end
  return x~length + .array~of(a, b)~items
::routine r153
  use arg a, b
  if a > b then x = a + 153 * (b - 1)
  else do; y = 'str153' || b; call r152 y, a; end
  return x~length + .array~of(a, b)~items
::routine r154
  use arg a, b
  if a > b then x = a + 154 * (b - 1)
  else do; y = 'str154' || b; call r153 y, a; end
  return x~length + .array~of(a, b)~items
::routine r155
  use arg a, b
  if a > b then x = a + 155 * (b - 1)
  else do; y = 'str155' || b; call r154 y, a; end
  return x~length + .array~of(a, b)~items
::routine r156
  use arg a, b
  if a > b then x = a + 156 * (b - 1)
  else do; y = 'str156' || b; call r155 y, a; end
  return x~length + .array~of(a, b)~items
::routine r157
  use arg a, b
  if a > b then x = a + 157 * (b - 1)
  else do; y = 'str157' || b; call r156 y, a; end
  return x~length + .array~of(a, b)~items
::routine r158
  use arg a, b
  if a > b then x = a + 158 * (b - 1)
  else do; y = 'str158' || b; call r157 y, a; end
  return x~length + .array~of(a, b)~items
::routine r159
  use arg a, b
  if a > b then x = a + 159 * (b - 1)
  else do; y = 'str159' || b; call r158 y, a; end
  return x~length + .array~of(a, b)~items
::routine r160
  use arg a, b
  if a > b then x = a + 160 * (b - 1)
  else do; y = 'str160' || b; call r159 y, a; end
  return x~length + .array~of(a, b)~items
::routine r161
  use arg a, b
  if a > b then x = a + 161 * (b - 1)
  else do; y = 'str161' || b; call r160 y, a; end
  return x~length + .array~of(a, b)~items
::routine r162
  use arg a, b
  if a > b then x = a + 162 * (b - 1)
  else do; y = 'str162' || b; call r161 y, a; end
  return x~length + .array~of(a, b)~items
::routine r163
  use arg a, b
  if a > b then x = a + 163 * (b - 1)
  else do; y = 'str163' || b; call r162 y, a; end
  return x~length + .array~of(a, b)~items
::routine r164
  use arg a, b
  if a > b then x = a + 164 * (b - 1)
  else do; y = 'str164' || b; call r163 y, a; end
  return x~length + .array~of(a, b)~items
::routine r165
  use arg a, b
  if a > b then x = a + 165 * (b - 1)
  else do; y = 'str165' || b; call r164 y, a; end
  return x~length + .array~of(a, b)~items
::routine r166
  use arg a, b
  if a > b then x = a + 166 * (b - 1)
  else do; y = 'str166' || b; call r165 y, a; end
  return x~length + .array~of(a, b)~items
::routine r167
  use arg a, b
  if a > b then x = a + 167 * (b - 1)
  else do; y = 'str167' || b; call r166 y, a; end
  return x~length + .array~of(a, b)~items
::routine r168
  use arg a, b
  if a > b then x = a + 168 * (b - 1)
  else do; y = 'str168' || b; call r167 y, a; end
  return x~length + .array~of(a, b)~items
::routine r169
  use arg a, b
  if a > b then x = a + 169 * (b - 1)
  else do; y = 'str169' || b; call r168 y, a; end
  return x~length + .array~of(a, b)~items
::routine r170
  use arg a, b
  if a > b then x = a + 170 * (b - 1)
  else do; y = 'str170' || b; call r169 y, a; end
  return x~length + .array~of(a, b)~items
::routine r171
  use arg a, b
  if a > b then x = a + 171 * (b - 1)
  else do; y = 'str171' || b; call r170 y, a; end
  return x~length + .array~of(a, b)~items
::routine r172
  use arg a, b
  if a > b then x = a + 172 * (b - 1)
  else do; y = 'str172' || b; call r171 y, a; end
  return x~length + .array~of(a, b)~items
::routine r173
  use arg a, b
  if a > b then x = a + 173 * (b - 1)
  else do; y = 'str173' || b; call r172 y, a; end
  return x~length + .array~of(a, b)~items
::routine r174
  use arg a, b
  if a > b then x = a + 174 * (b - 1)
  else do; y = 'str174' || b; call r173 y, a; end
  return x~length + .array~of(a, b)~items
::routine r175
  use arg a, b
  if a > b then x = a + 175 * (b - 1)
  else do; y = 'str175' || b; call r174 y, a; end
  return x~length + .array~of(a, b)~items
::routine r176
  use arg a, b
  if a > b then x = a + 176 * (b - 1)
  else do; y = 'str176' || b; call r175 y, a; end
  return x~length + .array~of(a, b)~items
::routine r177
  use arg a, b
  if a > b then x = a + 177 * (b - 1)
  else do; y = 'str177' || b; call r176 y, a; end
  return x~length + .array~of(a, b)~items
::routine r178
  use arg a, b
  if a > b then x = a + 178 * (b - 1)
  else do; y = 'str178' || b; call r177 y, a; end
  return x~length + .array~of(a, b)~items
::routine r179
  use arg a, b
  if a > b then x = a + 179 * (b - 1)
  else do; y = 'str179' || b; call r178 y, a; end
  return x~length + .array~of(a, b)~items
::routine r180
  use arg a, b
  if a > b then x = a + 180 * (b - 1)
  else do; y = 'str180' || b; call r179 y, a; end
  return x~length + .array~of(a, b)~items
::routine r181
  use arg a, b
  if a > b then x = a + 181 * (b - 1)
  else do; y = 'str181' || b; call r180 y, a; end
  return x~length + .array~of(a, b)~items
::routine r182
  use arg a, b
  if a > b then x = a + 182 * (b - 1)
  else do; y = 'str182' || b; call r181 y, a; end
  return x~length + .array~of(a, b)~items
::routine r183
  use arg a, b
  if a > b then x = a + 183 * (b - 1)
  else do; y = 'str183' || b; call r182 y, a; end
  return x~length + .array~of(a, b)~items
::routine r184
  use arg a, b
  if a > b then x = a + 184 * (b - 1)
  else do; y = 'str184' || b; call r183 y, a; end
  return x~length + .array~of(a, b)~items
::routine r185
  use arg a, b
  if a > b then x = a + 185 * (b - 1)
  else do; y = 'str185' || b; call r184 y, a; end
  return x~length + .array~of(a, b)~items
::routine r186
  use arg a, b
  if a > b then x = a + 186 * (b - 1)
  else do; y = 'str186' || b; call r185 y, a; end
  return x~length + .array~of(a, b)~items
::routine r187
  use arg a, b
  if a > b then x = a + 187 * (b - 1)
  else do; y = 'str187' || b; call r186 y, a; end
  return x~length + .array~of(a, b)~items
::routine r188
  use arg a, b
  if a > b then x = a + 188 * (b - 1)
  else do; y = 'str188' || b; call r187 y, a; end
  return x~length + .array~of(a, b)~items
::routine r189
  use arg a, b
  if a > b then x = a + 189 * (b - 1)
  else do; y = 'str189' || b; call r188 y, a; end
  return x~length + .array~of(a, b)~items
::routine r190
  use arg a, b
  if a > b then x = a + 190 * (b - 1)
  else do; y = 'str190' || b; call r189 y, a; end
  return x~length + .array~of(a, b)~items
::routine r191
  use arg a, b
  if a > b then x = a + 191 * (b - 1)
  else do; y = 'str191' || b; call r190 y, a; end
  return x~length + .array~of(a, b)~items
::routine r192
  use arg a, b
  if a > b then x = a + 192 * (b - 1)
  else do; y = 'str192' || b; call r191 y, a; end
  return x~length + .array~of(a, b)~items
::routine r193
  use arg a, b
  if a > b then x = a + 193 * (b - 1)
  else do; y = 'str193' || b; call r192 y, a; end
  return x~length + .array~of(a, b)~items
::routine r194
  use arg a, b
  if a > b then x = a + 194 * (b - 1)
  else do; y = 'str194' || b; call r193 y, a; end
  return x~length + .array~of(a, b)~items
::routine r195
  use arg a, b
  if a > b then x = a + 195 * (b - 1)
  else do; y = 'str195' || b; call r194 y, a; end
  return x~length + .array~of(a, b)~items
::routine r196
  use arg a, b
  if a > b then x = a + 196 * (b - 1)
  else do; y = 'str196' || b; call r195 y, a; end
  return x~length + .array~of(a, b)~items
::routine r197
  use arg a, b
  if a > b then x = a + 197 * (b - 1)
  else do; y = 'str197' || b; call r196 y, a; end
  return x~length + .array~of(a, b)~items
::routine r198
  use arg a, b
  if a > b then x = a + 198 * (b - 1)
  else do; y = 'str198' || b; call r197 y, a; end
  return x~length + .array~of(a, b)~items
::routine r199
  use arg a, b
  if a > b then x = a + 199 * (b - 1)
  else do; y = 'str199' || b; call r198 y, a; end
  return x~length + .array~of(a, b)~items
::routine r200
  use arg a, b
  if a > b then x = a + 200 * (b - 1)
  else do; y = 'str200' || b; call r199 y, a; end
  return x~length + .array~of(a, b)~items
::routine r201
  use arg a, b
  if a > b then x = a + 201 * (b - 1)
  else do; y = 'str201' || b; call r200 y, a; end
  return x~length + .array~of(a, b)~items
::routine r202
  use arg a, b
  if a > b then x = a + 202 * (b - 1)
  else do; y = 'str202' || b; call r201 y, a; end
  return x~length + .array~of(a, b)~items
::routine r203
  use arg a, b
  if a > b then x = a + 203 * (b - 1)
  else do; y = 'str203' || b; call r202 y, a; end
  return x~length + .array~of(a, b)~items
::routine r204
  use arg a, b
  if a > b then x = a + 204 * (b - 1)
  else do; y = 'str204' || b; call r203 y, a; end
  return x~length + .array~of(a, b)~items
::routine r205
  use arg a, b
  if a > b then x = a + 205 * (b - 1)
  else do; y = 'str205' || b; call r204 y, a; end
  return x~length + .array~of(a, b)~items
::routine r206
  use arg a, b
  if a > b then x = a + 206 * (b - 1)
  else do; y = 'str206' || b; call r205 y, a; end
  return x~length + .array~of(a, b)~items
::routine r207
  use arg a, b
  if a > b then x = a + 207 * (b - 1)
  else do; y = 'str207' || b; call r206 y, a; end
  return x~length + .array~of(a, b)~items
::routine r208
  use arg a, b
  if a > b then x = a + 208 * (b - 1)
  else do; y = 'str208' || b; call r207 y, a; end
  return x~length + .array~of(a, b)~items
::routine r209
  use arg a, b
  if a > b then x = a + 209 * (b - 1)
  else do; y = 'str209' || b; call r208 y, a; end
  return x~length + .array~of(a, b)~items
::routine r210
  use arg a, b
  if a > b then x = a + 210 * (b - 1)
  else do; y = 'str210' || b; call r209 y, a; end
  return x~length + .array~of(a, b)~items
::routine r211
  use arg a, b
  if a > b then x = a + 211 * (b - 1)
  else do; y = 'str211' || b; call r210 y, a; end
  return x~length + .array~of(a, b)~items
::routine r212
  use arg a, b
  if a > b then x = a + 212 * (b - 1)
  else do; y = 'str212' || b; call r211 y, a; end
  return x~length + .array~of(a, b)~items
::routine r213
  use arg a, b
  if a > b then x = a + 213 * (b - 1)
  else do; y = 'str213' || b; call r212 y, a; end
  return x~length + .array~of(a, b)~items
::routine r214
  use arg a, b
  if a > b then x = a + 214 * (b - 1)
  else do; y = 'str214' || b; call r213 y, a; end
  return x~length + .array~of(a, b)~items
::routine r215
  use arg a, b
  if a > b then x = a + 215 * (b - 1)
  else do; y = 'str215' || b; call r214 y, a; end
  return x~length + .array~of(a, b)~items
::routine r216
  use arg a, b
  if a > b then x = a + 216 * (b - 1)
  else do; y = 'str216' || b; call r215 y, a; end
  return x~length + .array~of(a, b)~items
::routine r217
  use arg a, b
  if a > b then x = a + 217 * (b - 1)
  else do; y = 'str217' || b; call r216 y, a; end
  return x~length + .array~of(a, b)~items
::routine r218
  use arg a, b
  if a > b then x = a + 218 * (b - 1)
  else do; y = 'str218' || b; call r217 y, a; end
  return x~length + .array~of(a, b)~items
::routine r219
  use arg a, b
  if a > b then x = a + 219 * (b - 1)
  else do; y = 'str219' || b; call r218 y, a; end
  return x~length + .array~of(a, b)~items
::routine r220
  use arg a, b
  if a > b then x = a + 220 * (b - 1)
  else do; y = 'str220' || b; call r219 y, a; end
  return x~length + .array~of(a, b)~items
::routine r221
  use arg a, b
  if a > b then x = a + 221 * (b - 1)
  else do; y = 'str221' || b; call r220 y, a; end
  return x~length + .array~of(a, b)~items
::routine r222
  use arg a, b
  if a > b then x = a + 222 * (b - 1)
  else do; y = 'str222' || b; call r221 y, a; end
  return x~length + .array~of(a, b)~items
::routine r223
  use arg a, b
  if a > b then x = a + 223 * (b - 1)
  else do; y = 'str223' || b; call r222 y, a; end
  return x~length + .array~of(a, b)~items
::routine r224
  use arg a, b
  if a > b then x = a + 224 * (b - 1)
  else do; y = 'str224' || b; call r223 y, a; end
  return x~length + .array~of(a, b)~items
::routine r225
  use arg a, b
  if a > b then x = a + 225 * (b - 1)
  else do; y = 'str225' || b; call r224 y, a; end
  return x~length + .array~of(a, b)~items
::routine r226
  use arg a, b
  if a > b then x = a + 226 * (b - 1)
  else do; y = 'str226' || b; call r225 y, a; end
  return x~length + .array~of(a, b)~items
::routine r227
  use arg a, b
  if a > b then x = a + 227 * (b - 1)
  else do; y = 'str227' || b; call r226 y, a; end
  return x~length + .array~of(a, b)~items
::routine r228
  use arg a, b
  if a > b then x = a + 228 * (b - 1)
  else do; y = 'str228' || b; call r227 y, a; end
  return x~length + .array~of(a, b)~items
::routine r229
  use arg a, b
  if a > b then x = a + 229 * (b - 1)
  else do; y = 'str229' || b; call r228 y, a; end
  return x~length + .array~of(a, b)~items
::routine r230
  use arg a, b
  if a > b then x = a + 230 * (b - 1)
  else do; y = 'str230' || b; call r229 y, a; end
  return x~length + .array~of(a, b)~items
::routine r231
  use arg a, b
  if a > b then x = a + 231 * (b - 1)
  else do; y = 'str231' || b; call r230 y, a; end
  return x~length + .array~of(a, b)~items
::routine r232
  use arg a, b
  if a > b then x = a + 232 * (b - 1)
  else do; y = 'str232' || b; call r231 y, a; end
  return x~length + .array~of(a, b)~items
::routine r233
  use arg a, b
  if a > b then x = a + 233 * (b - 1)
  else do; y = 'str233' || b; call r232 y, a; end
  return x~length + .array~of(a, b)~items
::routine r234
  use arg a, b
  if a > b then x = a + 234 * (b - 1)
  else do; y = 'str234' || b; call r233 y, a; end
  return x~length + .array~of(a, b)~items
::routine r235
  use arg a, b
  if a > b then x = a + 235 * (b - 1)
  else do; y = 'str235' || b; call r234 y, a; end
  return x~length + .array~of(a, b)~items
::routine r236
  use arg a, b
  if a > b then x = a + 236 * (b - 1)
  else do; y = 'str236' || b; call r235 y, a; end
  return x~length + .array~of(a, b)~items
::routine r237
  use arg a, b
  if a > b then x = a + 237 * (b - 1)
  else do; y = 'str237' || b; call r236 y, a; end
  return x~length + .array~of(a, b)~items
::routine r238
  use arg a, b
  if a > b then x = a + 238 * (b - 1)
  else do; y = 'str238' || b; call r237 y, a; end
  return x~length + .array~of(a, b)~items
::routine r239
  use arg a, b
  if a > b then x = a + 239 * (b - 1)
  else do; y = 'str239' || b; call r238 y, a; end
  return x~length + .array~of(a, b)~items
::routine r240
  use arg a, b
  if a > b then x = a + 240 * (b - 1)
  else do; y = 'str240' || b; call r239 y, a; end
  return x~length + .array~of(a, b)~items
::routine r241
  use arg a, b
  if a > b then x = a + 241 * (b - 1)
  else do; y = 'str241' || b; call r240 y, a; end
  return x~length + .array~of(a, b)~items
::routine r242
  use arg a, b
  if a > b then x = a + 242 * (b - 1)
  else do; y = 'str242' || b; call r241 y, a; end
  return x~length + .array~of(a, b)~items
::routine r243
  use arg a, b
  if a > b then x = a + 243 * (b - 1)
  else do; y = 'str243' || b; call r242 y, a; end
  return x~length + .array~of(a, b)~items
::routine r244
  use arg a, b
  if a > b then x = a + 244 * (b - 1)
  else do; y = 'str244' || b; call r243 y, a; end
  return x~length + .array~of(a, b)~items
::routine r245
  use arg a, b
  if a > b then x = a + 245 * (b - 1)
  else do; y = 'str245' || b; call r244 y, a; end
  return x~length + .array~of(a, b)~items
::routine r246
  use arg a, b
  if a > b then x = a + 246 * (b - 1)
  else do; y = 'str246' || b; call r245 y, a; end
  return x~length + .array~of(a, b)~items
::routine r247
  use arg a, b
  if a > b then x = a + 247 * (b - 1)
  else do; y = 'str247' || b; call r246 y, a; end
  return x~length + .array~of(a, b)~items
::routine r248
  use arg a, b
  if a > b then x = a + 248 * (b - 1)
  else do; y = 'str248' || b; call r247 y, a; end
  return x~length + .array~of(a, b)~items
::routine r249
  use arg a, b
  if a > b then x = a + 249 * (b - 1)
  else do; y = 'str249' || b; call r248 y, a; end
  return x~length + .array~of(a, b)~items
::routine r250
  use arg a, b
  if a > b then x = a + 250 * (b - 1)
  else do; y = 'str250' || b; call r249 y, a; end
  return x~length + .array~of(a, b)~items
::routine r251
  use arg a, b
  if a > b then x = a + 251 * (b - 1)
  else do; y = 'str251' || b; call r250 y, a; end
  return x~length + .array~of(a, b)~items
::routine r252
  use arg a, b
  if a > b then x = a + 252 * (b - 1)
  else do; y = 'str252' || b; call r251 y, a; end
  return x~length + .array~of(a, b)~items
::routine r253
  use arg a, b
  if a > b then x = a + 253 * (b - 1)
  else do; y = 'str253' || b; call r252 y, a; end
  return x~length + .array~of(a, b)~items
::routine r254
  use arg a, b
  if a > b then x = a + 254 * (b - 1)
  else do; y = 'str254' || b; call r253 y, a; end
  return x~length + .array~of(a, b)~items
::routine r255
  use arg a, b
  if a > b then x = a + 255 * (b - 1)
  else do; y = 'str255' || b; call r254 y, a; end
  return x~length + .array~of(a, b)~items
::routine r256
  use arg a, b
  if a > b then x = a + 256 * (b - 1)
  else do; y = 'str256' || b; call r255 y, a; end
  return x~length + .array~of(a, b)~items
::routine r257
  use arg a, b
  if a > b then x = a + 257 * (b - 1)
  else do; y = 'str257' || b; call r256 y, a; end
  return x~length + .array~of(a, b)~items
::routine r258
  use arg a, b
  if a > b then x = a + 258 * (b - 1)
  else do; y = 'str258' || b; call r257 y, a; end
  return x~length + .array~of(a, b)~items
::routine r259
  use arg a, b
  if a > b then x = a + 259 * (b - 1)
  else do; y = 'str259' || b; call r258 y, a; end
  return x~length + .array~of(a, b)~items
::routine r260
  use arg a, b
  if a > b then x = a + 260 * (b - 1)
  else do; y = 'str260' || b; call r259 y, a; end
  return x~length + .array~of(a, b)~items
::routine r261
  use arg a, b
  if a > b then x = a + 261 * (b - 1)
  else do; y = 'str261' || b; call r260 y, a; end
  return x~length + .array~of(a, b)~items
::routine r262
  use arg a, b
  if a > b then x = a + 262 * (b - 1)
  else do; y = 'str262' || b; call r261 y, a; end
  return x~length + .array~of(a, b)~items
::routine r263
  use arg a, b
  if a > b then x = a + 263 * (b - 1)
  else do; y = 'str263' || b; call r262 y, a; end
  return x~length + .array~of(a, b)~items
::routine r264
  use arg a, b
  if a > b then x = a + 264 * (b - 1)
  else do; y = 'str264' || b; call r263 y, a; end
  return x~length + .array~of(a, b)~items
::routine r265
  use arg a, b
  if a > b then x = a + 265 * (b - 1)
  else do; y = 'str265' || b; call r264 y, a; end
  return x~length + .array~of(a, b)~items
::routine r266
  use arg a, b
  if a > b then x = a + 266 * (b - 1)
  else do; y = 'str266' || b; call r265 y, a; end
  return x~length + .array~of(a, b)~items
::routine r267
  use arg a, b
  if a > b then x = a + 267 * (b - 1)
  else do; y = 'str267' || b; call r266 y, a; end
  return x~length + .array~of(a, b)~items
::routine r268
  use arg a, b
  if a > b then x = a + 268 * (b - 1)
  else do; y = 'str268' || b; call r267 y, a; end
  return x~length + .array~of(a, b)~items
::routine r269
  use arg a, b
  if a > b then x = a + 269 * (b - 1)
  else do; y = 'str269' || b; call r268 y, a; end
  return x~length + .array~of(a, b)~items
::routine r270
  use arg a, b
  if a > b then x = a + 270 * (b - 1)
  else do; y = 'str270' || b; call r269 y, a; end
  return x~length + .array~of(a, b)~items
::routine r271
  use arg a, b
  if a > b then x = a + 271 * (b - 1)
  else do; y = 'str271' || b; call r270 y, a; end
  return x~length + .array~of(a, b)~items
::routine r272
  use arg a, b
  if a > b then x = a + 272 * (b - 1)
  else do; y = 'str272' || b; call r271 y, a; end
  return x~length + .array~of(a, b)~items
::routine r273
  use arg a, b
  if a > b then x = a + 273 * (b - 1)
  else do; y = 'str273' || b; call r272 y, a; end
  return x~length + .array~of(a, b)~items
::routine r274
  use arg a, b
  if a > b then x = a + 274 * (b - 1)
  else do; y = 'str274' || b; call r273 y, a; end
  return x~length + .array~of(a, b)~items
::routine r275
  use arg a, b
  if a > b then x = a + 275 * (b - 1)
  else do; y = 'str275' || b; call r274 y, a; end
  return x~length + .array~of(a, b)~items
::routine r276
  use arg a, b
  if a > b then x = a + 276 * (b - 1)
  else do; y = 'str276' || b; call r275 y, a; end
  return x~length + .array~of(a, b)~items
::routine r277
  use arg a, b
  if a > b then x = a + 277 * (b - 1)
  else do; y = 'str277' || b; call r276 y, a; end
  return x~length + .array~of(a, b)~items
::routine r278
  use arg a, b
  if a > b then x = a + 278 * (b - 1)
  else do; y = 'str278' || b; call r277 y, a; end
  return x~length + .array~of(a, b)~items
::routine r279
  use arg a, b
  if a > b then x = a + 279 * (b - 1)
  else do; y = 'str279' || b; call r278 y, a; end
  return x~length + .array~of(a, b)~items
::routine r280
  use arg a, b
  if a > b then x = a + 280 * (b - 1)
  else do; y = 'str280' || b; call r279 y, a; end
  return x~length + .array~of(a, b)~items
::routine r281
  use arg a, b
  if a > b then x = a + 281 * (b - 1)
  else do; y = 'str281' || b; call r280 y, a; end
  return x~length + .array~of(a, b)~items
::routine r282
  use arg a, b
  if a > b then x = a + 282 * (b - 1)
  else do; y = 'str282' || b; call r281 y, a; end
  return x~length + .array~of(a, b)~items
::routine r283
  use arg a, b
  if a > b then x = a + 283 * (b - 1)
  else do; y = 'str283' || b; call r282 y, a; end
  return x~length + .array~of(a, b)~items
::routine r284
  use arg a, b
  if a > b then x = a + 284 * (b - 1)
  else do; y = 'str284' || b; call r283 y, a; end
  return x~length + .array~of(a, b)~items
::routine r285
  use arg a, b
  if a > b then x = a + 285 * (b - 1)
  else do; y = 'str285' || b; call r284 y, a; end
  return x~length + .array~of(a, b)~items
::routine r286
  use arg a, b
  if a > b then x = a + 286 * (b - 1)
  else do; y = 'str286' || b; call r285 y, a; end
  return x~length + .array~of(a, b)~items
::routine r287
  use arg a, b
  if a > b then x = a + 287 * (b - 1)
  else do; y = 'str287' || b; call r286 y, a; end
  return x~length + .array~of(a, b)~items
::routine r288
  use arg a, b
  if a > b then x = a + 288 * (b - 1)
  else do; y = 'str288' || b; call r287 y, a; end
  return x~length + .array~of(a, b)~items
::routine r289
  use arg a, b
  if a > b then x = a + 289 * (b - 1)
  else do; y = 'str289' || b; call r288 y, a; end
  return x~length + .array~of(a, b)~items
::routine r290
  use arg a, b
  if a > b then x = a + 290 * (b - 1)
  else do; y = 'str290' || b; call r289 y, a; end
  return x~length + .array~of(a, b)~items
::routine r291
  use arg a, b
  if a > b then x = a + 291 * (b - 1)
  else do; y = 'str291' || b; call r290 y, a; end
  return x~length + .array~of(a, b)~items
::routine r292
  use arg a, b
  if a > b then x = a + 292 * (b - 1)
  else do; y = 'str292' || b; call r291 y, a; end
  return x~length + .array~of(a, b)~items
::routine r293
  use arg a, b
  if a > b then x = a + 293 * (b - 1)
  else do; y = 'str293' || b; call r292 y, a; end
  return x~length + .array~of(a, b)~items
::routine r294
  use arg a, b
  if a > b then x = a + 294 * (b - 1)
  else do; y = 'str294' || b; call r293 y, a; end
  return x~length + .array~of(a, b)~items
::routine r295
  use arg a, b
  if a > b then x = a + 295 * (b - 1)
  else do; y = 'str295' || b; call r294 y, a; end
  return x~length + .array~of(a, b)~items
::routine r296
  use arg a, b
  if a > b then x = a + 296 * (b - 1)
  else do; y = 'str296' || b; call r295 y, a; end
  return x~length + .array~of(a, b)~items
::routine r297
  use arg a, b
  if a > b then x = a + 297 * (b - 1)
  else do; y = 'str297' || b; call r296 y, a; end
  return x~length + .array~of(a, b)~items
::routine r298
  use arg a, b
  if a > b then x = a + 298 * (b - 1)
  else do; y = 'str298' || b; call r297 y, a; end
  return x~length + .array~of(a, b)~items
::routine r299
  use arg a, b
  if a > b then x = a + 299 * (b - 1)
  else do; y = 'str299' || b; call r298 y, a; end
  return x~length + .array~of(a, b)~items
::routine r300
  use arg a, b
  if a > b then x = a + 300 * (b - 1)
  else do; y = 'str300' || b; call r299 y, a; end
  return x~length + .array~of(a, b)~items
::routine r301
  use arg a, b
  if a > b then x = a + 301 * (b - 1)
  else do; y = 'str301' || b; call r300 y, a; end
  return x~length + .array~of(a, b)~items
::routine r302
  use arg a, b
  if a > b then x = a + 302 * (b - 1)
  else do; y = 'str302' || b; call r301 y, a; end
  return x~length + .array~of(a, b)~items
::routine r303
  use arg a, b
  if a > b then x = a + 303 * (b - 1)
  else do; y = 'str303' || b; call r302 y, a; end
  return x~length + .array~of(a, b)~items
::routine r304
  use arg a, b
  if a > b then x = a + 304 * (b - 1)
  else do; y = 'str304' || b; call r303 y, a; end
  return x~length + .array~of(a, b)~items
::routine r305
  use arg a, b
  if a > b then x = a + 305 * (b - 1)
  else do; y = 'str305' || b; call r304 y, a; end
  return x~length + .array~of(a, b)~items
::routine r306
  use arg a, b
  if a > b then x = a + 306 * (b - 1)
  else do; y = 'str306' || b; call r305 y, a; end
  return x~length + .array~of(a, b)~items
::routine r307
  use arg a, b
  if a > b then x = a + 307 * (b - 1)
  else do; y = 'str307' || b; call r306 y, a; end
  return x~length + .array~of(a, b)~items
::routine r308
  use arg a, b
  if a > b then x = a + 308 * (b - 1)
  else do; y = 'str308' || b; call r307 y, a; end
  return x~length + .array~of(a, b)~items
::routine r309
  use arg a, b
  if a > b then x = a + 309 * (b - 1)
  else do; y = 'str309' || b; call r308 y, a; end
  return x~length + .array~of(a, b)~items
::routine r310
  use arg a, b
  if a > b then x = a + 310 * (b - 1)
  else do; y = 'str310' || b; call r309 y, a; end
  return x~length + .array~of(a, b)~items
::routine r311
  use arg a, b
  if a > b then x = a + 311 * (b - 1)
  else do; y = 'str311' || b; call r310 y, a; end
  return x~length + .array~of(a, b)~items
::routine r312
  use arg a, b
  if a > b then x = a + 312 * (b - 1)
  else do; y = 'str312' || b; call r311 y, a; end
  return x~length + .array~of(a, b)~items
::routine r313
  use arg a, b
  if a > b then x = a + 313 * (b - 1)
  else do; y = 'str313' || b; call r312 y, a; end
  return x~length + .array~of(a, b)~items
::routine r314
  use arg a, b
  if a > b then x = a + 314 * (b - 1)
  else do; y = 'str314' || b; call r313 y, a; end
  return x~length + .array~of(a, b)~items
::routine r315
  use arg a, b
  if a > b then x = a + 315 * (b - 1)
  else do; y = 'str315' || b; call r314 y, a; end
  return x~length + .array~of(a, b)~items
::routine r316
  use arg a, b
  if a > b then x = a + 316 * (b - 1)
  else do; y = 'str316' || b; call r315 y, a; end
  return x~length + .array~of(a, b)~items
::routine r317
  use arg a, b
  if a > b then x = a + 317 * (b - 1)
  else do; y = 'str317' || b; call r316 y, a; end
  return x~length + .array~of(a, b)~items
::routine r318
  use arg a, b
  if a > b then x = a + 318 * (b - 1)
  else do; y = 'str318' || b; call r317 y, a; end
  return x~length + .array~of(a, b)~items
::routine r319
  use arg a, b
  if a > b then x = a + 319 * (b - 1)
  else do; y = 'str319' || b; call r318 y, a; end
  return x~length + .array~of(a, b)~items
::routine r320
  use arg a, b
  if a > b then x = a + 320 * (b - 1)
  else do; y = 'str320' || b; call r319 y, a; end
  return x~length + .array~of(a, b)~items
::routine r321
  use arg a, b
  if a > b then x = a + 321 * (b - 1)
  else do; y = 'str321' || b; call r320 y, a; end
  return x~length + .array~of(a, b)~items
::routine r322
  use arg a, b
  if a > b then x = a + 322 * (b - 1)
  else do; y = 'str322' || b; call r321 y, a; end
  return x~length + .array~of(a, b)~items
::routine r323
  use arg a, b
  if a > b then x = a + 323 * (b - 1)
  else do; y = 'str323' || b; call r322 y, a; end
  return x~length + .array~of(a, b)~items
::routine r324
  use arg a, b
  if a > b then x = a + 324 * (b - 1)
  else do; y = 'str324' || b; call r323 y, a; end
  return x~length + .array~of(a, b)~items
::routine r325
  use arg a, b
  if a > b then x = a + 325 * (b - 1)
  else do; y = 'str325' || b; call r324 y, a; end
  return x~length + .array~of(a, b)~items
::routine r326
  use arg a, b
  if a > b then x = a + 326 * (b - 1)
  else do; y = 'str326' || b; call r325 y, a; end
  return x~length + .array~of(a, b)~items
::routine r327
  use arg a, b
  if a > b then x = a + 327 * (b - 1)
  else do; y = 'str327' || b; call r326 y, a; end
  return x~length + .array~of(a, b)~items
::routine r328
  use arg a, b
  if a > b then x = a + 328 * (b - 1)
  else do; y = 'str328' || b; call r327 y, a; end
  return x~length + .array~of(a, b)~items
::routine r329
  use arg a, b
  if a > b then x = a + 329 * (b - 1)
  else do; y = 'str329' || b; call r328 y, a; end
  return x~length + .array~of(a, b)~items
::routine r330
  use arg a, b
  if a > b then x = a + 330 * (b - 1)
  else do; y = 'str330' || b; call r329 y, a; end
  return x~length + .array~of(a, b)~items
::routine r331
  use arg a, b
  if a > b then x = a + 331 * (b - 1)
  else do; y = 'str331' || b; call r330 y, a; end
  return x~length + .array~of(a, b)~items
::routine r332
  use arg a, b
  if a > b then x = a + 332 * (b - 1)
  else do; y = 'str332' || b; call r331 y, a; end
  return x~length + .array~of(a, b)~items
::routine r333
  use arg a, b
  if a > b then x = a + 333 * (b - 1)
  else do; y = 'str333' || b; call r332 y, a; end
  return x~length + .array~of(a, b)~items
::routine r334
  use arg a, b
  if a > b then x = a + 334 * (b - 1)
  else do; y = 'str334' || b; call r333 y, a; end
  return x~length + .array~of(a, b)~items
::routine r335
  use arg a, b
  if a > b then x = a + 335 * (b - 1)
  else do; y = 'str335' || b; call r334 y, a; end
  return x~length + .array~of(a, b)~items
::routine r336
  use arg a, b
  if a > b then x = a + 336 * (b - 1)
  else do; y = 'str336' || b; call r335 y, a; end
  return x~length + .array~of(a, b)~items
::routine r337
  use arg a, b
  if a > b then x = a + 337 * (b - 1)
  else do; y = 'str337' || b; call r336 y, a; end
  return x~length + .array~of(a, b)~items
::routine r338
  use arg a, b
  if a > b then x = a + 338 * (b - 1)
  else do; y = 'str338' || b; call r337 y, a; end
  return x~length + .array~of(a, b)~items
::routine r339
  use arg a, b
  if a > b then x = a + 339 * (b - 1)
  else do; y = 'str339' || b; call r338 y, a; end
  return x~length + .array~of(a, b)~items
::routine r340
  use arg a, b
  if a > b then x = a + 340 * (b - 1)
  else do; y = 'str340' || b; call r339 y, a; end
  return x~length + .array~of(a, b)~items
::routine r341
  use arg a, b
  if a > b then x = a + 341 * (b - 1)
  else do; y = 'str341' || b; call r340 y, a; end
  return x~length + .array~of(a, b)~items
::routine r342
  use arg a, b
  if a > b then x = a + 342 * (b - 1)
  else do; y = 'str342' || b; call r341 y, a; end
  return x~length + .array~of(a, b)~items
::routine r343
  use arg a, b
  if a > b then x = a + 343 * (b - 1)
  else do; y = 'str343' || b; call r342 y, a; end
  return x~length + .array~of(a, b)~items
::routine r344
  use arg a, b
  if a > b then x = a + 344 * (b - 1)
  else do; y = 'str344' || b; call r343 y, a; end
  return x~length + .array~of(a, b)~items
::routine r345
  use arg a, b
  if a > b then x = a + 345 * (b - 1)
  else do; y = 'str345' || b; call r344 y, a; end
  return x~length + .array~of(a, b)~items
::routine r346
  use arg a, b
  if a > b then x = a + 346 * (b - 1)
  else do; y = 'str346' || b; call r345 y, a; end
  return x~length + .array~of(a, b)~items
::routine r347
  use arg a, b
  if a > b then x = a + 347 * (b - 1)
  else do; y = 'str347' || b; call r346 y, a; end
  return x~length + .array~of(a, b)~items
::routine r348
  use arg a, b
  if a > b then x = a + 348 * (b - 1)
  else do; y = 'str348' || b; call r347 y, a; end
  return x~length + .array~of(a, b)~items
::routine r349
  use arg a, b
  if a > b then x = a + 349 * (b - 1)
  else do; y = 'str349' || b; call r348 y, a; end
  return x~length + .array~of(a, b)~items
::routine r350
  use arg a, b
  if a > b then x = a + 350 * (b - 1)
  else do; y = 'str350' || b; call r349 y, a; end
  return x~length + .array~of(a, b)~items
::routine r351
  use arg a, b
  if a > b then x = a + 351 * (b - 1)
  else do; y = 'str351' || b; call r350 y, a; end
  return x~length + .array~of(a, b)~items
::routine r352
  use arg a, b
  if a > b then x = a + 352 * (b - 1)
  else do; y = 'str352' || b; call r351 y, a; end
  return x~length + .array~of(a, b)~items
::routine r353
  use arg a, b
  if a > b then x = a + 353 * (b - 1)
  else do; y = 'str353' || b; call r352 y, a; end
  return x~length + .array~of(a, b)~items
::routine r354
  use arg a, b
  if a > b then x = a + 354 * (b - 1)
  else do; y = 'str354' || b; call r353 y, a; end
  return x~length + .array~of(a, b)~items
::routine r355
  use arg a, b
  if a > b then x = a + 355 * (b - 1)
  else do; y = 'str355' || b; call r354 y, a; end
  return x~length + .array~of(a, b)~items
::routine r356
  use arg a, b
  if a > b then x = a + 356 * (b - 1)
  else do; y = 'str356' || b; call r355 y, a; end
  return x~length + .array~of(a, b)~items
::routine r357
  use arg a, b
  if a > b then x = a + 357 * (b - 1)
  else do; y = 'str357' || b; call r356 y, a; end
  return x~length + .array~of(a, b)~items
::routine r358
  use arg a, b
  if a > b then x = a + 358 * (b - 1)
  else do; y = 'str358' || b; call r357 y, a; end
  return x~length + .array~of(a, b)~items
::routine r359
  use arg a, b
  if a > b then x = a + 359 * (b - 1)
  else do; y = 'str359' || b; call r358 y, a; end
  return x~length + .array~of(a, b)~items
::routine r360
  use arg a, b
  if a > b then x = a + 360 * (b - 1)
  else do; y = 'str360' || b; call r359 y, a; end
  return x~length + .array~of(a, b)~items
::routine r361
  use arg a, b
  if a > b then x = a + 361 * (b - 1)
  else do; y = 'str361' || b; call r360 y, a; end
  return x~length + .array~of(a, b)~items
::routine r362
  use arg a, b
  if a > b then x = a + 362 * (b - 1)
  else do; y = 'str362' || b; call r361 y, a; end
  return x~length + .array~of(a, b)~items
::routine r363
  use arg a, b
  if a > b then x = a + 363 * (b - 1)
  else do; y = 'str363' || b; call r362 y, a; end
  return x~length + .array~of(a, b)~items
::routine r364
  use arg a, b
  if a > b then x = a + 364 * (b - 1)
  else do; y = 'str364' || b; call r363 y, a; end
  return x~length + .array~of(a, b)~items
::routine r365
  use arg a, b
  if a > b then x = a + 365 * (b - 1)
  else do; y = 'str365' || b; call r364 y, a; end
  return x~length + .array~of(a, b)~items
::routine r366
  use arg a, b
  if a > b then x = a + 366 * (b - 1)
  else do; y = 'str366' || b; call r365 y, a; end
  return x~length + .array~of(a, b)~items
::routine r367
  use arg a, b
  if a > b then x = a + 367 * (b - 1)
  else do; y = 'str367' || b; call r366 y, a; end
  return x~length + .array~of(a, b)~items
::routine r368
  use arg a, b
  if a > b then x = a + 368 * (b - 1)
  else do; y = 'str368' || b; call r367 y, a; end
  return x~length + .array~of(a, b)~items
::routine r369
  use arg a, b
  if a > b then x = a + 369 * (b - 1)
  else do; y = 'str369' || b; call r368 y, a; end
  return x~length + .array~of(a, b)~items
::routine r370
  use arg a, b
  if a > b then x = a + 370 * (b - 1)
  else do; y = 'str370' || b; call r369 y, a; end
  return x~length + .array~of(a, b)~items
::routine r371
  use arg a, b
  if a > b then x = a + 371 * (b - 1)
  else do; y = 'str371' || b; call r370 y, a; end
  return x~length + .array~of(a, b)~items
::routine r372
  use arg a, b
  if a > b then x = a + 372 * (b - 1)
  else do; y = 'str372' || b; call r371 y, a; end
  return x~length + .array~of(a, b)~items
::routine r373
  use arg a, b
  if a > b then x = a + 373 * (b - 1)
  else do; y = 'str373' || b; call r372 y, a; end
  return x~length + .array~of(a, b)~items
::routine r374
  use arg a, b
  if a > b then x = a + 374 * (b - 1)
  else do; y = 'str374' || b; call r373 y, a; end
  return x~length + .array~of(a, b)~items
::routine r375
  use arg a, b
  if a > b then x = a + 375 * (b - 1)
  else do; y = 'str375' || b; call r374 y, a; end
  return x~length + .array~of(a, b)~items
::routine r376
  use arg a, b
  if a > b then x = a + 376 * (b - 1)
  else do; y = 'str376' || b; call r375 y, a; end
  return x~length + .array~of(a, b)~items
::routine r377
  use arg a, b
  if a > b then x = a + 377 * (b - 1)
  else do; y = 'str377' || b; call r376 y, a; end
  return x~length + .array~of(a, b)~items
::routine r378
  use arg a, b
  if a > b then x = a + 378 * (b - 1)
  else do; y = 'str378' || b; call r377 y, a; end
  return x~length + .array~of(a, b)~items
::routine r379
  use arg a, b
  if a > b then x = a + 379 * (b - 1)
  else do; y = 'str379' || b; call r378 y, a; end
  return x~length + .array~of(a, b)~items
::routine r380
  use arg a, b
  if a > b then x = a + 380 * (b - 1)
  else do; y = 'str380' || b; call r379 y, a; end
  return x~length + .array~of(a, b)~items
::routine r381
  use arg a, b
  if a > b then x = a + 381 * (b - 1)
  else do; y = 'str381' || b; call r380 y, a; end
  return x~length + .array~of(a, b)~items
::routine r382
  use arg a, b
  if a > b then x = a + 382 * (b - 1)
  else do; y = 'str382' || b; call r381 y, a; end
  return x~length + .array~of(a, b)~items
::routine r383
  use arg a, b
  if a > b then x = a + 383 * (b - 1)
  else do; y = 'str383' || b; call r382 y, a; end
  return x~length + .array~of(a, b)~items
::routine r384
  use arg a, b
  if a > b then x = a + 384 * (b - 1)
  else do; y = 'str384' || b; call r383 y, a; end
  return x~length + .array~of(a, b)~items
::routine r385
  use arg a, b
  if a > b then x = a + 385 * (b - 1)
  else do; y = 'str385' || b; call r384 y, a; end
  return x~length + .array~of(a, b)~items
::routine r386
  use arg a, b
  if a > b then x = a + 386 * (b - 1)
  else do; y = 'str386' || b; call r385 y, a; end
  return x~length + .array~of(a, b)~items
::routine r387
  use arg a, b
  if a > b then x = a + 387 * (b - 1)
  else do; y = 'str387' || b; call r386 y, a; end
  return x~length + .array~of(a, b)~items
::routine r388
  use arg a, b
  if a > b then x = a + 388 * (b - 1)
  else do; y = 'str388' || b; call r387 y, a; end
  return x~length + .array~of(a, b)~items
::routine r389
  use arg a, b
  if a > b then x = a + 389 * (b - 1)
  else do; y = 'str389' || b; call r388 y, a; end
  return x~length + .array~of(a, b)~items
::routine r390
  use arg a, b
  if a > b then x = a + 390 * (b - 1)
  else do; y = 'str390' || b; call r389 y, a; end
  return x~length + .array~of(a, b)~items
::routine r391
  use arg a, b
  if a > b then x = a + 391 * (b - 1)
  else do; y = 'str391' || b; call r390 y, a; end
  return x~length + .array~of(a, b)~items
::routine r392
  use arg a, b
  if a > b then x = a + 392 * (b - 1)
  else do; y = 'str392' || b; call r391 y, a; end
  return x~length + .array~of(a, b)~items
::routine r393
  use arg a, b
  if a > b then x = a + 393 * (b - 1)
  else do; y = 'str393' || b; call r392 y, a; end
  return x~length + .array~of(a, b)~items
::routine r394
  use arg a, b
  if a > b then x = a + 394 * (b - 1)
  else do; y = 'str394' || b; call r393 y, a; end
  return x~length + .array~of(a, b)~items
::routine r395
  use arg a, b
  if a > b then x = a + 395 * (b - 1)
  else do; y = 'str395' || b; call r394 y, a; end
  return x~length + .array~of(a, b)~items
::routine r396
  use arg a, b
  if a > b then x = a + 396 * (b - 1)
  else do; y = 'str396' || b; call r395 y, a; end
  return x~length + .array~of(a, b)~items
::routine r397
  use arg a, b
  if a > b then x = a + 397 * (b - 1)
  else do; y = 'str397' || b; call r396 y, a; end
  return x~length + .array~of(a, b)~items
::routine r398
  use arg a, b
  if a > b then x = a + 398 * (b - 1)
  else do; y = 'str398' || b; call r397 y, a; end
  return x~length + .array~of(a, b)~items
::routine r399
  use arg a, b
  if a > b then x = a + 399 * (b - 1)
  else do; y = 'str399' || b; call r398 y, a; end
  return x~length + .array~of(a, b)~items
::routine r400
  use arg a, b
  if a > b then x = a + 400 * (b - 1)
  else do; y = 'str400' || b; call r399 y, a; end
  return x~length + .array~of(a, b)~items
::routine r401
  use arg a, b
  if a > b then x = a + 401 * (b - 1)
  else do; y = 'str401' || b; call r400 y, a; end
  return x~length + .array~of(a, b)~items
::routine r402
  use arg a, b
  if a > b then x = a + 402 * (b - 1)
  else do; y = 'str402' || b; call r401 y, a; end
  return x~length + .array~of(a, b)~items
::routine r403
  use arg a, b
  if a > b then x = a + 403 * (b - 1)
  else do; y = 'str403' || b; call r402 y, a; end
  return x~length + .array~of(a, b)~items
::routine r404
  use arg a, b
  if a > b then x = a + 404 * (b - 1)
  else do; y = 'str404' || b; call r403 y, a; end
  return x~length + .array~of(a, b)~items
::routine r405
  use arg a, b
  if a > b then x = a + 405 * (b - 1)
  else do; y = 'str405' || b; call r404 y, a; end
  return x~length + .array~of(a, b)~items
::routine r406
  use arg a, b
  if a > b then x = a + 406 * (b - 1)
  else do; y = 'str406' || b; call r405 y, a; end
  return x~length + .array~of(a, b)~items
::routine r407
  use arg a, b
  if a > b then x = a + 407 * (b - 1)
  else do; y = 'str407' || b; call r406 y, a; end
  return x~length + .array~of(a, b)~items
::routine r408
  use arg a, b
  if a > b then x = a + 408 * (b - 1)
  else do; y = 'str408' || b; call r407 y, a; end
  return x~length + .array~of(a, b)~items
::routine r409
  use arg a, b
  if a > b then x = a + 409 * (b - 1)
  else do; y = 'str409' || b; call r408 y, a; end
  return x~length + .array~of(a, b)~items
::routine r410
  use arg a, b
  if a > b then x = a + 410 * (b - 1)
  else do; y = 'str410' || b; call r409 y, a; end
  return x~length + .array~of(a, b)~items
::routine r411
  use arg a, b
  if a > b then x = a + 411 * (b - 1)
  else do; y = 'str411' || b; call r410 y, a; end
  return x~length + .array~of(a, b)~items
::routine r412
  use arg a, b
  if a > b then x = a + 412 * (b - 1)
  else do; y = 'str412' || b; call r411 y, a; end
  return x~length + .array~of(a, b)~items
::routine r413
  use arg a, b
  if a > b then x = a + 413 * (b - 1)
  else do; y = 'str413' || b; call r412 y, a; end
  return x~length + .array~of(a, b)~items
::routine r414
  use arg a, b
  if a > b then x = a + 414 * (b - 1)
  else do; y = 'str414' || b; call r413 y, a; end
  return x~length + .array~of(a, b)~items
::routine r415
  use arg a, b
  if a > b then x = a + 415 * (b - 1)
  else do; y = 'str415' || b; call r414 y, a; end
  return x~length + .array~of(a, b)~items
::routine r416
  use arg a, b
  if a > b then x = a + 416 * (b - 1)
  else do; y = 'str416' || b; call r415 y, a; end
  return x~length + .array~of(a, b)~items
::routine r417
  use arg a, b
  if a > b then x = a + 417 * (b - 1)
  else do; y = 'str417' || b; call r416 y, a; end
  return x~length + .array~of(a, b)~items
::routine r418
  use arg a, b
  if a > b then x = a + 418 * (b - 1)
  else do; y = 'str418' || b; call r417 y, a; end
  return x~length + .array~of(a, b)~items
::routine r419
  use arg a, b
  if a > b then x = a + 419 * (b - 1)
  else do; y = 'str419' || b; call r418 y, a; end
  return x~length + .array~of(a, b)~items
::routine r420
  use arg a, b
  if a > b then x = a + 420 * (b - 1)
  else do; y = 'str420' || b; call r419 y, a; end
  return x~length + .array~of(a, b)~items
::routine r421
  use arg a, b
  if a > b then x = a + 421 * (b - 1)
  else do; y = 'str421' || b; call r420 y, a; end
  return x~length + .array~of(a, b)~items
::routine r422
  use arg a, b
  if a > b then x = a + 422 * (b - 1)
  else do; y = 'str422' || b; call r421 y, a; end
  return x~length + .array~of(a, b)~items
::routine r423
  use arg a, b
  if a > b then x = a + 423 * (b - 1)
  else do; y = 'str423' || b; call r422 y, a; end
  return x~length + .array~of(a, b)~items
::routine r424
  use arg a, b
  if a > b then x = a + 424 * (b - 1)
  else do; y = 'str424' || b; call r423 y, a; end
  return x~length + .array~of(a, b)~items
::routine r425
  use arg a, b
  if a > b then x = a + 425 * (b - 1)
  else do; y = 'str425' || b; call r424 y, a; end
  return x~length + .array~of(a, b)~items
::routine r426
  use arg a, b
  if a > b then x = a + 426 * (b - 1)
  else do; y = 'str426' || b; call r425 y, a; end
  return x~length + .array~of(a, b)~items
::routine r427
  use arg a, b
  if a > b then x = a + 427 * (b - 1)
  else do; y = 'str427' || b; call r426 y, a; end
  return x~length + .array~of(a, b)~items
::routine r428
  use arg a, b
  if a > b then x = a + 428 * (b - 1)
  else do; y = 'str428' || b; call r427 y, a; end
  return x~length + .array~of(a, b)~items
::routine r429
  use arg a, b
  if a > b then x = a + 429 * (b - 1)
  else do; y = 'str429' || b; call r428 y, a; end
  return x~length + .array~of(a, b)~items
::routine r430
  use arg a, b
  if a > b then x = a + 430 * (b - 1)
  else do; y = 'str430' || b; call r429 y, a; end
  return x~length + .array~of(a, b)~items
::routine r431
  use arg a, b
  if a > b then x = a + 431 * (b - 1)
  else do; y = 'str431' || b; call r430 y, a; end
  return x~length + .array~of(a, b)~items
::routine r432
  use arg a, b
  if a > b then x = a + 432 * (b - 1)
  else do; y = 'str432' || b; call r431 y, a; end
  return x~length + .array~of(a, b)~items
::routine r433
  use arg a, b
  if a > b then x = a + 433 * (b - 1)
  else do; y = 'str433' || b; call r432 y, a; end
  return x~length + .array~of(a, b)~items
::routine r434
  use arg a, b
  if a > b then x = a + 434 * (b - 1)
  else do; y = 'str434' || b; call r433 y, a; end
  return x~length + .array~of(a, b)~items
::routine r435
  use arg a, b
  if a > b then x = a + 435 * (b - 1)
  else do; y = 'str435' || b; call r434 y, a; end
  return x~length + .array~of(a, b)~items
::routine r436
  use arg a, b
  if a > b then x = a + 436 * (b - 1)
  else do; y = 'str436' || b; call r435 y, a; end
  return x~length + .array~of(a, b)~items
::routine r437
  use arg a, b
  if a > b then x = a + 437 * (b - 1)
  else do; y = 'str437' || b; call r436 y, a; end
  return x~length + .array~of(a, b)~items
::routine r438
  use arg a, b
  if a > b then x = a + 438 * (b - 1)
  else do; y = 'str438' || b; call r437 y, a; end
  return x~length + .array~of(a, b)~items
::routine r439
  use arg a, b
  if a > b then x = a + 439 * (b - 1)
  else do; y = 'str439' || b; call r438 y, a; end
  return x~length + .array~of(a, b)~items
::routine r440
  use arg a, b
  if a > b then x = a + 440 * (b - 1)
  else do; y = 'str440' || b; call r439 y, a; end
  return x~length + .array~of(a, b)~items
::routine r441
  use arg a, b
  if a > b then x = a + 441 * (b - 1)
  else do; y = 'str441' || b; call r440 y, a; end
  return x~length + .array~of(a, b)~items
::routine r442
  use arg a, b
  if a > b then x = a + 442 * (b - 1)
  else do; y = 'str442' || b; call r441 y, a; end
  return x~length + .array~of(a, b)~items
::routine r443
  use arg a, b
  if a > b then x = a + 443 * (b - 1)
  else do; y = 'str443' || b; call r442 y, a; end
  return x~length + .array~of(a, b)~items
::routine r444
  use arg a, b
  if a > b then x = a + 444 * (b - 1)
  else do; y = 'str444' || b; call r443 y, a; end
  return x~length + .array~of(a, b)~items
::routine r445
  use arg a, b
  if a > b then x = a + 445 * (b - 1)
  else do; y = 'str445' || b; call r444 y, a; end
  return x~length + .array~of(a, b)~items
::routine r446
  use arg a, b
  if a > b then x = a + 446 * (b - 1)
  else do; y = 'str446' || b; call r445 y, a; end
  return x~length + .array~of(a, b)~items
::routine r447
  use arg a, b
  if a > b then x = a + 447 * (b - 1)
  else do; y = 'str447' || b; call r446 y, a; end
  return x~length + .array~of(a, b)~items
::routine r448
  use arg a, b
  if a > b then x = a + 448 * (b - 1)
  else do; y = 'str448' || b; call r447 y, a; end
  return x~length + .array~of(a, b)~items
::routine r449
  use arg a, b
  if a > b then x = a + 449 * (b - 1)
  else do; y = 'str449' || b; call r448 y, a; end
  return x~length + .array~of(a, b)~items
::routine r450
  use arg a, b
  if a > b then x = a + 450 * (b - 1)
  else do; y = 'str450' || b; call r449 y, a; end
  return x~length + .array~of(a, b)~items
::routine r451
  use arg a, b
  if a > b then x = a + 451 * (b - 1)
  else do; y = 'str451' || b; call r450 y, a; end
  return x~length + .array~of(a, b)~items
::routine r452
  use arg a, b
  if a > b then x = a + 452 * (b - 1)
  else do; y = 'str452' || b; call r451 y, a; end
  return x~length + .array~of(a, b)~items
::routine r453
  use arg a, b
  if a > b then x = a + 453 * (b - 1)
  else do; y = 'str453' || b; call r452 y, a; end
  return x~length + .array~of(a, b)~items
::routine r454
  use arg a, b
  if a > b then x = a + 454 * (b - 1)
  else do; y = 'str454' || b; call r453 y, a; end
  return x~length + .array~of(a, b)~items
::routine r455
  use arg a, b
  if a > b then x = a + 455 * (b - 1)
  else do; y = 'str455' || b; call r454 y, a; end
  return x~length + .array~of(a, b)~items
::routine r456
  use arg a, b
  if a > b then x = a + 456 * (b - 1)
  else do; y = 'str456' || b; call r455 y, a; end
  return x~length + .array~of(a, b)~items
::routine r457
  use arg a, b
  if a > b then x = a + 457 * (b - 1)
  else do; y = 'str457' || b; call r456 y, a; end
  return x~length + .array~of(a, b)~items
::routine r458
  use arg a, b
  if a > b then x = a + 458 * (b - 1)
  else do; y = 'str458' || b; call r457 y, a; end
  return x~length + .array~of(a, b)~items
::routine r459
  use arg a, b
  if a > b then x = a + 459 * (b - 1)
  else do; y = 'str459' || b; call r458 y, a; end
  return x~length + .array~of(a, b)~items
::routine r460
  use arg a, b
  if a > b then x = a + 460 * (b - 1)
  else do; y = 'str460' || b; call r459 y, a; end
  return x~length + .array~of(a, b)~items
::routine r461
  use arg a, b
  if a > b then x = a + 461 * (b - 1)
  else do; y = 'str461' || b; call r460 y, a; end
  return x~length + .array~of(a, b)~items
::routine r462
  use arg a, b
  if a > b then x = a + 462 * (b - 1)
  else do; y = 'str462' || b; call r461 y, a; end
  return x~length + .array~of(a, b)~items
::routine r463
  use arg a, b
  if a > b then x = a + 463 * (b - 1)
  else do; y = 'str463' || b; call r462 y, a; end
  return x~length + .array~of(a, b)~items
::routine r464
  use arg a, b
  if a > b then x = a + 464 * (b - 1)
  else do; y = 'str464' || b; call r463 y, a; end
  return x~length + .array~of(a, b)~items
::routine r465
  use arg a, b
  if a > b then x = a + 465 * (b - 1)
  else do; y = 'str465' || b; call r464 y, a; end
  return x~length + .array~of(a, b)~items
::routine r466
  use arg a, b
  if a > b then x = a + 466 * (b - 1)
  else do; y = 'str466' || b; call r465 y, a; end
  return x~length + .array~of(a, b)~items
::routine r467
  use arg a, b
  if a > b then x = a + 467 * (b - 1)
  else do; y = 'str467' || b; call r466 y, a; end
  return x~length + .array~of(a, b)~items
::routine r468
  use arg a, b
  if a > b then x = a + 468 * (b - 1)
  else do; y = 'str468' || b; call r467 y, a; end
  return x~length + .array~of(a, b)~items
::routine r469
  use arg a, b
  if a > b then x = a + 469 * (b - 1)
  else do; y = 'str469' || b; call r468 y, a; end
  return x~length + .array~of(a, b)~items
::routine r470
  use arg a, b
  if a > b then x = a + 470 * (b - 1)
  else do; y = 'str470' || b; call r469 y, a; end
  return x~length + .array~of(a, b)~items
::routine r471
  use arg a, b
  if a > b then x = a + 471 * (b - 1)
  else do; y = 'str471' || b; call r470 y, a; end
  return x~length + .array~of(a, b)~items
::routine r472
  use arg a, b
  if a > b then x = a + 472 * (b - 1)
  else do; y = 'str472' || b; call r471 y, a; end
  return x~length + .array~of(a, b)~items
::routine r473
  use arg a, b
  if a > b then x = a + 473 * (b - 1)
  else do; y = 'str473' || b; call r472 y, a; end
  return x~length + .array~of(a, b)~items
::routine r474
  use arg a, b
  if a > b then x = a + 474 * (b - 1)
  else do; y = 'str474' || b; call r473 y, a; end
  return x~length + .array~of(a, b)~items
::routine r475
  use arg a, b
  if a > b then x = a + 475 * (b - 1)
  else do; y = 'str475' || b; call r474 y, a; end
  return x~length + .array~of(a, b)~items
::routine r476
  use arg a, b
  if a > b then x = a + 476 * (b - 1)
  else do; y = 'str476' || b; call r475 y, a; end
  return x~length + .array~of(a, b)~items
::routine r477
  use arg a, b
  if a > b then x = a + 477 * (b - 1)
  else do; y = 'str477' || b; call r476 y, a; end
  return x~length + .array~of(a, b)~items
::routine r478
  use arg a, b
  if a > b then x = a + 478 * (b - 1)
  else do; y = 'str478' || b; call r477 y, a; end
  return x~length + .array~of(a, b)~items
::routine r479
  use arg a, b
  if a > b then x = a + 479 * (b - 1)
  else do; y = 'str479' || b; call r478 y, a; end
  return x~length + .array~of(a, b)~items
::routine r480
  use arg a, b
  if a > b then x = a + 480 * (b - 1)
  else do; y = 'str480' || b; call r479 y, a; end
  return x~length + .array~of(a, b)~items
::routine r481
  use arg a, b
  if a > b then x = a + 481 * (b - 1)
  else do; y = 'str481' || b; call r480 y, a; end
  return x~length + .array~of(a, b)~items
::routine r482
  use arg a, b
  if a > b then x = a + 482 * (b - 1)
  else do; y = 'str482' || b; call r481 y, a; end
  return x~length + .array~of(a, b)~items
::routine r483
  use arg a, b
  if a > b then x = a + 483 * (b - 1)
  else do; y = 'str483' || b; call r482 y, a; end
  return x~length + .array~of(a, b)~items
::routine r484
  use arg a, b
  if a > b then x = a + 484 * (b - 1)
  else do; y = 'str484' || b; call r483 y, a; end
  return x~length + .array~of(a, b)~items
::routine r485
  use arg a, b
  if a > b then x = a + 485 * (b - 1)
  else do; y = 'str485' || b; call r484 y, a; end
  return x~length + .array~of(a, b)~items
::routine r486
  use arg a, b
  if a > b then x = a + 486 * (b - 1)
  else do; y = 'str486' || b; call r485 y, a; end
  return x~length + .array~of(a, b)~items
::routine r487
  use arg a, b
  if a > b then x = a + 487 * (b - 1)
  else do; y = 'str487' || b; call r486 y, a; end
  return x~length + .array~of(a, b)~items
::routine r488
  use arg a, b
  if a > b then x = a + 488 * (b - 1)
  else do; y = 'str488' || b; call r487 y, a; end
  return x~length + .array~of(a, b)~items
::routine r489
  use arg a, b
  if a > b then x = a + 489 * (b - 1)
  else do; y = 'str489' || b; call r488 y, a; end
  return x~length + .array~of(a, b)~items
::routine r490
  use arg a, b
  if a > b then x = a + 490 * (b - 1)
  else do; y = 'str490' || b; call r489 y, a; end
  return x~length + .array~of(a, b)~items
::routine r491
  use arg a, b
  if a > b then x = a + 491 * (b - 1)
  else do; y = 'str491' || b; call r490 y, a; end
  return x~length + .array~of(a, b)~items
::routine r492
  use arg a, b
  if a > b then x = a + 492 * (b - 1)
  else do; y = 'str492' || b; call r491 y, a; end
  return x~length + .array~of(a, b)~items
::routine r493
  use arg a, b
  if a > b then x = a + 493 * (b - 1)
  else do; y = 'str493' || b; call r492 y, a; end
  return x~length + .array~of(a, b)~items
::routine r494
  use arg a, b
  if a > b then x = a + 494 * (b - 1)
  else do; y = 'str494' || b; call r493 y, a; end
  return x~length + .array~of(a, b)~items
::routine r495
  use arg a, b
  if a > b then x = a + 495 * (b - 1)
  else do; y = 'str495' || b; call r494 y, a; end
  return x~length + .array~of(a, b)~items
::routine r496
  use arg a, b
  if a > b then x = a + 496 * (b - 1)
  else do; y = 'str496' || b; call r495 y, a; end
  return x~length + .array~of(a, b)~items
::routine r497
  use arg a, b
  if a > b then x = a + 497 * (b - 1)
  else do; y = 'str497' || b; call r496 y, a; end
  return x~length + .array~of(a, b)~items
::routine r498
  use arg a, b
  if a > b then x = a + 498 * (b - 1)
  else do; y = 'str498' || b; call r497 y, a; end
  return x~length + .array~of(a, b)~items
::routine r499
  use arg a, b
  if a > b then x = a + 499 * (b - 1)
  else do; y = 'str499' || b; call r498 y, a; end
  return x~length + .array~of(a, b)~items
::routine r500
  use arg a, b
  if a > b then x = a + 500 * (b - 1)
  else do; y = 'str500' || b; call r499 y, a; end
  return x~length + .array~of(a, b)~items
::routine r501
  use arg a, b
  if a > b then x = a + 501 * (b - 1)
  else do; y = 'str501' || b; call r500 y, a; end
  return x~length + .array~of(a, b)~items
::routine r502
  use arg a, b
  if a > b then x = a + 502 * (b - 1)
  else do; y = 'str502' || b; call r501 y, a; end
  return x~length + .array~of(a, b)~items
::routine r503
  use arg a, b
  if a > b then x = a + 503 * (b - 1)
  else do; y = 'str503' || b; call r502 y, a; end
  return x~length + .array~of(a, b)~items
::routine r504
  use arg a, b
  if a > b then x = a + 504 * (b - 1)
  else do; y = 'str504' || b; call r503 y, a; end
  return x~length + .array~of(a, b)~items
::routine r505
  use arg a, b
  if a > b then x = a + 505 * (b - 1)
  else do; y = 'str505' || b; call r504 y, a; end
  return x~length + .array~of(a, b)~items
::routine r506
  use arg a, b
  if a > b then x = a + 506 * (b - 1)
  else do; y = 'str506' || b; call r505 y, a; end
  return x~length + .array~of(a, b)~items
::routine r507
  use arg a, b
  if a > b then x = a + 507 * (b - 1)
  else do; y = 'str507' || b; call r506 y, a; end
  return x~length + .array~of(a, b)~items
::routine r508
  use arg a, b
  if a > b then x = a + 508 * (b - 1)
  else do; y = 'str508' || b; call r507 y, a; end
  return x~length + .array~of(a, b)~items
::routine r509
  use arg a, b
  if a > b then x = a + 509 * (b - 1)
  else do; y = 'str509' || b; call r508 y, a; end
  return x~length + .array~of(a, b)~items
::routine r510
  use arg a, b
  if a > b then x = a + 510 * (b - 1)
  else do; y = 'str510' || b; call r509 y, a; end
  return x~length + .array~of(a, b)~items
::routine r511
  use arg a, b
  if a > b then x = a + 511 * (b - 1)
  else do; y = 'str511' || b; call r510 y, a; end
  return x~length + .array~of(a, b)~items
::routine r512
  use arg a, b
  if a > b then x = a + 512 * (b - 1)
  else do; y = 'str512' || b; call r511 y, a; end
  return x~length + .array~of(a, b)~items
::routine r513
  use arg a, b
  if a > b then x = a + 513 * (b - 1)
  else do; y = 'str513' || b; call r512 y, a; end
  return x~length + .array~of(a, b)~items
::routine r514
  use arg a, b
  if a > b then x = a + 514 * (b - 1)
  else do; y = 'str514' || b; call r513 y, a; end
  return x~length + .array~of(a, b)~items
::routine r515
  use arg a, b
  if a > b then x = a + 515 * (b - 1)
  else do; y = 'str515' || b; call r514 y, a; end
  return x~length + .array~of(a, b)~items
::routine r516
  use arg a, b
  if a > b then x = a + 516 * (b - 1)
  else do; y = 'str516' || b; call r515 y, a; end
  return x~length + .array~of(a, b)~items
::routine r517
  use arg a, b
  if a > b then x = a + 517 * (b - 1)
  else do; y = 'str517' || b; call r516 y, a; end
  return x~length + .array~of(a, b)~items
::routine r518
  use arg a, b
  if a > b then x = a + 518 * (b - 1)
  else do; y = 'str518' || b; call r517 y, a; end
  return x~length + .array~of(a, b)~items
::routine r519
  use arg a, b
  if a > b then x = a + 519 * (b - 1)
  else do; y = 'str519' || b; call r518 y, a; end
  return x~length + .array~of(a, b)~items
::routine r520
  use arg a, b
  if a > b then x = a + 520 * (b - 1)
  else do; y = 'str520' || b; call r519 y, a; end
  return x~length + .array~of(a, b)~items
::routine r521
  use arg a, b
  if a > b then x = a + 521 * (b - 1)
  else do; y = 'str521' || b; call r520 y, a; end
  return x~length + .array~of(a, b)~items
::routine r522
  use arg a, b
  if a > b then x = a + 522 * (b - 1)
  else do; y = 'str522' || b; call r521 y, a; end
  return x~length + .array~of(a, b)~items
::routine r523
  use arg a, b
  if a > b then x = a + 523 * (b - 1)
  else do; y = 'str523' || b; call r522 y, a; end
  return x~length + .array~of(a, b)~items
::routine r524
  use arg a, b
  if a > b then x = a + 524 * (b - 1)
  else do; y = 'str524' || b; call r523 y, a; end
  return x~length + .array~of(a, b)~items
::routine r525
  use arg a, b
  if a > b then x = a + 525 * (b - 1)
  else do; y = 'str525' || b; call r524 y, a; end
  return x~length + .array~of(a, b)~items
::routine r526
  use arg a, b
  if a > b then x = a + 526 * (b - 1)
  else do; y = 'str526' || b; call r525 y, a; end
  return x~length + .array~of(a, b)~items
::routine r527
  use arg a, b
  if a > b then x = a + 527 * (b - 1)
  else do; y = 'str527' || b; call r526 y, a; end
  return x~length + .array~of(a, b)~items
::routine r528
  use arg a, b
  if a > b then x = a + 528 * (b - 1)
  else do; y = 'str528' || b; call r527 y, a; end
  return x~length + .array~of(a, b)~items
::routine r529
  use arg a, b
  if a > b then x = a + 529 * (b - 1)
  else do; y = 'str529' || b; call r528 y, a; end
  return x~length + .array~of(a, b)~items
::routine r530
  use arg a, b
  if a > b then x = a + 530 * (b - 1)
  else do; y = 'str530' || b; call r529 y, a; end
  return x~length + .array~of(a, b)~items
::routine r531
  use arg a, b
  if a > b then x = a + 531 * (b - 1)
  else do; y = 'str531' || b; call r530 y, a; end
  return x~length + .array~of(a, b)~items
::routine r532
  use arg a, b
  if a > b then x = a + 532 * (b - 1)
  else do; y = 'str532' || b; call r531 y, a; end
  return x~length + .array~of(a, b)~items
::routine r533
  use arg a, b
  if a > b then x = a + 533 * (b - 1)
  else do; y = 'str533' || b; call r532 y, a; end
  return x~length + .array~of(a, b)~items
::routine r534
  use arg a, b
  if a > b then x = a + 534 * (b - 1)
  else do; y = 'str534' || b; call r533 y, a; end
  return x~length + .array~of(a, b)~items
::routine r535
  use arg a, b
  if a > b then x = a + 535 * (b - 1)
  else do; y = 'str535' || b; call r534 y, a; end
  return x~length + .array~of(a, b)~items
::routine r536
  use arg a, b
  if a > b then x = a + 536 * (b - 1)
  else do; y = 'str536' || b; call r535 y, a; end
  return x~length + .array~of(a, b)~items
::routine r537
  use arg a, b
  if a > b then x = a + 537 * (b - 1)
  else do; y = 'str537' || b; call r536 y, a; end
  return x~length + .array~of(a, b)~items
::routine r538
  use arg a, b
  if a > b then x = a + 538 * (b - 1)
  else do; y = 'str538' || b; call r537 y, a; end
  return x~length + .array~of(a, b)~items
::routine r539
  use arg a, b
  if a > b then x = a + 539 * (b - 1)
  else do; y = 'str539' || b; call r538 y, a; end
  return x~length + .array~of(a, b)~items
::routine r540
  use arg a, b
  if a > b then x = a + 540 * (b - 1)
  else do; y = 'str540' || b; call r539 y, a; end
  return x~length + .array~of(a, b)~items
::routine r541
  use arg a, b
  if a > b then x = a + 541 * (b - 1)
  else do; y = 'str541' || b; call r540 y, a; end
  return x~length + .array~of(a, b)~items
::routine r542
  use arg a, b
  if a > b then x = a + 542 * (b - 1)
  else do; y = 'str542' || b; call r541 y, a; end
  return x~length + .array~of(a, b)~items
::routine r543
  use arg a, b
  if a > b then x = a + 543 * (b - 1)
  else do; y = 'str543' || b; call r542 y, a; end
  return x~length + .array~of(a, b)~items
::routine r544
  use arg a, b
  if a > b then x = a + 544 * (b - 1)
  else do; y = 'str544' || b; call r543 y, a; end
  return x~length + .array~of(a, b)~items
::routine r545
  use arg a, b
  if a > b then x = a + 545 * (b - 1)
  else do; y = 'str545' || b; call r544 y, a; end
  return x~length + .array~of(a, b)~items
::routine r546
  use arg a, b
  if a > b then x = a + 546 * (b - 1)
  else do; y = 'str546' || b; call r545 y, a; end
  return x~length + .array~of(a, b)~items
::routine r547
  use arg a, b
  if a > b then x = a + 547 * (b - 1)
  else do; y = 'str547' || b; call r546 y, a; end
  return x~length + .array~of(a, b)~items
::routine r548
  use arg a, b
  if a > b then x = a + 548 * (b - 1)
  else do; y = 'str548' || b; call r547 y, a; end
  return x~length + .array~of(a, b)~items
::routine r549
  use arg a, b
  if a > b then x = a + 549 * (b - 1)
  else do; y = 'str549' || b; call r548 y, a; end
  return x~length + .array~of(a, b)~items
::routine r550
  use arg a, b
  if a > b then x = a + 550 * (b - 1)
  else do; y = 'str550' || b; call r549 y, a; end
  return x~length + .array~of(a, b)~items
::routine r551
  use arg a, b
  if a > b then x = a + 551 * (b - 1)
  else do; y = 'str551' || b; call r550 y, a; end
  return x~length + .array~of(a, b)~items
::routine r552
  use arg a, b
  if a > b then x = a + 552 * (b - 1)
  else do; y = 'str552' || b; call r551 y, a; end
  return x~length + .array~of(a, b)~items
::routine r553
  use arg a, b
  if a > b then x = a + 553 * (b - 1)
  else do; y = 'str553' || b; call r552 y, a; end
  return x~length + .array~of(a, b)~items
::routine r554
  use arg a, b
  if a > b then x = a + 554 * (b - 1)
  else do; y = 'str554' || b; call r553 y, a; end
  return x~length + .array~of(a, b)~items
::routine r555
  use arg a, b
  if a > b then x = a + 555 * (b - 1)
  else do; y = 'str555' || b; call r554 y, a; end
  return x~length + .array~of(a, b)~items
::routine r556
  use arg a, b
  if a > b then x = a + 556 * (b - 1)
  else do; y = 'str556' || b; call r555 y, a; end
  return x~length + .array~of(a, b)~items
::routine r557
  use arg a, b
  if a > b then x = a + 557 * (b - 1)
  else do; y = 'str557' || b; call r556 y, a; end
  return x~length + .array~of(a, b)~items
::routine r558
  use arg a, b
  if a > b then x = a + 558 * (b - 1)
  else do; y = 'str558' || b; call r557 y, a; end
  return x~length + .array~of(a, b)~items
::routine r559
  use arg a, b
  if a > b then x = a + 559 * (b - 1)
  else do; y = 'str559' || b; call r558 y, a; end
  return x~length + .array~of(a, b)~items
::routine r560
  use arg a, b
  if a > b then x = a + 560 * (b - 1)
  else do; y = 'str560' || b; call r559 y, a; end
  return x~length + .array~of(a, b)~items
::routine r561
  use arg a, b
  if a > b then x = a + 561 * (b - 1)
  else do; y = 'str561' || b; call r560 y, a; end
  return x~length + .array~of(a, b)~items
::routine r562
  use arg a, b
  if a > b then x = a + 562 * (b - 1)
  else do; y = 'str562' || b; call r561 y, a; end
  return x~length + .array~of(a, b)~items
::routine r563
  use arg a, b
  if a > b then x = a + 563 * (b - 1)
  else do; y = 'str563' || b; call r562 y, a; end
  return x~length + .array~of(a, b)~items
::routine r564
  use arg a, b
  if a > b then x = a + 564 * (b - 1)
  else do; y = 'str564' || b; call r563 y, a; end
  return x~length + .array~of(a, b)~items
::routine r565
  use arg a, b
  if a > b then x = a + 565 * (b - 1)
  else do; y = 'str565' || b; call r564 y, a; end
  return x~length + .array~of(a, b)~items
::routine r566
  use arg a, b
  if a > b then x = a + 566 * (b - 1)
  else do; y = 'str566' || b; call r565 y, a; end
  return x~length + .array~of(a, b)~items
::routine r567
  use arg a, b
  if a > b then x = a + 567 * (b - 1)
  else do; y = 'str567' || b; call r566 y, a; end
  return x~length + .array~of(a, b)~items
::routine r568
  use arg a, b
  if a > b then x = a + 568 * (b - 1)
  else do; y = 'str568' || b; call r567 y, a; end
  return x~length + .array~of(a, b)~items
::routine r569
  use arg a, b
  if a > b then x = a + 569 * (b - 1)
  else do; y = 'str569' || b; call r568 y, a; end
  return x~length + .array~of(a, b)~items
::routine r570
  use arg a, b
  if a > b then x = a + 570 * (b - 1)
  else do; y = 'str570' || b; call r569 y, a; end
  return x~length + .array~of(a, b)~items
::routine r571
  use arg a, b
  if a > b then x = a + 571 * (b - 1)
  else do; y = 'str571' || b; call r570 y, a; end
  return x~length + .array~of(a, b)~items
::routine r572
  use arg a, b
  if a > b then x = a + 572 * (b - 1)
  else do; y = 'str572' || b; call r571 y, a; end
  return x~length + .array~of(a, b)~items
::routine r573
  use arg a, b
  if a > b then x = a + 573 * (b - 1)
  else do; y = 'str573' || b; call r572 y, a; end
  return x~length + .array~of(a, b)~items
::routine r574
  use arg a, b
  if a > b then x = a + 574 * (b - 1)
  else do; y = 'str574' || b; call r573 y, a; end
  return x~length + .array~of(a, b)~items
::routine r575
  use arg a, b
  if a > b then x = a + 575 * (b - 1)
  else do; y = 'str575' || b; call r574 y, a; end
  return x~length + .array~of(a, b)~items
::routine r576
  use arg a, b
  if a > b then x = a + 576 * (b - 1)
  else do; y = 'str576' || b; call r575 y, a; end
  return x~length + .array~of(a, b)~items
::routine r577
  use arg a, b
  if a > b then x = a + 577 * (b - 1)
  else do; y = 'str577' || b; call r576 y, a; end
  return x~length + .array~of(a, b)~items
::routine r578
  use arg a, b
  if a > b then x = a + 578 * (b - 1)
  else do; y = 'str578' || b; call r577 y, a; end
  return x~length + .array~of(a, b)~items
::routine r579
  use arg a, b
  if a > b then x = a + 579 * (b - 1)
  else do; y = 'str579' || b; call r578 y, a; end
  return x~length + .array~of(a, b)~items
::routine r580
  use arg a, b
  if a > b then x = a + 580 * (b - 1)
  else do; y = 'str580' || b; call r579 y, a; end
  return x~length + .array~of(a, b)~items
::routine r581
  use arg a, b
  if a > b then x = a + 581 * (b - 1)
  else do; y = 'str581' || b; call r580 y, a; end
  return x~length + .array~of(a, b)~items
::routine r582
  use arg a, b
  if a > b then x = a + 582 * (b - 1)
  else do; y = 'str582' || b; call r581 y, a; end
  return x~length + .array~of(a, b)~items
::routine r583
  use arg a, b
  if a > b then x = a + 583 * (b - 1)
  else do; y = 'str583' || b; call r582 y, a; end
  return x~length + .array~of(a, b)~items
::routine r584
  use arg a, b
  if a > b then x = a + 584 * (b - 1)
  else do; y = 'str584' || b; call r583 y, a; end
  return x~length + .array~of(a, b)~items
::routine r585
  use arg a, b
  if a > b then x = a + 585 * (b - 1)
  else do; y = 'str585' || b; call r584 y, a; end
  return x~length + .array~of(a, b)~items
::routine r586
  use arg a, b
  if a > b then x = a + 586 * (b - 1)
  else do; y = 'str586' || b; call r585 y, a; end
  return x~length + .array~of(a, b)~items
::routine r587
  use arg a, b
  if a > b then x = a + 587 * (b - 1)
  else do; y = 'str587' || b; call r586 y, a; end
  return x~length + .array~of(a, b)~items
::routine r588
  use arg a, b
  if a > b then x = a + 588 * (b - 1)
  else do; y = 'str588' || b; call r587 y, a; end
  return x~length + .array~of(a, b)~items
::routine r589
  use arg a, b
  if a > b then x = a + 589 * (b - 1)
  else do; y = 'str589' || b; call r588 y, a; end
  return x~length + .array~of(a, b)~items
::routine r590
  use arg a, b
  if a > b then x = a + 590 * (b - 1)
  else do; y = 'str590' || b; call r589 y, a; end
  return x~length + .array~of(a, b)~items
::routine r591
  use arg a, b
  if a > b then x = a + 591 * (b - 1)
  else do; y = 'str591' || b; call r590 y, a; end
  return x~length + .array~of(a, b)~items
::routine r592
  use arg a, b
  if a > b then x = a + 592 * (b - 1)
  else do; y = 'str592' || b; call r591 y, a; end
  return x~length + .array~of(a, b)~items
::routine r593
  use arg a, b
  if a > b then x = a + 593 * (b - 1)
  else do; y = 'str593' || b; call r592 y, a; end
  return x~length + .array~of(a, b)~items
::routine r594
  use arg a, b
  if a > b then x = a + 594 * (b - 1)
  else do; y = 'str594' || b; call r593 y, a; end
  return x~length + .array~of(a, b)~items
::routine r595
  use arg a, b
  if a > b then x = a + 595 * (b - 1)
  else do; y = 'str595' || b; call r594 y, a; end
  return x~length + .array~of(a, b)~items
::routine r596
  use arg a, b
  if a > b then x = a + 596 * (b - 1)
  else do; y = 'str596' || b; call r595 y, a; end
  return x~length + .array~of(a, b)~items
::routine r597
  use arg a, b
  if a > b then x = a + 597 * (b - 1)
  else do; y = 'str597' || b; call r596 y, a; end
  return x~length + .array~of(a, b)~items
::routine r598
  use arg a, b
  if a > b then x = a + 598 * (b - 1)
  else do; y = 'str598' || b; call r597 y, a; end
  return x~length + .array~of(a, b)~items
::routine r599
  use arg a, b
  if a > b then x = a + 599 * (b - 1)
  else do; y = 'str599' || b; call r598 y, a; end
  return x~length + .array~of(a, b)~items
::routine r600
  use arg a, b
  if a > b then x = a + 600 * (b - 1)
  else do; y = 'str600' || b; call r599 y, a; end
  return x~length + .array~of(a, b)~items
::routine r601
  use arg a, b
  if a > b then x = a + 601 * (b - 1)
  else do; y = 'str601' || b; call r600 y, a; end
  return x~length + .array~of(a, b)~items
::routine r602
  use arg a, b
  if a > b then x = a + 602 * (b - 1)
  else do; y = 'str602' || b; call r601 y, a; end
  return x~length + .array~of(a, b)~items
::routine r603
  use arg a, b
  if a > b then x = a + 603 * (b - 1)
  else do; y = 'str603' || b; call r602 y, a; end
  return x~length + .array~of(a, b)~items
::routine r604
  use arg a, b
  if a > b then x = a + 604 * (b - 1)
  else do; y = 'str604' || b; call r603 y, a; end
  return x~length + .array~of(a, b)~items
::routine r605
  use arg a, b
  if a > b then x = a + 605 * (b - 1)
  else do; y = 'str605' || b; call r604 y, a; end
  return x~length + .array~of(a, b)~items
::routine r606
  use arg a, b
  if a > b then x = a + 606 * (b - 1)
  else do; y = 'str606' || b; call r605 y, a; end
  return x~length + .array~of(a, b)~items
::routine r607
  use arg a, b
  if a > b then x = a + 607 * (b - 1)
  else do; y = 'str607' || b; call r606 y, a; end
  return x~length + .array~of(a, b)~items
::routine r608
  use arg a, b
  if a > b then x = a + 608 * (b - 1)
  else do; y = 'str608' || b; call r607 y, a; end
  return x~length + .array~of(a, b)~items
::routine r609
  use arg a, b
  if a > b then x = a + 609 * (b - 1)
  else do; y = 'str609' || b; call r608 y, a; end
  return x~length + .array~of(a, b)~items
::routine r610
  use arg a, b
  if a > b then x = a + 610 * (b - 1)
  else do; y = 'str610' || b; call r609 y, a; end
  return x~length + .array~of(a, b)~items
::routine r611
  use arg a, b
  if a > b then x = a + 611 * (b - 1)
  else do; y = 'str611' || b; call r610 y, a; end
  return x~length + .array~of(a, b)~items
::routine r612
  use arg a, b
  if a > b then x = a + 612 * (b - 1)
  else do; y = 'str612' || b; call r611 y, a; end
  return x~length + .array~of(a, b)~items
::routine r613
  use arg a, b
  if a > b then x = a + 613 * (b - 1)
  else do; y = 'str613' || b; call r612 y, a; end
  return x~length + .array~of(a, b)~items
::routine r614
  use arg a, b
  if a > b then x = a + 614 * (b - 1)
  else do; y = 'str614' || b; call r613 y, a; end
  return x~length + .array~of(a, b)~items
::routine r615
  use arg a, b
  if a > b then x = a + 615 * (b - 1)
  else do; y = 'str615' || b; call r614 y, a; end
  return x~length + .array~of(a, b)~items
::routine r616
  use arg a, b
  if a > b then x = a + 616 * (b - 1)
  else do; y = 'str616' || b; call r615 y, a; end
  return x~length + .array~of(a, b)~items
::routine r617
  use arg a, b
  if a > b then x = a + 617 * (b - 1)
  else do; y = 'str617' || b; call r616 y, a; end
  return x~length + .array~of(a, b)~items
::routine r618
  use arg a, b
  if a > b then x = a + 618 * (b - 1)
  else do; y = 'str618' || b; call r617 y, a; end
  return x~length + .array~of(a, b)~items
::routine r619
  use arg a, b
  if a > b then x = a + 619 * (b - 1)
  else do; y = 'str619' || b; call r618 y, a; end
  return x~length + .array~of(a, b)~items
::routine r620
  use arg a, b
  if a > b then x = a + 620 * (b - 1)
  else do; y = 'str620' || b; call r619 y, a; end
  return x~length + .array~of(a, b)~items
::routine r621
  use arg a, b
  if a > b then x = a + 621 * (b - 1)
  else do; y = 'str621' || b; call r620 y, a; end
  return x~length + .array~of(a, b)~items
::routine r622
  use arg a, b
  if a > b then x = a + 622 * (b - 1)
  else do; y = 'str622' || b; call r621 y, a; end
  return x~length + .array~of(a, b)~items
::routine r623
  use arg a, b
  if a > b then x = a + 623 * (b - 1)
  else do; y = 'str623' || b; call r622 y, a; end
  return x~length + .array~of(a, b)~items
::routine r624
  use arg a, b
  if a > b then x = a + 624 * (b - 1)
  else do; y = 'str624' || b; call r623 y, a; end
  return x~length + .array~of(a, b)~items
::routine r625
  use arg a, b
  if a > b then x = a + 625 * (b - 1)
  else do; y = 'str625' || b; call r624 y, a; end
  return x~length + .array~of(a, b)~items
::routine r626
  use arg a, b
  if a > b then x = a + 626 * (b - 1)
  else do; y = 'str626' || b; call r625 y, a; end
  return x~length + .array~of(a, b)~items
::routine r627
  use arg a, b
  if a > b then x = a + 627 * (b - 1)
  else do; y = 'str627' || b; call r626 y, a; end
  return x~length + .array~of(a, b)~items
::routine r628
  use arg a, b
  if a > b then x = a + 628 * (b - 1)
  else do; y = 'str628' || b; call r627 y, a; end
  return x~length + .array~of(a, b)~items
::routine r629
  use arg a, b
  if a > b then x = a + 629 * (b - 1)
  else do; y = 'str629' || b; call r628 y, a; end
  return x~length + .array~of(a, b)~items
::routine r630
  use arg a, b
  if a > b then x = a + 630 * (b - 1)
  else do; y = 'str630' || b; call r629 y, a; end
  return x~length + .array~of(a, b)~items
::routine r631
  use arg a, b
  if a > b then x = a + 631 * (b - 1)
  else do; y = 'str631' || b; call r630 y, a; end
  return x~length + .array~of(a, b)~items
::routine r632
  use arg a, b
  if a > b then x = a + 632 * (b - 1)
  else do; y = 'str632' || b; call r631 y, a; end
  return x~length + .array~of(a, b)~items
::routine r633
  use arg a, b
  if a > b then x = a + 633 * (b - 1)
  else do; y = 'str633' || b; call r632 y, a; end
  return x~length + .array~of(a, b)~items
::routine r634
  use arg a, b
  if a > b then x = a + 634 * (b - 1)
  else do; y = 'str634' || b; call r633 y, a; end
  return x~length + .array~of(a, b)~items
::routine r635
  use arg a, b
  if a > b then x = a + 635 * (b - 1)
  else do; y = 'str635' || b; call r634 y, a; end
  return x~length + .array~of(a, b)~items
::routine r636
  use arg a, b
  if a > b then x = a + 636 * (b - 1)
  else do; y = 'str636' || b; call r635 y, a; end
  return x~length + .array~of(a, b)~items
::routine r637
  use arg a, b
  if a > b then x = a + 637 * (b - 1)
  else do; y = 'str637' || b; call r636 y, a; end
  return x~length + .array~of(a, b)~items
::routine r638
  use arg a, b
  if a > b then x = a + 638 * (b - 1)
  else do; y = 'str638' || b; call r637 y, a; end
  return x~length + .array~of(a, b)~items
::routine r639
  use arg a, b
  if a > b then x = a + 639 * (b - 1)
  else do; y = 'str639' || b; call r638 y, a; end
  return x~length + .array~of(a, b)~items
::routine r640
  use arg a, b
  if a > b then x = a + 640 * (b - 1)
  else do; y = 'str640' || b; call r639 y, a; end
  return x~length + .array~of(a, b)~items
::routine r641
  use arg a, b
  if a > b then x = a + 641 * (b - 1)
  else do; y = 'str641' || b; call r640 y, a; end
  return x~length + .array~of(a, b)~items
::routine r642
  use arg a, b
  if a > b then x = a + 642 * (b - 1)
  else do; y = 'str642' || b; call r641 y, a; end
  return x~length + .array~of(a, b)~items
::routine r643
  use arg a, b
  if a > b then x = a + 643 * (b - 1)
  else do; y = 'str643' || b; call r642 y, a; end
  return x~length + .array~of(a, b)~items
::routine r644
  use arg a, b
  if a > b then x = a + 644 * (b - 1)
  else do; y = 'str644' || b; call r643 y, a; end
  return x~length + .array~of(a, b)~items
::routine r645
  use arg a, b
  if a > b then x = a + 645 * (b - 1)
  else do; y = 'str645' || b; call r644 y, a; end
  return x~length + .array~of(a, b)~items
::routine r646
  use arg a, b
  if a > b then x = a + 646 * (b - 1)
  else do; y = 'str646' || b; call r645 y, a; end
  return x~length + .array~of(a, b)~items
::routine r647
  use arg a, b
  if a > b then x = a + 647 * (b - 1)
  else do; y = 'str647' || b; call r646 y, a; end
  return x~length + .array~of(a, b)~items
::routine r648
  use arg a, b
  if a > b then x = a + 648 * (b - 1)
  else do; y = 'str648' || b; call r647 y, a; end
  return x~length + .array~of(a, b)~items
::routine r649
  use arg a, b
  if a > b then x = a + 649 * (b - 1)
  else do; y = 'str649' || b; call r648 y, a; end
  return x~length + .array~of(a, b)~items
::routine r650
  use arg a, b
  if a > b then x = a + 650 * (b - 1)
  else do; y = 'str650' || b; call r649 y, a; end
  return x~length + .array~of(a, b)~items
::routine r651
  use arg a, b
  if a > b then x = a + 651 * (b - 1)
  else do; y = 'str651' || b; call r650 y, a; end
  return x~length + .array~of(a, b)~items
::routine r652
  use arg a, b
  if a > b then x = a + 652 * (b - 1)
  else do; y = 'str652' || b; call r651 y, a; end
  return x~length + .array~of(a, b)~items
::routine r653
  use arg a, b
  if a > b then x = a + 653 * (b - 1)
  else do; y = 'str653' || b; call r652 y, a; end
  return x~length + .array~of(a, b)~items
::routine r654
  use arg a, b
  if a > b then x = a + 654 * (b - 1)
  else do; y = 'str654' || b; call r653 y, a; end
  return x~length + .array~of(a, b)~items
::routine r655
  use arg a, b
  if a > b then x = a + 655 * (b - 1)
  else do; y = 'str655' || b; call r654 y, a; end
  return x~length + .array~of(a, b)~items
::routine r656
  use arg a, b
  if a > b then x = a + 656 * (b - 1)
  else do; y = 'str656' || b; call r655 y, a; end
  return x~length + .array~of(a, b)~items
::routine r657
  use arg a, b
  if a > b then x = a + 657 * (b - 1)
  else do; y = 'str657' || b; call r656 y, a; end
  return x~length + .array~of(a, b)~items
::routine r658
  use arg a, b
  if a > b then x = a + 658 * (b - 1)
  else do; y = 'str658' || b; call r657 y, a; end
  return x~length + .array~of(a, b)~items
::routine r659
  use arg a, b
  if a > b then x = a + 659 * (b - 1)
  else do; y = 'str659' || b; call r658 y, a; end
  return x~length + .array~of(a, b)~items
::routine r660
  use arg a, b
  if a > b then x = a + 660 * (b - 1)
  else do; y = 'str660' || b; call r659 y, a; end
  return x~length + .array~of(a, b)~items
::routine r661
  use arg a, b
  if a > b then x = a + 661 * (b - 1)
  else do; y = 'str661' || b; call r660 y, a; end
  return x~length + .array~of(a, b)~items
::routine r662
  use arg a, b
  if a > b then x = a + 662 * (b - 1)
  else do; y = 'str662' || b; call r661 y, a; end
  return x~length + .array~of(a, b)~items
::routine r663
  use arg a, b
  if a > b then x = a + 663 * (b - 1)
  else do; y = 'str663' || b; call r662 y, a; end
  return x~length + .array~of(a, b)~items
::routine r664
  use arg a, b
  if a > b then x = a + 664 * (b - 1)
  else do; y = 'str664' || b; call r663 y, a; end
  return x~length + .array~of(a, b)~items
::routine r665
  use arg a, b
  if a > b then x = a + 665 * (b - 1)
  else do; y = 'str665' || b; call r664 y, a; end
  return x~length + .array~of(a, b)~items
::routine r666
  use arg a, b
  if a > b then x = a + 666 * (b - 1)
  else do; y = 'str666' || b; call r665 y, a; end
  return x~length + .array~of(a, b)~items
::routine r667
  use arg a, b
  if a > b then x = a + 667 * (b - 1)
  else do; y = 'str667' || b; call r666 y, a; end
  return x~length + .array~of(a, b)~items
::routine r668
  use arg a, b
  if a > b then x = a + 668 * (b - 1)
  else do; y = 'str668' || b; call r667 y, a; end
  return x~length + .array~of(a, b)~items
::routine r669
  use arg a, b
  if a > b then x = a + 669 * (b - 1)
  else do; y = 'str669' || b; call r668 y, a; end
  return x~length + .array~of(a, b)~items
::routine r670
  use arg a, b
  if a > b then x = a + 670 * (b - 1)
  else do; y = 'str670' || b; call r669 y, a; end
  return x~length + .array~of(a, b)~items
::routine r671
  use arg a, b
  if a > b then x = a + 671 * (b - 1)
  else do; y = 'str671' || b; call r670 y, a; end
  return x~length + .array~of(a, b)~items
::routine r672
  use arg a, b
  if a > b then x = a + 672 * (b - 1)
  else do; y = 'str672' || b; call r671 y, a; end
  return x~length + .array~of(a, b)~items
::routine r673
  use arg a, b
  if a > b then x = a + 673 * (b - 1)
  else do; y = 'str673' || b; call r672 y, a; end
  return x~length + .array~of(a, b)~items
::routine r674
  use arg a, b
  if a > b then x = a + 674 * (b - 1)
  else do; y = 'str674' || b; call r673 y, a; end
  return x~length + .array~of(a, b)~items
::routine r675
  use arg a, b
  if a > b then x = a + 675 * (b - 1)
  else do; y = 'str675' || b; call r674 y, a; end
  return x~length + .array~of(a, b)~items
::routine r676
  use arg a, b
  if a > b then x = a + 676 * (b - 1)
  else do; y = 'str676' || b; call r675 y, a; end
  return x~length + .array~of(a, b)~items
::routine r677
  use arg a, b
  if a > b then x = a + 677 * (b - 1)
  else do; y = 'str677' || b; call r676 y, a; end
  return x~length + .array~of(a, b)~items
::routine r678
  use arg a, b
  if a > b then x = a + 678 * (b - 1)
  else do; y = 'str678' || b; call r677 y, a; end
  return x~length + .array~of(a, b)~items
::routine r679
  use arg a, b
  if a > b then x = a + 679 * (b - 1)
  else do; y = 'str679' || b; call r678 y, a; end
  return x~length + .array~of(a, b)~items
::routine r680
  use arg a, b
  if a > b then x = a + 680 * (b - 1)
  else do; y = 'str680' || b; call r679 y, a; end
  return x~length + .array~of(a, b)~items
::routine r681
  use arg a, b
  if a > b then x = a + 681 * (b - 1)
  else do; y = 'str681' || b; call r680 y, a; end
  return x~length + .array~of(a, b)~items
::routine r682
  use arg a, b
  if a > b then x = a + 682 * (b - 1)
  else do; y = 'str682' || b; call r681 y, a; end
  return x~length + .array~of(a, b)~items
::routine r683
  use arg a, b
  if a > b then x = a + 683 * (b - 1)
  else do; y = 'str683' || b; call r682 y, a; end
  return x~length + .array~of(a, b)~items
::routine r684
  use arg a, b
  if a > b then x = a + 684 * (b - 1)
  else do; y = 'str684' || b; call r683 y, a; end
  return x~length + .array~of(a, b)~items
::routine r685
  use arg a, b
  if a > b then x = a + 685 * (b - 1)
  else do; y = 'str685' || b; call r684 y, a; end
  return x~length + .array~of(a, b)~items
::routine r686
  use arg a, b
  if a > b then x = a + 686 * (b - 1)
  else do; y = 'str686' || b; call r685 y, a; end
  return x~length + .array~of(a, b)~items
::routine r687
  use arg a, b
  if a > b then x = a + 687 * (b - 1)
  else do; y = 'str687' || b; call r686 y, a; end
  return x~length + .array~of(a, b)~items
::routine r688
  use arg a, b
  if a > b then x = a + 688 * (b - 1)
  else do; y = 'str688' || b; call r687 y, a; end
  return x~length + .array~of(a, b)~items
::routine r689
  use arg a, b
  if a > b then x = a + 689 * (b - 1)
  else do; y = 'str689' || b; call r688 y, a; end
  return x~length + .array~of(a, b)~items
::routine r690
  use arg a, b
  if a > b then x = a + 690 * (b - 1)
  else do; y = 'str690' || b; call r689 y, a; end
  return x~length + .array~of(a, b)~items
::routine r691
  use arg a, b
  if a > b then x = a + 691 * (b - 1)
  else do; y = 'str691' || b; call r690 y, a; end
  return x~length + .array~of(a, b)~items
::routine r692
  use arg a, b
  if a > b then x = a + 692 * (b - 1)
  else do; y = 'str692' || b; call r691 y, a; end
  return x~length + .array~of(a, b)~items
::routine r693
  use arg a, b
  if a > b then x = a + 693 * (b - 1)
  else do; y = 'str693' || b; call r692 y, a; end
  return x~length + .array~of(a, b)~items
::routine r694
  use arg a, b
  if a > b then x = a + 694 * (b - 1)
  else do; y = 'str694' || b; call r693 y, a; end
  return x~length + .array~of(a, b)~items
::routine r695
  use arg a, b
  if a > b then x = a + 695 * (b - 1)
  else do; y = 'str695' || b; call r694 y, a; end
  return x~length + .array~of(a, b)~items
::routine r696
  use arg a, b
  if a > b then x = a + 696 * (b - 1)
  else do; y = 'str696' || b; call r695 y, a; end
  return x~length + .array~of(a, b)~items
::routine r697
  use arg a, b
  if a > b then x = a + 697 * (b - 1)
  else do; y = 'str697' || b; call r696 y, a; end
  return x~length + .array~of(a, b)~items
::routine r698
  use arg a, b
  if a > b then x = a + 698 * (b - 1)
  else do; y = 'str698' || b; call r697 y, a; end
  return x~length + .array~of(a, b)~items
::routine r699
  use arg a, b
  if a > b then x = a + 699 * (b - 1)
  else do; y = 'str699' || b; call r698 y, a; end
  return x~length + .array~of(a, b)~items
::routine r700
  use arg a, b
  if a > b then x = a + 700 * (b - 1)
  else do; y = 'str700' || b; call r699 y, a; end
  return x~length + .array~of(a, b)~items
::routine r701
  use arg a, b
  if a > b then x = a + 701 * (b - 1)
  else do; y = 'str701' || b; call r700 y, a; end
  return x~length + .array~of(a, b)~items
::routine r702
  use arg a, b
  if a > b then x = a + 702 * (b - 1)
  else do; y = 'str702' || b; call r701 y, a; end
  return x~length + .array~of(a, b)~items
::routine r703
  use arg a, b
  if a > b then x = a + 703 * (b - 1)
  else do; y = 'str703' || b; call r702 y, a; end
  return x~length + .array~of(a, b)~items
::routine r704
  use arg a, b
  if a > b then x = a + 704 * (b - 1)
  else do; y = 'str704' || b; call r703 y, a; end
  return x~length + .array~of(a, b)~items
::routine r705
  use arg a, b
  if a > b then x = a + 705 * (b - 1)
  else do; y = 'str705' || b; call r704 y, a; end
  return x~length + .array~of(a, b)~items
::routine r706
  use arg a, b
  if a > b then x = a + 706 * (b - 1)
  else do; y = 'str706' || b; call r705 y, a; end
  return x~length + .array~of(a, b)~items
::routine r707
  use arg a, b
  if a > b then x = a + 707 * (b - 1)
  else do; y = 'str707' || b; call r706 y, a; end
  return x~length + .array~of(a, b)~items
::routine r708
  use arg a, b
  if a > b then x = a + 708 * (b - 1)
  else do; y = 'str708' || b; call r707 y, a; end
  return x~length + .array~of(a, b)~items
::routine r709
  use arg a, b
  if a > b then x = a + 709 * (b - 1)
  else do; y = 'str709' || b; call r708 y, a; end
  return x~length + .array~of(a, b)~items
::routine r710
  use arg a, b
  if a > b then x = a + 710 * (b - 1)
  else do; y = 'str710' || b; call r709 y, a; end
  return x~length + .array~of(a, b)~items
::routine r711
  use arg a, b
  if a > b then x = a + 711 * (b - 1)
  else do; y = 'str711' || b; call r710 y, a; end
  return x~length + .array~of(a, b)~items
::routine r712
  use arg a, b
  if a > b then x = a + 712 * (b - 1)
  else do; y = 'str712' || b; call r711 y, a; end
  return x~length + .array~of(a, b)~items
::routine r713
  use arg a, b
  if a > b then x = a + 713 * (b - 1)
  else do; y = 'str713' || b; call r712 y, a; end
  return x~length + .array~of(a, b)~items
::routine r714
  use arg a, b
  if a > b then x = a + 714 * (b - 1)
  else do; y = 'str714' || b; call r713 y, a; end
  return x~length + .array~of(a, b)~items
::routine r715
  use arg a, b
  if a > b then x = a + 715 * (b - 1)
  else do; y = 'str715' || b; call r714 y, a; end
  return x~length + .array~of(a, b)~items
::routine r716
  use arg a, b
  if a > b then x = a + 716 * (b - 1)
  else do; y = 'str716' || b; call r715 y, a; end
  return x~length + .array~of(a, b)~items
::routine r717
  use arg a, b
  if a > b then x = a + 717 * (b - 1)
  else do; y = 'str717' || b; call r716 y, a; end
  return x~length + .array~of(a, b)~items
::routine r718
  use arg a, b
  if a > b then x = a + 718 * (b - 1)
  else do; y = 'str718' || b; call r717 y, a; end
  return x~length + .array~of(a, b)~items
::routine r719
  use arg a, b
  if a > b then x = a + 719 * (b - 1)
  else do; y = 'str719' || b; call r718 y, a; end
  return x~length + .array~of(a, b)~items
::routine r720
  use arg a, b
  if a > b then x = a + 720 * (b - 1)
  else do; y = 'str720' || b; call r719 y, a; end
  return x~length + .array~of(a, b)~items
::routine r721
  use arg a, b
  if a > b then x = a + 721 * (b - 1)
  else do; y = 'str721' || b; call r720 y, a; end
  return x~length + .array~of(a, b)~items
::routine r722
  use arg a, b
  if a > b then x = a + 722 * (b - 1)
  else do; y = 'str722' || b; call r721 y, a; end
  return x~length + .array~of(a, b)~items
::routine r723
  use arg a, b
  if a > b then x = a + 723 * (b - 1)
  else do; y = 'str723' || b; call r722 y, a; end
  return x~length + .array~of(a, b)~items
::routine r724
  use arg a, b
  if a > b then x = a + 724 * (b - 1)
  else do; y = 'str724' || b; call r723 y, a; end
  return x~length + .array~of(a, b)~items
::routine r725
  use arg a, b
  if a > b then x = a + 725 * (b - 1)
  else do; y = 'str725' || b; call r724 y, a; end
  return x~length + .array~of(a, b)~items
::routine r726
  use arg a, b
  if a > b then x = a + 726 * (b - 1)
  else do; y = 'str726' || b; call r725 y, a; end
  return x~length + .array~of(a, b)~items
::routine r727
  use arg a, b
  if a > b then x = a + 727 * (b - 1)
  else do; y = 'str727' || b; call r726 y, a; end
  return x~length + .array~of(a, b)~items
::routine r728
  use arg a, b
  if a > b then x = a + 728 * (b - 1)
  else do; y = 'str728' || b; call r727 y, a; end
  return x~length + .array~of(a, b)~items
::routine r729
  use arg a, b
  if a > b then x = a + 729 * (b - 1)
  else do; y = 'str729' || b; call r728 y, a; end
  return x~length + .array~of(a, b)~items
::routine r730
  use arg a, b
  if a > b then x = a + 730 * (b - 1)
  else do; y = 'str730' || b; call r729 y, a; end
  return x~length + .array~of(a, b)~items
::routine r731
  use arg a, b
  if a > b then x = a + 731 * (b - 1)
  else do; y = 'str731' || b; call r730 y, a; end
  return x~length + .array~of(a, b)~items
::routine r732
  use arg a, b
  if a > b then x = a + 732 * (b - 1)
  else do; y = 'str732' || b; call r731 y, a; end
  return x~length + .array~of(a, b)~items
::routine r733
  use arg a, b
  if a > b then x = a + 733 * (b - 1)
  else do; y = 'str733' || b; call r732 y, a; end
  return x~length + .array~of(a, b)~items
::routine r734
  use arg a, b
  if a > b then x = a + 734 * (b - 1)
  else do; y = 'str734' || b; call r733 y, a; end
  return x~length + .array~of(a, b)~items
::routine r735
  use arg a, b
  if a > b then x = a + 735 * (b - 1)
  else do; y = 'str735' || b; call r734 y, a; end
  return x~length + .array~of(a, b)~items
::routine r736
  use arg a, b
  if a > b then x = a + 736 * (b - 1)
  else do; y = 'str736' || b; call r735 y, a; end
  return x~length + .array~of(a, b)~items
::routine r737
  use arg a, b
  if a > b then x = a + 737 * (b - 1)
  else do; y = 'str737' || b; call r736 y, a; end
  return x~length + .array~of(a, b)~items
::routine r738
  use arg a, b
  if a > b then x = a + 738 * (b - 1)
  else do; y = 'str738' || b; call r737 y, a; end
  return x~length + .array~of(a, b)~items
::routine r739
  use arg a, b
  if a > b then x = a + 739 * (b - 1)
  else do; y = 'str739' || b; call r738 y, a; end
  return x~length + .array~of(a, b)~items
::routine r740
  use arg a, b
  if a > b then x = a + 740 * (b - 1)
  else do; y = 'str740' || b; call r739 y, a; end
  return x~length + .array~of(a, b)~items
::routine r741
  use arg a, b
  if a > b then x = a + 741 * (b - 1)
  else do; y = 'str741' || b; call r740 y, a; end
  return x~length + .array~of(a, b)~items
::routine r742
  use arg a, b
  if a > b then x = a + 742 * (b - 1)
  else do; y = 'str742' || b; call r741 y, a; end
  return x~length + .array~of(a, b)~items
::routine r743
  use arg a, b
  if a > b then x = a + 743 * (b - 1)
  else do; y = 'str743' || b; call r742 y, a; end
  return x~length + .array~of(a, b)~items
::routine r744
  use arg a, b
  if a > b then x = a + 744 * (b - 1)
  else do; y = 'str744' || b; call r743 y, a; end
  return x~length + .array~of(a, b)~items
::routine r745
  use arg a, b
  if a > b then x = a + 745 * (b - 1)
  else do; y = 'str745' || b; call r744 y, a; end
  return x~length + .array~of(a, b)~items
::routine r746
  use arg a, b
  if a > b then x = a + 746 * (b - 1)
  else do; y = 'str746' || b; call r745 y, a; end
  return x~length + .array~of(a, b)~items
::routine r747
  use arg a, b
  if a > b then x = a + 747 * (b - 1)
  else do; y = 'str747' || b; call r746 y, a; end
  return x~length + .array~of(a, b)~items
::routine r748
  use arg a, b
  if a > b then x = a + 748 * (b - 1)
  else do; y = 'str748' || b; call r747 y, a; end
  return x~length + .array~of(a, b)~items
::routine r749
  use arg a, b
  if a > b then x = a + 749 * (b - 1)
  else do; y = 'str749' || b; call r748 y, a; end
  return x~length + .array~of(a, b)~items
::routine r750
  use arg a, b
  if a > b then x = a + 750 * (b - 1)
  else do; y = 'str750' || b; call r749 y, a; end
  return x~length + .array~of(a, b)~items
