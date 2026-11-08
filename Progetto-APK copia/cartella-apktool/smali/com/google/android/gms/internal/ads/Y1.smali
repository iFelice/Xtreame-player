.class public final Lcom/google/android/gms/internal/ads/Y1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/e0;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/e0;

.field public final b:Lcom/google/android/gms/internal/ads/V1;

.field public final c:Lcom/google/android/gms/internal/ads/jr;

.field public d:I

.field public e:I

.field public f:[B

.field public g:Lcom/google/android/gms/internal/ads/W1;

.field public h:Lcom/google/android/gms/internal/ads/p0;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/e0;Lcom/google/android/gms/internal/ads/V1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Y1;->a:Lcom/google/android/gms/internal/ads/e0;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Y1;->b:Lcom/google/android/gms/internal/ads/V1;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/google/android/gms/internal/ads/Y1;->d:I

    .line 10
    .line 11
    iput p1, p0, Lcom/google/android/gms/internal/ads/Y1;->e:I

    .line 12
    .line 13
    sget-object p1, Lcom/google/android/gms/internal/ads/Et;->f:[B

    .line 14
    .line 15
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Y1;->f:[B

    .line 16
    .line 17
    new-instance p1, Lcom/google/android/gms/internal/ads/jr;

    .line 18
    .line 19
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/jr;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Y1;->c:Lcom/google/android/gms/internal/ads/jr;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/jr;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Y1;->g:Lcom/google/android/gms/internal/ads/W1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Y1;->a:Lcom/google/android/gms/internal/ads/e0;

    .line 6
    .line 7
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/e0;->a(Lcom/google/android/gms/internal/ads/jr;II)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/Y1;->g(I)V

    .line 12
    .line 13
    .line 14
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/Y1;->f:[B

    .line 15
    .line 16
    iget v0, p0, Lcom/google/android/gms/internal/ads/Y1;->e:I

    .line 17
    .line 18
    invoke-virtual {p1, v0, p3, p2}, Lcom/google/android/gms/internal/ads/jr;->f(I[BI)V

    .line 19
    .line 20
    .line 21
    iget p1, p0, Lcom/google/android/gms/internal/ads/Y1;->e:I

    .line 22
    .line 23
    add-int/2addr p1, p2

    .line 24
    iput p1, p0, Lcom/google/android/gms/internal/ads/Y1;->e:I

    .line 25
    .line 26
    return-void
.end method

.method public final b(JIIILcom/google/android/gms/internal/ads/d0;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Y1;->g:Lcom/google/android/gms/internal/ads/W1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Y1;->a:Lcom/google/android/gms/internal/ads/e0;

    .line 6
    .line 7
    move-wide v2, p1

    .line 8
    move v4, p3

    .line 9
    move v5, p4

    .line 10
    move v6, p5

    .line 11
    move-object v7, p6

    .line 12
    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/e0;->b(JIIILcom/google/android/gms/internal/ads/d0;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    if-nez p6, :cond_1

    .line 18
    .line 19
    const/4 p6, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 p6, 0x0

    .line 22
    :goto_0
    const-string v1, "DRM on subtitles is not supported"

    .line 23
    .line 24
    invoke-static {p6, v1}, Lo3/r;->L(ZLjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget p6, p0, Lcom/google/android/gms/internal/ads/Y1;->e:I

    .line 28
    .line 29
    sub-int/2addr p6, p5

    .line 30
    sub-int/2addr p6, p4

    .line 31
    iget-object p5, p0, Lcom/google/android/gms/internal/ads/Y1;->g:Lcom/google/android/gms/internal/ads/W1;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Y1;->f:[B

    .line 34
    .line 35
    new-instance v2, Lt0/d;

    .line 36
    .line 37
    invoke-direct {v2, p0, p1, p2, p3}, Lt0/d;-><init>(Lcom/google/android/gms/internal/ads/Y1;JI)V

    .line 38
    .line 39
    .line 40
    invoke-interface {p5, v1, p6, p4, v2}, Lcom/google/android/gms/internal/ads/W1;->d([BIILt0/d;)V

    .line 41
    .line 42
    .line 43
    add-int/2addr p6, p4

    .line 44
    iput p6, p0, Lcom/google/android/gms/internal/ads/Y1;->d:I

    .line 45
    .line 46
    iget p1, p0, Lcom/google/android/gms/internal/ads/Y1;->e:I

    .line 47
    .line 48
    if-ne p6, p1, :cond_2

    .line 49
    .line 50
    iput v0, p0, Lcom/google/android/gms/internal/ads/Y1;->d:I

    .line 51
    .line 52
    iput v0, p0, Lcom/google/android/gms/internal/ads/Y1;->e:I

    .line 53
    .line 54
    :cond_2
    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/ads/HL;IZ)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Y1;->g:Lcom/google/android/gms/internal/ads/W1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Y1;->a:Lcom/google/android/gms/internal/ads/e0;

    .line 6
    .line 7
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/e0;->c(Lcom/google/android/gms/internal/ads/HL;IZ)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/Y1;->g(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Y1;->f:[B

    .line 16
    .line 17
    iget v1, p0, Lcom/google/android/gms/internal/ads/Y1;->e:I

    .line 18
    .line 19
    invoke-interface {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/HL;->e([BII)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    const/4 p2, -0x1

    .line 24
    if-ne p1, p2, :cond_2

    .line 25
    .line 26
    if-eqz p3, :cond_1

    .line 27
    .line 28
    return p2

    .line 29
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 32
    .line 33
    .line 34
    throw p1

    .line 35
    :cond_2
    iget p2, p0, Lcom/google/android/gms/internal/ads/Y1;->e:I

    .line 36
    .line 37
    add-int/2addr p2, p1

    .line 38
    iput p2, p0, Lcom/google/android/gms/internal/ads/Y1;->e:I

    .line 39
    .line 40
    return p1
.end method

.method public final d(Lcom/google/android/gms/internal/ads/p0;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/p0;->m:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/va;->b(Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x3

    .line 15
    if-ne v2, v3, :cond_0

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v2, 0x0

    .line 20
    :goto_0
    invoke-static {v2}, Lo3/r;->J(Z)V

    .line 21
    .line 22
    .line 23
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/Y1;->h:Lcom/google/android/gms/internal/ads/p0;

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/p0;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const-string v6, "text/x-ssa"

    .line 30
    .line 31
    const-string v7, "text/vtt"

    .line 32
    .line 33
    const-string v8, "application/x-mp4-vtt"

    .line 34
    .line 35
    const-string v9, "application/x-subrip"

    .line 36
    .line 37
    const-string v10, "application/x-quicktime-tx3g"

    .line 38
    .line 39
    const-string v11, "application/pgs"

    .line 40
    .line 41
    const-string v12, "application/dvbsubs"

    .line 42
    .line 43
    const-string v13, "application/ttml+xml"

    .line 44
    .line 45
    const/16 v16, 0x4

    .line 46
    .line 47
    const/16 v17, 0x2

    .line 48
    .line 49
    const/16 v18, 0x6

    .line 50
    .line 51
    const/16 v19, -0x1

    .line 52
    .line 53
    const-string v5, "Unsupported MIME type: "

    .line 54
    .line 55
    iget-object v15, v0, Lcom/google/android/gms/internal/ads/Y1;->b:Lcom/google/android/gms/internal/ads/V1;

    .line 56
    .line 57
    iget-object v14, v1, Lcom/google/android/gms/internal/ads/p0;->m:Ljava/lang/String;

    .line 58
    .line 59
    if-nez v2, :cond_5

    .line 60
    .line 61
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/Y1;->h:Lcom/google/android/gms/internal/ads/p0;

    .line 62
    .line 63
    move-object v2, v15

    .line 64
    check-cast v2, Lcom/google/android/gms/internal/ads/kH;

    .line 65
    .line 66
    iget v4, v2, Lcom/google/android/gms/internal/ads/kH;->G:I

    .line 67
    .line 68
    packed-switch v4, :pswitch_data_0

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :pswitch_0
    invoke-static {v14, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-nez v4, :cond_2

    .line 77
    .line 78
    invoke-static {v14, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    if-nez v4, :cond_2

    .line 83
    .line 84
    invoke-static {v14, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    if-nez v4, :cond_2

    .line 89
    .line 90
    invoke-static {v14, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-nez v4, :cond_2

    .line 95
    .line 96
    invoke-static {v14, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    if-nez v4, :cond_2

    .line 101
    .line 102
    invoke-static {v14, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    if-nez v4, :cond_2

    .line 107
    .line 108
    invoke-static {v14, v12}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    if-nez v4, :cond_2

    .line 113
    .line 114
    invoke-static {v14, v13}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    if-eqz v4, :cond_1

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_1
    :goto_1
    const/4 v2, 0x0

    .line 122
    :goto_2
    const/4 v3, 0x1

    .line 123
    goto/16 :goto_6

    .line 124
    .line 125
    :cond_2
    :goto_3
    iget v2, v2, Lcom/google/android/gms/internal/ads/kH;->G:I

    .line 126
    .line 127
    packed-switch v2, :pswitch_data_1

    .line 128
    .line 129
    .line 130
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 131
    .line 132
    const-string v2, "This SubtitleParser.Factory doesn\'t support any formats."

    .line 133
    .line 134
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw v1

    .line 138
    :pswitch_1
    if-eqz v14, :cond_4

    .line 139
    .line 140
    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    sparse-switch v2, :sswitch_data_0

    .line 145
    .line 146
    .line 147
    goto :goto_4

    .line 148
    :sswitch_0
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    if-eqz v2, :cond_3

    .line 153
    .line 154
    const/4 v2, 0x7

    .line 155
    goto :goto_5

    .line 156
    :sswitch_1
    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    if-eqz v2, :cond_3

    .line 161
    .line 162
    const/4 v2, 0x3

    .line 163
    goto :goto_5

    .line 164
    :sswitch_2
    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    if-eqz v2, :cond_3

    .line 169
    .line 170
    const/4 v2, 0x0

    .line 171
    goto :goto_5

    .line 172
    :sswitch_3
    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    if-eqz v2, :cond_3

    .line 177
    .line 178
    const/4 v2, 0x4

    .line 179
    goto :goto_5

    .line 180
    :sswitch_4
    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    if-eqz v2, :cond_3

    .line 185
    .line 186
    const/4 v2, 0x1

    .line 187
    goto :goto_5

    .line 188
    :sswitch_5
    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    if-eqz v2, :cond_3

    .line 193
    .line 194
    const/4 v2, 0x2

    .line 195
    goto :goto_5

    .line 196
    :sswitch_6
    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    if-eqz v2, :cond_3

    .line 201
    .line 202
    const/4 v2, 0x5

    .line 203
    goto :goto_5

    .line 204
    :sswitch_7
    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    if-eqz v2, :cond_3

    .line 209
    .line 210
    const/4 v2, 0x6

    .line 211
    goto :goto_5

    .line 212
    :cond_3
    :goto_4
    const/4 v2, -0x1

    .line 213
    :goto_5
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/p0;->p:Ljava/util/List;

    .line 214
    .line 215
    packed-switch v2, :pswitch_data_2

    .line 216
    .line 217
    .line 218
    goto :goto_7

    .line 219
    :pswitch_2
    new-instance v2, Lcom/google/android/gms/internal/ads/n2;

    .line 220
    .line 221
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/n2;-><init>()V

    .line 222
    .line 223
    .line 224
    goto :goto_2

    .line 225
    :pswitch_3
    new-instance v2, Lcom/google/android/gms/internal/ads/e2;

    .line 226
    .line 227
    invoke-direct {v2, v4}, Lcom/google/android/gms/internal/ads/e2;-><init>(Ljava/util/List;)V

    .line 228
    .line 229
    .line 230
    goto :goto_2

    .line 231
    :pswitch_4
    new-instance v2, Lcom/google/android/gms/internal/ads/xc;

    .line 232
    .line 233
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/xc;-><init>(I)V

    .line 234
    .line 235
    .line 236
    goto :goto_2

    .line 237
    :pswitch_5
    new-instance v2, Lx1/a;

    .line 238
    .line 239
    const/4 v3, 0x1

    .line 240
    invoke-direct {v2, v3, v4}, Lx1/a;-><init>(ILjava/util/List;)V

    .line 241
    .line 242
    .line 243
    goto :goto_6

    .line 244
    :pswitch_6
    const/4 v3, 0x1

    .line 245
    new-instance v2, Lcom/google/android/gms/internal/ads/j2;

    .line 246
    .line 247
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/j2;-><init>()V

    .line 248
    .line 249
    .line 250
    goto :goto_6

    .line 251
    :pswitch_7
    const/4 v3, 0x1

    .line 252
    new-instance v2, Lcom/google/android/gms/internal/ads/V;

    .line 253
    .line 254
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/V;-><init>(I)V

    .line 255
    .line 256
    .line 257
    goto :goto_6

    .line 258
    :pswitch_8
    const/4 v3, 0x1

    .line 259
    new-instance v2, Lcom/google/android/gms/internal/ads/x;

    .line 260
    .line 261
    const/4 v4, 0x5

    .line 262
    invoke-direct {v2, v4}, Lcom/google/android/gms/internal/ads/x;-><init>(I)V

    .line 263
    .line 264
    .line 265
    goto :goto_6

    .line 266
    :pswitch_9
    const/4 v3, 0x1

    .line 267
    new-instance v2, Lcom/google/android/gms/internal/ads/g2;

    .line 268
    .line 269
    invoke-direct {v2, v4}, Lcom/google/android/gms/internal/ads/g2;-><init>(Ljava/util/List;)V

    .line 270
    .line 271
    .line 272
    :goto_6
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/Y1;->g:Lcom/google/android/gms/internal/ads/W1;

    .line 273
    .line 274
    goto :goto_8

    .line 275
    :cond_4
    :goto_7
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 280
    .line 281
    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    throw v2

    .line 289
    :cond_5
    const/4 v3, 0x1

    .line 290
    :goto_8
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/Y1;->g:Lcom/google/android/gms/internal/ads/W1;

    .line 291
    .line 292
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Y1;->a:Lcom/google/android/gms/internal/ads/e0;

    .line 293
    .line 294
    if-nez v2, :cond_6

    .line 295
    .line 296
    invoke-interface {v4, v1}, Lcom/google/android/gms/internal/ads/e0;->d(Lcom/google/android/gms/internal/ads/p0;)V

    .line 297
    .line 298
    .line 299
    return-void

    .line 300
    :cond_6
    new-instance v2, Lcom/google/android/gms/internal/ads/K;

    .line 301
    .line 302
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/K;-><init>(Lcom/google/android/gms/internal/ads/p0;)V

    .line 303
    .line 304
    .line 305
    const-string v1, "application/x-media3-cues"

    .line 306
    .line 307
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/K;->f(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    iput-object v14, v2, Lcom/google/android/gms/internal/ads/K;->i:Ljava/lang/String;

    .line 311
    .line 312
    move-object v1, v4

    .line 313
    const-wide v3, 0x7fffffffffffffffL

    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    iput-wide v3, v2, Lcom/google/android/gms/internal/ads/K;->q:J

    .line 319
    .line 320
    check-cast v15, Lcom/google/android/gms/internal/ads/kH;

    .line 321
    .line 322
    iget v3, v15, Lcom/google/android/gms/internal/ads/kH;->G:I

    .line 323
    .line 324
    packed-switch v3, :pswitch_data_3

    .line 325
    .line 326
    .line 327
    :pswitch_a
    const/4 v4, 0x1

    .line 328
    goto/16 :goto_b

    .line 329
    .line 330
    :pswitch_b
    if-eqz v14, :cond_f

    .line 331
    .line 332
    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    .line 333
    .line 334
    .line 335
    move-result v3

    .line 336
    sparse-switch v3, :sswitch_data_1

    .line 337
    .line 338
    .line 339
    :goto_9
    const/4 v3, -0x1

    .line 340
    goto :goto_a

    .line 341
    :sswitch_8
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    move-result v3

    .line 345
    if-nez v3, :cond_7

    .line 346
    .line 347
    goto :goto_9

    .line 348
    :cond_7
    const/4 v3, 0x7

    .line 349
    goto :goto_a

    .line 350
    :sswitch_9
    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    move-result v3

    .line 354
    if-nez v3, :cond_8

    .line 355
    .line 356
    goto :goto_9

    .line 357
    :cond_8
    const/4 v3, 0x6

    .line 358
    goto :goto_a

    .line 359
    :sswitch_a
    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    move-result v3

    .line 363
    if-nez v3, :cond_9

    .line 364
    .line 365
    goto :goto_9

    .line 366
    :cond_9
    const/4 v3, 0x5

    .line 367
    goto :goto_a

    .line 368
    :sswitch_b
    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 369
    .line 370
    .line 371
    move-result v3

    .line 372
    if-nez v3, :cond_a

    .line 373
    .line 374
    goto :goto_9

    .line 375
    :cond_a
    const/4 v3, 0x4

    .line 376
    goto :goto_a

    .line 377
    :sswitch_c
    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    move-result v3

    .line 381
    if-nez v3, :cond_b

    .line 382
    .line 383
    goto :goto_9

    .line 384
    :cond_b
    const/4 v3, 0x3

    .line 385
    goto :goto_a

    .line 386
    :sswitch_d
    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 387
    .line 388
    .line 389
    move-result v3

    .line 390
    if-nez v3, :cond_c

    .line 391
    .line 392
    goto :goto_9

    .line 393
    :cond_c
    const/4 v3, 0x2

    .line 394
    goto :goto_a

    .line 395
    :sswitch_e
    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 396
    .line 397
    .line 398
    move-result v3

    .line 399
    if-nez v3, :cond_d

    .line 400
    .line 401
    goto :goto_9

    .line 402
    :cond_d
    const/4 v3, 0x1

    .line 403
    goto :goto_a

    .line 404
    :sswitch_f
    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 405
    .line 406
    .line 407
    move-result v3

    .line 408
    if-nez v3, :cond_e

    .line 409
    .line 410
    goto :goto_9

    .line 411
    :cond_e
    const/4 v3, 0x0

    .line 412
    :goto_a
    packed-switch v3, :pswitch_data_4

    .line 413
    .line 414
    .line 415
    goto :goto_c

    .line 416
    :pswitch_c
    const/4 v4, 0x2

    .line 417
    :goto_b
    iput v4, v2, Lcom/google/android/gms/internal/ads/K;->F:I

    .line 418
    .line 419
    new-instance v3, Lcom/google/android/gms/internal/ads/p0;

    .line 420
    .line 421
    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/p0;-><init>(Lcom/google/android/gms/internal/ads/K;)V

    .line 422
    .line 423
    .line 424
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/e0;->d(Lcom/google/android/gms/internal/ads/p0;)V

    .line 425
    .line 426
    .line 427
    return-void

    .line 428
    :cond_f
    :goto_c
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v1

    .line 432
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 433
    .line 434
    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v1

    .line 438
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    throw v2

    .line 442
    nop

    .line 443
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch

    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_1
    .end packed-switch

    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    :sswitch_data_0
    .sparse-switch
        -0x5091057c -> :sswitch_7
        -0x4a6813e3 -> :sswitch_6
        -0x3d28a9ba -> :sswitch_5
        -0x3be2f26c -> :sswitch_4
        0x2935f49f -> :sswitch_3
        0x310bebca -> :sswitch_2
        0x63771bad -> :sswitch_1
        0x64f8068a -> :sswitch_0
    .end sparse-switch

    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    :pswitch_data_3
    .packed-switch 0xa
        :pswitch_b
    .end packed-switch

    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    :sswitch_data_1
    .sparse-switch
        -0x5091057c -> :sswitch_f
        -0x4a6813e3 -> :sswitch_e
        -0x3d28a9ba -> :sswitch_d
        -0x3be2f26c -> :sswitch_c
        0x2935f49f -> :sswitch_b
        0x310bebca -> :sswitch_a
        0x63771bad -> :sswitch_9
        0x64f8068a -> :sswitch_8
    .end sparse-switch

    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_a
        :pswitch_c
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method public final e(Lcom/google/android/gms/internal/ads/HL;IZ)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/Y1;->c(Lcom/google/android/gms/internal/ads/HL;IZ)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final f(ILcom/google/android/gms/internal/ads/jr;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p2, p1, v0}, Lcom/google/android/gms/internal/ads/Y1;->a(Lcom/google/android/gms/internal/ads/jr;II)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final g(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Y1;->f:[B

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    iget v1, p0, Lcom/google/android/gms/internal/ads/Y1;->e:I

    .line 5
    .line 6
    sub-int/2addr v0, v1

    .line 7
    if-lt v0, p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/Y1;->d:I

    .line 11
    .line 12
    sub-int/2addr v1, v0

    .line 13
    add-int v0, v1, v1

    .line 14
    .line 15
    add-int/2addr p1, v1

    .line 16
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Y1;->f:[B

    .line 21
    .line 22
    array-length v2, v0

    .line 23
    if-gt p1, v2, :cond_1

    .line 24
    .line 25
    move-object p1, v0

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    new-array p1, p1, [B

    .line 28
    .line 29
    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/ads/Y1;->d:I

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-static {v0, v2, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    .line 34
    .line 35
    iput v3, p0, Lcom/google/android/gms/internal/ads/Y1;->d:I

    .line 36
    .line 37
    iput v1, p0, Lcom/google/android/gms/internal/ads/Y1;->e:I

    .line 38
    .line 39
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Y1;->f:[B

    .line 40
    .line 41
    return-void
.end method
