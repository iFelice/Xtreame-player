.class public Lpe/hf/black20/CatchupActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field public G:Landroid/widget/ImageView;

.field public H:Landroid/widget/ListView;

.field public I:Landroid/widget/TextView;

.field public J:Lorg/json/JSONArray;

.field public final K:Lpe/hf/black20/CatchupActivity;

.field public L:Landroid/content/SharedPreferences;

.field public M:Lh7/i;

.field public N:Landroid/widget/ProgressBar;

.field public O:Ljava/lang/String;

.field public P:Ljava/lang/String;

.field public Q:Ljava/lang/String;

.field public R:Ljava/lang/String;

.field public S:Ljava/lang/String;

.field public T:Ljava/lang/String;

.field public U:Ljava/lang/String;

.field public V:Ljava/lang/String;

.field public W:Ljava/lang/String;

.field public X:Ljava/lang/String;

.field public Y:Ljava/lang/String;

.field public Z:Lorg/json/JSONObject;

.field public final a0:Ljava/util/ArrayList;

.field public final b0:Ljava/util/ArrayList;

.field public final c0:Ljava/util/ArrayList;

.field public d0:Landroid/widget/LinearLayout;

.field public e0:Ljava/text/SimpleDateFormat;

.field public f0:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p0, p0, Lpe/hf/black20/CatchupActivity;->K:Lpe/hf/black20/CatchupActivity;

    .line 5
    .line 6
    const-string v0, "60"

    .line 7
    .line 8
    iput-object v0, p0, Lpe/hf/black20/CatchupActivity;->U:Ljava/lang/String;

    .line 9
    .line 10
    const-string v0, ""

    .line 11
    .line 12
    iput-object v0, p0, Lpe/hf/black20/CatchupActivity;->W:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lpe/hf/black20/CatchupActivity;->X:Ljava/lang/String;

    .line 15
    .line 16
    const-string v0, "no"

    .line 17
    .line 18
    iput-object v0, p0, Lpe/hf/black20/CatchupActivity;->Y:Ljava/lang/String;

    .line 19
    .line 20
    new-instance v0, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lpe/hf/black20/CatchupActivity;->a0:Ljava/util/ArrayList;

    .line 26
    .line 27
    new-instance v0, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lpe/hf/black20/CatchupActivity;->b0:Ljava/util/ArrayList;

    .line 33
    .line 34
    new-instance v0, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    new-instance v0, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lpe/hf/black20/CatchupActivity;->c0:Ljava/util/ArrayList;

    .line 45
    .line 46
    return-void
.end method

.method public static a(Lpe/hf/black20/CatchupActivity;)V
    .locals 15

    .line 1
    iget-object v0, p0, Lpe/hf/black20/CatchupActivity;->X:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lpe/hf/black20/CatchupActivity;->e()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lpe/hf/black20/CatchupActivity;->S:Ljava/lang/String;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lpe/hf/black20/CatchupActivity;->X:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v0, p0, Lpe/hf/black20/CatchupActivity;->S:Ljava/lang/String;

    .line 21
    .line 22
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 27
    .line 28
    const-string v3, "yyyy-MM-dd HH"

    .line 29
    .line 30
    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v3, p0, Lpe/hf/black20/CatchupActivity;->L:Landroid/content/SharedPreferences;

    .line 34
    .line 35
    const-string v4, "timezone"

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 47
    .line 48
    .line 49
    new-instance v3, Ljava/text/SimpleDateFormat;

    .line 50
    .line 51
    const-string v4, "yyyy-MM-dd HH:mm:ss"

    .line 52
    .line 53
    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    new-instance v4, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v0, ":00:00"

    .line 73
    .line 74
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    :try_start_0
    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 82
    .line 83
    .line 84
    move-result-object v5
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :catch_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 90
    .line 91
    .line 92
    const/16 v2, 0xa

    .line 93
    .line 94
    const/4 v4, 0x0

    .line 95
    invoke-virtual {v0, v2, v4}, Ljava/util/Calendar;->add(II)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    iput-object v0, p0, Lpe/hf/black20/CatchupActivity;->T:Ljava/lang/String;

    .line 107
    .line 108
    iget-object v0, p0, Lpe/hf/black20/CatchupActivity;->Y:Ljava/lang/String;

    .line 109
    .line 110
    const-string v2, "no"

    .line 111
    .line 112
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-eqz v0, :cond_1

    .line 117
    .line 118
    iget-object v0, p0, Lpe/hf/black20/CatchupActivity;->S:Ljava/lang/String;

    .line 119
    .line 120
    iget-object v2, p0, Lpe/hf/black20/CatchupActivity;->T:Ljava/lang/String;

    .line 121
    .line 122
    invoke-virtual {p0, v0, v2}, Lpe/hf/black20/CatchupActivity;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    const-string v0, "yes"

    .line 126
    .line 127
    iput-object v0, p0, Lpe/hf/black20/CatchupActivity;->Y:Ljava/lang/String;

    .line 128
    .line 129
    :cond_1
    :try_start_1
    iget-object v0, p0, Lpe/hf/black20/CatchupActivity;->e0:Ljava/text/SimpleDateFormat;

    .line 130
    .line 131
    iget-object v2, p0, Lpe/hf/black20/CatchupActivity;->S:Ljava/lang/String;

    .line 132
    .line 133
    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    iget-object v2, p0, Lpe/hf/black20/CatchupActivity;->e0:Ljava/text/SimpleDateFormat;

    .line 138
    .line 139
    iget-object v3, p0, Lpe/hf/black20/CatchupActivity;->T:Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    iget-object v3, p0, Lpe/hf/black20/CatchupActivity;->e0:Ljava/text/SimpleDateFormat;

    .line 146
    .line 147
    invoke-static {v0, v2, v3}, Lpe/hf/black20/util/Methods;->i(Ljava/util/Date;Ljava/util/Date;Ljava/text/SimpleDateFormat;)I

    .line 148
    .line 149
    .line 150
    move-result v0
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 151
    goto :goto_1

    .line 152
    :catch_1
    const/4 v0, 0x0

    .line 153
    :goto_1
    div-int/lit8 v0, v0, 0x3c

    .line 154
    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    const-string v3, "Number of hours----- "

    .line 158
    .line 159
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    const-string v3, "XCIPTV_TAG"

    .line 170
    .line 171
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    const-string v2, "0"

    .line 175
    .line 176
    move-object v3, v2

    .line 177
    :goto_2
    if-ge v4, v0, :cond_6

    .line 178
    .line 179
    new-instance v5, Ljava/util/HashMap;

    .line 180
    .line 181
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 182
    .line 183
    .line 184
    iget-object v6, p0, Lpe/hf/black20/CatchupActivity;->K:Lpe/hf/black20/CatchupActivity;

    .line 185
    .line 186
    const v7, 0x7f130208

    .line 187
    .line 188
    .line 189
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v8

    .line 193
    const-string v9, "title"

    .line 194
    .line 195
    invoke-virtual {v5, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v8

    .line 202
    const-string v10, "24"

    .line 203
    .line 204
    const-string v11, "12"

    .line 205
    .line 206
    const-string v12, "ORT_TIME_FORMAT"

    .line 207
    .line 208
    const-string v13, " - "

    .line 209
    .line 210
    const-string v14, "date_time"

    .line 211
    .line 212
    if-eqz v8, :cond_3

    .line 213
    .line 214
    invoke-static {v12, v11, v10}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 215
    .line 216
    .line 217
    move-result v8

    .line 218
    if-eqz v8, :cond_2

    .line 219
    .line 220
    new-instance v8, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    .line 224
    .line 225
    iget-object v10, p0, Lpe/hf/black20/CatchupActivity;->S:Ljava/lang/String;

    .line 226
    .line 227
    invoke-static {v10}, Lpe/hf/black20/util/Methods;->o(Ljava/lang/String;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v10

    .line 231
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    iget-object v10, p0, Lpe/hf/black20/CatchupActivity;->S:Ljava/lang/String;

    .line 238
    .line 239
    invoke-virtual {p0, v10}, Lpe/hf/black20/CatchupActivity;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v10

    .line 243
    invoke-static {v10}, Lpe/hf/black20/util/Methods;->o(Ljava/lang/String;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v10

    .line 247
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v8

    .line 254
    invoke-virtual {v5, v14, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    goto :goto_3

    .line 258
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    .line 259
    .line 260
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    .line 262
    .line 263
    iget-object v10, p0, Lpe/hf/black20/CatchupActivity;->S:Ljava/lang/String;

    .line 264
    .line 265
    invoke-static {v10}, Lpe/hf/black20/util/Methods;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v10

    .line 269
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    iget-object v10, p0, Lpe/hf/black20/CatchupActivity;->S:Ljava/lang/String;

    .line 276
    .line 277
    invoke-virtual {p0, v10}, Lpe/hf/black20/CatchupActivity;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v10

    .line 281
    invoke-static {v10}, Lpe/hf/black20/util/Methods;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v10

    .line 285
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v8

    .line 292
    invoke-virtual {v5, v14, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    :goto_3
    iget-object v8, p0, Lpe/hf/black20/CatchupActivity;->S:Ljava/lang/String;

    .line 296
    .line 297
    invoke-virtual {p0, v8}, Lpe/hf/black20/CatchupActivity;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v8

    .line 301
    iput-object v8, p0, Lpe/hf/black20/CatchupActivity;->S:Ljava/lang/String;

    .line 302
    .line 303
    goto :goto_5

    .line 304
    :cond_3
    invoke-static {v12, v11, v10}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 305
    .line 306
    .line 307
    move-result v8

    .line 308
    if-eqz v8, :cond_4

    .line 309
    .line 310
    new-instance v8, Ljava/lang/StringBuilder;

    .line 311
    .line 312
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 313
    .line 314
    .line 315
    invoke-static {v3}, Lpe/hf/black20/util/Methods;->o(Ljava/lang/String;)Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v10

    .line 319
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {p0, v3}, Lpe/hf/black20/CatchupActivity;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v10

    .line 329
    invoke-static {v10}, Lpe/hf/black20/util/Methods;->o(Ljava/lang/String;)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v10

    .line 333
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v8

    .line 340
    invoke-virtual {v5, v14, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    goto :goto_4

    .line 344
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    .line 345
    .line 346
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 347
    .line 348
    .line 349
    invoke-static {v3}, Lpe/hf/black20/util/Methods;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v10

    .line 353
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {p0, v3}, Lpe/hf/black20/CatchupActivity;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v10

    .line 363
    invoke-static {v10}, Lpe/hf/black20/util/Methods;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v10

    .line 367
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v8

    .line 374
    invoke-virtual {v5, v14, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    :goto_4
    invoke-virtual {p0, v3}, Lpe/hf/black20/CatchupActivity;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v8

    .line 381
    iput-object v8, p0, Lpe/hf/black20/CatchupActivity;->S:Ljava/lang/String;

    .line 382
    .line 383
    :goto_5
    const-string v8, "description"

    .line 384
    .line 385
    invoke-virtual {v5, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    iget-object v8, p0, Lpe/hf/black20/CatchupActivity;->a0:Ljava/util/ArrayList;

    .line 389
    .line 390
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    .line 392
    .line 393
    new-instance v5, Ljava/util/HashMap;

    .line 394
    .line 395
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v6

    .line 402
    invoke-virtual {v5, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 406
    .line 407
    .line 408
    move-result v6

    .line 409
    const-string v7, "start"

    .line 410
    .line 411
    if-eqz v6, :cond_5

    .line 412
    .line 413
    iget-object v3, p0, Lpe/hf/black20/CatchupActivity;->S:Ljava/lang/String;

    .line 414
    .line 415
    invoke-virtual {v5, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    iget-object v3, p0, Lpe/hf/black20/CatchupActivity;->S:Ljava/lang/String;

    .line 419
    .line 420
    invoke-virtual {p0, v3}, Lpe/hf/black20/CatchupActivity;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v3

    .line 424
    iput-object v3, p0, Lpe/hf/black20/CatchupActivity;->S:Ljava/lang/String;

    .line 425
    .line 426
    goto :goto_6

    .line 427
    :cond_5
    invoke-virtual {v5, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    .line 429
    .line 430
    invoke-virtual {p0, v3}, Lpe/hf/black20/CatchupActivity;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v3

    .line 434
    iput-object v3, p0, Lpe/hf/black20/CatchupActivity;->S:Ljava/lang/String;

    .line 435
    .line 436
    :goto_6
    const-string v3, "end"

    .line 437
    .line 438
    iget-object v6, p0, Lpe/hf/black20/CatchupActivity;->S:Ljava/lang/String;

    .line 439
    .line 440
    invoke-virtual {v5, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    iget-object v3, p0, Lpe/hf/black20/CatchupActivity;->S:Ljava/lang/String;

    .line 444
    .line 445
    iget-object v6, p0, Lpe/hf/black20/CatchupActivity;->b0:Ljava/util/ArrayList;

    .line 446
    .line 447
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    .line 449
    .line 450
    add-int/lit8 v4, v4, 0x1

    .line 451
    .line 452
    goto/16 :goto_2

    .line 453
    .line 454
    :cond_6
    invoke-virtual {p0}, Lpe/hf/black20/CatchupActivity;->b()V

    .line 455
    .line 456
    .line 457
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 7

    .line 1
    new-instance v6, Landroid/widget/SimpleAdapter;

    .line 2
    .line 3
    iget-object v2, p0, Lpe/hf/black20/CatchupActivity;->a0:Ljava/util/ArrayList;

    .line 4
    .line 5
    const-string v0, "description"

    .line 6
    .line 7
    const-string v1, "title"

    .line 8
    .line 9
    const-string v3, "date_time"

    .line 10
    .line 11
    filled-new-array {v1, v3, v0}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    const v0, 0x7f0b0529

    .line 16
    .line 17
    .line 18
    const v1, 0x7f0b0567

    .line 19
    .line 20
    .line 21
    const v3, 0x7f0b0524

    .line 22
    .line 23
    .line 24
    filled-new-array {v1, v3, v0}, [I

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    const v3, 0x7f0e0022

    .line 29
    .line 30
    .line 31
    move-object v0, v6

    .line 32
    move-object v1, p0

    .line 33
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lpe/hf/black20/CatchupActivity;->H:Landroid/widget/ListView;

    .line 37
    .line 38
    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lpe/hf/black20/CatchupActivity;->H:Landroid/widget/ListView;

    .line 42
    .line 43
    new-instance v1, Lb7/f;

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-direct {v1, p0, v2}, Lb7/f;-><init>(Ljava/lang/Object;I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string v1, "yyyy-MM-dd"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 21
    .line 22
    .line 23
    move-result-wide p1

    .line 24
    :goto_0
    const-wide/32 v3, 0x5265c00

    .line 25
    .line 26
    .line 27
    add-long v5, v1, v3

    .line 28
    .line 29
    cmp-long v7, p1, v5

    .line 30
    .line 31
    if-gez v7, :cond_0

    .line 32
    .line 33
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    invoke-virtual {v0, v5}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    new-instance v6, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v5, " 00:00:00"

    .line 50
    .line 51
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    iget-object v6, p0, Lpe/hf/black20/CatchupActivity;->c0:Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    add-long/2addr p1, v3

    .line 64
    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {p0}, Lpe/hf/black20/CatchupActivity;->f()V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    .line 68
    :catch_0
    return-void
.end method

.method public final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lpe/hf/black20/CatchupActivity;->e0:Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    iget-object v1, p0, Lpe/hf/black20/CatchupActivity;->L:Landroid/content/SharedPreferences;

    .line 4
    .line 5
    const-string v2, "timezone"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 17
    .line 18
    .line 19
    :try_start_0
    iget-object v0, p0, Lpe/hf/black20/CatchupActivity;->e0:Ljava/text/SimpleDateFormat;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 22
    .line 23
    .line 24
    move-result-object v3
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 35
    .line 36
    .line 37
    const/16 v0, 0xa

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lpe/hf/black20/CatchupActivity;->e0:Ljava/text/SimpleDateFormat;

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    return-object p1
.end method

.method public final e()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 6
    .line 7
    const-string v2, "yyyy-MM-dd HH"

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v0, ":00:00"

    .line 29
    .line 30
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :try_start_0
    iget-object v1, p0, Lpe/hf/black20/CatchupActivity;->e0:Ljava/text/SimpleDateFormat;

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 40
    .line 41
    .line 42
    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    goto :goto_0

    .line 44
    :catch_0
    const/4 v0, 0x0

    .line 45
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lpe/hf/black20/CatchupActivity;->R:Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    mul-int/lit8 v0, v0, 0x18

    .line 59
    .line 60
    add-int/lit8 v0, v0, -0x1

    .line 61
    .line 62
    const/16 v2, 0xa

    .line 63
    .line 64
    neg-int v0, v0

    .line 65
    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->add(II)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lpe/hf/black20/CatchupActivity;->e0:Ljava/text/SimpleDateFormat;

    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    return-object v0
.end method

.method public final f()V
    .locals 9

    .line 1
    const-string v0, "yes"

    .line 2
    .line 3
    iput-object v0, p0, Lpe/hf/black20/CatchupActivity;->Y:Ljava/lang/String;

    .line 4
    .line 5
    iget v0, p0, Lpe/hf/black20/CatchupActivity;->f0:F

    .line 6
    .line 7
    const/high16 v1, 0x41200000    # 10.0f

    .line 8
    .line 9
    mul-float v1, v1, v0

    .line 10
    .line 11
    float-to-int v1, v1

    .line 12
    const/high16 v2, 0x420c0000    # 35.0f

    .line 13
    .line 14
    mul-float v0, v0, v2

    .line 15
    .line 16
    float-to-int v0, v0

    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x0

    .line 19
    :goto_0
    iget-object v4, p0, Lpe/hf/black20/CatchupActivity;->c0:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-ge v3, v5, :cond_0

    .line 26
    .line 27
    new-instance v5, Landroid/widget/Button;

    .line 28
    .line 29
    iget-object v6, p0, Lpe/hf/black20/CatchupActivity;->K:Lpe/hf/black20/CatchupActivity;

    .line 30
    .line 31
    invoke-direct {v5, v6}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 35
    .line 36
    const/4 v8, -0x2

    .line 37
    invoke-direct {v7, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v7, v2, v2, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 41
    .line 42
    .line 43
    iput v0, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 44
    .line 45
    invoke-virtual {v5, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    .line 47
    .line 48
    const/high16 v7, 0x41700000    # 15.0f

    .line 49
    .line 50
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5, v1, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 54
    .line 55
    .line 56
    const v7, 0x7f080541

    .line 57
    .line 58
    .line 59
    invoke-virtual {v6, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    invoke-virtual {v5, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 64
    .line 65
    .line 66
    const/16 v6, 0x11

    .line 67
    .line 68
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    check-cast v4, Ljava/lang/String;

    .line 76
    .line 77
    sget-object v6, Lpe/hf/black20/util/Methods;->a:Landroid/content/SharedPreferences;

    .line 78
    .line 79
    new-instance v6, Ljava/text/SimpleDateFormat;

    .line 80
    .line 81
    const-string v7, "yyyy-MM-dd HH:mm:ss"

    .line 82
    .line 83
    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    new-instance v7, Ljava/text/SimpleDateFormat;

    .line 87
    .line 88
    const-string v8, "MMM dd"

    .line 89
    .line 90
    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :try_start_0
    invoke-virtual {v6, v4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 94
    .line 95
    .line 96
    move-result-object v4
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    goto :goto_1

    .line 98
    :catch_0
    const/4 v4, 0x0

    .line 99
    :goto_1
    invoke-virtual {v7, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    .line 105
    .line 106
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    invoke-virtual {v5, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    iget-object v4, p0, Lpe/hf/black20/CatchupActivity;->d0:Landroid/widget/LinearLayout;

    .line 114
    .line 115
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 116
    .line 117
    .line 118
    new-instance v4, Lf/c;

    .line 119
    .line 120
    const/4 v6, 0x6

    .line 121
    invoke-direct {v4, p0, v6}, Lf/c;-><init>(Ljava/lang/Object;I)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v5, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    .line 126
    .line 127
    add-int/lit8 v3, v3, 0x1

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0e001f

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 8
    .line 9
    .line 10
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 11
    .line 12
    const/16 v0, 0x1c

    .line 13
    .line 14
    if-lt p1, v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p1}, LN/d0;->s(Landroid/view/WindowManager$LayoutParams;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    const p1, 0x7f0b028a

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Landroid/widget/ImageView;

    .line 42
    .line 43
    iget-object v0, p0, Lpe/hf/black20/CatchupActivity;->K:Lpe/hf/black20/CatchupActivity;

    .line 44
    .line 45
    invoke-static {v0}, Lpe/hf/black20/util/Methods;->R(Landroid/content/Context;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    const v1, 0x7f0805f0

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    const v1, 0x7f08053b

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 62
    .line 63
    .line 64
    :goto_0
    const p1, 0x7f0b0516

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    check-cast p1, Landroid/widget/TextView;

    .line 72
    .line 73
    iput-object p1, p0, Lpe/hf/black20/CatchupActivity;->I:Landroid/widget/TextView;

    .line 74
    .line 75
    const p1, 0x7f0b028c

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Landroid/widget/ImageView;

    .line 83
    .line 84
    iput-object p1, p0, Lpe/hf/black20/CatchupActivity;->G:Landroid/widget/ImageView;

    .line 85
    .line 86
    const p1, 0x7f0b0339

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    check-cast p1, Landroid/widget/ListView;

    .line 94
    .line 95
    iput-object p1, p0, Lpe/hf/black20/CatchupActivity;->H:Landroid/widget/ListView;

    .line 96
    .line 97
    const p1, 0x7f0b03d8

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    check-cast p1, Landroid/widget/ProgressBar;

    .line 105
    .line 106
    iput-object p1, p0, Lpe/hf/black20/CatchupActivity;->N:Landroid/widget/ProgressBar;

    .line 107
    .line 108
    const/4 v1, 0x4

    .line 109
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 110
    .line 111
    .line 112
    new-instance p1, Ljava/text/SimpleDateFormat;

    .line 113
    .line 114
    const-string v1, "yyyy-MM-dd HH:mm:ss"

    .line 115
    .line 116
    invoke-direct {p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iput-object p1, p0, Lpe/hf/black20/CatchupActivity;->e0:Ljava/text/SimpleDateFormat;

    .line 120
    .line 121
    const-string p1, "pe.hf.black20"

    .line 122
    .line 123
    const/4 v1, 0x0

    .line 124
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    iput-object p1, p0, Lpe/hf/black20/CatchupActivity;->L:Landroid/content/SharedPreferences;

    .line 129
    .line 130
    new-instance p1, Lc7/a;

    .line 131
    .line 132
    invoke-direct {p1, p0, v1}, Lc7/a;-><init>(Landroid/content/Context;I)V

    .line 133
    .line 134
    .line 135
    const-string v2, "Default (XC)"

    .line 136
    .line 137
    const-string v3, "ORT_PROFILE"

    .line 138
    .line 139
    invoke-static {v3, v2, p1}, LA0/O;->x(Ljava/lang/String;Ljava/lang/String;Lc7/a;)Lh7/i;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    iput-object p1, p0, Lpe/hf/black20/CatchupActivity;->M:Lh7/i;

    .line 144
    .line 145
    new-instance p1, Lpe/hf/black20/util/b;

    .line 146
    .line 147
    invoke-direct {p1, v0}, Lpe/hf/black20/util/b;-><init>(Landroid/app/Activity;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1}, Lpe/hf/black20/util/b;->a()F

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    iput p1, p0, Lpe/hf/black20/CatchupActivity;->f0:F

    .line 155
    .line 156
    iget-object p1, p0, Lpe/hf/black20/CatchupActivity;->L:Landroid/content/SharedPreferences;

    .line 157
    .line 158
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    const-string v2, "name"

    .line 170
    .line 171
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    iput-object v2, p0, Lpe/hf/black20/CatchupActivity;->O:Ljava/lang/String;

    .line 176
    .line 177
    const-string v2, "icon"

    .line 178
    .line 179
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    iput-object v2, p0, Lpe/hf/black20/CatchupActivity;->P:Ljava/lang/String;

    .line 184
    .line 185
    iget-object v2, p0, Lpe/hf/black20/CatchupActivity;->I:Landroid/widget/TextView;

    .line 186
    .line 187
    iget-object v3, p0, Lpe/hf/black20/CatchupActivity;->O:Ljava/lang/String;

    .line 188
    .line 189
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    .line 191
    .line 192
    const-string v2, "stream_id"

    .line 193
    .line 194
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    iput-object v2, p0, Lpe/hf/black20/CatchupActivity;->Q:Ljava/lang/String;

    .line 199
    .line 200
    const-string v2, "tv_archive_duration"

    .line 201
    .line 202
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    iput-object p1, p0, Lpe/hf/black20/CatchupActivity;->R:Ljava/lang/String;

    .line 207
    .line 208
    const p1, 0x7f0b02d0

    .line 209
    .line 210
    .line 211
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    check-cast p1, Landroid/widget/LinearLayout;

    .line 216
    .line 217
    iput-object p1, p0, Lpe/hf/black20/CatchupActivity;->d0:Landroid/widget/LinearLayout;

    .line 218
    .line 219
    iget-object p1, p0, Lpe/hf/black20/CatchupActivity;->P:Ljava/lang/String;

    .line 220
    .line 221
    const-string v2, ""

    .line 222
    .line 223
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result p1

    .line 227
    if-nez p1, :cond_2

    .line 228
    .line 229
    iget-object p1, p0, Lpe/hf/black20/CatchupActivity;->P:Ljava/lang/String;

    .line 230
    .line 231
    const-string v2, "null"

    .line 232
    .line 233
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result p1

    .line 237
    if-nez p1, :cond_2

    .line 238
    .line 239
    iget-object p1, p0, Lpe/hf/black20/CatchupActivity;->P:Ljava/lang/String;

    .line 240
    .line 241
    if-nez p1, :cond_3

    .line 242
    .line 243
    :cond_2
    const-string p1, "0"

    .line 244
    .line 245
    :cond_3
    new-instance v2, LN2/a;

    .line 246
    .line 247
    const/16 v3, 0x12c

    .line 248
    .line 249
    const/4 v4, 0x1

    .line 250
    invoke-direct {v2, v3, v4}, LN2/a;-><init>(IZ)V

    .line 251
    .line 252
    .line 253
    invoke-static {v0}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/n;->n(Ljava/lang/String;)Lcom/bumptech/glide/l;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    invoke-virtual {p1}, LL2/a;->g()LL2/a;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    check-cast p1, Lcom/bumptech/glide/l;

    .line 266
    .line 267
    invoke-static {v2}, LG2/c;->b(LN2/a;)LG2/c;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/l;->H(LG2/c;)Lcom/bumptech/glide/l;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    const v0, 0x7f08086d

    .line 276
    .line 277
    .line 278
    invoke-virtual {p1, v0}, LL2/a;->m(I)LL2/a;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    check-cast p1, Lcom/bumptech/glide/l;

    .line 283
    .line 284
    invoke-virtual {p1, v0}, LL2/a;->f(I)LL2/a;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    check-cast p1, Lcom/bumptech/glide/l;

    .line 289
    .line 290
    iget-object v0, p0, Lpe/hf/black20/CatchupActivity;->G:Landroid/widget/ImageView;

    .line 291
    .line 292
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V

    .line 293
    .line 294
    .line 295
    new-instance p1, Lb7/g;

    .line 296
    .line 297
    invoke-direct {p1, p0}, Lb7/g;-><init>(Lpe/hf/black20/CatchupActivity;)V

    .line 298
    .line 299
    .line 300
    new-array v0, v1, [Ljava/lang/Void;

    .line 301
    .line 302
    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 303
    .line 304
    .line 305
    return-void
.end method

.method public final onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_2

    .line 5
    .line 6
    invoke-static {}, Lpe/hf/black20/util/Methods;->P()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lpe/hf/black20/CatchupActivity;->K:Lpe/hf/black20/CatchupActivity;

    .line 13
    .line 14
    invoke-static {p1}, Lpe/hf/black20/util/Methods;->T(Landroid/content/Context;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_2

    .line 19
    .line 20
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 21
    .line 22
    const/16 v0, 0x1e

    .line 23
    .line 24
    if-lt p1, v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p1}, LE1/a;->z(Landroid/view/Window;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p1}, LE1/a;->k(Landroid/view/Window;)Landroid/view/WindowInsetsController;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {p1}, LE1/a;->k(Landroid/view/Window;)Landroid/view/WindowInsetsController;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {}, LE1/a;->A()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-static {}, LE1/a;->C()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    or-int/2addr v0, v1

    .line 60
    invoke-static {p1, v0}, LE1/a;->t(Landroid/view/WindowInsetsController;I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {p1}, LE1/a;->k(Landroid/view/Window;)Landroid/view/WindowInsetsController;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {p1}, LE1/a;->s(Landroid/view/WindowInsetsController;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    const/16 v0, 0x1002

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    const/16 v0, 0xf06

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 99
    .line 100
    .line 101
    :cond_2
    :goto_0
    return-void
.end method
