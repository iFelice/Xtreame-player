.class public final LZ6/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final M:Ljava/util/Locale;

.field public static final N:Ljava/util/Comparator;

.field public static final O:[Ljava/util/concurrent/ConcurrentMap;

.field public static final P:LZ6/c;

.field public static final Q:LZ6/c;

.field public static final R:LZ6/g;

.field public static final S:LZ6/g;

.field public static final T:LZ6/g;

.field public static final U:LZ6/g;

.field public static final V:LZ6/g;

.field public static final W:LZ6/c;

.field public static final X:LZ6/g;

.field public static final Y:LZ6/g;

.field public static final Z:LZ6/c;

.field public static final a0:LZ6/c;

.field public static final b0:LZ6/g;

.field public static final c0:LZ6/g;

.field public static final d0:LZ6/g;

.field public static final e0:LZ6/g;


# instance fields
.field public final G:Ljava/lang/String;

.field public final H:Ljava/util/TimeZone;

.field public final I:Ljava/util/Locale;

.field public final J:I

.field public final K:I

.field public final transient L:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/Locale;

    .line 2
    .line 3
    const-string v1, "ja"

    .line 4
    .line 5
    const-string v2, "JP"

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, LZ6/m;->M:Ljava/util/Locale;

    .line 11
    .line 12
    invoke-static {}, LD0/y;->n()Ljava/util/Comparator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, LZ6/m;->N:Ljava/util/Comparator;

    .line 17
    .line 18
    const/16 v0, 0x11

    .line 19
    .line 20
    new-array v0, v0, [Ljava/util/concurrent/ConcurrentMap;

    .line 21
    .line 22
    sput-object v0, LZ6/m;->O:[Ljava/util/concurrent/ConcurrentMap;

    .line 23
    .line 24
    new-instance v0, LZ6/c;

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-direct {v0, v1, v2}, LZ6/c;-><init>(II)V

    .line 29
    .line 30
    .line 31
    sput-object v0, LZ6/m;->P:LZ6/c;

    .line 32
    .line 33
    new-instance v0, LZ6/c;

    .line 34
    .line 35
    const/4 v2, 0x2

    .line 36
    invoke-direct {v0, v2, v1}, LZ6/c;-><init>(II)V

    .line 37
    .line 38
    .line 39
    sput-object v0, LZ6/m;->Q:LZ6/c;

    .line 40
    .line 41
    new-instance v0, LZ6/g;

    .line 42
    .line 43
    invoke-direct {v0, v1}, LZ6/g;-><init>(I)V

    .line 44
    .line 45
    .line 46
    sput-object v0, LZ6/m;->R:LZ6/g;

    .line 47
    .line 48
    new-instance v0, LZ6/g;

    .line 49
    .line 50
    const/4 v1, 0x3

    .line 51
    invoke-direct {v0, v1}, LZ6/g;-><init>(I)V

    .line 52
    .line 53
    .line 54
    sput-object v0, LZ6/m;->S:LZ6/g;

    .line 55
    .line 56
    new-instance v0, LZ6/g;

    .line 57
    .line 58
    const/4 v3, 0x4

    .line 59
    invoke-direct {v0, v3}, LZ6/g;-><init>(I)V

    .line 60
    .line 61
    .line 62
    sput-object v0, LZ6/m;->T:LZ6/g;

    .line 63
    .line 64
    new-instance v0, LZ6/g;

    .line 65
    .line 66
    const/4 v4, 0x6

    .line 67
    invoke-direct {v0, v4}, LZ6/g;-><init>(I)V

    .line 68
    .line 69
    .line 70
    sput-object v0, LZ6/m;->U:LZ6/g;

    .line 71
    .line 72
    new-instance v0, LZ6/g;

    .line 73
    .line 74
    const/4 v4, 0x5

    .line 75
    invoke-direct {v0, v4}, LZ6/g;-><init>(I)V

    .line 76
    .line 77
    .line 78
    sput-object v0, LZ6/m;->V:LZ6/g;

    .line 79
    .line 80
    new-instance v0, LZ6/c;

    .line 81
    .line 82
    const/4 v4, 0x7

    .line 83
    invoke-direct {v0, v4, v2}, LZ6/c;-><init>(II)V

    .line 84
    .line 85
    .line 86
    sput-object v0, LZ6/m;->W:LZ6/c;

    .line 87
    .line 88
    new-instance v0, LZ6/g;

    .line 89
    .line 90
    const/16 v2, 0x8

    .line 91
    .line 92
    invoke-direct {v0, v2}, LZ6/g;-><init>(I)V

    .line 93
    .line 94
    .line 95
    sput-object v0, LZ6/m;->X:LZ6/g;

    .line 96
    .line 97
    new-instance v0, LZ6/g;

    .line 98
    .line 99
    const/16 v2, 0xb

    .line 100
    .line 101
    invoke-direct {v0, v2}, LZ6/g;-><init>(I)V

    .line 102
    .line 103
    .line 104
    sput-object v0, LZ6/m;->Y:LZ6/g;

    .line 105
    .line 106
    new-instance v0, LZ6/c;

    .line 107
    .line 108
    invoke-direct {v0, v2, v1}, LZ6/c;-><init>(II)V

    .line 109
    .line 110
    .line 111
    sput-object v0, LZ6/m;->Z:LZ6/c;

    .line 112
    .line 113
    new-instance v0, LZ6/c;

    .line 114
    .line 115
    const/16 v1, 0xa

    .line 116
    .line 117
    invoke-direct {v0, v1, v3}, LZ6/c;-><init>(II)V

    .line 118
    .line 119
    .line 120
    sput-object v0, LZ6/m;->a0:LZ6/c;

    .line 121
    .line 122
    new-instance v0, LZ6/g;

    .line 123
    .line 124
    invoke-direct {v0, v1}, LZ6/g;-><init>(I)V

    .line 125
    .line 126
    .line 127
    sput-object v0, LZ6/m;->b0:LZ6/g;

    .line 128
    .line 129
    new-instance v0, LZ6/g;

    .line 130
    .line 131
    const/16 v1, 0xc

    .line 132
    .line 133
    invoke-direct {v0, v1}, LZ6/g;-><init>(I)V

    .line 134
    .line 135
    .line 136
    sput-object v0, LZ6/m;->c0:LZ6/g;

    .line 137
    .line 138
    new-instance v0, LZ6/g;

    .line 139
    .line 140
    const/16 v1, 0xd

    .line 141
    .line 142
    invoke-direct {v0, v1}, LZ6/g;-><init>(I)V

    .line 143
    .line 144
    .line 145
    sput-object v0, LZ6/m;->d0:LZ6/g;

    .line 146
    .line 147
    new-instance v0, LZ6/g;

    .line 148
    .line 149
    const/16 v1, 0xe

    .line 150
    .line 151
    invoke-direct {v0, v1}, LZ6/g;-><init>(I)V

    .line 152
    .line 153
    .line 154
    sput-object v0, LZ6/m;->e0:LZ6/g;

    .line 155
    .line 156
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LZ6/m;->G:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, LZ6/m;->H:Ljava/util/TimeZone;

    .line 7
    .line 8
    invoke-static {p3}, LY6/a;->a(Ljava/util/Locale;)Ljava/util/Locale;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, LZ6/m;->I:Ljava/util/Locale;

    .line 13
    .line 14
    invoke-static {p2, p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    sget-object p3, LZ6/m;->M:Ljava/util/Locale;

    .line 19
    .line 20
    invoke-virtual {p1, p3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    const/4 p3, 0x0

    .line 25
    const/4 v0, 0x1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance p1, Ljava/util/Date;

    .line 31
    .line 32
    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    add-int/lit8 p1, p1, -0x50

    .line 43
    .line 44
    :goto_0
    div-int/lit8 v1, p1, 0x64

    .line 45
    .line 46
    mul-int/lit8 v1, v1, 0x64

    .line 47
    .line 48
    iput v1, p0, LZ6/m;->J:I

    .line 49
    .line 50
    sub-int/2addr p1, v1

    .line 51
    iput p1, p0, LZ6/m;->K:I

    .line 52
    .line 53
    new-instance p1, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object p1, p0, LZ6/m;->L:Ljava/util/ArrayList;

    .line 59
    .line 60
    const/4 p1, 0x0

    .line 61
    :goto_1
    iget-object v1, p0, LZ6/m;->G:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-lt p1, v2, :cond_1

    .line 68
    .line 69
    const/4 v1, 0x0

    .line 70
    goto/16 :goto_5

    .line 71
    .line 72
    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    const/16 v3, 0x5a

    .line 77
    .line 78
    const/16 v4, 0x41

    .line 79
    .line 80
    const/16 v5, 0x7a

    .line 81
    .line 82
    if-lt v2, v4, :cond_2

    .line 83
    .line 84
    if-le v2, v3, :cond_3

    .line 85
    .line 86
    :cond_2
    const/16 v6, 0x61

    .line 87
    .line 88
    if-lt v2, v6, :cond_d

    .line 89
    .line 90
    if-gt v2, v5, :cond_d

    .line 91
    .line 92
    :cond_3
    move v3, p1

    .line 93
    :cond_4
    add-int/2addr v3, v0

    .line 94
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    if-ge v3, v4, :cond_5

    .line 99
    .line 100
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    if-eq v4, v2, :cond_4

    .line 105
    .line 106
    :cond_5
    sub-int p1, v3, p1

    .line 107
    .line 108
    new-instance v1, LZ6/j;

    .line 109
    .line 110
    const/16 v4, 0x79

    .line 111
    .line 112
    const/4 v6, 0x2

    .line 113
    if-eq v2, v4, :cond_b

    .line 114
    .line 115
    if-eq v2, v5, :cond_a

    .line 116
    .line 117
    packed-switch v2, :pswitch_data_0

    .line 118
    .line 119
    .line 120
    const/4 v4, 0x3

    .line 121
    sparse-switch v2, :sswitch_data_0

    .line 122
    .line 123
    .line 124
    packed-switch v2, :pswitch_data_1

    .line 125
    .line 126
    .line 127
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 128
    .line 129
    new-instance p2, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    const-string p3, "Format \'"

    .line 132
    .line 133
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string p3, "\' not supported"

    .line 140
    .line 141
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw p1

    .line 152
    :pswitch_0
    if-ne p1, v6, :cond_a

    .line 153
    .line 154
    sget-object v2, LZ6/f;->d:LZ6/f;

    .line 155
    .line 156
    goto/16 :goto_2

    .line 157
    .line 158
    :pswitch_1
    if-eq p1, v0, :cond_8

    .line 159
    .line 160
    if-eq p1, v6, :cond_7

    .line 161
    .line 162
    if-ne p1, v4, :cond_6

    .line 163
    .line 164
    sget-object v2, LZ6/f;->d:LZ6/f;

    .line 165
    .line 166
    goto/16 :goto_2

    .line 167
    .line 168
    :cond_6
    sget-object p1, LZ6/f;->b:LZ6/f;

    .line 169
    .line 170
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 171
    .line 172
    const-string p2, "invalid number of X"

    .line 173
    .line 174
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    throw p1

    .line 178
    :cond_7
    sget-object v2, LZ6/f;->c:LZ6/f;

    .line 179
    .line 180
    goto/16 :goto_2

    .line 181
    .line 182
    :cond_8
    sget-object v2, LZ6/f;->b:LZ6/f;

    .line 183
    .line 184
    goto :goto_2

    .line 185
    :pswitch_2
    sget-object v2, LZ6/m;->T:LZ6/g;

    .line 186
    .line 187
    goto :goto_2

    .line 188
    :sswitch_0
    sget-object v2, LZ6/m;->S:LZ6/g;

    .line 189
    .line 190
    goto :goto_2

    .line 191
    :sswitch_1
    sget-object v2, LZ6/m;->W:LZ6/c;

    .line 192
    .line 193
    goto :goto_2

    .line 194
    :sswitch_2
    sget-object v2, LZ6/m;->d0:LZ6/g;

    .line 195
    .line 196
    goto :goto_2

    .line 197
    :sswitch_3
    sget-object v2, LZ6/m;->c0:LZ6/g;

    .line 198
    .line 199
    goto :goto_2

    .line 200
    :sswitch_4
    sget-object v2, LZ6/m;->Z:LZ6/c;

    .line 201
    .line 202
    goto :goto_2

    .line 203
    :sswitch_5
    sget-object v2, LZ6/m;->a0:LZ6/c;

    .line 204
    .line 205
    goto :goto_2

    .line 206
    :sswitch_6
    sget-object v2, LZ6/m;->V:LZ6/g;

    .line 207
    .line 208
    goto :goto_2

    .line 209
    :sswitch_7
    const/16 v2, 0x9

    .line 210
    .line 211
    invoke-virtual {p0, v2, p2}, LZ6/m;->a(ILjava/util/Calendar;)LZ6/i;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    goto :goto_2

    .line 216
    :sswitch_8
    sget-object v2, LZ6/m;->e0:LZ6/g;

    .line 217
    .line 218
    goto :goto_2

    .line 219
    :sswitch_9
    if-lt p1, v4, :cond_9

    .line 220
    .line 221
    invoke-virtual {p0, v6, p2}, LZ6/m;->a(ILjava/util/Calendar;)LZ6/i;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    goto :goto_2

    .line 226
    :cond_9
    sget-object v2, LZ6/m;->Q:LZ6/c;

    .line 227
    .line 228
    goto :goto_2

    .line 229
    :sswitch_a
    sget-object v2, LZ6/m;->b0:LZ6/g;

    .line 230
    .line 231
    goto :goto_2

    .line 232
    :pswitch_3
    sget-object v2, LZ6/m;->Y:LZ6/g;

    .line 233
    .line 234
    goto :goto_2

    .line 235
    :pswitch_4
    invoke-virtual {p0, p3, p2}, LZ6/m;->a(ILjava/util/Calendar;)LZ6/i;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    goto :goto_2

    .line 240
    :pswitch_5
    sget-object v2, LZ6/m;->X:LZ6/g;

    .line 241
    .line 242
    goto :goto_2

    .line 243
    :pswitch_6
    const/4 v2, 0x7

    .line 244
    invoke-virtual {p0, v2, p2}, LZ6/m;->a(ILjava/util/Calendar;)LZ6/i;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    goto :goto_2

    .line 249
    :pswitch_7
    sget-object v2, LZ6/m;->U:LZ6/g;

    .line 250
    .line 251
    goto :goto_2

    .line 252
    :cond_a
    const/16 v2, 0xf

    .line 253
    .line 254
    invoke-virtual {p0, v2, p2}, LZ6/m;->a(ILjava/util/Calendar;)LZ6/i;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    goto :goto_2

    .line 259
    :cond_b
    :pswitch_8
    if-le p1, v6, :cond_c

    .line 260
    .line 261
    sget-object v2, LZ6/m;->R:LZ6/g;

    .line 262
    .line 263
    goto :goto_2

    .line 264
    :cond_c
    sget-object v2, LZ6/m;->P:LZ6/c;

    .line 265
    .line 266
    :goto_2
    invoke-direct {v1, v2, p1}, LZ6/j;-><init>(LZ6/i;I)V

    .line 267
    .line 268
    .line 269
    move p1, v3

    .line 270
    goto :goto_5

    .line 271
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    .line 275
    .line 276
    const/4 v7, 0x0

    .line 277
    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 278
    .line 279
    .line 280
    move-result v8

    .line 281
    if-ge p1, v8, :cond_12

    .line 282
    .line 283
    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    .line 284
    .line 285
    .line 286
    move-result v8

    .line 287
    if-nez v7, :cond_f

    .line 288
    .line 289
    if-lt v8, v4, :cond_e

    .line 290
    .line 291
    if-le v8, v3, :cond_12

    .line 292
    .line 293
    :cond_e
    if-lt v8, v6, :cond_f

    .line 294
    .line 295
    if-gt v8, v5, :cond_f

    .line 296
    .line 297
    goto :goto_4

    .line 298
    :cond_f
    const/16 v9, 0x27

    .line 299
    .line 300
    if-ne v8, v9, :cond_11

    .line 301
    .line 302
    add-int/lit8 p1, p1, 0x1

    .line 303
    .line 304
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 305
    .line 306
    .line 307
    move-result v10

    .line 308
    if-eq p1, v10, :cond_10

    .line 309
    .line 310
    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    .line 311
    .line 312
    .line 313
    move-result v10

    .line 314
    if-eq v10, v9, :cond_11

    .line 315
    .line 316
    :cond_10
    xor-int/lit8 v7, v7, 0x1

    .line 317
    .line 318
    goto :goto_3

    .line 319
    :cond_11
    add-int/2addr p1, v0

    .line 320
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    goto :goto_3

    .line 324
    :cond_12
    :goto_4
    if-nez v7, :cond_14

    .line 325
    .line 326
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    new-instance v2, LZ6/j;

    .line 331
    .line 332
    new-instance v3, LZ6/e;

    .line 333
    .line 334
    invoke-direct {v3, v1}, LZ6/e;-><init>(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 338
    .line 339
    .line 340
    move-result v1

    .line 341
    invoke-direct {v2, v3, v1}, LZ6/j;-><init>(LZ6/i;I)V

    .line 342
    .line 343
    .line 344
    move-object v1, v2

    .line 345
    :goto_5
    if-nez v1, :cond_13

    .line 346
    .line 347
    return-void

    .line 348
    :cond_13
    iget-object v2, p0, LZ6/m;->L:Ljava/util/ArrayList;

    .line 349
    .line 350
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    goto/16 :goto_1

    .line 354
    .line 355
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 356
    .line 357
    const-string p2, "Unterminated quote"

    .line 358
    .line 359
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    throw p1

    .line 363
    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    :sswitch_data_0
    .sparse-switch
        0x4b -> :sswitch_a
        0x4d -> :sswitch_9
        0x53 -> :sswitch_8
        0x61 -> :sswitch_7
        0x64 -> :sswitch_6
        0x68 -> :sswitch_5
        0x6b -> :sswitch_4
        0x6d -> :sswitch_3
        0x73 -> :sswitch_2
        0x75 -> :sswitch_1
        0x77 -> :sswitch_0
    .end sparse-switch

    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    :pswitch_data_1
    .packed-switch 0x57
        :pswitch_2
        :pswitch_1
        :pswitch_8
        :pswitch_0
    .end packed-switch
.end method

.method public static c(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/16 v2, 0x3f

    .line 7
    .line 8
    const/16 v3, 0x2e

    .line 9
    .line 10
    if-ge v0, v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/16 v4, 0x24

    .line 17
    .line 18
    const/16 v5, 0x5c

    .line 19
    .line 20
    if-eq v1, v4, :cond_0

    .line 21
    .line 22
    if-eq v1, v3, :cond_0

    .line 23
    .line 24
    if-eq v1, v2, :cond_0

    .line 25
    .line 26
    const/16 v2, 0x5e

    .line 27
    .line 28
    if-eq v1, v2, :cond_0

    .line 29
    .line 30
    const/16 v2, 0x5b

    .line 31
    .line 32
    if-eq v1, v2, :cond_0

    .line 33
    .line 34
    if-eq v1, v5, :cond_0

    .line 35
    .line 36
    const/16 v2, 0x7b

    .line 37
    .line 38
    if-eq v1, v2, :cond_0

    .line 39
    .line 40
    const/16 v2, 0x7c

    .line 41
    .line 42
    if-eq v1, v2, :cond_0

    .line 43
    .line 44
    packed-switch v1, :pswitch_data_0

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_0
    :pswitch_0
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    :goto_1
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    add-int/lit8 v0, v0, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    add-int/lit8 p1, p1, -0x1

    .line 62
    .line 63
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-ne p1, v3, :cond_2

    .line 68
    .line 69
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    :cond_2
    return-void

    .line 73
    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a(ILjava/util/Calendar;)LZ6/i;
    .locals 3

    .line 1
    sget-object v0, LZ6/m;->O:[Ljava/util/concurrent/ConcurrentMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    aget-object v1, v0, p1

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    const/4 v2, 0x3

    .line 11
    invoke-direct {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 12
    .line 13
    .line 14
    aput-object v1, v0, p1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_2

    .line 19
    :cond_0
    :goto_0
    aget-object v1, v0, p1

    .line 20
    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    iget-object v0, p0, LZ6/m;->I:Ljava/util/Locale;

    .line 23
    .line 24
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, LZ6/i;

    .line 29
    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    const/16 v0, 0xf

    .line 33
    .line 34
    if-ne p1, v0, :cond_1

    .line 35
    .line 36
    new-instance p1, LZ6/l;

    .line 37
    .line 38
    iget-object p2, p0, LZ6/m;->I:Ljava/util/Locale;

    .line 39
    .line 40
    invoke-direct {p1, p2}, LZ6/l;-><init>(Ljava/util/Locale;)V

    .line 41
    .line 42
    .line 43
    move-object v0, p1

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    new-instance v0, LZ6/d;

    .line 46
    .line 47
    iget-object v2, p0, LZ6/m;->I:Ljava/util/Locale;

    .line 48
    .line 49
    invoke-direct {v0, p1, p2, v2}, LZ6/d;-><init>(ILjava/util/Calendar;Ljava/util/Locale;)V

    .line 50
    .line 51
    .line 52
    :goto_1
    iget-object p1, p0, LZ6/m;->I:Ljava/util/Locale;

    .line 53
    .line 54
    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, LZ6/i;

    .line 59
    .line 60
    if-eqz p1, :cond_2

    .line 61
    .line 62
    return-object p1

    .line 63
    :cond_2
    return-object v0

    .line 64
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    throw p1
.end method

.method public final b(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 8

    .line 1
    iget-object v0, p0, LZ6/m;->H:Ljava/util/TimeZone;

    .line 2
    .line 3
    iget-object v1, p0, LZ6/m;->I:Ljava/util/Locale;

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, LZ6/m;->L:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_4

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, LZ6/j;

    .line 29
    .line 30
    iget-object v3, v2, LZ6/j;->a:LZ6/i;

    .line 31
    .line 32
    invoke-virtual {v3}, LZ6/i;->a()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    const/4 v4, 0x0

    .line 37
    if-eqz v3, :cond_3

    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-nez v3, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    check-cast v3, LZ6/j;

    .line 51
    .line 52
    iget-object v3, v3, LZ6/j;->a:LZ6/i;

    .line 53
    .line 54
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, LZ6/i;->a()Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_2

    .line 62
    .line 63
    iget v4, v2, LZ6/j;->b:I

    .line 64
    .line 65
    :cond_2
    move v7, v4

    .line 66
    goto :goto_1

    .line 67
    :cond_3
    :goto_0
    const/4 v7, 0x0

    .line 68
    :goto_1
    iget-object v2, v2, LZ6/j;->a:LZ6/i;

    .line 69
    .line 70
    move-object v3, p0

    .line 71
    move-object v4, v0

    .line 72
    move-object v5, p1

    .line 73
    move-object v6, p2

    .line 74
    invoke-virtual/range {v2 .. v7}, LZ6/i;->b(LZ6/m;Ljava/util/Calendar;Ljava/lang/String;Ljava/text/ParsePosition;I)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-nez v2, :cond_0

    .line 79
    .line 80
    const/4 p1, 0x0

    .line 81
    goto :goto_2

    .line 82
    :cond_4
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    :goto_2
    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, LZ6/m;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, LZ6/m;

    .line 8
    .line 9
    iget-object v0, p1, LZ6/m;->G:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v2, p0, LZ6/m;->G:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, LZ6/m;->H:Ljava/util/TimeZone;

    .line 20
    .line 21
    iget-object v2, p1, LZ6/m;->H:Ljava/util/TimeZone;

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, LZ6/m;->I:Ljava/util/Locale;

    .line 30
    .line 31
    iget-object p1, p1, LZ6/m;->I:Ljava/util/Locale;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, LZ6/m;->G:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, LZ6/m;->H:Ljava/util/TimeZone;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object v2, p0, LZ6/m;->I:Ljava/util/Locale;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/util/Locale;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    mul-int/lit8 v2, v2, 0xd

    .line 20
    .line 21
    add-int/2addr v2, v1

    .line 22
    mul-int/lit8 v2, v2, 0xd

    .line 23
    .line 24
    add-int/2addr v2, v0

    .line 25
    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "FastDateParser["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, LZ6/m;->G:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, LZ6/m;->I:Ljava/util/Locale;

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, LZ6/m;->H:Ljava/util/TimeZone;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, "]"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    return-object v0
.end method
