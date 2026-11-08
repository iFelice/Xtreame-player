.class public final LD0/U;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD0/s;
.implements LO0/V;
.implements LK0/m;
.implements LQ0/e;
.implements LU0/O;
.implements LM1/c;
.implements LX1/y;
.implements Lorg/chromium/support_lib_boundary/WebMessageListenerBoundaryInterface;
.implements Lc2/p;
.implements LQ2/a;
.implements LC2/e;


# instance fields
.field public final synthetic G:I

.field public H:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 7

    .line 1
    iput p1, p0, LD0/U;->G:I

    const/4 v0, 0x5

    const/4 v1, 0x3

    if-eq p1, v0, :cond_6

    const/4 v0, 0x6

    if-eq p1, v0, :cond_5

    const/4 v0, 0x7

    if-eq p1, v0, :cond_4

    const/16 v0, 0x16

    if-eq p1, v0, :cond_0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, LD0/U;->H:Ljava/lang/Object;

    return-void

    .line 4
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_1

    .line 7
    invoke-static {p1}, Lm/d;->b(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object p1

    goto :goto_3

    .line 8
    :cond_1
    :try_start_0
    const-class v0, Landroid/os/Handler;

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/os/Looper;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Landroid/os/Handler$Callback;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const/4 v2, 0x0

    aput-object v2, v1, v5

    .line 9
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object p1, v0

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_2

    .line 10
    :goto_1
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 11
    instance-of v0, p1, Ljava/lang/RuntimeException;

    if-nez v0, :cond_3

    .line 12
    instance-of v0, p1, Ljava/lang/Error;

    if-eqz v0, :cond_2

    .line 13
    check-cast p1, Ljava/lang/Error;

    throw p1

    .line 14
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 15
    :cond_3
    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    .line 16
    :goto_2
    const-string v1, "HandlerCompat"

    const-string v2, "Unable to invoke Handler(Looper, Callback, boolean) constructor"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_0

    .line 18
    :goto_3
    iput-object p1, p0, LD0/U;->H:Ljava/lang/Object;

    return-void

    .line 19
    :cond_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .line 20
    :cond_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, LD0/U;->H:Ljava/lang/Object;

    return-void

    .line 22
    :cond_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance p1, LF2/G;

    invoke-direct {p1, v1}, LF2/G;-><init>(I)V

    iput-object p1, p0, LD0/U;->H:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(LD0/V;)V
    .locals 1

    .line 24
    const/4 v0, 0x0

    iput v0, p0, LD0/U;->G:I

    .line 25
    invoke-direct {p0, p1, v0}, LD0/U;-><init>(Ljava/lang/Object;I)V

    return-void
.end method

.method public synthetic constructor <init>(LH0/n;)V
    .locals 1

    .line 26
    const/4 v0, 0x1

    iput v0, p0, LD0/U;->G:I

    .line 27
    invoke-direct {p0, p1, v0}, LD0/U;-><init>(Ljava/lang/Object;I)V

    return-void
.end method

.method public synthetic constructor <init>(LK0/r;)V
    .locals 1

    .line 28
    const/4 v0, 0x3

    iput v0, p0, LD0/U;->G:I

    .line 29
    invoke-direct {p0, p1, v0}, LD0/U;-><init>(Ljava/lang/Object;I)V

    return-void
.end method

.method public synthetic constructor <init>(LU0/x;)V
    .locals 1

    .line 30
    const/16 v0, 0x9

    iput v0, p0, LD0/U;->G:I

    .line 31
    invoke-direct {p0, p1, v0}, LD0/U;-><init>(Ljava/lang/Object;I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x17

    .line 36
    iput v0, p0, LD0/U;->G:I

    .line 37
    new-instance v0, Lr2/e;

    invoke-direct {v0, p1}, Lr2/e;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, LD0/U;->H:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 39
    iput v0, p0, LD0/U;->G:I

    .line 40
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p1

    iput-object p1, p0, LD0/U;->H:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, LD0/U;->G:I

    iput-object p1, p0, LD0/U;->H:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/InvocationHandler;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x13

    .line 42
    iput v0, p0, LD0/U;->G:I

    .line 43
    const-class v0, Lorg/chromium/support_lib_boundary/WebMessagePortBoundaryInterface;

    invoke-static {v0, p1}, La7/b;->b(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/support_lib_boundary/WebMessagePortBoundaryInterface;

    iput-object p1, p0, LD0/U;->H:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lm1/d;)V
    .locals 1

    .line 33
    const/16 v0, 0xb

    iput v0, p0, LD0/U;->G:I

    .line 34
    invoke-direct {p0, p1, v0}, LD0/U;-><init>(Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public final A([B)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final B(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, LD0/U;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/view/ViewGroupOverlay;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final C()V
    .locals 1

    .line 1
    iget-object v0, p0, LD0/U;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LD0/V;

    .line 4
    .line 5
    iget-object v0, v0, LK0/r;->V:LB0/S;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, LB0/S;->a()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final D(IILW0/t;)V
    .locals 19

    .line 1
    move/from16 v0, p1

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p0

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    iget-object v4, v2, LD0/U;->H:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v4, Lm1/d;

    .line 12
    .line 13
    iget-object v5, v4, Lm1/d;->c:Landroid/util/SparseArray;

    .line 14
    .line 15
    const/4 v6, 0x4

    .line 16
    const/4 v7, 0x2

    .line 17
    const/4 v12, 0x1

    .line 18
    const/16 v8, 0xa1

    .line 19
    .line 20
    const/16 v9, 0xa3

    .line 21
    .line 22
    const/4 v10, 0x0

    .line 23
    const/4 v13, 0x0

    .line 24
    if-eq v0, v8, :cond_b

    .line 25
    .line 26
    if-eq v0, v9, :cond_b

    .line 27
    .line 28
    const/16 v8, 0xa5

    .line 29
    .line 30
    if-eq v0, v8, :cond_8

    .line 31
    .line 32
    const/16 v5, 0x41ed

    .line 33
    .line 34
    if-eq v0, v5, :cond_5

    .line 35
    .line 36
    const/16 v5, 0x4255

    .line 37
    .line 38
    if-eq v0, v5, :cond_4

    .line 39
    .line 40
    const/16 v5, 0x47e2

    .line 41
    .line 42
    if-eq v0, v5, :cond_3

    .line 43
    .line 44
    const/16 v5, 0x53ab

    .line 45
    .line 46
    if-eq v0, v5, :cond_2

    .line 47
    .line 48
    const/16 v5, 0x63a2

    .line 49
    .line 50
    if-eq v0, v5, :cond_1

    .line 51
    .line 52
    const/16 v5, 0x7672

    .line 53
    .line 54
    if-ne v0, v5, :cond_0

    .line 55
    .line 56
    invoke-virtual {v4, v0}, Lm1/d;->c(I)V

    .line 57
    .line 58
    .line 59
    iget-object v0, v4, Lm1/d;->x:Lm1/c;

    .line 60
    .line 61
    new-array v4, v1, [B

    .line 62
    .line 63
    iput-object v4, v0, Lm1/c;->x:[B

    .line 64
    .line 65
    invoke-interface {v3, v4, v13, v1}, LW0/t;->readFully([BII)V

    .line 66
    .line 67
    .line 68
    goto/16 :goto_12

    .line 69
    .line 70
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v3, "Unexpected id: "

    .line 73
    .line 74
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-static {v0, v10}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    throw v0

    .line 89
    :cond_1
    invoke-virtual {v4, v0}, Lm1/d;->c(I)V

    .line 90
    .line 91
    .line 92
    iget-object v0, v4, Lm1/d;->x:Lm1/c;

    .line 93
    .line 94
    new-array v4, v1, [B

    .line 95
    .line 96
    iput-object v4, v0, Lm1/c;->l:[B

    .line 97
    .line 98
    invoke-interface {v3, v4, v13, v1}, LW0/t;->readFully([BII)V

    .line 99
    .line 100
    .line 101
    goto/16 :goto_12

    .line 102
    .line 103
    :cond_2
    iget-object v0, v4, Lm1/d;->k:Lp0/E;

    .line 104
    .line 105
    iget-object v5, v0, Lp0/E;->a:[B

    .line 106
    .line 107
    invoke-static {v5, v13}, Ljava/util/Arrays;->fill([BB)V

    .line 108
    .line 109
    .line 110
    iget-object v5, v0, Lp0/E;->a:[B

    .line 111
    .line 112
    rsub-int/lit8 v6, v1, 0x4

    .line 113
    .line 114
    invoke-interface {v3, v5, v6, v1}, LW0/t;->readFully([BII)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v13}, Lp0/E;->L(I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Lp0/E;->B()J

    .line 121
    .line 122
    .line 123
    move-result-wide v0

    .line 124
    long-to-int v1, v0

    .line 125
    iput v1, v4, Lm1/d;->z:I

    .line 126
    .line 127
    goto/16 :goto_12

    .line 128
    .line 129
    :cond_3
    new-array v5, v1, [B

    .line 130
    .line 131
    invoke-interface {v3, v5, v13, v1}, LW0/t;->readFully([BII)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v4, v0}, Lm1/d;->c(I)V

    .line 135
    .line 136
    .line 137
    iget-object v0, v4, Lm1/d;->x:Lm1/c;

    .line 138
    .line 139
    new-instance v1, LW0/K;

    .line 140
    .line 141
    invoke-direct {v1, v12, v5, v13, v13}, LW0/K;-><init>(I[BII)V

    .line 142
    .line 143
    .line 144
    iput-object v1, v0, Lm1/c;->k:LW0/K;

    .line 145
    .line 146
    goto/16 :goto_12

    .line 147
    .line 148
    :cond_4
    invoke-virtual {v4, v0}, Lm1/d;->c(I)V

    .line 149
    .line 150
    .line 151
    iget-object v0, v4, Lm1/d;->x:Lm1/c;

    .line 152
    .line 153
    new-array v4, v1, [B

    .line 154
    .line 155
    iput-object v4, v0, Lm1/c;->j:[B

    .line 156
    .line 157
    invoke-interface {v3, v4, v13, v1}, LW0/t;->readFully([BII)V

    .line 158
    .line 159
    .line 160
    goto/16 :goto_12

    .line 161
    .line 162
    :cond_5
    invoke-virtual {v4, v0}, Lm1/d;->c(I)V

    .line 163
    .line 164
    .line 165
    iget-object v0, v4, Lm1/d;->x:Lm1/c;

    .line 166
    .line 167
    iget v4, v0, Lm1/c;->h:I

    .line 168
    .line 169
    const v5, 0x64767643

    .line 170
    .line 171
    .line 172
    if-eq v4, v5, :cond_7

    .line 173
    .line 174
    const v5, 0x64766343

    .line 175
    .line 176
    .line 177
    if-ne v4, v5, :cond_6

    .line 178
    .line 179
    goto :goto_0

    .line 180
    :cond_6
    invoke-interface {v3, v1}, LW0/t;->n(I)V

    .line 181
    .line 182
    .line 183
    goto/16 :goto_12

    .line 184
    .line 185
    :cond_7
    :goto_0
    new-array v4, v1, [B

    .line 186
    .line 187
    iput-object v4, v0, Lm1/c;->P:[B

    .line 188
    .line 189
    invoke-interface {v3, v4, v13, v1}, LW0/t;->readFully([BII)V

    .line 190
    .line 191
    .line 192
    goto/16 :goto_12

    .line 193
    .line 194
    :cond_8
    iget v0, v4, Lm1/d;->J:I

    .line 195
    .line 196
    if-eq v0, v7, :cond_9

    .line 197
    .line 198
    goto/16 :goto_12

    .line 199
    .line 200
    :cond_9
    iget v0, v4, Lm1/d;->P:I

    .line 201
    .line 202
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    check-cast v0, Lm1/c;

    .line 207
    .line 208
    iget v5, v4, Lm1/d;->S:I

    .line 209
    .line 210
    if-ne v5, v6, :cond_a

    .line 211
    .line 212
    const-string v5, "V_VP9"

    .line 213
    .line 214
    iget-object v0, v0, Lm1/c;->c:Ljava/lang/String;

    .line 215
    .line 216
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    if-eqz v0, :cond_a

    .line 221
    .line 222
    iget-object v0, v4, Lm1/d;->p:Lp0/E;

    .line 223
    .line 224
    invoke-virtual {v0, v1}, Lp0/E;->I(I)V

    .line 225
    .line 226
    .line 227
    iget-object v0, v0, Lp0/E;->a:[B

    .line 228
    .line 229
    invoke-interface {v3, v0, v13, v1}, LW0/t;->readFully([BII)V

    .line 230
    .line 231
    .line 232
    goto/16 :goto_12

    .line 233
    .line 234
    :cond_a
    invoke-interface {v3, v1}, LW0/t;->n(I)V

    .line 235
    .line 236
    .line 237
    goto/16 :goto_12

    .line 238
    .line 239
    :cond_b
    iget v8, v4, Lm1/d;->J:I

    .line 240
    .line 241
    const/16 v11, 0x8

    .line 242
    .line 243
    iget-object v14, v4, Lm1/d;->i:Lp0/E;

    .line 244
    .line 245
    if-nez v8, :cond_c

    .line 246
    .line 247
    iget-object v8, v4, Lm1/d;->b:Lm1/e;

    .line 248
    .line 249
    invoke-virtual {v8, v3, v13, v12, v11}, Lm1/e;->c(LW0/t;ZZI)J

    .line 250
    .line 251
    .line 252
    move-result-wide v9

    .line 253
    long-to-int v10, v9

    .line 254
    iput v10, v4, Lm1/d;->P:I

    .line 255
    .line 256
    iget v8, v8, Lm1/e;->c:I

    .line 257
    .line 258
    iput v8, v4, Lm1/d;->Q:I

    .line 259
    .line 260
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    iput-wide v8, v4, Lm1/d;->L:J

    .line 266
    .line 267
    iput v12, v4, Lm1/d;->J:I

    .line 268
    .line 269
    invoke-virtual {v14, v13}, Lp0/E;->I(I)V

    .line 270
    .line 271
    .line 272
    :cond_c
    iget v8, v4, Lm1/d;->P:I

    .line 273
    .line 274
    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v5

    .line 278
    move-object v10, v5

    .line 279
    check-cast v10, Lm1/c;

    .line 280
    .line 281
    if-nez v10, :cond_d

    .line 282
    .line 283
    iget v0, v4, Lm1/d;->Q:I

    .line 284
    .line 285
    sub-int v0, v1, v0

    .line 286
    .line 287
    invoke-interface {v3, v0}, LW0/t;->n(I)V

    .line 288
    .line 289
    .line 290
    iput v13, v4, Lm1/d;->J:I

    .line 291
    .line 292
    goto/16 :goto_12

    .line 293
    .line 294
    :cond_d
    iget-object v5, v10, Lm1/c;->Z:LW0/L;

    .line 295
    .line 296
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 297
    .line 298
    .line 299
    iget v5, v4, Lm1/d;->J:I

    .line 300
    .line 301
    if-ne v5, v12, :cond_22

    .line 302
    .line 303
    const/4 v5, 0x3

    .line 304
    invoke-virtual {v4, v3, v5}, Lm1/d;->k(LW0/t;I)V

    .line 305
    .line 306
    .line 307
    iget-object v8, v14, Lp0/E;->a:[B

    .line 308
    .line 309
    aget-byte v8, v8, v7

    .line 310
    .line 311
    and-int/lit8 v8, v8, 0x6

    .line 312
    .line 313
    shr-int/2addr v8, v12

    .line 314
    const/16 v9, 0xff

    .line 315
    .line 316
    if-nez v8, :cond_10

    .line 317
    .line 318
    iput v12, v4, Lm1/d;->N:I

    .line 319
    .line 320
    iget-object v6, v4, Lm1/d;->O:[I

    .line 321
    .line 322
    if-nez v6, :cond_e

    .line 323
    .line 324
    new-array v6, v12, [I

    .line 325
    .line 326
    goto :goto_1

    .line 327
    :cond_e
    array-length v8, v6

    .line 328
    if-lt v8, v12, :cond_f

    .line 329
    .line 330
    goto :goto_1

    .line 331
    :cond_f
    array-length v6, v6

    .line 332
    mul-int/lit8 v6, v6, 0x2

    .line 333
    .line 334
    invoke-static {v6, v12}, Ljava/lang/Math;->max(II)I

    .line 335
    .line 336
    .line 337
    move-result v6

    .line 338
    new-array v6, v6, [I

    .line 339
    .line 340
    :goto_1
    iput-object v6, v4, Lm1/d;->O:[I

    .line 341
    .line 342
    iget v8, v4, Lm1/d;->Q:I

    .line 343
    .line 344
    sub-int/2addr v1, v8

    .line 345
    sub-int/2addr v1, v5

    .line 346
    aput v1, v6, v13

    .line 347
    .line 348
    :goto_2
    move-object v13, v10

    .line 349
    goto/16 :goto_b

    .line 350
    .line 351
    :cond_10
    invoke-virtual {v4, v3, v6}, Lm1/d;->k(LW0/t;I)V

    .line 352
    .line 353
    .line 354
    iget-object v15, v14, Lp0/E;->a:[B

    .line 355
    .line 356
    aget-byte v15, v15, v5

    .line 357
    .line 358
    and-int/2addr v15, v9

    .line 359
    add-int/2addr v15, v12

    .line 360
    iput v15, v4, Lm1/d;->N:I

    .line 361
    .line 362
    iget-object v11, v4, Lm1/d;->O:[I

    .line 363
    .line 364
    if-nez v11, :cond_11

    .line 365
    .line 366
    new-array v11, v15, [I

    .line 367
    .line 368
    goto :goto_3

    .line 369
    :cond_11
    array-length v5, v11

    .line 370
    if-lt v5, v15, :cond_12

    .line 371
    .line 372
    goto :goto_3

    .line 373
    :cond_12
    array-length v5, v11

    .line 374
    mul-int/lit8 v5, v5, 0x2

    .line 375
    .line 376
    invoke-static {v5, v15}, Ljava/lang/Math;->max(II)I

    .line 377
    .line 378
    .line 379
    move-result v5

    .line 380
    new-array v11, v5, [I

    .line 381
    .line 382
    :goto_3
    iput-object v11, v4, Lm1/d;->O:[I

    .line 383
    .line 384
    if-ne v8, v7, :cond_13

    .line 385
    .line 386
    iget v5, v4, Lm1/d;->Q:I

    .line 387
    .line 388
    sub-int/2addr v1, v5

    .line 389
    sub-int/2addr v1, v6

    .line 390
    iget v5, v4, Lm1/d;->N:I

    .line 391
    .line 392
    div-int/2addr v1, v5

    .line 393
    invoke-static {v11, v13, v5, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 394
    .line 395
    .line 396
    goto :goto_2

    .line 397
    :cond_13
    if-ne v8, v12, :cond_16

    .line 398
    .line 399
    const/4 v5, 0x0

    .line 400
    const/4 v8, 0x0

    .line 401
    :goto_4
    iget v11, v4, Lm1/d;->N:I

    .line 402
    .line 403
    sub-int/2addr v11, v12

    .line 404
    if-ge v5, v11, :cond_15

    .line 405
    .line 406
    iget-object v11, v4, Lm1/d;->O:[I

    .line 407
    .line 408
    aput v13, v11, v5

    .line 409
    .line 410
    :goto_5
    add-int/lit8 v11, v6, 0x1

    .line 411
    .line 412
    invoke-virtual {v4, v3, v11}, Lm1/d;->k(LW0/t;I)V

    .line 413
    .line 414
    .line 415
    iget-object v15, v14, Lp0/E;->a:[B

    .line 416
    .line 417
    aget-byte v6, v15, v6

    .line 418
    .line 419
    and-int/2addr v6, v9

    .line 420
    iget-object v15, v4, Lm1/d;->O:[I

    .line 421
    .line 422
    aget v16, v15, v5

    .line 423
    .line 424
    add-int v16, v16, v6

    .line 425
    .line 426
    aput v16, v15, v5

    .line 427
    .line 428
    if-eq v6, v9, :cond_14

    .line 429
    .line 430
    add-int v8, v8, v16

    .line 431
    .line 432
    add-int/lit8 v5, v5, 0x1

    .line 433
    .line 434
    move v6, v11

    .line 435
    goto :goto_4

    .line 436
    :cond_14
    move v6, v11

    .line 437
    goto :goto_5

    .line 438
    :cond_15
    iget-object v5, v4, Lm1/d;->O:[I

    .line 439
    .line 440
    iget v15, v4, Lm1/d;->Q:I

    .line 441
    .line 442
    sub-int/2addr v1, v15

    .line 443
    sub-int/2addr v1, v6

    .line 444
    sub-int/2addr v1, v8

    .line 445
    aput v1, v5, v11

    .line 446
    .line 447
    goto :goto_2

    .line 448
    :cond_16
    const/4 v5, 0x3

    .line 449
    if-ne v8, v5, :cond_21

    .line 450
    .line 451
    const/4 v5, 0x0

    .line 452
    const/4 v8, 0x0

    .line 453
    :goto_6
    iget v11, v4, Lm1/d;->N:I

    .line 454
    .line 455
    sub-int/2addr v11, v12

    .line 456
    if-ge v5, v11, :cond_1e

    .line 457
    .line 458
    iget-object v11, v4, Lm1/d;->O:[I

    .line 459
    .line 460
    aput v13, v11, v5

    .line 461
    .line 462
    add-int/lit8 v11, v6, 0x1

    .line 463
    .line 464
    invoke-virtual {v4, v3, v11}, Lm1/d;->k(LW0/t;I)V

    .line 465
    .line 466
    .line 467
    iget-object v15, v14, Lp0/E;->a:[B

    .line 468
    .line 469
    aget-byte v15, v15, v6

    .line 470
    .line 471
    if-eqz v15, :cond_1d

    .line 472
    .line 473
    const/4 v7, 0x0

    .line 474
    :goto_7
    const/16 v15, 0x8

    .line 475
    .line 476
    if-ge v7, v15, :cond_1a

    .line 477
    .line 478
    rsub-int/lit8 v15, v7, 0x7

    .line 479
    .line 480
    shl-int v15, v12, v15

    .line 481
    .line 482
    iget-object v12, v14, Lp0/E;->a:[B

    .line 483
    .line 484
    aget-byte v12, v12, v6

    .line 485
    .line 486
    and-int/2addr v12, v15

    .line 487
    if-eqz v12, :cond_19

    .line 488
    .line 489
    add-int v12, v11, v7

    .line 490
    .line 491
    invoke-virtual {v4, v3, v12}, Lm1/d;->k(LW0/t;I)V

    .line 492
    .line 493
    .line 494
    iget-object v13, v14, Lp0/E;->a:[B

    .line 495
    .line 496
    aget-byte v6, v13, v6

    .line 497
    .line 498
    and-int/2addr v6, v9

    .line 499
    not-int v13, v15

    .line 500
    and-int/2addr v6, v13

    .line 501
    move-object v13, v10

    .line 502
    int-to-long v9, v6

    .line 503
    :goto_8
    if-ge v11, v12, :cond_17

    .line 504
    .line 505
    const/16 v6, 0x8

    .line 506
    .line 507
    shl-long/2addr v9, v6

    .line 508
    iget-object v6, v14, Lp0/E;->a:[B

    .line 509
    .line 510
    add-int/lit8 v17, v11, 0x1

    .line 511
    .line 512
    aget-byte v6, v6, v11

    .line 513
    .line 514
    const/16 v11, 0xff

    .line 515
    .line 516
    and-int/2addr v6, v11

    .line 517
    move/from16 v18, v12

    .line 518
    .line 519
    int-to-long v11, v6

    .line 520
    or-long/2addr v9, v11

    .line 521
    move/from16 v11, v17

    .line 522
    .line 523
    move/from16 v12, v18

    .line 524
    .line 525
    goto :goto_8

    .line 526
    :cond_17
    move/from16 v18, v12

    .line 527
    .line 528
    if-lez v5, :cond_18

    .line 529
    .line 530
    mul-int/lit8 v7, v7, 0x7

    .line 531
    .line 532
    add-int/lit8 v7, v7, 0x6

    .line 533
    .line 534
    const-wide/16 v11, 0x1

    .line 535
    .line 536
    shl-long v6, v11, v7

    .line 537
    .line 538
    sub-long/2addr v6, v11

    .line 539
    sub-long/2addr v9, v6

    .line 540
    :cond_18
    move/from16 v6, v18

    .line 541
    .line 542
    goto :goto_9

    .line 543
    :cond_19
    move-object v13, v10

    .line 544
    add-int/lit8 v7, v7, 0x1

    .line 545
    .line 546
    const/16 v9, 0xff

    .line 547
    .line 548
    const/4 v12, 0x1

    .line 549
    const/4 v13, 0x0

    .line 550
    goto :goto_7

    .line 551
    :cond_1a
    move-object v13, v10

    .line 552
    const-wide/16 v9, 0x0

    .line 553
    .line 554
    move v6, v11

    .line 555
    :goto_9
    const-wide/32 v11, -0x80000000

    .line 556
    .line 557
    .line 558
    cmp-long v7, v9, v11

    .line 559
    .line 560
    if-ltz v7, :cond_1c

    .line 561
    .line 562
    const-wide/32 v11, 0x7fffffff

    .line 563
    .line 564
    .line 565
    cmp-long v7, v9, v11

    .line 566
    .line 567
    if-gtz v7, :cond_1c

    .line 568
    .line 569
    long-to-int v7, v9

    .line 570
    iget-object v9, v4, Lm1/d;->O:[I

    .line 571
    .line 572
    if-nez v5, :cond_1b

    .line 573
    .line 574
    goto :goto_a

    .line 575
    :cond_1b
    add-int/lit8 v10, v5, -0x1

    .line 576
    .line 577
    aget v10, v9, v10

    .line 578
    .line 579
    add-int/2addr v7, v10

    .line 580
    :goto_a
    aput v7, v9, v5

    .line 581
    .line 582
    add-int/2addr v8, v7

    .line 583
    add-int/lit8 v5, v5, 0x1

    .line 584
    .line 585
    move-object v10, v13

    .line 586
    const/4 v7, 0x2

    .line 587
    const/16 v9, 0xff

    .line 588
    .line 589
    const/4 v12, 0x1

    .line 590
    const/4 v13, 0x0

    .line 591
    goto/16 :goto_6

    .line 592
    .line 593
    :cond_1c
    const-string v0, "EBML lacing sample size out of range."

    .line 594
    .line 595
    const/4 v1, 0x0

    .line 596
    invoke-static {v0, v1}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 597
    .line 598
    .line 599
    move-result-object v0

    .line 600
    throw v0

    .line 601
    :cond_1d
    const/4 v1, 0x0

    .line 602
    const-string v0, "No valid varint length mask found"

    .line 603
    .line 604
    invoke-static {v0, v1}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 605
    .line 606
    .line 607
    move-result-object v0

    .line 608
    throw v0

    .line 609
    :cond_1e
    move-object v13, v10

    .line 610
    iget-object v5, v4, Lm1/d;->O:[I

    .line 611
    .line 612
    iget v7, v4, Lm1/d;->Q:I

    .line 613
    .line 614
    sub-int/2addr v1, v7

    .line 615
    sub-int/2addr v1, v6

    .line 616
    sub-int/2addr v1, v8

    .line 617
    aput v1, v5, v11

    .line 618
    .line 619
    :goto_b
    iget-object v1, v14, Lp0/E;->a:[B

    .line 620
    .line 621
    const/4 v5, 0x0

    .line 622
    aget-byte v6, v1, v5

    .line 623
    .line 624
    const/16 v5, 0x8

    .line 625
    .line 626
    shl-int/lit8 v5, v6, 0x8

    .line 627
    .line 628
    const/4 v6, 0x1

    .line 629
    aget-byte v1, v1, v6

    .line 630
    .line 631
    const/16 v6, 0xff

    .line 632
    .line 633
    and-int/2addr v1, v6

    .line 634
    or-int/2addr v1, v5

    .line 635
    iget-wide v5, v4, Lm1/d;->E:J

    .line 636
    .line 637
    int-to-long v7, v1

    .line 638
    invoke-virtual {v4, v7, v8}, Lm1/d;->m(J)J

    .line 639
    .line 640
    .line 641
    move-result-wide v7

    .line 642
    add-long/2addr v7, v5

    .line 643
    iput-wide v7, v4, Lm1/d;->K:J

    .line 644
    .line 645
    move-object v1, v13

    .line 646
    iget v5, v1, Lm1/c;->e:I

    .line 647
    .line 648
    const/4 v6, 0x2

    .line 649
    if-eq v5, v6, :cond_20

    .line 650
    .line 651
    const/16 v5, 0xa3

    .line 652
    .line 653
    if-ne v0, v5, :cond_1f

    .line 654
    .line 655
    iget-object v5, v14, Lp0/E;->a:[B

    .line 656
    .line 657
    aget-byte v5, v5, v6

    .line 658
    .line 659
    const/16 v7, 0x80

    .line 660
    .line 661
    and-int/2addr v5, v7

    .line 662
    if-ne v5, v7, :cond_1f

    .line 663
    .line 664
    goto :goto_c

    .line 665
    :cond_1f
    const/4 v5, 0x0

    .line 666
    goto :goto_d

    .line 667
    :cond_20
    :goto_c
    const/4 v5, 0x1

    .line 668
    :goto_d
    iput v5, v4, Lm1/d;->R:I

    .line 669
    .line 670
    iput v6, v4, Lm1/d;->J:I

    .line 671
    .line 672
    const/4 v5, 0x0

    .line 673
    iput v5, v4, Lm1/d;->M:I

    .line 674
    .line 675
    :goto_e
    const/16 v5, 0xa3

    .line 676
    .line 677
    goto :goto_f

    .line 678
    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 679
    .line 680
    const-string v1, "Unexpected lacing value: "

    .line 681
    .line 682
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 683
    .line 684
    .line 685
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 686
    .line 687
    .line 688
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 689
    .line 690
    .line 691
    move-result-object v0

    .line 692
    const/4 v1, 0x0

    .line 693
    invoke-static {v0, v1}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 694
    .line 695
    .line 696
    move-result-object v0

    .line 697
    throw v0

    .line 698
    :cond_22
    move-object v1, v10

    .line 699
    goto :goto_e

    .line 700
    :goto_f
    if-ne v0, v5, :cond_24

    .line 701
    .line 702
    :goto_10
    iget v0, v4, Lm1/d;->M:I

    .line 703
    .line 704
    iget v5, v4, Lm1/d;->N:I

    .line 705
    .line 706
    if-ge v0, v5, :cond_23

    .line 707
    .line 708
    iget-object v5, v4, Lm1/d;->O:[I

    .line 709
    .line 710
    aget v0, v5, v0

    .line 711
    .line 712
    const/4 v5, 0x0

    .line 713
    invoke-virtual {v4, v3, v1, v0, v5}, Lm1/d;->n(LW0/t;Lm1/c;IZ)I

    .line 714
    .line 715
    .line 716
    move-result v10

    .line 717
    iget-wide v5, v4, Lm1/d;->K:J

    .line 718
    .line 719
    iget v0, v4, Lm1/d;->M:I

    .line 720
    .line 721
    iget v7, v1, Lm1/c;->f:I

    .line 722
    .line 723
    mul-int v0, v0, v7

    .line 724
    .line 725
    div-int/lit16 v0, v0, 0x3e8

    .line 726
    .line 727
    int-to-long v7, v0

    .line 728
    add-long/2addr v7, v5

    .line 729
    iget v9, v4, Lm1/d;->R:I

    .line 730
    .line 731
    const/4 v11, 0x0

    .line 732
    move-object v5, v4

    .line 733
    move-object v6, v1

    .line 734
    move-object v0, v1

    .line 735
    invoke-virtual/range {v5 .. v11}, Lm1/d;->e(Lm1/c;JIII)V

    .line 736
    .line 737
    .line 738
    iget v1, v4, Lm1/d;->M:I

    .line 739
    .line 740
    const/4 v5, 0x1

    .line 741
    add-int/2addr v1, v5

    .line 742
    iput v1, v4, Lm1/d;->M:I

    .line 743
    .line 744
    move-object v1, v0

    .line 745
    goto :goto_10

    .line 746
    :cond_23
    const/4 v1, 0x0

    .line 747
    iput v1, v4, Lm1/d;->J:I

    .line 748
    .line 749
    goto :goto_12

    .line 750
    :cond_24
    move-object v0, v1

    .line 751
    const/4 v5, 0x1

    .line 752
    :goto_11
    iget v1, v4, Lm1/d;->M:I

    .line 753
    .line 754
    iget v6, v4, Lm1/d;->N:I

    .line 755
    .line 756
    if-ge v1, v6, :cond_25

    .line 757
    .line 758
    iget-object v6, v4, Lm1/d;->O:[I

    .line 759
    .line 760
    aget v7, v6, v1

    .line 761
    .line 762
    invoke-virtual {v4, v3, v0, v7, v5}, Lm1/d;->n(LW0/t;Lm1/c;IZ)I

    .line 763
    .line 764
    .line 765
    move-result v7

    .line 766
    aput v7, v6, v1

    .line 767
    .line 768
    iget v1, v4, Lm1/d;->M:I

    .line 769
    .line 770
    add-int/2addr v1, v5

    .line 771
    iput v1, v4, Lm1/d;->M:I

    .line 772
    .line 773
    goto :goto_11

    .line 774
    :cond_25
    :goto_12
    return-void
.end method

.method public final E(ID)V
    .locals 2

    .line 1
    iget-object v0, p0, LD0/U;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lm1/d;

    .line 4
    .line 5
    const/16 v1, 0xb5

    .line 6
    .line 7
    if-eq p1, v1, :cond_1

    .line 8
    .line 9
    const/16 v1, 0x4489

    .line 10
    .line 11
    if-eq p1, v1, :cond_0

    .line 12
    .line 13
    packed-switch p1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    packed-switch p1, :pswitch_data_1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    goto/16 :goto_0

    .line 23
    .line 24
    :pswitch_0
    invoke-virtual {v0, p1}, Lm1/d;->c(I)V

    .line 25
    .line 26
    .line 27
    iget-object p1, v0, Lm1/d;->x:Lm1/c;

    .line 28
    .line 29
    double-to-float p2, p2

    .line 30
    iput p2, p1, Lm1/c;->w:F

    .line 31
    .line 32
    goto/16 :goto_0

    .line 33
    .line 34
    :pswitch_1
    invoke-virtual {v0, p1}, Lm1/d;->c(I)V

    .line 35
    .line 36
    .line 37
    iget-object p1, v0, Lm1/d;->x:Lm1/c;

    .line 38
    .line 39
    double-to-float p2, p2

    .line 40
    iput p2, p1, Lm1/c;->v:F

    .line 41
    .line 42
    goto/16 :goto_0

    .line 43
    .line 44
    :pswitch_2
    invoke-virtual {v0, p1}, Lm1/d;->c(I)V

    .line 45
    .line 46
    .line 47
    iget-object p1, v0, Lm1/d;->x:Lm1/c;

    .line 48
    .line 49
    double-to-float p2, p2

    .line 50
    iput p2, p1, Lm1/c;->u:F

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :pswitch_3
    invoke-virtual {v0, p1}, Lm1/d;->c(I)V

    .line 54
    .line 55
    .line 56
    iget-object p1, v0, Lm1/d;->x:Lm1/c;

    .line 57
    .line 58
    double-to-float p2, p2

    .line 59
    iput p2, p1, Lm1/c;->O:F

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :pswitch_4
    invoke-virtual {v0, p1}, Lm1/d;->c(I)V

    .line 63
    .line 64
    .line 65
    iget-object p1, v0, Lm1/d;->x:Lm1/c;

    .line 66
    .line 67
    double-to-float p2, p2

    .line 68
    iput p2, p1, Lm1/c;->N:F

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :pswitch_5
    invoke-virtual {v0, p1}, Lm1/d;->c(I)V

    .line 72
    .line 73
    .line 74
    iget-object p1, v0, Lm1/d;->x:Lm1/c;

    .line 75
    .line 76
    double-to-float p2, p2

    .line 77
    iput p2, p1, Lm1/c;->M:F

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :pswitch_6
    invoke-virtual {v0, p1}, Lm1/d;->c(I)V

    .line 81
    .line 82
    .line 83
    iget-object p1, v0, Lm1/d;->x:Lm1/c;

    .line 84
    .line 85
    double-to-float p2, p2

    .line 86
    iput p2, p1, Lm1/c;->L:F

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :pswitch_7
    invoke-virtual {v0, p1}, Lm1/d;->c(I)V

    .line 90
    .line 91
    .line 92
    iget-object p1, v0, Lm1/d;->x:Lm1/c;

    .line 93
    .line 94
    double-to-float p2, p2

    .line 95
    iput p2, p1, Lm1/c;->K:F

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :pswitch_8
    invoke-virtual {v0, p1}, Lm1/d;->c(I)V

    .line 99
    .line 100
    .line 101
    iget-object p1, v0, Lm1/d;->x:Lm1/c;

    .line 102
    .line 103
    double-to-float p2, p2

    .line 104
    iput p2, p1, Lm1/c;->J:F

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :pswitch_9
    invoke-virtual {v0, p1}, Lm1/d;->c(I)V

    .line 108
    .line 109
    .line 110
    iget-object p1, v0, Lm1/d;->x:Lm1/c;

    .line 111
    .line 112
    double-to-float p2, p2

    .line 113
    iput p2, p1, Lm1/c;->I:F

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :pswitch_a
    invoke-virtual {v0, p1}, Lm1/d;->c(I)V

    .line 117
    .line 118
    .line 119
    iget-object p1, v0, Lm1/d;->x:Lm1/c;

    .line 120
    .line 121
    double-to-float p2, p2

    .line 122
    iput p2, p1, Lm1/c;->H:F

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :pswitch_b
    invoke-virtual {v0, p1}, Lm1/d;->c(I)V

    .line 126
    .line 127
    .line 128
    iget-object p1, v0, Lm1/d;->x:Lm1/c;

    .line 129
    .line 130
    double-to-float p2, p2

    .line 131
    iput p2, p1, Lm1/c;->G:F

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :pswitch_c
    invoke-virtual {v0, p1}, Lm1/d;->c(I)V

    .line 135
    .line 136
    .line 137
    iget-object p1, v0, Lm1/d;->x:Lm1/c;

    .line 138
    .line 139
    double-to-float p2, p2

    .line 140
    iput p2, p1, Lm1/c;->F:F

    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_0
    double-to-long p1, p2

    .line 144
    iput-wide p1, v0, Lm1/d;->u:J

    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_1
    invoke-virtual {v0, p1}, Lm1/d;->c(I)V

    .line 148
    .line 149
    .line 150
    iget-object p1, v0, Lm1/d;->x:Lm1/c;

    .line 151
    .line 152
    double-to-int p2, p2

    .line 153
    iput p2, p1, Lm1/c;->S:I

    .line 154
    .line 155
    :goto_0
    return-void

    .line 156
    nop

    .line 157
    :pswitch_data_0
    .packed-switch 0x55d1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 158
    .line 159
    .line 160
    .line 161
    :pswitch_data_1
    .packed-switch 0x7673
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final F()V
    .locals 1

    .line 1
    iget v0, p0, LD0/U;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object v0, p0, LD0/U;->H:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, LU0/k;

    .line 10
    .line 11
    iget-object v0, v0, LK0/r;->V:LB0/S;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, LB0/S;->a()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void

    .line 19
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public final G(I)I
    .locals 1

    .line 1
    iget-object v0, p0, LD0/U;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lm1/d;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sparse-switch p1, :sswitch_data_0

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    goto :goto_0

    .line 13
    :sswitch_0
    const/4 p1, 0x5

    .line 14
    goto :goto_0

    .line 15
    :sswitch_1
    const/4 p1, 0x4

    .line 16
    goto :goto_0

    .line 17
    :sswitch_2
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :sswitch_3
    const/4 p1, 0x3

    .line 20
    goto :goto_0

    .line 21
    :sswitch_4
    const/4 p1, 0x2

    .line 22
    :goto_0
    return p1

    .line 23
    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_4
        0x86 -> :sswitch_3
        0x88 -> :sswitch_4
        0x9b -> :sswitch_4
        0x9f -> :sswitch_4
        0xa0 -> :sswitch_2
        0xa1 -> :sswitch_1
        0xa3 -> :sswitch_1
        0xa5 -> :sswitch_1
        0xa6 -> :sswitch_2
        0xae -> :sswitch_2
        0xb0 -> :sswitch_4
        0xb3 -> :sswitch_4
        0xb5 -> :sswitch_0
        0xb7 -> :sswitch_2
        0xba -> :sswitch_4
        0xbb -> :sswitch_2
        0xd7 -> :sswitch_4
        0xe0 -> :sswitch_2
        0xe1 -> :sswitch_2
        0xe7 -> :sswitch_4
        0xee -> :sswitch_4
        0xf1 -> :sswitch_4
        0xfb -> :sswitch_4
        0x41e4 -> :sswitch_2
        0x41e7 -> :sswitch_4
        0x41ed -> :sswitch_1
        0x4254 -> :sswitch_4
        0x4255 -> :sswitch_1
        0x4282 -> :sswitch_3
        0x4285 -> :sswitch_4
        0x42f7 -> :sswitch_4
        0x4489 -> :sswitch_0
        0x47e1 -> :sswitch_4
        0x47e2 -> :sswitch_1
        0x47e7 -> :sswitch_2
        0x47e8 -> :sswitch_4
        0x4dbb -> :sswitch_2
        0x5031 -> :sswitch_4
        0x5032 -> :sswitch_4
        0x5034 -> :sswitch_2
        0x5035 -> :sswitch_2
        0x536e -> :sswitch_3
        0x53ab -> :sswitch_1
        0x53ac -> :sswitch_4
        0x53b8 -> :sswitch_4
        0x54b0 -> :sswitch_4
        0x54b2 -> :sswitch_4
        0x54ba -> :sswitch_4
        0x55aa -> :sswitch_4
        0x55b0 -> :sswitch_2
        0x55b2 -> :sswitch_4
        0x55b9 -> :sswitch_4
        0x55ba -> :sswitch_4
        0x55bb -> :sswitch_4
        0x55bc -> :sswitch_4
        0x55bd -> :sswitch_4
        0x55d0 -> :sswitch_2
        0x55d1 -> :sswitch_0
        0x55d2 -> :sswitch_0
        0x55d3 -> :sswitch_0
        0x55d4 -> :sswitch_0
        0x55d5 -> :sswitch_0
        0x55d6 -> :sswitch_0
        0x55d7 -> :sswitch_0
        0x55d8 -> :sswitch_0
        0x55d9 -> :sswitch_0
        0x55da -> :sswitch_0
        0x55ee -> :sswitch_4
        0x56aa -> :sswitch_4
        0x56bb -> :sswitch_4
        0x6240 -> :sswitch_2
        0x6264 -> :sswitch_4
        0x63a2 -> :sswitch_1
        0x6d80 -> :sswitch_2
        0x75a1 -> :sswitch_2
        0x75a2 -> :sswitch_4
        0x7670 -> :sswitch_2
        0x7671 -> :sswitch_4
        0x7672 -> :sswitch_1
        0x7673 -> :sswitch_0
        0x7674 -> :sswitch_0
        0x7675 -> :sswitch_0
        0x22b59c -> :sswitch_3
        0x23e383 -> :sswitch_4
        0x2ad7b1 -> :sswitch_4
        0x114d9b74 -> :sswitch_2
        0x1549a966 -> :sswitch_2
        0x1654ae6b -> :sswitch_2
        0x18538067 -> :sswitch_2
        0x1a45dfa3 -> :sswitch_2
        0x1c53bb6b -> :sswitch_2
        0x1f43b675 -> :sswitch_2
    .end sparse-switch
.end method

.method public final H(IJ)V
    .locals 9

    .line 1
    iget-object v0, p0, LD0/U;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lm1/d;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x5031

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const-string v3, " not supported"

    .line 12
    .line 13
    if-eq p1, v1, :cond_13

    .line 14
    .line 15
    const/16 v1, 0x5032

    .line 16
    .line 17
    const-wide/16 v4, 0x1

    .line 18
    .line 19
    if-eq p1, v1, :cond_11

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    const/4 v6, 0x3

    .line 23
    const/4 v7, 0x2

    .line 24
    const/4 v8, 0x1

    .line 25
    sparse-switch p1, :sswitch_data_0

    .line 26
    .line 27
    .line 28
    const/4 v1, -0x1

    .line 29
    packed-switch p1, :pswitch_data_0

    .line 30
    .line 31
    .line 32
    goto/16 :goto_0

    .line 33
    .line 34
    :pswitch_0
    invoke-virtual {v0, p1}, Lm1/d;->c(I)V

    .line 35
    .line 36
    .line 37
    iget-object p1, v0, Lm1/d;->x:Lm1/c;

    .line 38
    .line 39
    long-to-int p3, p2

    .line 40
    iput p3, p1, Lm1/c;->E:I

    .line 41
    .line 42
    goto/16 :goto_0

    .line 43
    .line 44
    :pswitch_1
    invoke-virtual {v0, p1}, Lm1/d;->c(I)V

    .line 45
    .line 46
    .line 47
    iget-object p1, v0, Lm1/d;->x:Lm1/c;

    .line 48
    .line 49
    long-to-int p3, p2

    .line 50
    iput p3, p1, Lm1/c;->D:I

    .line 51
    .line 52
    goto/16 :goto_0

    .line 53
    .line 54
    :pswitch_2
    invoke-virtual {v0, p1}, Lm1/d;->c(I)V

    .line 55
    .line 56
    .line 57
    iget-object p1, v0, Lm1/d;->x:Lm1/c;

    .line 58
    .line 59
    iput-boolean v8, p1, Lm1/c;->z:Z

    .line 60
    .line 61
    long-to-int p1, p2

    .line 62
    invoke-static {p1}, Lm0/i;->h(I)I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eq p1, v1, :cond_14

    .line 67
    .line 68
    iget-object p2, v0, Lm1/d;->x:Lm1/c;

    .line 69
    .line 70
    iput p1, p2, Lm1/c;->A:I

    .line 71
    .line 72
    goto/16 :goto_0

    .line 73
    .line 74
    :pswitch_3
    invoke-virtual {v0, p1}, Lm1/d;->c(I)V

    .line 75
    .line 76
    .line 77
    long-to-int p1, p2

    .line 78
    invoke-static {p1}, Lm0/i;->i(I)I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-eq p1, v1, :cond_14

    .line 83
    .line 84
    iget-object p2, v0, Lm1/d;->x:Lm1/c;

    .line 85
    .line 86
    iput p1, p2, Lm1/c;->B:I

    .line 87
    .line 88
    goto/16 :goto_0

    .line 89
    .line 90
    :pswitch_4
    invoke-virtual {v0, p1}, Lm1/d;->c(I)V

    .line 91
    .line 92
    .line 93
    long-to-int p1, p2

    .line 94
    if-eq p1, v8, :cond_1

    .line 95
    .line 96
    if-eq p1, v7, :cond_0

    .line 97
    .line 98
    goto/16 :goto_0

    .line 99
    .line 100
    :cond_0
    iget-object p1, v0, Lm1/d;->x:Lm1/c;

    .line 101
    .line 102
    iput v8, p1, Lm1/c;->C:I

    .line 103
    .line 104
    goto/16 :goto_0

    .line 105
    .line 106
    :cond_1
    iget-object p1, v0, Lm1/d;->x:Lm1/c;

    .line 107
    .line 108
    iput v7, p1, Lm1/c;->C:I

    .line 109
    .line 110
    goto/16 :goto_0

    .line 111
    .line 112
    :sswitch_0
    iput-wide p2, v0, Lm1/d;->t:J

    .line 113
    .line 114
    goto/16 :goto_0

    .line 115
    .line 116
    :sswitch_1
    invoke-virtual {v0, p1}, Lm1/d;->c(I)V

    .line 117
    .line 118
    .line 119
    iget-object p1, v0, Lm1/d;->x:Lm1/c;

    .line 120
    .line 121
    long-to-int p3, p2

    .line 122
    iput p3, p1, Lm1/c;->f:I

    .line 123
    .line 124
    goto/16 :goto_0

    .line 125
    .line 126
    :sswitch_2
    invoke-virtual {v0, p1}, Lm1/d;->c(I)V

    .line 127
    .line 128
    .line 129
    long-to-int p1, p2

    .line 130
    if-eqz p1, :cond_5

    .line 131
    .line 132
    if-eq p1, v8, :cond_4

    .line 133
    .line 134
    if-eq p1, v7, :cond_3

    .line 135
    .line 136
    if-eq p1, v6, :cond_2

    .line 137
    .line 138
    goto/16 :goto_0

    .line 139
    .line 140
    :cond_2
    iget-object p1, v0, Lm1/d;->x:Lm1/c;

    .line 141
    .line 142
    iput v6, p1, Lm1/c;->t:I

    .line 143
    .line 144
    goto/16 :goto_0

    .line 145
    .line 146
    :cond_3
    iget-object p1, v0, Lm1/d;->x:Lm1/c;

    .line 147
    .line 148
    iput v7, p1, Lm1/c;->t:I

    .line 149
    .line 150
    goto/16 :goto_0

    .line 151
    .line 152
    :cond_4
    iget-object p1, v0, Lm1/d;->x:Lm1/c;

    .line 153
    .line 154
    iput v8, p1, Lm1/c;->t:I

    .line 155
    .line 156
    goto/16 :goto_0

    .line 157
    .line 158
    :cond_5
    iget-object p1, v0, Lm1/d;->x:Lm1/c;

    .line 159
    .line 160
    iput v1, p1, Lm1/c;->t:I

    .line 161
    .line 162
    goto/16 :goto_0

    .line 163
    .line 164
    :sswitch_3
    iput-wide p2, v0, Lm1/d;->U:J

    .line 165
    .line 166
    goto/16 :goto_0

    .line 167
    .line 168
    :sswitch_4
    invoke-virtual {v0, p1}, Lm1/d;->c(I)V

    .line 169
    .line 170
    .line 171
    iget-object p1, v0, Lm1/d;->x:Lm1/c;

    .line 172
    .line 173
    long-to-int p3, p2

    .line 174
    iput p3, p1, Lm1/c;->R:I

    .line 175
    .line 176
    goto/16 :goto_0

    .line 177
    .line 178
    :sswitch_5
    invoke-virtual {v0, p1}, Lm1/d;->c(I)V

    .line 179
    .line 180
    .line 181
    iget-object p1, v0, Lm1/d;->x:Lm1/c;

    .line 182
    .line 183
    iput-wide p2, p1, Lm1/c;->U:J

    .line 184
    .line 185
    goto/16 :goto_0

    .line 186
    .line 187
    :sswitch_6
    invoke-virtual {v0, p1}, Lm1/d;->c(I)V

    .line 188
    .line 189
    .line 190
    iget-object p1, v0, Lm1/d;->x:Lm1/c;

    .line 191
    .line 192
    iput-wide p2, p1, Lm1/c;->T:J

    .line 193
    .line 194
    goto/16 :goto_0

    .line 195
    .line 196
    :sswitch_7
    invoke-virtual {v0, p1}, Lm1/d;->c(I)V

    .line 197
    .line 198
    .line 199
    iget-object p1, v0, Lm1/d;->x:Lm1/c;

    .line 200
    .line 201
    long-to-int p3, p2

    .line 202
    iput p3, p1, Lm1/c;->g:I

    .line 203
    .line 204
    goto/16 :goto_0

    .line 205
    .line 206
    :sswitch_8
    invoke-virtual {v0, p1}, Lm1/d;->c(I)V

    .line 207
    .line 208
    .line 209
    iget-object p1, v0, Lm1/d;->x:Lm1/c;

    .line 210
    .line 211
    iput-boolean v8, p1, Lm1/c;->z:Z

    .line 212
    .line 213
    long-to-int p3, p2

    .line 214
    iput p3, p1, Lm1/c;->p:I

    .line 215
    .line 216
    goto/16 :goto_0

    .line 217
    .line 218
    :sswitch_9
    invoke-virtual {v0, p1}, Lm1/d;->c(I)V

    .line 219
    .line 220
    .line 221
    iget-object p1, v0, Lm1/d;->x:Lm1/c;

    .line 222
    .line 223
    cmp-long v0, p2, v4

    .line 224
    .line 225
    if-nez v0, :cond_6

    .line 226
    .line 227
    const/4 v1, 0x1

    .line 228
    :cond_6
    iput-boolean v1, p1, Lm1/c;->W:Z

    .line 229
    .line 230
    goto/16 :goto_0

    .line 231
    .line 232
    :sswitch_a
    invoke-virtual {v0, p1}, Lm1/d;->c(I)V

    .line 233
    .line 234
    .line 235
    iget-object p1, v0, Lm1/d;->x:Lm1/c;

    .line 236
    .line 237
    long-to-int p3, p2

    .line 238
    iput p3, p1, Lm1/c;->r:I

    .line 239
    .line 240
    goto/16 :goto_0

    .line 241
    .line 242
    :sswitch_b
    invoke-virtual {v0, p1}, Lm1/d;->c(I)V

    .line 243
    .line 244
    .line 245
    iget-object p1, v0, Lm1/d;->x:Lm1/c;

    .line 246
    .line 247
    long-to-int p3, p2

    .line 248
    iput p3, p1, Lm1/c;->s:I

    .line 249
    .line 250
    goto/16 :goto_0

    .line 251
    .line 252
    :sswitch_c
    invoke-virtual {v0, p1}, Lm1/d;->c(I)V

    .line 253
    .line 254
    .line 255
    iget-object p1, v0, Lm1/d;->x:Lm1/c;

    .line 256
    .line 257
    long-to-int p3, p2

    .line 258
    iput p3, p1, Lm1/c;->q:I

    .line 259
    .line 260
    goto/16 :goto_0

    .line 261
    .line 262
    :sswitch_d
    long-to-int p3, p2

    .line 263
    invoke-virtual {v0, p1}, Lm1/d;->c(I)V

    .line 264
    .line 265
    .line 266
    if-eqz p3, :cond_a

    .line 267
    .line 268
    if-eq p3, v8, :cond_9

    .line 269
    .line 270
    if-eq p3, v6, :cond_8

    .line 271
    .line 272
    const/16 p1, 0xf

    .line 273
    .line 274
    if-eq p3, p1, :cond_7

    .line 275
    .line 276
    goto/16 :goto_0

    .line 277
    .line 278
    :cond_7
    iget-object p1, v0, Lm1/d;->x:Lm1/c;

    .line 279
    .line 280
    iput v6, p1, Lm1/c;->y:I

    .line 281
    .line 282
    goto/16 :goto_0

    .line 283
    .line 284
    :cond_8
    iget-object p1, v0, Lm1/d;->x:Lm1/c;

    .line 285
    .line 286
    iput v8, p1, Lm1/c;->y:I

    .line 287
    .line 288
    goto/16 :goto_0

    .line 289
    .line 290
    :cond_9
    iget-object p1, v0, Lm1/d;->x:Lm1/c;

    .line 291
    .line 292
    iput v7, p1, Lm1/c;->y:I

    .line 293
    .line 294
    goto/16 :goto_0

    .line 295
    .line 296
    :cond_a
    iget-object p1, v0, Lm1/d;->x:Lm1/c;

    .line 297
    .line 298
    iput v1, p1, Lm1/c;->y:I

    .line 299
    .line 300
    goto/16 :goto_0

    .line 301
    .line 302
    :sswitch_e
    iget-wide v1, v0, Lm1/d;->s:J

    .line 303
    .line 304
    add-long/2addr p2, v1

    .line 305
    iput-wide p2, v0, Lm1/d;->A:J

    .line 306
    .line 307
    goto/16 :goto_0

    .line 308
    .line 309
    :sswitch_f
    cmp-long p1, p2, v4

    .line 310
    .line 311
    if-nez p1, :cond_b

    .line 312
    .line 313
    goto/16 :goto_0

    .line 314
    .line 315
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    .line 316
    .line 317
    const-string v0, "AESSettingsCipherMode "

    .line 318
    .line 319
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object p1

    .line 332
    invoke-static {p1, v2}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 333
    .line 334
    .line 335
    move-result-object p1

    .line 336
    throw p1

    .line 337
    :sswitch_10
    const-wide/16 v0, 0x5

    .line 338
    .line 339
    cmp-long p1, p2, v0

    .line 340
    .line 341
    if-nez p1, :cond_c

    .line 342
    .line 343
    goto/16 :goto_0

    .line 344
    .line 345
    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    .line 346
    .line 347
    const-string v0, "ContentEncAlgo "

    .line 348
    .line 349
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object p1

    .line 362
    invoke-static {p1, v2}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 363
    .line 364
    .line 365
    move-result-object p1

    .line 366
    throw p1

    .line 367
    :sswitch_11
    cmp-long p1, p2, v4

    .line 368
    .line 369
    if-nez p1, :cond_d

    .line 370
    .line 371
    goto/16 :goto_0

    .line 372
    .line 373
    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    .line 374
    .line 375
    const-string v0, "EBMLReadVersion "

    .line 376
    .line 377
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object p1

    .line 390
    invoke-static {p1, v2}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 391
    .line 392
    .line 393
    move-result-object p1

    .line 394
    throw p1

    .line 395
    :sswitch_12
    cmp-long p1, p2, v4

    .line 396
    .line 397
    if-ltz p1, :cond_e

    .line 398
    .line 399
    const-wide/16 v0, 0x2

    .line 400
    .line 401
    cmp-long p1, p2, v0

    .line 402
    .line 403
    if-gtz p1, :cond_e

    .line 404
    .line 405
    goto/16 :goto_0

    .line 406
    .line 407
    :cond_e
    new-instance p1, Ljava/lang/StringBuilder;

    .line 408
    .line 409
    const-string v0, "DocTypeReadVersion "

    .line 410
    .line 411
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object p1

    .line 424
    invoke-static {p1, v2}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 425
    .line 426
    .line 427
    move-result-object p1

    .line 428
    throw p1

    .line 429
    :sswitch_13
    const-wide/16 v0, 0x3

    .line 430
    .line 431
    cmp-long p1, p2, v0

    .line 432
    .line 433
    if-nez p1, :cond_f

    .line 434
    .line 435
    goto/16 :goto_0

    .line 436
    .line 437
    :cond_f
    new-instance p1, Ljava/lang/StringBuilder;

    .line 438
    .line 439
    const-string v0, "ContentCompAlgo "

    .line 440
    .line 441
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 445
    .line 446
    .line 447
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object p1

    .line 454
    invoke-static {p1, v2}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 455
    .line 456
    .line 457
    move-result-object p1

    .line 458
    throw p1

    .line 459
    :sswitch_14
    invoke-virtual {v0, p1}, Lm1/d;->c(I)V

    .line 460
    .line 461
    .line 462
    iget-object p1, v0, Lm1/d;->x:Lm1/c;

    .line 463
    .line 464
    long-to-int p3, p2

    .line 465
    iput p3, p1, Lm1/c;->h:I

    .line 466
    .line 467
    goto/16 :goto_0

    .line 468
    .line 469
    :sswitch_15
    iput-boolean v8, v0, Lm1/d;->T:Z

    .line 470
    .line 471
    goto/16 :goto_0

    .line 472
    .line 473
    :sswitch_16
    iget-boolean v1, v0, Lm1/d;->H:Z

    .line 474
    .line 475
    if-nez v1, :cond_14

    .line 476
    .line 477
    invoke-virtual {v0, p1}, Lm1/d;->a(I)V

    .line 478
    .line 479
    .line 480
    iget-object p1, v0, Lm1/d;->G:Lp0/y;

    .line 481
    .line 482
    invoke-virtual {p1, p2, p3}, Lp0/y;->a(J)V

    .line 483
    .line 484
    .line 485
    iput-boolean v8, v0, Lm1/d;->H:Z

    .line 486
    .line 487
    goto/16 :goto_0

    .line 488
    .line 489
    :sswitch_17
    long-to-int p1, p2

    .line 490
    iput p1, v0, Lm1/d;->S:I

    .line 491
    .line 492
    goto/16 :goto_0

    .line 493
    .line 494
    :sswitch_18
    invoke-virtual {v0, p2, p3}, Lm1/d;->m(J)J

    .line 495
    .line 496
    .line 497
    move-result-wide p1

    .line 498
    iput-wide p1, v0, Lm1/d;->E:J

    .line 499
    .line 500
    goto/16 :goto_0

    .line 501
    .line 502
    :sswitch_19
    invoke-virtual {v0, p1}, Lm1/d;->c(I)V

    .line 503
    .line 504
    .line 505
    iget-object p1, v0, Lm1/d;->x:Lm1/c;

    .line 506
    .line 507
    long-to-int p3, p2

    .line 508
    iput p3, p1, Lm1/c;->d:I

    .line 509
    .line 510
    goto :goto_0

    .line 511
    :sswitch_1a
    invoke-virtual {v0, p1}, Lm1/d;->c(I)V

    .line 512
    .line 513
    .line 514
    iget-object p1, v0, Lm1/d;->x:Lm1/c;

    .line 515
    .line 516
    long-to-int p3, p2

    .line 517
    iput p3, p1, Lm1/c;->o:I

    .line 518
    .line 519
    goto :goto_0

    .line 520
    :sswitch_1b
    invoke-virtual {v0, p1}, Lm1/d;->a(I)V

    .line 521
    .line 522
    .line 523
    iget-object p1, v0, Lm1/d;->F:Lp0/y;

    .line 524
    .line 525
    invoke-virtual {v0, p2, p3}, Lm1/d;->m(J)J

    .line 526
    .line 527
    .line 528
    move-result-wide p2

    .line 529
    invoke-virtual {p1, p2, p3}, Lp0/y;->a(J)V

    .line 530
    .line 531
    .line 532
    goto :goto_0

    .line 533
    :sswitch_1c
    invoke-virtual {v0, p1}, Lm1/d;->c(I)V

    .line 534
    .line 535
    .line 536
    iget-object p1, v0, Lm1/d;->x:Lm1/c;

    .line 537
    .line 538
    long-to-int p3, p2

    .line 539
    iput p3, p1, Lm1/c;->n:I

    .line 540
    .line 541
    goto :goto_0

    .line 542
    :sswitch_1d
    invoke-virtual {v0, p1}, Lm1/d;->c(I)V

    .line 543
    .line 544
    .line 545
    iget-object p1, v0, Lm1/d;->x:Lm1/c;

    .line 546
    .line 547
    long-to-int p3, p2

    .line 548
    iput p3, p1, Lm1/c;->Q:I

    .line 549
    .line 550
    goto :goto_0

    .line 551
    :sswitch_1e
    invoke-virtual {v0, p2, p3}, Lm1/d;->m(J)J

    .line 552
    .line 553
    .line 554
    move-result-wide p1

    .line 555
    iput-wide p1, v0, Lm1/d;->L:J

    .line 556
    .line 557
    goto :goto_0

    .line 558
    :sswitch_1f
    invoke-virtual {v0, p1}, Lm1/d;->c(I)V

    .line 559
    .line 560
    .line 561
    iget-object p1, v0, Lm1/d;->x:Lm1/c;

    .line 562
    .line 563
    cmp-long v0, p2, v4

    .line 564
    .line 565
    if-nez v0, :cond_10

    .line 566
    .line 567
    const/4 v1, 0x1

    .line 568
    :cond_10
    iput-boolean v1, p1, Lm1/c;->X:Z

    .line 569
    .line 570
    goto :goto_0

    .line 571
    :sswitch_20
    invoke-virtual {v0, p1}, Lm1/d;->c(I)V

    .line 572
    .line 573
    .line 574
    iget-object p1, v0, Lm1/d;->x:Lm1/c;

    .line 575
    .line 576
    long-to-int p3, p2

    .line 577
    iput p3, p1, Lm1/c;->e:I

    .line 578
    .line 579
    goto :goto_0

    .line 580
    :cond_11
    cmp-long p1, p2, v4

    .line 581
    .line 582
    if-nez p1, :cond_12

    .line 583
    .line 584
    goto :goto_0

    .line 585
    :cond_12
    new-instance p1, Ljava/lang/StringBuilder;

    .line 586
    .line 587
    const-string v0, "ContentEncodingScope "

    .line 588
    .line 589
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 590
    .line 591
    .line 592
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 593
    .line 594
    .line 595
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    .line 597
    .line 598
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 599
    .line 600
    .line 601
    move-result-object p1

    .line 602
    invoke-static {p1, v2}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 603
    .line 604
    .line 605
    move-result-object p1

    .line 606
    throw p1

    .line 607
    :cond_13
    const-wide/16 v0, 0x0

    .line 608
    .line 609
    cmp-long p1, p2, v0

    .line 610
    .line 611
    if-nez p1, :cond_15

    .line 612
    .line 613
    :cond_14
    :goto_0
    return-void

    .line 614
    :cond_15
    new-instance p1, Ljava/lang/StringBuilder;

    .line 615
    .line 616
    const-string v0, "ContentEncodingOrder "

    .line 617
    .line 618
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 619
    .line 620
    .line 621
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 622
    .line 623
    .line 624
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    .line 626
    .line 627
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 628
    .line 629
    .line 630
    move-result-object p1

    .line 631
    invoke-static {p1, v2}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 632
    .line 633
    .line 634
    move-result-object p1

    .line 635
    throw p1

    .line 636
    nop

    .line 637
    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_20
        0x88 -> :sswitch_1f
        0x9b -> :sswitch_1e
        0x9f -> :sswitch_1d
        0xb0 -> :sswitch_1c
        0xb3 -> :sswitch_1b
        0xba -> :sswitch_1a
        0xd7 -> :sswitch_19
        0xe7 -> :sswitch_18
        0xee -> :sswitch_17
        0xf1 -> :sswitch_16
        0xfb -> :sswitch_15
        0x41e7 -> :sswitch_14
        0x4254 -> :sswitch_13
        0x4285 -> :sswitch_12
        0x42f7 -> :sswitch_11
        0x47e1 -> :sswitch_10
        0x47e8 -> :sswitch_f
        0x53ac -> :sswitch_e
        0x53b8 -> :sswitch_d
        0x54b0 -> :sswitch_c
        0x54b2 -> :sswitch_b
        0x54ba -> :sswitch_a
        0x55aa -> :sswitch_9
        0x55b2 -> :sswitch_8
        0x55ee -> :sswitch_7
        0x56aa -> :sswitch_6
        0x56bb -> :sswitch_5
        0x6264 -> :sswitch_4
        0x75a2 -> :sswitch_3
        0x7671 -> :sswitch_2
        0x23e383 -> :sswitch_1
        0x2ad7b1 -> :sswitch_0
    .end sparse-switch

    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    :pswitch_data_0
    .packed-switch 0x55b9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final I()V
    .locals 11

    .line 1
    iget-object v0, p0, LD0/U;->H:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, LH0/n;

    .line 5
    .line 6
    iget v2, v1, LH0/n;->Z:I

    .line 7
    .line 8
    add-int/lit8 v2, v2, -0x1

    .line 9
    .line 10
    iput v2, v1, LH0/n;->Z:I

    .line 11
    .line 12
    if-lez v2, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    check-cast v0, LH0/n;

    .line 16
    .line 17
    iget-object v0, v0, LH0/n;->b0:[LH0/t;

    .line 18
    .line 19
    array-length v1, v0

    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x0

    .line 22
    const/4 v4, 0x0

    .line 23
    :goto_0
    if-ge v3, v1, :cond_1

    .line 24
    .line 25
    aget-object v5, v0, v3

    .line 26
    .line 27
    invoke-virtual {v5}, LH0/t;->f()V

    .line 28
    .line 29
    .line 30
    iget-object v5, v5, LH0/t;->o0:LO0/Z;

    .line 31
    .line 32
    iget v5, v5, LO0/Z;->a:I

    .line 33
    .line 34
    add-int/2addr v4, v5

    .line 35
    add-int/lit8 v3, v3, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    new-array v0, v4, [Lm0/g0;

    .line 39
    .line 40
    iget-object v1, p0, LD0/U;->H:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v1, LH0/n;

    .line 43
    .line 44
    iget-object v1, v1, LH0/n;->b0:[LH0/t;

    .line 45
    .line 46
    array-length v3, v1

    .line 47
    const/4 v4, 0x0

    .line 48
    const/4 v5, 0x0

    .line 49
    :goto_1
    if-ge v4, v3, :cond_3

    .line 50
    .line 51
    aget-object v6, v1, v4

    .line 52
    .line 53
    invoke-virtual {v6}, LH0/t;->f()V

    .line 54
    .line 55
    .line 56
    iget-object v7, v6, LH0/t;->o0:LO0/Z;

    .line 57
    .line 58
    iget v7, v7, LO0/Z;->a:I

    .line 59
    .line 60
    const/4 v8, 0x0

    .line 61
    :goto_2
    if-ge v8, v7, :cond_2

    .line 62
    .line 63
    add-int/lit8 v9, v5, 0x1

    .line 64
    .line 65
    invoke-virtual {v6}, LH0/t;->f()V

    .line 66
    .line 67
    .line 68
    iget-object v10, v6, LH0/t;->o0:LO0/Z;

    .line 69
    .line 70
    invoke-virtual {v10, v8}, LO0/Z;->a(I)Lm0/g0;

    .line 71
    .line 72
    .line 73
    move-result-object v10

    .line 74
    aput-object v10, v0, v5

    .line 75
    .line 76
    add-int/lit8 v8, v8, 0x1

    .line 77
    .line 78
    move v5, v9

    .line 79
    goto :goto_2

    .line 80
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_3
    iget-object v1, p0, LD0/U;->H:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v1, LH0/n;

    .line 86
    .line 87
    new-instance v2, LO0/Z;

    .line 88
    .line 89
    invoke-direct {v2, v0}, LO0/Z;-><init>([Lm0/g0;)V

    .line 90
    .line 91
    .line 92
    iput-object v2, v1, LH0/n;->a0:LO0/Z;

    .line 93
    .line 94
    iget-object v0, p0, LD0/U;->H:Ljava/lang/Object;

    .line 95
    .line 96
    move-object v1, v0

    .line 97
    check-cast v1, LH0/n;

    .line 98
    .line 99
    iget-object v1, v1, LH0/n;->Y:LO0/v;

    .line 100
    .line 101
    check-cast v0, LH0/n;

    .line 102
    .line 103
    invoke-interface {v1, v0}, LO0/v;->t(LO0/w;)V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public final J(Lr2/k;LB0/c;Ll/k;)V
    .locals 8

    .line 1
    iget-object v0, p1, Lr2/k;->K:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, p1, Lr2/k;->P:Z

    .line 6
    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    const-string v0, "post-response"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lr2/k;->a(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, LD0/U;->H:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Ljava/util/concurrent/Executor;

    .line 16
    .line 17
    new-instance v7, LK/a;

    .line 18
    .line 19
    const/4 v5, 0x7

    .line 20
    const/4 v6, 0x0

    .line 21
    move-object v1, v7

    .line 22
    move-object v2, p1

    .line 23
    move-object v3, p2

    .line 24
    move-object v4, p3

    .line 25
    invoke-direct/range {v1 .. v6}, LK/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    throw p1
.end method

.method public final K(LC0/a;)V
    .locals 3

    .line 1
    iget-object v0, p0, LD0/U;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, LS0/b;

    .line 20
    .line 21
    iget-object v2, v1, LS0/b;->b:LC0/a;

    .line 22
    .line 23
    if-ne v2, p1, :cond_0

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    iput-boolean v2, v1, LS0/b;->c:Z

    .line 27
    .line 28
    iget-object v2, p0, LD0/U;->H:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 31
    .line 32
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return-void
.end method

.method public final L(IJJ)V
    .locals 8

    .line 1
    iget-object v0, p0, LD0/U;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lm1/d;

    .line 4
    .line 5
    iget-object v1, v0, Lm1/d;->e0:LW0/u;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    const/16 v1, 0xa0

    .line 11
    .line 12
    const-wide/16 v2, 0x0

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    if-eq p1, v1, :cond_b

    .line 16
    .line 17
    const/16 v1, 0xae

    .line 18
    .line 19
    const/4 v5, -0x1

    .line 20
    const/4 v6, 0x0

    .line 21
    const/4 v7, 0x1

    .line 22
    if-eq p1, v1, :cond_a

    .line 23
    .line 24
    const/16 v1, 0xbb

    .line 25
    .line 26
    if-eq p1, v1, :cond_9

    .line 27
    .line 28
    const/16 v1, 0x4dbb

    .line 29
    .line 30
    const-wide/16 v2, -0x1

    .line 31
    .line 32
    if-eq p1, v1, :cond_8

    .line 33
    .line 34
    const/16 v1, 0x5035

    .line 35
    .line 36
    if-eq p1, v1, :cond_7

    .line 37
    .line 38
    const/16 v1, 0x55d0

    .line 39
    .line 40
    if-eq p1, v1, :cond_6

    .line 41
    .line 42
    const v1, 0x18538067

    .line 43
    .line 44
    .line 45
    if-eq p1, v1, :cond_3

    .line 46
    .line 47
    const p2, 0x1c53bb6b

    .line 48
    .line 49
    .line 50
    if-eq p1, p2, :cond_2

    .line 51
    .line 52
    const p2, 0x1f43b675

    .line 53
    .line 54
    .line 55
    if-eq p1, p2, :cond_0

    .line 56
    .line 57
    goto/16 :goto_1

    .line 58
    .line 59
    :cond_0
    iget-boolean p1, v0, Lm1/d;->y:Z

    .line 60
    .line 61
    if-nez p1, :cond_c

    .line 62
    .line 63
    iget-boolean p1, v0, Lm1/d;->d:Z

    .line 64
    .line 65
    if-eqz p1, :cond_1

    .line 66
    .line 67
    iget-wide p1, v0, Lm1/d;->C:J

    .line 68
    .line 69
    cmp-long p3, p1, v2

    .line 70
    .line 71
    if-eqz p3, :cond_1

    .line 72
    .line 73
    iput-boolean v7, v0, Lm1/d;->B:Z

    .line 74
    .line 75
    goto/16 :goto_1

    .line 76
    .line 77
    :cond_1
    iget-object p1, v0, Lm1/d;->e0:LW0/u;

    .line 78
    .line 79
    new-instance p2, LW0/x;

    .line 80
    .line 81
    iget-wide p3, v0, Lm1/d;->v:J

    .line 82
    .line 83
    invoke-direct {p2, p3, p4}, LW0/x;-><init>(J)V

    .line 84
    .line 85
    .line 86
    invoke-interface {p1, p2}, LW0/u;->r(LW0/F;)V

    .line 87
    .line 88
    .line 89
    iput-boolean v7, v0, Lm1/d;->y:Z

    .line 90
    .line 91
    goto/16 :goto_1

    .line 92
    .line 93
    :cond_2
    new-instance p1, Lp0/y;

    .line 94
    .line 95
    invoke-direct {p1}, Lp0/y;-><init>()V

    .line 96
    .line 97
    .line 98
    iput-object p1, v0, Lm1/d;->F:Lp0/y;

    .line 99
    .line 100
    new-instance p1, Lp0/y;

    .line 101
    .line 102
    invoke-direct {p1}, Lp0/y;-><init>()V

    .line 103
    .line 104
    .line 105
    iput-object p1, v0, Lm1/d;->G:Lp0/y;

    .line 106
    .line 107
    goto/16 :goto_1

    .line 108
    .line 109
    :cond_3
    iget-wide v4, v0, Lm1/d;->s:J

    .line 110
    .line 111
    cmp-long p1, v4, v2

    .line 112
    .line 113
    if-eqz p1, :cond_5

    .line 114
    .line 115
    cmp-long p1, v4, p2

    .line 116
    .line 117
    if-nez p1, :cond_4

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_4
    const-string p1, "Multiple Segment elements not supported"

    .line 121
    .line 122
    invoke-static {p1, v6}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    throw p1

    .line 127
    :cond_5
    :goto_0
    iput-wide p2, v0, Lm1/d;->s:J

    .line 128
    .line 129
    iput-wide p4, v0, Lm1/d;->r:J

    .line 130
    .line 131
    goto/16 :goto_1

    .line 132
    .line 133
    :cond_6
    invoke-virtual {v0, p1}, Lm1/d;->c(I)V

    .line 134
    .line 135
    .line 136
    iget-object p1, v0, Lm1/d;->x:Lm1/c;

    .line 137
    .line 138
    iput-boolean v7, p1, Lm1/c;->z:Z

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_7
    invoke-virtual {v0, p1}, Lm1/d;->c(I)V

    .line 142
    .line 143
    .line 144
    iget-object p1, v0, Lm1/d;->x:Lm1/c;

    .line 145
    .line 146
    iput-boolean v7, p1, Lm1/c;->i:Z

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_8
    iput v5, v0, Lm1/d;->z:I

    .line 150
    .line 151
    iput-wide v2, v0, Lm1/d;->A:J

    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_9
    iput-boolean v4, v0, Lm1/d;->H:Z

    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_a
    new-instance p1, Lm1/c;

    .line 158
    .line 159
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 160
    .line 161
    .line 162
    iput v5, p1, Lm1/c;->n:I

    .line 163
    .line 164
    iput v5, p1, Lm1/c;->o:I

    .line 165
    .line 166
    iput v5, p1, Lm1/c;->p:I

    .line 167
    .line 168
    iput v5, p1, Lm1/c;->q:I

    .line 169
    .line 170
    iput v5, p1, Lm1/c;->r:I

    .line 171
    .line 172
    iput v4, p1, Lm1/c;->s:I

    .line 173
    .line 174
    iput v5, p1, Lm1/c;->t:I

    .line 175
    .line 176
    const/4 p2, 0x0

    .line 177
    iput p2, p1, Lm1/c;->u:F

    .line 178
    .line 179
    iput p2, p1, Lm1/c;->v:F

    .line 180
    .line 181
    iput p2, p1, Lm1/c;->w:F

    .line 182
    .line 183
    iput-object v6, p1, Lm1/c;->x:[B

    .line 184
    .line 185
    iput v5, p1, Lm1/c;->y:I

    .line 186
    .line 187
    iput-boolean v4, p1, Lm1/c;->z:Z

    .line 188
    .line 189
    iput v5, p1, Lm1/c;->A:I

    .line 190
    .line 191
    iput v5, p1, Lm1/c;->B:I

    .line 192
    .line 193
    iput v5, p1, Lm1/c;->C:I

    .line 194
    .line 195
    const/16 p2, 0x3e8

    .line 196
    .line 197
    iput p2, p1, Lm1/c;->D:I

    .line 198
    .line 199
    const/16 p2, 0xc8

    .line 200
    .line 201
    iput p2, p1, Lm1/c;->E:I

    .line 202
    .line 203
    const/high16 p2, -0x40800000    # -1.0f

    .line 204
    .line 205
    iput p2, p1, Lm1/c;->F:F

    .line 206
    .line 207
    iput p2, p1, Lm1/c;->G:F

    .line 208
    .line 209
    iput p2, p1, Lm1/c;->H:F

    .line 210
    .line 211
    iput p2, p1, Lm1/c;->I:F

    .line 212
    .line 213
    iput p2, p1, Lm1/c;->J:F

    .line 214
    .line 215
    iput p2, p1, Lm1/c;->K:F

    .line 216
    .line 217
    iput p2, p1, Lm1/c;->L:F

    .line 218
    .line 219
    iput p2, p1, Lm1/c;->M:F

    .line 220
    .line 221
    iput p2, p1, Lm1/c;->N:F

    .line 222
    .line 223
    iput p2, p1, Lm1/c;->O:F

    .line 224
    .line 225
    iput v7, p1, Lm1/c;->Q:I

    .line 226
    .line 227
    iput v5, p1, Lm1/c;->R:I

    .line 228
    .line 229
    const/16 p2, 0x1f40

    .line 230
    .line 231
    iput p2, p1, Lm1/c;->S:I

    .line 232
    .line 233
    iput-wide v2, p1, Lm1/c;->T:J

    .line 234
    .line 235
    iput-wide v2, p1, Lm1/c;->U:J

    .line 236
    .line 237
    iput-boolean v7, p1, Lm1/c;->X:Z

    .line 238
    .line 239
    const-string p2, "eng"

    .line 240
    .line 241
    iput-object p2, p1, Lm1/c;->Y:Ljava/lang/String;

    .line 242
    .line 243
    iput-object p1, v0, Lm1/d;->x:Lm1/c;

    .line 244
    .line 245
    iget-boolean p2, v0, Lm1/d;->w:Z

    .line 246
    .line 247
    iput-boolean p2, p1, Lm1/c;->a:Z

    .line 248
    .line 249
    goto :goto_1

    .line 250
    :cond_b
    iput-boolean v4, v0, Lm1/d;->T:Z

    .line 251
    .line 252
    iput-wide v2, v0, Lm1/d;->U:J

    .line 253
    .line 254
    :cond_c
    :goto_1
    return-void
.end method

.method public final M(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, LD0/U;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lm1/d;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x86

    .line 9
    .line 10
    if-eq p1, v1, :cond_5

    .line 11
    .line 12
    const/16 v1, 0x4282

    .line 13
    .line 14
    if-eq p1, v1, :cond_2

    .line 15
    .line 16
    const/16 v1, 0x536e

    .line 17
    .line 18
    if-eq p1, v1, :cond_1

    .line 19
    .line 20
    const v1, 0x22b59c

    .line 21
    .line 22
    .line 23
    if-eq p1, v1, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    invoke-virtual {v0, p1}, Lm1/d;->c(I)V

    .line 27
    .line 28
    .line 29
    iget-object p1, v0, Lm1/d;->x:Lm1/c;

    .line 30
    .line 31
    iput-object p2, p1, Lm1/c;->Y:Ljava/lang/String;

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    invoke-virtual {v0, p1}, Lm1/d;->c(I)V

    .line 35
    .line 36
    .line 37
    iget-object p1, v0, Lm1/d;->x:Lm1/c;

    .line 38
    .line 39
    iput-object p2, p1, Lm1/c;->b:Ljava/lang/String;

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    const-string p1, "webm"

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_4

    .line 49
    .line 50
    const-string v1, "matroska"

    .line 51
    .line 52
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string v0, "DocType "

    .line 62
    .line 63
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string p2, " not supported"

    .line 70
    .line 71
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    const/4 p2, 0x0

    .line 79
    invoke-static {p1, p2}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    throw p1

    .line 84
    :cond_4
    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    iput-boolean p1, v0, Lm1/d;->w:Z

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_5
    invoke-virtual {v0, p1}, Lm1/d;->c(I)V

    .line 92
    .line 93
    .line 94
    iget-object p1, v0, Lm1/d;->x:Lm1/c;

    .line 95
    .line 96
    iput-object p2, p1, Lm1/c;->c:Ljava/lang/String;

    .line 97
    .line 98
    :goto_1
    return-void
.end method

.method public final N(Ljava/util/ArrayList;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lq0/r;

    .line 13
    .line 14
    iget v1, v1, Lq0/r;->a:I

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    if-ne v1, v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lq0/r;

    .line 24
    .line 25
    :try_start_0
    new-instance v2, Lq0/s;

    .line 26
    .line 27
    invoke-direct {v2, v1}, Lq0/s;-><init>(Lq0/r;)V
    :try_end_0
    .catch Lq0/q; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :catch_0
    const/4 v2, 0x0

    .line 32
    :goto_1
    iput-object v2, p0, LD0/U;->H:Ljava/lang/Object;

    .line 33
    .line 34
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    return-void
.end method

.method public final a()Ljava/lang/Class;
    .locals 1

    .line 1
    const-class v0, Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b(ILw0/c;JI)V
    .locals 8

    .line 1
    iget-object v0, p0, LD0/U;->H:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Landroid/media/MediaCodec;

    .line 5
    .line 6
    iget-object v4, p2, Lw0/c;->i:Landroid/media/MediaCodec$CryptoInfo;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    move v2, p1

    .line 10
    move-wide v5, p3

    .line 11
    move v7, p5

    .line 12
    invoke-virtual/range {v1 .. v7}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final c(I)V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x23

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, LD0/U;->H:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, LD0/V;

    .line 10
    .line 11
    iget-object v0, v0, LD0/V;->Z0:LK0/i;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, p1}, LK0/i;->d(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, LD0/U;->H:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, LD0/V;

    .line 21
    .line 22
    iget-object v0, v0, LD0/V;->X0:LD0/n;

    .line 23
    .line 24
    iget-object v1, v0, LD0/n;->a:Landroid/os/Handler;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    new-instance v2, LF/l;

    .line 29
    .line 30
    const/4 v3, 0x3

    .line 31
    invoke-direct {v2, v0, p1, v3}, LF/l;-><init>(Ljava/lang/Object;II)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method public final createWebView(Landroid/webkit/WebView;)Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;
    .locals 1

    .line 1
    iget-object v0, p0, LD0/U;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;->createWebView(Landroid/webkit/WebView;)Ljava/lang/reflect/InvocationHandler;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-class v0, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    .line 10
    .line 11
    invoke-static {v0, p1}, La7/b;->b(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    .line 16
    .line 17
    return-object p1
.end method

.method public final d(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, LD0/U;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/media/MediaCodec;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final e(JIII)V
    .locals 8

    .line 1
    iget-object v0, p0, LD0/U;->H:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Landroid/media/MediaCodec;

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    move v2, p3

    .line 8
    move v4, p4

    .line 9
    move-wide v5, p1

    .line 10
    move v7, p5

    .line 11
    invoke-virtual/range {v1 .. v7}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final f(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, LD0/U;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LD0/V;

    .line 4
    .line 5
    iget-object v0, v0, LD0/V;->X0:LD0/n;

    .line 6
    .line 7
    iget-object v1, v0, LD0/n;->a:Landroid/os/Handler;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    new-instance v2, LB0/M0;

    .line 12
    .line 13
    const/4 v3, 0x2

    .line 14
    invoke-direct {v2, v3, v0, p1}, LB0/M0;-><init>(ILjava/lang/Object;Z)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final flush()V
    .locals 0

    .line 1
    return-void
.end method

.method public final g(Lm0/w0;)V
    .locals 5

    .line 1
    iget v0, p0, LD0/U;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LD0/U;->H:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, LU0/x;

    .line 9
    .line 10
    iget-object v0, v0, LU0/x;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, LU0/t;

    .line 27
    .line 28
    check-cast v1, LU0/s;

    .line 29
    .line 30
    iget-object v2, v1, LU0/s;->N:LU0/O;

    .line 31
    .line 32
    iget-object v1, v1, LU0/s;->O:Ljava/util/concurrent/Executor;

    .line 33
    .line 34
    new-instance v3, LU0/r;

    .line 35
    .line 36
    const/4 v4, 0x0

    .line 37
    invoke-direct {v3, v4, v2, p1}, LU0/r;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    :pswitch_0
    return-void

    .line 45
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public final getStatics()Lorg/chromium/support_lib_boundary/StaticsBoundaryInterface;
    .locals 2

    .line 1
    iget-object v0, p0, LD0/U;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;

    .line 4
    .line 5
    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;->getStatics()Ljava/lang/reflect/InvocationHandler;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-class v1, Lorg/chromium/support_lib_boundary/StaticsBoundaryInterface;

    .line 10
    .line 11
    invoke-static {v1, v0}, La7/b;->b(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lorg/chromium/support_lib_boundary/StaticsBoundaryInterface;

    .line 16
    .line 17
    return-object v0
.end method

.method public final getSupportedFeatures()[Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "WEB_MESSAGE_LISTENER"

    .line 2
    .line 3
    const-string v1, "WEB_MESSAGE_ARRAY_BUFFER"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final h(J)V
    .locals 4

    .line 1
    iget-object v0, p0, LD0/U;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LD0/V;

    .line 4
    .line 5
    iget-object v0, v0, LD0/V;->X0:LD0/n;

    .line 6
    .line 7
    iget-object v1, v0, LD0/n;->a:Landroid/os/Handler;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    new-instance v2, LA0/C;

    .line 12
    .line 13
    const/4 v3, 0x2

    .line 14
    invoke-direct {v2, v0, v3, p1, p2}, LA0/C;-><init>(Ljava/lang/Object;IJ)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final i(LU0/Q;)V
    .locals 7

    .line 1
    iget v0, p0, LD0/U;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LD0/U;->H:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, LU0/x;

    .line 9
    .line 10
    iget-object v0, v0, LU0/x;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, LU0/t;

    .line 27
    .line 28
    invoke-static {p1}, Lm0/o0;->a(Ljava/lang/Exception;)Lm0/o0;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v1, LU0/s;

    .line 33
    .line 34
    iget-object v3, v1, LU0/s;->N:LU0/O;

    .line 35
    .line 36
    iget-object v4, v1, LU0/s;->O:Ljava/util/concurrent/Executor;

    .line 37
    .line 38
    new-instance v5, LB0/h0;

    .line 39
    .line 40
    const/4 v6, 0x4

    .line 41
    invoke-direct {v5, v1, v3, v2, v6}, LB0/h0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 42
    .line 43
    .line 44
    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    return-void

    .line 49
    :pswitch_0
    iget-object v0, p0, LD0/U;->H:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v0, LU0/k;

    .line 52
    .line 53
    const/16 v1, 0x1b59

    .line 54
    .line 55
    iget-object v2, p1, LU0/Q;->G:Lm0/t;

    .line 56
    .line 57
    invoke-virtual {v0, p1, v2, v1}, LB0/h;->createRendererException(Ljava/lang/Throwable;Lm0/t;I)LB0/w;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iput-object p1, v0, LK0/r;->M0:LB0/w;

    .line 62
    .line 63
    return-void

    .line 64
    nop

    .line 65
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public final j(LD0/p;)V
    .locals 4

    .line 1
    iget-object v0, p0, LD0/U;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LD0/V;

    .line 4
    .line 5
    iget-object v0, v0, LD0/V;->X0:LD0/n;

    .line 6
    .line 7
    iget-object v1, v0, LD0/n;->a:Landroid/os/Handler;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    new-instance v2, LD0/m;

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-direct {v2, v0, p1, v3}, LD0/m;-><init>(LD0/n;LD0/p;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final k()V
    .locals 5

    .line 1
    iget v0, p0, LD0/U;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LD0/U;->H:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, LU0/x;

    .line 9
    .line 10
    iget-object v0, v0, LU0/x;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, LU0/t;

    .line 27
    .line 28
    check-cast v1, LU0/s;

    .line 29
    .line 30
    iget-object v2, v1, LU0/s;->N:LU0/O;

    .line 31
    .line 32
    iget-object v1, v1, LU0/s;->O:Ljava/util/concurrent/Executor;

    .line 33
    .line 34
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    new-instance v3, LU0/q;

    .line 38
    .line 39
    const/4 v4, 0x2

    .line 40
    invoke-direct {v3, v2, v4}, LU0/q;-><init>(LU0/O;I)V

    .line 41
    .line 42
    .line 43
    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    return-void

    .line 48
    :pswitch_0
    iget-object v0, p0, LD0/U;->H:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v0, LU0/k;

    .line 51
    .line 52
    iget-object v1, v0, LU0/k;->p1:Landroid/view/Surface;

    .line 53
    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    iget-object v2, v0, LU0/k;->Y0:Lcom/google/android/gms/internal/atv_ads_framework/x0;

    .line 57
    .line 58
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/atv_ads_framework/x0;->v(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    const/4 v1, 0x1

    .line 62
    iput-boolean v1, v0, LU0/k;->s1:Z

    .line 63
    .line 64
    :cond_1
    return-void

    .line 65
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public final l()V
    .locals 2

    .line 1
    iget-object v0, p0, LD0/U;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LD0/V;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, LD0/V;->i1:Z

    .line 7
    .line 8
    return-void
.end method

.method public final m()Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, LD0/U;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v0, LA2/j;

    .line 7
    .line 8
    const-string v1, "SHA-256"

    .line 9
    .line 10
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {v0, v1}, LA2/j;-><init>(Ljava/security/MessageDigest;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    return-object v0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    new-instance v1, Ljava/lang/RuntimeException;

    .line 20
    .line 21
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    throw v1

    .line 25
    :pswitch_0
    new-instance v0, Ly2/t;

    .line 26
    .line 27
    iget-object v1, p0, LD0/U;->H:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v1, Ll/s1;

    .line 30
    .line 31
    iget-object v2, v1, Ll/s1;->a:Ljava/lang/Object;

    .line 32
    .line 33
    move-object v3, v2

    .line 34
    check-cast v3, LB2/c;

    .line 35
    .line 36
    iget-object v2, v1, Ll/s1;->b:Ljava/lang/Object;

    .line 37
    .line 38
    move-object v4, v2

    .line 39
    check-cast v4, LB2/c;

    .line 40
    .line 41
    iget-object v2, v1, Ll/s1;->c:Ljava/lang/Object;

    .line 42
    .line 43
    move-object v5, v2

    .line 44
    check-cast v5, LB2/c;

    .line 45
    .line 46
    iget-object v2, v1, Ll/s1;->d:Ljava/lang/Object;

    .line 47
    .line 48
    move-object v6, v2

    .line 49
    check-cast v6, LB2/c;

    .line 50
    .line 51
    iget-object v2, v1, Ll/s1;->e:Ljava/lang/Object;

    .line 52
    .line 53
    move-object v7, v2

    .line 54
    check-cast v7, Ly2/u;

    .line 55
    .line 56
    iget-object v2, v1, Ll/s1;->f:Ljava/lang/Object;

    .line 57
    .line 58
    move-object v8, v2

    .line 59
    check-cast v8, Ly2/w;

    .line 60
    .line 61
    iget-object v1, v1, Ll/s1;->g:Ljava/lang/Object;

    .line 62
    .line 63
    move-object v9, v1

    .line 64
    check-cast v9, LM/c;

    .line 65
    .line 66
    move-object v2, v0

    .line 67
    invoke-direct/range {v2 .. v9}, Ly2/t;-><init>(LB2/c;LB2/c;LB2/c;LB2/c;Ly2/u;Ly2/w;LM/c;)V

    .line 68
    .line 69
    .line 70
    return-object v0

    .line 71
    :pswitch_1
    new-instance v0, Ly2/l;

    .line 72
    .line 73
    iget-object v1, p0, LD0/U;->H:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v1, LF/d;

    .line 76
    .line 77
    iget-object v2, v1, LF/d;->I:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v2, LJ3/k;

    .line 80
    .line 81
    iget-object v1, v1, LF/d;->J:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v1, LM/c;

    .line 84
    .line 85
    invoke-direct {v0, v2, v1}, Ly2/l;-><init>(LJ3/k;LM/c;)V

    .line 86
    .line 87
    .line 88
    return-object v0

    .line 89
    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final n()V
    .locals 2

    .line 1
    iget-object v0, p0, LD0/U;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LD0/V;

    .line 4
    .line 5
    iget-object v0, v0, LK0/r;->V:LB0/S;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, LB0/S;->a:LB0/X;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    iput-boolean v1, v0, LB0/X;->x0:Z

    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final o()V
    .locals 2

    .line 1
    const-string v0, "ProfileInstaller"

    .line 2
    .line 3
    const-string v1, "DIAGNOSTIC_PROFILE_IS_COMPRESSED"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onPostMessage(Landroid/webkit/WebView;Ljava/lang/reflect/InvocationHandler;Landroid/net/Uri;ZLjava/lang/reflect/InvocationHandler;)V
    .locals 9

    .line 1
    const-class v0, Lorg/chromium/support_lib_boundary/WebMessageBoundaryInterface;

    .line 2
    .line 3
    invoke-static {v0, p2}, La7/b;->b(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    check-cast p2, Lorg/chromium/support_lib_boundary/WebMessageBoundaryInterface;

    .line 8
    .line 9
    invoke-interface {p2}, Lorg/chromium/support_lib_boundary/WebMessageBoundaryInterface;->getPorts()[Ljava/lang/reflect/InvocationHandler;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    array-length v1, v0

    .line 14
    new-array v1, v1, [LD0/U;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x0

    .line 18
    :goto_0
    array-length v4, v0

    .line 19
    if-ge v3, v4, :cond_0

    .line 20
    .line 21
    new-instance v4, LD0/U;

    .line 22
    .line 23
    aget-object v5, v0, v3

    .line 24
    .line 25
    invoke-direct {v4, v5}, LD0/U;-><init>(Ljava/lang/reflect/InvocationHandler;)V

    .line 26
    .line 27
    .line 28
    aput-object v4, v1, v3

    .line 29
    .line 30
    add-int/lit8 v3, v3, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    sget-object v0, Lc2/n;->a:Lc2/b;

    .line 34
    .line 35
    invoke-virtual {v0}, Lc2/c;->b()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    const-class v0, Lorg/chromium/support_lib_boundary/WebMessagePayloadBoundaryInterface;

    .line 42
    .line 43
    invoke-interface {p2}, Lorg/chromium/support_lib_boundary/WebMessageBoundaryInterface;->getMessagePayload()Ljava/lang/reflect/InvocationHandler;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-static {v0, p2}, La7/b;->b(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    check-cast p2, Lorg/chromium/support_lib_boundary/WebMessagePayloadBoundaryInterface;

    .line 52
    .line 53
    invoke-interface {p2}, Lorg/chromium/support_lib_boundary/WebMessagePayloadBoundaryInterface;->getType()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    const/4 v1, 0x1

    .line 60
    if-eq v0, v1, :cond_1

    .line 61
    .line 62
    const/4 p2, 0x0

    .line 63
    move-object v5, p2

    .line 64
    goto :goto_2

    .line 65
    :cond_1
    new-instance v0, Lb2/c;

    .line 66
    .line 67
    invoke-interface {p2}, Lorg/chromium/support_lib_boundary/WebMessagePayloadBoundaryInterface;->getAsArrayBuffer()[B

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-direct {v0, p2}, Lb2/c;-><init>([B)V

    .line 72
    .line 73
    .line 74
    :goto_1
    move-object v5, v0

    .line 75
    goto :goto_2

    .line 76
    :cond_2
    new-instance v0, Lb2/c;

    .line 77
    .line 78
    invoke-interface {p2}, Lorg/chromium/support_lib_boundary/WebMessagePayloadBoundaryInterface;->getAsString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-direct {v0, p2}, Lb2/c;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    new-instance v0, Lb2/c;

    .line 87
    .line 88
    invoke-interface {p2}, Lorg/chromium/support_lib_boundary/WebMessageBoundaryInterface;->getData()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    invoke-direct {v0, p2}, Lb2/c;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :goto_2
    if-eqz v5, :cond_4

    .line 97
    .line 98
    const-class p2, Lorg/chromium/support_lib_boundary/JsReplyProxyBoundaryInterface;

    .line 99
    .line 100
    invoke-static {p2, p5}, La7/b;->b(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    check-cast p2, Lorg/chromium/support_lib_boundary/JsReplyProxyBoundaryInterface;

    .line 105
    .line 106
    new-instance p5, Lc2/h;

    .line 107
    .line 108
    invoke-direct {p5, p2, v2}, Lc2/h;-><init>(Ljava/lang/Object;I)V

    .line 109
    .line 110
    .line 111
    invoke-interface {p2, p5}, Lorg/chromium/support_lib_boundary/IsomorphicObjectBoundaryInterface;->getOrCreatePeer(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    move-object v8, p2

    .line 116
    check-cast v8, Lc2/i;

    .line 117
    .line 118
    iget-object p2, p0, LD0/U;->H:Ljava/lang/Object;

    .line 119
    .line 120
    move-object v3, p2

    .line 121
    check-cast v3, Lb2/d;

    .line 122
    .line 123
    move-object v4, p1

    .line 124
    move-object v6, p3

    .line 125
    move v7, p4

    .line 126
    invoke-interface/range {v3 .. v8}, Lb2/d;->onPostMessage(Landroid/webkit/WebView;Lb2/c;Landroid/net/Uri;ZLb2/a;)V

    .line 127
    .line 128
    .line 129
    :cond_4
    return-void
.end method

.method public final p(LD0/p;)V
    .locals 4

    .line 1
    iget-object v0, p0, LD0/U;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LD0/V;

    .line 4
    .line 5
    iget-object v0, v0, LD0/V;->X0:LD0/n;

    .line 6
    .line 7
    iget-object v1, v0, LD0/n;->a:Landroid/os/Handler;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    new-instance v2, LD0/m;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-direct {v2, v0, p1, v3}, LD0/m;-><init>(LD0/n;LD0/p;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final q(ILjava/lang/Object;)V
    .locals 3

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    :pswitch_0
    const-string v0, ""

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_1
    const-string v0, "RESULT_DELETE_SKIP_FILE_SUCCESS"

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :pswitch_2
    const-string v0, "RESULT_INSTALL_SKIP_FILE_SUCCESS"

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :pswitch_3
    const-string v0, "RESULT_PARSE_EXCEPTION"

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :pswitch_4
    const-string v0, "RESULT_IO_EXCEPTION"

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :pswitch_5
    const-string v0, "RESULT_BASELINE_PROFILE_NOT_FOUND"

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :pswitch_6
    const-string v0, "RESULT_DESIRED_FORMAT_UNSUPPORTED"

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :pswitch_7
    const-string v0, "RESULT_NOT_WRITABLE"

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :pswitch_8
    const-string v0, "RESULT_UNSUPPORTED_ART_VERSION"

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :pswitch_9
    const-string v0, "RESULT_ALREADY_INSTALLED"

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :pswitch_a
    const-string v0, "RESULT_INSTALL_SUCCESS"

    .line 35
    .line 36
    :goto_0
    const/4 v1, 0x6

    .line 37
    const-string v2, "ProfileInstaller"

    .line 38
    .line 39
    if-eq p1, v1, :cond_0

    .line 40
    .line 41
    const/4 v1, 0x7

    .line 42
    if-eq p1, v1, :cond_0

    .line 43
    .line 44
    const/16 v1, 0x8

    .line 45
    .line 46
    if-eq p1, v1, :cond_0

    .line 47
    .line 48
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_0
    check-cast p2, Ljava/lang/Throwable;

    .line 53
    .line 54
    invoke-static {v2, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    .line 56
    .line 57
    :goto_1
    iget-object p2, p0, LD0/U;->H:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast p2, Landroidx/profileinstaller/ProfileInstallReceiver;

    .line 60
    .line 61
    invoke-virtual {p2, p1}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final r(LO0/W;)V
    .locals 1

    .line 1
    check-cast p1, LH0/t;

    .line 2
    .line 3
    iget-object p1, p0, LD0/U;->H:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p1, LH0/n;

    .line 6
    .line 7
    iget-object v0, p1, LH0/n;->Y:LO0/v;

    .line 8
    .line 9
    invoke-interface {v0, p1}, LO0/V;->r(LO0/W;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final s(IJJ)V
    .locals 10

    .line 1
    iget-object v0, p0, LD0/U;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LD0/V;

    .line 4
    .line 5
    iget-object v2, v0, LD0/V;->X0:LD0/n;

    .line 6
    .line 7
    iget-object v0, v2, LD0/n;->a:Landroid/os/Handler;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v9, LD0/l;

    .line 12
    .line 13
    const/4 v8, 0x0

    .line 14
    move-object v1, v9

    .line 15
    move v3, p1

    .line 16
    move-wide v4, p2

    .line 17
    move-wide v6, p4

    .line 18
    invoke-direct/range {v1 .. v8}, LD0/l;-><init>(Ljava/lang/Object;IJJI)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final shutdown()V
    .locals 0

    .line 1
    return-void
.end method

.method public final start()V
    .locals 0

    .line 1
    return-void
.end method

.method public final u()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LD0/U;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;

    .line 4
    .line 5
    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;->getSupportedFeatures()[Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final v()V
    .locals 1

    .line 1
    iget-object v0, p0, LD0/U;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LD0/V;

    .line 4
    .line 5
    invoke-virtual {v0}, LB0/h;->onRendererCapabilitiesChanged()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final w(Ljava/lang/Exception;)V
    .locals 4

    .line 1
    const-string v0, "MediaCodecAudioRenderer"

    .line 2
    .line 3
    const-string v1, "Audio sink error"

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lp0/x;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, LD0/U;->H:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, LD0/V;

    .line 11
    .line 12
    iget-object v0, v0, LD0/V;->X0:LD0/n;

    .line 13
    .line 14
    iget-object v1, v0, LD0/n;->a:Landroid/os/Handler;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    new-instance v2, LD0/j;

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    invoke-direct {v2, v0, p1, v3}, LD0/j;-><init>(LD0/n;Ljava/lang/Exception;I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public final x()V
    .locals 0

    .line 1
    return-void
.end method

.method public final y()V
    .locals 2

    .line 1
    iget-object v0, p0, LD0/U;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LD0/V;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, LD0/V;->g1:Z

    .line 7
    .line 8
    return-void
.end method

.method public final z()V
    .locals 5

    .line 1
    iget v0, p0, LD0/U;->G:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, LD0/U;->H:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, LU0/x;

    .line 10
    .line 11
    iget-object v0, v0, LU0/x;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, LU0/t;

    .line 28
    .line 29
    check-cast v2, LU0/s;

    .line 30
    .line 31
    iget-object v3, v2, LU0/s;->N:LU0/O;

    .line 32
    .line 33
    iget-object v2, v2, LU0/s;->O:Ljava/util/concurrent/Executor;

    .line 34
    .line 35
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    new-instance v4, LU0/q;

    .line 39
    .line 40
    invoke-direct {v4, v3, v1}, LU0/q;-><init>(LU0/O;I)V

    .line 41
    .line 42
    .line 43
    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    return-void

    .line 48
    :pswitch_0
    iget-object v0, p0, LD0/U;->H:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v0, LU0/k;

    .line 51
    .line 52
    iget-object v2, v0, LU0/k;->p1:Landroid/view/Surface;

    .line 53
    .line 54
    if-eqz v2, :cond_1

    .line 55
    .line 56
    const/4 v2, 0x0

    .line 57
    invoke-virtual {v0, v2, v1}, LU0/k;->n0(II)V

    .line 58
    .line 59
    .line 60
    :cond_1
    return-void

    .line 61
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method
