.class public final synthetic LR0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly4/l;


# instance fields
.field public final synthetic G:LR0/q;

.field public final synthetic H:LR0/k;


# direct methods
.method public synthetic constructor <init>(LR0/q;LR0/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LR0/f;->G:LR0/q;

    .line 5
    .line 6
    iput-object p2, p0, LR0/f;->H:LR0/k;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 10

    .line 1
    check-cast p1, Lm0/t;

    .line 2
    .line 3
    iget-object v0, p0, LR0/f;->G:LR0/q;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, LR0/f;->H:LR0/k;

    .line 9
    .line 10
    iget-boolean v1, v1, LR0/k;->P:Z

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    if-eqz v1, :cond_d

    .line 14
    .line 15
    iget-object v1, v0, LR0/q;->j:Ljava/lang/Boolean;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_d

    .line 24
    .line 25
    :cond_0
    iget v1, p1, Lm0/t;->G:I

    .line 26
    .line 27
    const/4 v3, -0x1

    .line 28
    if-eq v1, v3, :cond_d

    .line 29
    .line 30
    const/4 v4, 0x2

    .line 31
    if-le v1, v4, :cond_d

    .line 32
    .line 33
    const-string v1, "audio/eac3-joc"

    .line 34
    .line 35
    const/4 v5, 0x0

    .line 36
    const-string v6, "audio/ac4"

    .line 37
    .line 38
    const/16 v7, 0x20

    .line 39
    .line 40
    iget-object v8, p1, Lm0/t;->o:Ljava/lang/String;

    .line 41
    .line 42
    if-nez v8, :cond_1

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_1
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    .line 46
    .line 47
    .line 48
    move-result v9

    .line 49
    sparse-switch v9, :sswitch_data_0

    .line 50
    .line 51
    .line 52
    :goto_0
    const/4 v9, -0x1

    .line 53
    goto :goto_1

    .line 54
    :sswitch_0
    const-string v9, "audio/eac3"

    .line 55
    .line 56
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v9

    .line 60
    if-nez v9, :cond_2

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    const/4 v9, 0x3

    .line 64
    goto :goto_1

    .line 65
    :sswitch_1
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v9

    .line 69
    if-nez v9, :cond_3

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    const/4 v9, 0x2

    .line 73
    goto :goto_1

    .line 74
    :sswitch_2
    const-string v9, "audio/ac3"

    .line 75
    .line 76
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v9

    .line 80
    if-nez v9, :cond_4

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_4
    const/4 v9, 0x1

    .line 84
    goto :goto_1

    .line 85
    :sswitch_3
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v9

    .line 89
    if-nez v9, :cond_5

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_5
    const/4 v9, 0x0

    .line 93
    :goto_1
    packed-switch v9, :pswitch_data_0

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :pswitch_0
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 98
    .line 99
    if-lt v9, v7, :cond_d

    .line 100
    .line 101
    iget-object v9, v0, LR0/q;->h:LB0/c;

    .line 102
    .line 103
    if-eqz v9, :cond_d

    .line 104
    .line 105
    iget-boolean v9, v9, LB0/c;->G:Z

    .line 106
    .line 107
    if-eqz v9, :cond_d

    .line 108
    .line 109
    :goto_2
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 110
    .line 111
    if-lt v9, v7, :cond_c

    .line 112
    .line 113
    iget-object v7, v0, LR0/q;->h:LB0/c;

    .line 114
    .line 115
    if-eqz v7, :cond_c

    .line 116
    .line 117
    iget-boolean v9, v7, LB0/c;->G:Z

    .line 118
    .line 119
    if-eqz v9, :cond_c

    .line 120
    .line 121
    iget-object v7, v7, LB0/c;->H:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast v7, Landroid/media/Spatializer;

    .line 124
    .line 125
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    invoke-static {v7}, LO/c;->c(Ljava/lang/Object;)Landroid/media/Spatializer;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    invoke-static {v7}, LO/c;->j(Landroid/media/Spatializer;)Z

    .line 133
    .line 134
    .line 135
    move-result v7

    .line 136
    if-eqz v7, :cond_c

    .line 137
    .line 138
    iget-object v7, v0, LR0/q;->h:LB0/c;

    .line 139
    .line 140
    iget-object v7, v7, LB0/c;->H:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast v7, Landroid/media/Spatializer;

    .line 143
    .line 144
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    invoke-static {v7}, LO/c;->c(Ljava/lang/Object;)Landroid/media/Spatializer;

    .line 148
    .line 149
    .line 150
    move-result-object v7

    .line 151
    invoke-static {v7}, LO/c;->n(Landroid/media/Spatializer;)Z

    .line 152
    .line 153
    .line 154
    move-result v7

    .line 155
    if-eqz v7, :cond_c

    .line 156
    .line 157
    iget-object v7, v0, LR0/q;->h:LB0/c;

    .line 158
    .line 159
    iget-object v0, v0, LR0/q;->i:Lm0/d;

    .line 160
    .line 161
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    invoke-static {v8, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    iget v9, p1, Lm0/t;->G:I

    .line 169
    .line 170
    if-eqz v1, :cond_6

    .line 171
    .line 172
    const/16 v1, 0x10

    .line 173
    .line 174
    if-ne v9, v1, :cond_9

    .line 175
    .line 176
    const/16 v9, 0xc

    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_6
    const-string v1, "audio/iamf"

    .line 180
    .line 181
    invoke-static {v8, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    if-eqz v1, :cond_7

    .line 186
    .line 187
    if-ne v9, v3, :cond_9

    .line 188
    .line 189
    const/4 v9, 0x6

    .line 190
    goto :goto_3

    .line 191
    :cond_7
    invoke-static {v8, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    if-eqz v1, :cond_9

    .line 196
    .line 197
    const/16 v1, 0x12

    .line 198
    .line 199
    if-eq v9, v1, :cond_8

    .line 200
    .line 201
    const/16 v1, 0x15

    .line 202
    .line 203
    if-ne v9, v1, :cond_9

    .line 204
    .line 205
    :cond_8
    const/16 v9, 0x18

    .line 206
    .line 207
    :cond_9
    :goto_3
    invoke-static {v9}, Lp0/M;->r(I)I

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    if-nez v1, :cond_a

    .line 212
    .line 213
    goto :goto_4

    .line 214
    :cond_a
    new-instance v6, Landroid/media/AudioFormat$Builder;

    .line 215
    .line 216
    invoke-direct {v6}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v6, v4}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    .line 220
    .line 221
    .line 222
    move-result-object v4

    .line 223
    invoke-virtual {v4, v1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    iget p1, p1, Lm0/t;->H:I

    .line 228
    .line 229
    if-eq p1, v3, :cond_b

    .line 230
    .line 231
    invoke-virtual {v1, p1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    .line 232
    .line 233
    .line 234
    :cond_b
    iget-object p1, v7, LB0/c;->H:Ljava/lang/Object;

    .line 235
    .line 236
    check-cast p1, Landroid/media/Spatializer;

    .line 237
    .line 238
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 239
    .line 240
    .line 241
    invoke-static {p1}, LO/c;->c(Ljava/lang/Object;)Landroid/media/Spatializer;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    invoke-virtual {v0}, Lm0/d;->a()Lf/S;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    iget-object v0, v0, Lf/S;->H:Ljava/lang/Object;

    .line 250
    .line 251
    check-cast v0, Landroid/media/AudioAttributes;

    .line 252
    .line 253
    invoke-virtual {v1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    invoke-static {p1, v0, v1}, LO/c;->k(Landroid/media/Spatializer;Landroid/media/AudioAttributes;Landroid/media/AudioFormat;)Z

    .line 258
    .line 259
    .line 260
    move-result p1

    .line 261
    if-eqz p1, :cond_c

    .line 262
    .line 263
    goto :goto_5

    .line 264
    :cond_c
    :goto_4
    const/4 v2, 0x0

    .line 265
    :cond_d
    :goto_5
    return v2

    .line 266
    nop

    .line 267
    :sswitch_data_0
    .sparse-switch
        -0x7e929daa -> :sswitch_3
        0xb269698 -> :sswitch_2
        0xb269699 -> :sswitch_1
        0x59ae0c65 -> :sswitch_0
    .end sparse-switch

    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
