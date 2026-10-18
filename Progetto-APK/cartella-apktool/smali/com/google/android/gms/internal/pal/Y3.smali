.class public final Lcom/google/android/gms/internal/pal/Y3;
.super LP1/e;
.source "SourceFile"


# static fields
.field public static final d:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/pal/Y3;->d:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/pal/K3;

    .line 2
    .line 3
    const-class v1, Lcom/google/android/gms/internal/pal/o3;

    .line 4
    .line 5
    const/16 v2, 0xa

    .line 6
    .line 7
    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/pal/K3;-><init>(ILjava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    new-array v1, v1, [Lcom/google/android/gms/internal/pal/w4;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    aput-object v0, v1, v2

    .line 15
    .line 16
    const-class v0, Lcom/google/android/gms/internal/pal/J5;

    .line 17
    .line 18
    invoke-direct {p0, v0, v1}, Lk/d;-><init>(Ljava/lang/Class;[Lcom/google/android/gms/internal/pal/w4;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static v(ILcom/google/android/gms/internal/pal/x3;[BI)Lcom/google/android/gms/internal/pal/m4;
    .locals 8

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/pal/m4;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/pal/E5;->m()Lcom/google/android/gms/internal/pal/D5;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/pal/N5;->m()Lcom/google/android/gms/internal/pal/M5;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-boolean v3, v2, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 17
    .line 18
    .line 19
    iput-boolean v4, v2, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 20
    .line 21
    :cond_0
    iget-object v3, v2, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 22
    .line 23
    check-cast v3, Lcom/google/android/gms/internal/pal/N5;

    .line 24
    .line 25
    invoke-static {v3}, Lcom/google/android/gms/internal/pal/N5;->s(Lcom/google/android/gms/internal/pal/N5;)V

    .line 26
    .line 27
    .line 28
    iget-boolean v3, v2, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 29
    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 33
    .line 34
    .line 35
    iput-boolean v4, v2, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 36
    .line 37
    :cond_1
    iget-object v3, v2, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 38
    .line 39
    check-cast v3, Lcom/google/android/gms/internal/pal/N5;

    .line 40
    .line 41
    invoke-static {v3}, Lcom/google/android/gms/internal/pal/N5;->t(Lcom/google/android/gms/internal/pal/N5;)V

    .line 42
    .line 43
    .line 44
    array-length v3, p2

    .line 45
    invoke-static {v4, p2, v3}, Lcom/google/android/gms/internal/pal/r;->o(I[BI)Lcom/google/android/gms/internal/pal/q;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    iget-boolean v3, v2, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 50
    .line 51
    if-eqz v3, :cond_2

    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 54
    .line 55
    .line 56
    iput-boolean v4, v2, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 57
    .line 58
    :cond_2
    iget-object v3, v2, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 59
    .line 60
    check-cast v3, Lcom/google/android/gms/internal/pal/N5;

    .line 61
    .line 62
    invoke-static {v3, p2}, Lcom/google/android/gms/internal/pal/N5;->p(Lcom/google/android/gms/internal/pal/N5;Lcom/google/android/gms/internal/pal/q;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Lcom/google/android/gms/internal/pal/C;->d()Lcom/google/android/gms/internal/pal/D;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    check-cast p2, Lcom/google/android/gms/internal/pal/N5;

    .line 70
    .line 71
    invoke-static {}, Lcom/google/android/gms/internal/pal/g6;->m()Lcom/google/android/gms/internal/pal/f6;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    iget-object p1, p1, Lcom/google/android/gms/internal/pal/x3;->a:Lcom/google/android/gms/internal/pal/g6;

    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/g6;->p()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    iget-boolean v5, v2, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 82
    .line 83
    if-eqz v5, :cond_3

    .line 84
    .line 85
    invoke-virtual {v2}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 86
    .line 87
    .line 88
    iput-boolean v4, v2, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 89
    .line 90
    :cond_3
    iget-object v5, v2, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 91
    .line 92
    check-cast v5, Lcom/google/android/gms/internal/pal/g6;

    .line 93
    .line 94
    invoke-static {v5, v3}, Lcom/google/android/gms/internal/pal/g6;->q(Lcom/google/android/gms/internal/pal/g6;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/g6;->o()Lcom/google/android/gms/internal/pal/r;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {v3}, Lcom/google/android/gms/internal/pal/r;->p()[B

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    array-length v5, v3

    .line 106
    invoke-static {v4, v3, v5}, Lcom/google/android/gms/internal/pal/r;->o(I[BI)Lcom/google/android/gms/internal/pal/q;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    iget-boolean v5, v2, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 111
    .line 112
    if-eqz v5, :cond_4

    .line 113
    .line 114
    invoke-virtual {v2}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 115
    .line 116
    .line 117
    iput-boolean v4, v2, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 118
    .line 119
    :cond_4
    iget-object v5, v2, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 120
    .line 121
    check-cast v5, Lcom/google/android/gms/internal/pal/g6;

    .line 122
    .line 123
    invoke-static {v5, v3}, Lcom/google/android/gms/internal/pal/g6;->r(Lcom/google/android/gms/internal/pal/g6;Lcom/google/android/gms/internal/pal/q;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/g6;->s()I

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    add-int/lit8 p1, p1, -0x2

    .line 131
    .line 132
    const/4 v3, 0x4

    .line 133
    const/4 v5, 0x3

    .line 134
    const/4 v6, 0x2

    .line 135
    const/4 v7, 0x1

    .line 136
    if-eq p1, v7, :cond_8

    .line 137
    .line 138
    if-eq p1, v6, :cond_7

    .line 139
    .line 140
    if-eq p1, v5, :cond_6

    .line 141
    .line 142
    if-ne p1, v3, :cond_5

    .line 143
    .line 144
    const/4 p1, 0x4

    .line 145
    goto :goto_0

    .line 146
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 147
    .line 148
    const-string p1, "Unknown output prefix type"

    .line 149
    .line 150
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw p0

    .line 154
    :cond_6
    const/4 p1, 0x3

    .line 155
    goto :goto_0

    .line 156
    :cond_7
    const/4 p1, 0x2

    .line 157
    goto :goto_0

    .line 158
    :cond_8
    const/4 p1, 0x1

    .line 159
    :goto_0
    add-int/lit8 p1, p1, -0x1

    .line 160
    .line 161
    if-eqz p1, :cond_a

    .line 162
    .line 163
    if-eq p1, v7, :cond_b

    .line 164
    .line 165
    if-eq p1, v6, :cond_9

    .line 166
    .line 167
    const/4 v3, 0x6

    .line 168
    goto :goto_1

    .line 169
    :cond_9
    const/4 v3, 0x5

    .line 170
    goto :goto_1

    .line 171
    :cond_a
    const/4 v3, 0x3

    .line 172
    :cond_b
    :goto_1
    iget-boolean p1, v2, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 173
    .line 174
    if-eqz p1, :cond_c

    .line 175
    .line 176
    invoke-virtual {v2}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 177
    .line 178
    .line 179
    iput-boolean v4, v2, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 180
    .line 181
    :cond_c
    iget-object p1, v2, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 182
    .line 183
    check-cast p1, Lcom/google/android/gms/internal/pal/g6;

    .line 184
    .line 185
    invoke-static {p1, v3}, Lcom/google/android/gms/internal/pal/g6;->t(Lcom/google/android/gms/internal/pal/g6;I)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v2}, Lcom/google/android/gms/internal/pal/C;->d()Lcom/google/android/gms/internal/pal/D;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    check-cast p1, Lcom/google/android/gms/internal/pal/g6;

    .line 193
    .line 194
    invoke-static {}, Lcom/google/android/gms/internal/pal/C5;->m()Lcom/google/android/gms/internal/pal/B5;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    iget-boolean v3, v2, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 199
    .line 200
    if-eqz v3, :cond_d

    .line 201
    .line 202
    invoke-virtual {v2}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 203
    .line 204
    .line 205
    iput-boolean v4, v2, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 206
    .line 207
    :cond_d
    iget-object v3, v2, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 208
    .line 209
    check-cast v3, Lcom/google/android/gms/internal/pal/C5;

    .line 210
    .line 211
    invoke-static {v3, p1}, Lcom/google/android/gms/internal/pal/C5;->p(Lcom/google/android/gms/internal/pal/C5;Lcom/google/android/gms/internal/pal/g6;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v2}, Lcom/google/android/gms/internal/pal/C;->d()Lcom/google/android/gms/internal/pal/D;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    check-cast p1, Lcom/google/android/gms/internal/pal/C5;

    .line 219
    .line 220
    invoke-static {}, Lcom/google/android/gms/internal/pal/G5;->n()Lcom/google/android/gms/internal/pal/F5;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    iget-boolean v3, v2, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 225
    .line 226
    if-eqz v3, :cond_e

    .line 227
    .line 228
    invoke-virtual {v2}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 229
    .line 230
    .line 231
    iput-boolean v4, v2, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 232
    .line 233
    :cond_e
    iget-object v3, v2, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 234
    .line 235
    check-cast v3, Lcom/google/android/gms/internal/pal/G5;

    .line 236
    .line 237
    invoke-static {v3, p2}, Lcom/google/android/gms/internal/pal/G5;->q(Lcom/google/android/gms/internal/pal/G5;Lcom/google/android/gms/internal/pal/N5;)V

    .line 238
    .line 239
    .line 240
    iget-boolean p2, v2, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 241
    .line 242
    if-eqz p2, :cond_f

    .line 243
    .line 244
    invoke-virtual {v2}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 245
    .line 246
    .line 247
    iput-boolean v4, v2, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 248
    .line 249
    :cond_f
    iget-object p2, v2, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 250
    .line 251
    check-cast p2, Lcom/google/android/gms/internal/pal/G5;

    .line 252
    .line 253
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/pal/G5;->r(Lcom/google/android/gms/internal/pal/G5;Lcom/google/android/gms/internal/pal/C5;)V

    .line 254
    .line 255
    .line 256
    iget-boolean p1, v2, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 257
    .line 258
    if-eqz p1, :cond_10

    .line 259
    .line 260
    invoke-virtual {v2}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 261
    .line 262
    .line 263
    iput-boolean v4, v2, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 264
    .line 265
    :cond_10
    iget-object p1, v2, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 266
    .line 267
    check-cast p1, Lcom/google/android/gms/internal/pal/G5;

    .line 268
    .line 269
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/pal/G5;->t(Lcom/google/android/gms/internal/pal/G5;I)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v2}, Lcom/google/android/gms/internal/pal/C;->d()Lcom/google/android/gms/internal/pal/D;

    .line 273
    .line 274
    .line 275
    move-result-object p0

    .line 276
    check-cast p0, Lcom/google/android/gms/internal/pal/G5;

    .line 277
    .line 278
    iget-boolean p1, v1, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 279
    .line 280
    if-eqz p1, :cond_11

    .line 281
    .line 282
    invoke-virtual {v1}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 283
    .line 284
    .line 285
    iput-boolean v4, v1, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 286
    .line 287
    :cond_11
    iget-object p1, v1, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 288
    .line 289
    check-cast p1, Lcom/google/android/gms/internal/pal/E5;

    .line 290
    .line 291
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/pal/E5;->p(Lcom/google/android/gms/internal/pal/E5;Lcom/google/android/gms/internal/pal/G5;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v1}, Lcom/google/android/gms/internal/pal/C;->d()Lcom/google/android/gms/internal/pal/D;

    .line 295
    .line 296
    .line 297
    move-result-object p0

    .line 298
    check-cast p0, Lcom/google/android/gms/internal/pal/E5;

    .line 299
    .line 300
    invoke-direct {v0, p0, p3}, Lcom/google/android/gms/internal/pal/m4;-><init>(Lcom/google/android/gms/internal/pal/D;I)V

    .line 301
    .line 302
    .line 303
    return-object v0
.end method


# virtual methods
.method public final n()Lcom/google/android/gms/internal/pal/n4;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/pal/L3;

    const-class v1, Lcom/google/android/gms/internal/pal/E5;

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/pal/L3;-><init>(Ljava/lang/Class;I)V

    return-object v0
.end method

.method public final o()I
    .locals 1

    .line 1
    const/4 v0, 0x3

    return v0
.end method

.method public final synthetic p(Lcom/google/android/gms/internal/pal/r;)Lcom/google/android/gms/internal/pal/j;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/pal/x;->a()Lcom/google/android/gms/internal/pal/x;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/pal/J5;->o(Lcom/google/android/gms/internal/pal/r;Lcom/google/android/gms/internal/pal/x;)Lcom/google/android/gms/internal/pal/J5;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey"

    return-object v0
.end method

.method public final r(Lcom/google/android/gms/internal/pal/j;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/pal/J5;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/J5;->q()Lcom/google/android/gms/internal/pal/r;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/r;->i()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/J5;->m()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/internal/pal/P6;->b(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/J5;->p()Lcom/google/android/gms/internal/pal/L5;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/L5;->n()Lcom/google/android/gms/internal/pal/G5;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, Lcom/google/android/gms/internal/pal/y4;->s(Lcom/google/android/gms/internal/pal/G5;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 33
    .line 34
    const-string v0, "invalid ECIES private key"

    .line 35
    .line 36
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1
.end method
