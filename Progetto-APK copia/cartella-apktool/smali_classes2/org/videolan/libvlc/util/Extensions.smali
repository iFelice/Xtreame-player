.class public Lorg/videolan/libvlc/util/Extensions;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AUDIO:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PLAYLIST:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUBTITLES:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final VIDEO:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 66

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/videolan/libvlc/util/Extensions;->VIDEO:Ljava/util/HashSet;

    .line 7
    .line 8
    new-instance v1, Ljava/util/HashSet;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lorg/videolan/libvlc/util/Extensions;->AUDIO:Ljava/util/HashSet;

    .line 14
    .line 15
    new-instance v2, Ljava/util/HashSet;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v2, Lorg/videolan/libvlc/util/Extensions;->SUBTITLES:Ljava/util/HashSet;

    .line 21
    .line 22
    new-instance v3, Ljava/util/HashSet;

    .line 23
    .line 24
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v3, Lorg/videolan/libvlc/util/Extensions;->PLAYLIST:Ljava/util/HashSet;

    .line 28
    .line 29
    const-string v64, ".wtv"

    .line 30
    .line 31
    const-string v65, ".xesc"

    .line 32
    .line 33
    const-string v4, ".3g2"

    .line 34
    .line 35
    const-string v5, ".3gp"

    .line 36
    .line 37
    const-string v6, ".3gp2"

    .line 38
    .line 39
    const-string v7, ".3gpp"

    .line 40
    .line 41
    const-string v8, ".amv"

    .line 42
    .line 43
    const-string v9, ".asf"

    .line 44
    .line 45
    const-string v10, ".avi"

    .line 46
    .line 47
    const-string v11, ".bik"

    .line 48
    .line 49
    const-string v12, ".divx"

    .line 50
    .line 51
    const-string v13, ".drc"

    .line 52
    .line 53
    const-string v14, ".dv"

    .line 54
    .line 55
    const-string v15, ".f4v"

    .line 56
    .line 57
    const-string v16, ".flv"

    .line 58
    .line 59
    const-string v17, ".gvi"

    .line 60
    .line 61
    const-string v18, ".gxf"

    .line 62
    .line 63
    const-string v19, ".h264"

    .line 64
    .line 65
    const-string v20, ".ismv"

    .line 66
    .line 67
    const-string v21, ".iso"

    .line 68
    .line 69
    const-string v22, ".m1v"

    .line 70
    .line 71
    const-string v23, ".m2v"

    .line 72
    .line 73
    const-string v24, ".m2t"

    .line 74
    .line 75
    const-string v25, ".m2ts"

    .line 76
    .line 77
    const-string v26, ".m4v"

    .line 78
    .line 79
    const-string v27, ".mkv"

    .line 80
    .line 81
    const-string v28, ".mov"

    .line 82
    .line 83
    const-string v29, ".mp2"

    .line 84
    .line 85
    const-string v30, ".mp2v"

    .line 86
    .line 87
    const-string v31, ".mp4"

    .line 88
    .line 89
    const-string v32, ".mp4v"

    .line 90
    .line 91
    const-string v33, ".mpe"

    .line 92
    .line 93
    const-string v34, ".mpeg"

    .line 94
    .line 95
    const-string v35, ".mpeg1"

    .line 96
    .line 97
    const-string v36, ".mpeg2"

    .line 98
    .line 99
    const-string v37, ".mpeg4"

    .line 100
    .line 101
    const-string v38, ".mpg"

    .line 102
    .line 103
    const-string v39, ".mpv2"

    .line 104
    .line 105
    const-string v40, ".mts"

    .line 106
    .line 107
    const-string v41, ".mtv"

    .line 108
    .line 109
    const-string v42, ".mxf"

    .line 110
    .line 111
    const-string v43, ".mxg"

    .line 112
    .line 113
    const-string v44, ".nsv"

    .line 114
    .line 115
    const-string v45, ".nut"

    .line 116
    .line 117
    const-string v46, ".nuv"

    .line 118
    .line 119
    const-string v47, ".ogm"

    .line 120
    .line 121
    const-string v48, ".ogv"

    .line 122
    .line 123
    const-string v49, ".ogx"

    .line 124
    .line 125
    const-string v50, ".ps"

    .line 126
    .line 127
    const-string v51, ".rec"

    .line 128
    .line 129
    const-string v52, ".rm"

    .line 130
    .line 131
    const-string v53, ".rmvb"

    .line 132
    .line 133
    const-string v54, ".rpl"

    .line 134
    .line 135
    const-string v55, ".thp"

    .line 136
    .line 137
    const-string v56, ".tod"

    .line 138
    .line 139
    const-string v57, ".ts"

    .line 140
    .line 141
    const-string v58, ".tts"

    .line 142
    .line 143
    const-string v59, ".vob"

    .line 144
    .line 145
    const-string v60, ".vro"

    .line 146
    .line 147
    const-string v61, ".webm"

    .line 148
    .line 149
    const-string v62, ".wm"

    .line 150
    .line 151
    const-string v63, ".wmv"

    .line 152
    .line 153
    filled-new-array/range {v4 .. v65}, [Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    const-string v56, ".xa"

    .line 158
    .line 159
    const-string v57, ".xm"

    .line 160
    .line 161
    const-string v5, ".3ga"

    .line 162
    .line 163
    const-string v6, ".669"

    .line 164
    .line 165
    const-string v7, ".a52"

    .line 166
    .line 167
    const-string v8, ".aac"

    .line 168
    .line 169
    const-string v9, ".ac3"

    .line 170
    .line 171
    const-string v10, ".adt"

    .line 172
    .line 173
    const-string v11, ".adts"

    .line 174
    .line 175
    const-string v12, ".aif"

    .line 176
    .line 177
    const-string v13, ".aifc"

    .line 178
    .line 179
    const-string v14, ".aiff"

    .line 180
    .line 181
    const-string v15, ".alac"

    .line 182
    .line 183
    const-string v16, ".amr"

    .line 184
    .line 185
    const-string v17, ".aob"

    .line 186
    .line 187
    const-string v18, ".ape"

    .line 188
    .line 189
    const-string v19, ".au"

    .line 190
    .line 191
    const-string v20, ".awb"

    .line 192
    .line 193
    const-string v21, ".caf"

    .line 194
    .line 195
    const-string v22, ".dts"

    .line 196
    .line 197
    const-string v23, ".flac"

    .line 198
    .line 199
    const-string v24, ".it"

    .line 200
    .line 201
    const-string v25, ".m4a"

    .line 202
    .line 203
    const-string v26, ".m4b"

    .line 204
    .line 205
    const-string v27, ".m4p"

    .line 206
    .line 207
    const-string v28, ".mid"

    .line 208
    .line 209
    const-string v29, ".mka"

    .line 210
    .line 211
    const-string v30, ".mlp"

    .line 212
    .line 213
    const-string v31, ".mod"

    .line 214
    .line 215
    const-string v32, ".mpa"

    .line 216
    .line 217
    const-string v33, ".mp1"

    .line 218
    .line 219
    const-string v34, ".mp2"

    .line 220
    .line 221
    const-string v35, ".mp3"

    .line 222
    .line 223
    const-string v36, ".mpc"

    .line 224
    .line 225
    const-string v37, ".mpga"

    .line 226
    .line 227
    const-string v38, ".oga"

    .line 228
    .line 229
    const-string v39, ".ogg"

    .line 230
    .line 231
    const-string v40, ".oma"

    .line 232
    .line 233
    const-string v41, ".opus"

    .line 234
    .line 235
    const-string v42, ".qcp"

    .line 236
    .line 237
    const-string v43, ".ra"

    .line 238
    .line 239
    const-string v44, ".ram"

    .line 240
    .line 241
    const-string v45, ".rmi"

    .line 242
    .line 243
    const-string v46, ".s3m"

    .line 244
    .line 245
    const-string v47, ".snd"

    .line 246
    .line 247
    const-string v48, ".spx"

    .line 248
    .line 249
    const-string v49, ".tta"

    .line 250
    .line 251
    const-string v50, ".voc"

    .line 252
    .line 253
    const-string v51, ".vqf"

    .line 254
    .line 255
    const-string v52, ".w64"

    .line 256
    .line 257
    const-string v53, ".wav"

    .line 258
    .line 259
    const-string v54, ".wma"

    .line 260
    .line 261
    const-string v55, ".wv"

    .line 262
    .line 263
    filled-new-array/range {v5 .. v57}, [Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v5

    .line 267
    const-string v28, ".ttml"

    .line 268
    .line 269
    const-string v29, ".mks"

    .line 270
    .line 271
    const-string v6, ".idx"

    .line 272
    .line 273
    const-string v7, ".sub"

    .line 274
    .line 275
    const-string v8, ".srt"

    .line 276
    .line 277
    const-string v9, ".ssa"

    .line 278
    .line 279
    const-string v10, ".ass"

    .line 280
    .line 281
    const-string v11, ".smi"

    .line 282
    .line 283
    const-string v12, ".utf"

    .line 284
    .line 285
    const-string v13, ".utf8"

    .line 286
    .line 287
    const-string v14, ".utf-8"

    .line 288
    .line 289
    const-string v15, ".rt"

    .line 290
    .line 291
    const-string v16, ".aqt"

    .line 292
    .line 293
    const-string v17, ".txt"

    .line 294
    .line 295
    const-string v18, ".usf"

    .line 296
    .line 297
    const-string v19, ".jss"

    .line 298
    .line 299
    const-string v20, ".cdg"

    .line 300
    .line 301
    const-string v21, ".psb"

    .line 302
    .line 303
    const-string v22, ".mpsub"

    .line 304
    .line 305
    const-string v23, ".mpl2"

    .line 306
    .line 307
    const-string v24, ".pjs"

    .line 308
    .line 309
    const-string v25, ".dks"

    .line 310
    .line 311
    const-string v26, ".stl"

    .line 312
    .line 313
    const-string v27, ".vtt"

    .line 314
    .line 315
    filled-new-array/range {v6 .. v29}, [Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v6

    .line 319
    const-string v11, ".xspf"

    .line 320
    .line 321
    const-string v12, ".wpl"

    .line 322
    .line 323
    const-string v7, ".m3u"

    .line 324
    .line 325
    const-string v8, ".asx"

    .line 326
    .line 327
    const-string v9, ".b4s"

    .line 328
    .line 329
    const-string v10, ".pls"

    .line 330
    .line 331
    filled-new-array/range {v7 .. v12}, [Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v7

    .line 335
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 336
    .line 337
    .line 338
    move-result-object v4

    .line 339
    invoke-virtual {v0, v4}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 340
    .line 341
    .line 342
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 347
    .line 348
    .line 349
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    invoke-virtual {v2, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 354
    .line 355
    .line 356
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    invoke-virtual {v3, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 361
    .line 362
    .line 363
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
