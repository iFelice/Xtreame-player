.class public final LW0/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW0/v;


# static fields
.field public static final I:[I

.field public static final J:Lm2/u;

.field public static final K:Lm2/u;


# instance fields
.field public G:Lz4/d0;

.field public final H:LF2/G;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/16 v0, 0x14

    .line 2
    .line 3
    const/16 v1, 0x15

    .line 4
    .line 5
    new-array v2, v1, [I

    .line 6
    .line 7
    fill-array-data v2, :array_0

    .line 8
    .line 9
    .line 10
    sput-object v2, LW0/p;->I:[I

    .line 11
    .line 12
    new-instance v2, Lm2/u;

    .line 13
    .line 14
    new-instance v3, LN/i;

    .line 15
    .line 16
    invoke-direct {v3, v0}, LN/i;-><init>(I)V

    .line 17
    .line 18
    .line 19
    invoke-direct {v2, v3}, Lm2/u;-><init>(LN/i;)V

    .line 20
    .line 21
    .line 22
    sput-object v2, LW0/p;->J:Lm2/u;

    .line 23
    .line 24
    new-instance v0, Lm2/u;

    .line 25
    .line 26
    new-instance v2, LN/i;

    .line 27
    .line 28
    invoke-direct {v2, v1}, LN/i;-><init>(I)V

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v2}, Lm2/u;-><init>(LN/i;)V

    .line 32
    .line 33
    .line 34
    sput-object v0, LW0/p;->K:Lm2/u;

    .line 35
    .line 36
    return-void

    .line 37
    :array_0
    .array-data 4
        0x5
        0x4
        0xc
        0x8
        0x3
        0xa
        0x9
        0xb
        0x6
        0x2
        0x0
        0x1
        0x7
        0x10
        0xf
        0xe
        0x11
        0x12
        0x13
        0x14
        0x15
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, LF2/G;

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    invoke-direct {v0, v1}, LF2/G;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, LW0/p;->H:LF2/G;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/net/Uri;Ljava/util/Map;)[LW0/s;
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    sget-object v1, LW0/p;->I:[I

    .line 5
    .line 6
    const/16 v2, 0x15

    .line 7
    .line 8
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    .line 10
    .line 11
    const-string v3, "Content-Type"

    .line 12
    .line 13
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    check-cast p2, Ljava/util/List;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    if-eqz p2, :cond_1

    .line 21
    .line 22
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-eqz v4, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    check-cast p2, Ljava/lang/String;

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    const/4 p2, 0x0

    .line 37
    :goto_1
    invoke-static {p2}, LZ3/H;->k(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    const/4 v4, -0x1

    .line 42
    if-eq p2, v4, :cond_2

    .line 43
    .line 44
    invoke-virtual {p0, p2, v0}, LW0/p;->b(ILjava/util/ArrayList;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    invoke-static {p1}, LZ3/H;->l(Landroid/net/Uri;)I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eq p1, v4, :cond_3

    .line 52
    .line 53
    if-eq p1, p2, :cond_3

    .line 54
    .line 55
    invoke-virtual {p0, p1, v0}, LW0/p;->b(ILjava/util/ArrayList;)V

    .line 56
    .line 57
    .line 58
    :cond_3
    const/4 v4, 0x0

    .line 59
    :goto_2
    if-ge v4, v2, :cond_5

    .line 60
    .line 61
    aget v5, v1, v4

    .line 62
    .line 63
    if-eq v5, p2, :cond_4

    .line 64
    .line 65
    if-eq v5, p1, :cond_4

    .line 66
    .line 67
    invoke-virtual {p0, v5, v0}, LW0/p;->b(ILjava/util/ArrayList;)V

    .line 68
    .line 69
    .line 70
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :catchall_0
    move-exception p1

    .line 74
    goto :goto_3

    .line 75
    :cond_5
    new-array p1, v3, [LW0/s;

    .line 76
    .line 77
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    check-cast p1, [LW0/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    .line 83
    monitor-exit p0

    .line 84
    return-object p1

    .line 85
    :goto_3
    monitor-exit p0

    .line 86
    throw p1
.end method

.method public final b(ILjava/util/ArrayList;)V
    .locals 7

    .line 1
    iget-object v3, p0, LW0/p;->H:LF2/G;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    :pswitch_0
    goto/16 :goto_0

    .line 9
    .line 10
    :pswitch_1
    new-instance p1, LZ0/a;

    .line 11
    .line 12
    invoke-direct {p1, v1}, LZ0/a;-><init>(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    goto/16 :goto_0

    .line 19
    .line 20
    :pswitch_2
    new-instance p1, LZ0/a;

    .line 21
    .line 22
    invoke-direct {p1, v0}, LZ0/a;-><init>(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    goto/16 :goto_0

    .line 29
    .line 30
    :pswitch_3
    new-instance p1, La1/a;

    .line 31
    .line 32
    invoke-direct {p1, v1, v1}, La1/a;-><init>(II)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    goto/16 :goto_0

    .line 39
    .line 40
    :pswitch_4
    new-instance p1, LZ0/a;

    .line 41
    .line 42
    const/4 v0, 0x2

    .line 43
    invoke-direct {p1, v0}, LZ0/a;-><init>(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    goto/16 :goto_0

    .line 50
    .line 51
    :pswitch_5
    new-instance p1, La1/a;

    .line 52
    .line 53
    invoke-direct {p1, v0, v1}, La1/a;-><init>(II)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    goto/16 :goto_0

    .line 60
    .line 61
    :pswitch_6
    new-instance p1, LY0/b;

    .line 62
    .line 63
    invoke-direct {p1, v3}, LY0/b;-><init>(LF2/G;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    goto/16 :goto_0

    .line 70
    .line 71
    :pswitch_7
    sget-object p1, LW0/p;->K:Lm2/u;

    .line 72
    .line 73
    new-array v0, v1, [Ljava/lang/Object;

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Lm2/u;->u([Ljava/lang/Object;)LW0/s;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    if-eqz p1, :cond_2

    .line 80
    .line 81
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    goto/16 :goto_0

    .line 85
    .line 86
    :pswitch_8
    new-instance p1, La1/a;

    .line 87
    .line 88
    invoke-direct {p1, v1}, La1/a;-><init>(I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    goto/16 :goto_0

    .line 95
    .line 96
    :pswitch_9
    new-instance p1, LB1/d;

    .line 97
    .line 98
    invoke-direct {p1}, LB1/d;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    goto/16 :goto_0

    .line 105
    .line 106
    :pswitch_a
    iget-object p1, p0, LW0/p;->G:Lz4/d0;

    .line 107
    .line 108
    if-nez p1, :cond_0

    .line 109
    .line 110
    sget-object p1, Lz4/H;->H:Lz4/F;

    .line 111
    .line 112
    sget-object p1, Lz4/d0;->K:Lz4/d0;

    .line 113
    .line 114
    iput-object p1, p0, LW0/p;->G:Lz4/d0;

    .line 115
    .line 116
    :cond_0
    new-instance p1, LA1/F;

    .line 117
    .line 118
    new-instance v4, Lp0/J;

    .line 119
    .line 120
    const-wide/16 v5, 0x0

    .line 121
    .line 122
    invoke-direct {v4, v5, v6}, Lp0/J;-><init>(J)V

    .line 123
    .line 124
    .line 125
    new-instance v5, LA1/g;

    .line 126
    .line 127
    iget-object v0, p0, LW0/p;->G:Lz4/d0;

    .line 128
    .line 129
    invoke-direct {v5, v1, v0}, LA1/g;-><init>(ILjava/util/List;)V

    .line 130
    .line 131
    .line 132
    const/4 v1, 0x1

    .line 133
    const/4 v2, 0x0

    .line 134
    move-object v0, p1

    .line 135
    invoke-direct/range {v0 .. v5}, LA1/F;-><init>(IILq1/k;Lp0/J;LA1/g;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    goto/16 :goto_0

    .line 142
    .line 143
    :pswitch_b
    new-instance p1, LA1/A;

    .line 144
    .line 145
    invoke-direct {p1}, LA1/A;-><init>()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    goto/16 :goto_0

    .line 152
    .line 153
    :pswitch_c
    new-instance p1, Lp1/e;

    .line 154
    .line 155
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    goto/16 :goto_0

    .line 162
    .line 163
    :pswitch_d
    new-instance p1, Lo1/i;

    .line 164
    .line 165
    invoke-static {v1}, Lo1/i;->a(I)I

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    invoke-direct {p1, v0, v3}, Lo1/i;-><init>(ILF2/G;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    new-instance p1, Lo1/l;

    .line 176
    .line 177
    invoke-direct {p1, v1, v3}, Lo1/l;-><init>(ILF2/G;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    goto :goto_0

    .line 184
    :pswitch_e
    new-instance p1, Ln1/d;

    .line 185
    .line 186
    invoke-direct {p1}, Ln1/d;-><init>()V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    goto :goto_0

    .line 193
    :pswitch_f
    new-instance p1, Lm1/d;

    .line 194
    .line 195
    invoke-direct {p1, v1, v3}, Lm1/d;-><init>(ILq1/k;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    goto :goto_0

    .line 202
    :pswitch_10
    new-instance p1, Lc1/b;

    .line 203
    .line 204
    invoke-direct {p1}, Lc1/b;-><init>()V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    goto :goto_0

    .line 211
    :pswitch_11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    new-array v0, v0, [Ljava/lang/Object;

    .line 216
    .line 217
    aput-object p1, v0, v1

    .line 218
    .line 219
    sget-object p1, LW0/p;->J:Lm2/u;

    .line 220
    .line 221
    invoke-virtual {p1, v0}, Lm2/u;->u([Ljava/lang/Object;)LW0/s;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    if-eqz p1, :cond_1

    .line 226
    .line 227
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    goto :goto_0

    .line 231
    :cond_1
    new-instance p1, Lb1/b;

    .line 232
    .line 233
    invoke-direct {p1}, Lb1/b;-><init>()V

    .line 234
    .line 235
    .line 236
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    goto :goto_0

    .line 240
    :pswitch_12
    new-instance p1, LX0/a;

    .line 241
    .line 242
    invoke-direct {p1}, LX0/a;-><init>()V

    .line 243
    .line 244
    .line 245
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    goto :goto_0

    .line 249
    :pswitch_13
    new-instance p1, LA1/e;

    .line 250
    .line 251
    invoke-direct {p1}, LA1/e;-><init>()V

    .line 252
    .line 253
    .line 254
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    goto :goto_0

    .line 258
    :pswitch_14
    new-instance p1, LA1/c;

    .line 259
    .line 260
    invoke-direct {p1}, LA1/c;-><init>()V

    .line 261
    .line 262
    .line 263
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    goto :goto_0

    .line 267
    :pswitch_15
    new-instance p1, LA1/a;

    .line 268
    .line 269
    invoke-direct {p1}, LA1/a;-><init>()V

    .line 270
    .line 271
    .line 272
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    :cond_2
    :goto_0
    return-void

    .line 276
    nop

    .line 277
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
