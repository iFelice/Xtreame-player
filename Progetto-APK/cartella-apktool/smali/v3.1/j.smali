.class public final Lv3/j;
.super Lcom/google/android/gms/internal/ads/Yd;
.source "SourceFile"


# static fields
.field public static final n0:Ljava/util/ArrayList;

.field public static final o0:Ljava/util/ArrayList;

.field public static final p0:Ljava/util/ArrayList;

.field public static final q0:Ljava/util/ArrayList;


# instance fields
.field public final H:Lcom/google/android/gms/internal/ads/fg;

.field public I:Landroid/content/Context;

.field public final J:Lcom/google/android/gms/internal/ads/H4;

.field public final K:Lcom/google/android/gms/internal/ads/Zv;

.field public final L:Lcom/google/android/gms/internal/ads/hw;

.field public final M:Lcom/google/android/gms/internal/ads/jC;

.field public final N:Ljava/util/concurrent/ScheduledExecutorService;

.field public O:Lcom/google/android/gms/internal/ads/yc;

.field public P:Landroid/graphics/Point;

.field public Q:Landroid/graphics/Point;

.field public final R:Lcom/google/android/gms/internal/ads/In;

.field public final S:Lcom/google/android/gms/internal/ads/ix;

.field public final T:Z

.field public final U:Z

.field public final V:Z

.field public final W:Z

.field public final X:Ljava/lang/String;

.field public final Y:Ljava/lang/String;

.field public final Z:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final a0:Lp3/a;

.field public b0:Ljava/lang/String;

.field public final c0:Ljava/lang/String;

.field public final d0:Ljava/util/ArrayList;

.field public final e0:Ljava/util/ArrayList;

.field public final f0:Ljava/util/ArrayList;

.field public final g0:Ljava/util/ArrayList;

.field public final h0:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final i0:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final j0:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final k0:Lcom/google/android/gms/internal/ads/c8;

.field public final l0:Lv3/x;

.field public final m0:Lv3/b;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const-string v1, "/dbm/clk"

    .line 4
    .line 5
    const-string v2, "/aclk"

    .line 6
    .line 7
    const-string v3, "/pcs/click"

    .line 8
    .line 9
    filled-new-array {v2, v3, v1}, [Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lv3/j;->n0:Ljava/util/ArrayList;

    .line 21
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    const-string v1, ".doubleclick.net"

    .line 25
    .line 26
    const-string v2, ".googleadservices.com"

    .line 27
    .line 28
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lv3/j;->o0:Ljava/util/ArrayList;

    .line 40
    .line 41
    new-instance v0, Ljava/util/ArrayList;

    .line 42
    .line 43
    const-string v3, "/pagead/adview"

    .line 44
    .line 45
    const-string v4, "/pcs/view"

    .line 46
    .line 47
    const-string v5, "/pagead/conversion"

    .line 48
    .line 49
    const-string v6, "/dbm/ad"

    .line 50
    .line 51
    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 60
    .line 61
    .line 62
    sput-object v0, Lv3/j;->p0:Ljava/util/ArrayList;

    .line 63
    .line 64
    new-instance v0, Ljava/util/ArrayList;

    .line 65
    .line 66
    const-string v3, ".googlesyndication.com"

    .line 67
    .line 68
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 77
    .line 78
    .line 79
    sput-object v0, Lv3/j;->q0:Ljava/util/ArrayList;

    .line 80
    .line 81
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/fg;Landroid/content/Context;Lcom/google/android/gms/internal/ads/H4;Lcom/google/android/gms/internal/ads/hw;Lcom/google/android/gms/internal/ads/re;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/In;Lcom/google/android/gms/internal/ads/ix;Lp3/a;Lcom/google/android/gms/internal/ads/c8;Lcom/google/android/gms/internal/ads/Zv;Lv3/x;Lv3/b;)V
    .locals 2

    .line 1
    const-string v0, "com.google.android.gms.ads.internal.signals.ISignalGenerator"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/z5;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/graphics/Point;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lv3/j;->P:Landroid/graphics/Point;

    .line 12
    .line 13
    new-instance v0, Landroid/graphics/Point;

    .line 14
    .line 15
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lv3/j;->Q:Landroid/graphics/Point;

    .line 19
    .line 20
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lv3/j;->Z:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 27
    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    .line 30
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lv3/j;->h0:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    .line 37
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lv3/j;->i0:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 43
    .line 44
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lv3/j;->j0:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 48
    .line 49
    iput-object p1, p0, Lv3/j;->H:Lcom/google/android/gms/internal/ads/fg;

    .line 50
    .line 51
    iput-object p2, p0, Lv3/j;->I:Landroid/content/Context;

    .line 52
    .line 53
    iput-object p3, p0, Lv3/j;->J:Lcom/google/android/gms/internal/ads/H4;

    .line 54
    .line 55
    iput-object p11, p0, Lv3/j;->K:Lcom/google/android/gms/internal/ads/Zv;

    .line 56
    .line 57
    iput-object p4, p0, Lv3/j;->L:Lcom/google/android/gms/internal/ads/hw;

    .line 58
    .line 59
    iput-object p5, p0, Lv3/j;->M:Lcom/google/android/gms/internal/ads/jC;

    .line 60
    .line 61
    iput-object p6, p0, Lv3/j;->N:Ljava/util/concurrent/ScheduledExecutorService;

    .line 62
    .line 63
    iput-object p7, p0, Lv3/j;->R:Lcom/google/android/gms/internal/ads/In;

    .line 64
    .line 65
    iput-object p8, p0, Lv3/j;->S:Lcom/google/android/gms/internal/ads/ix;

    .line 66
    .line 67
    iput-object p9, p0, Lv3/j;->a0:Lp3/a;

    .line 68
    .line 69
    iput-object p10, p0, Lv3/j;->k0:Lcom/google/android/gms/internal/ads/c8;

    .line 70
    .line 71
    sget-object p1, Lcom/google/android/gms/internal/ads/Q7;->F6:Lcom/google/android/gms/internal/ads/J7;

    .line 72
    .line 73
    sget-object p2, Ll3/q;->d:Ll3/q;

    .line 74
    .line 75
    iget-object p3, p2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 76
    .line 77
    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    check-cast p1, Ljava/lang/Boolean;

    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    iput-boolean p1, p0, Lv3/j;->T:Z

    .line 88
    .line 89
    sget-object p1, Lcom/google/android/gms/internal/ads/Q7;->E6:Lcom/google/android/gms/internal/ads/J7;

    .line 90
    .line 91
    iget-object p2, p2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 92
    .line 93
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    check-cast p1, Ljava/lang/Boolean;

    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    iput-boolean p1, p0, Lv3/j;->U:Z

    .line 104
    .line 105
    sget-object p1, Lcom/google/android/gms/internal/ads/Q7;->H6:Lcom/google/android/gms/internal/ads/J7;

    .line 106
    .line 107
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    check-cast p1, Ljava/lang/Boolean;

    .line 112
    .line 113
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    iput-boolean p1, p0, Lv3/j;->V:Z

    .line 118
    .line 119
    sget-object p1, Lcom/google/android/gms/internal/ads/Q7;->J6:Lcom/google/android/gms/internal/ads/J7;

    .line 120
    .line 121
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    check-cast p1, Ljava/lang/Boolean;

    .line 126
    .line 127
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    iput-boolean p1, p0, Lv3/j;->W:Z

    .line 132
    .line 133
    sget-object p1, Lcom/google/android/gms/internal/ads/Q7;->I6:Lcom/google/android/gms/internal/ads/J7;

    .line 134
    .line 135
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    check-cast p1, Ljava/lang/String;

    .line 140
    .line 141
    iput-object p1, p0, Lv3/j;->X:Ljava/lang/String;

    .line 142
    .line 143
    sget-object p1, Lcom/google/android/gms/internal/ads/Q7;->K6:Lcom/google/android/gms/internal/ads/J7;

    .line 144
    .line 145
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    check-cast p1, Ljava/lang/String;

    .line 150
    .line 151
    iput-object p1, p0, Lv3/j;->Y:Ljava/lang/String;

    .line 152
    .line 153
    sget-object p1, Lcom/google/android/gms/internal/ads/Q7;->L6:Lcom/google/android/gms/internal/ads/J7;

    .line 154
    .line 155
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    check-cast p1, Ljava/lang/String;

    .line 160
    .line 161
    iput-object p1, p0, Lv3/j;->c0:Ljava/lang/String;

    .line 162
    .line 163
    iput-object p12, p0, Lv3/j;->l0:Lv3/x;

    .line 164
    .line 165
    iput-object p13, p0, Lv3/j;->m0:Lv3/b;

    .line 166
    .line 167
    sget-object p1, Lcom/google/android/gms/internal/ads/Q7;->M6:Lcom/google/android/gms/internal/ads/J7;

    .line 168
    .line 169
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    check-cast p1, Ljava/lang/Boolean;

    .line 174
    .line 175
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    if-eqz p1, :cond_0

    .line 180
    .line 181
    sget-object p1, Lcom/google/android/gms/internal/ads/Q7;->N6:Lcom/google/android/gms/internal/ads/J7;

    .line 182
    .line 183
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    check-cast p1, Ljava/lang/String;

    .line 188
    .line 189
    invoke-static {p1}, Lv3/j;->H3(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    iput-object p1, p0, Lv3/j;->d0:Ljava/util/ArrayList;

    .line 194
    .line 195
    sget-object p1, Lcom/google/android/gms/internal/ads/Q7;->O6:Lcom/google/android/gms/internal/ads/J7;

    .line 196
    .line 197
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    check-cast p1, Ljava/lang/String;

    .line 202
    .line 203
    invoke-static {p1}, Lv3/j;->H3(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    iput-object p1, p0, Lv3/j;->e0:Ljava/util/ArrayList;

    .line 208
    .line 209
    sget-object p1, Lcom/google/android/gms/internal/ads/Q7;->P6:Lcom/google/android/gms/internal/ads/J7;

    .line 210
    .line 211
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    check-cast p1, Ljava/lang/String;

    .line 216
    .line 217
    invoke-static {p1}, Lv3/j;->H3(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    iput-object p1, p0, Lv3/j;->f0:Ljava/util/ArrayList;

    .line 222
    .line 223
    sget-object p1, Lcom/google/android/gms/internal/ads/Q7;->Q6:Lcom/google/android/gms/internal/ads/J7;

    .line 224
    .line 225
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    check-cast p1, Ljava/lang/String;

    .line 230
    .line 231
    invoke-static {p1}, Lv3/j;->H3(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    :goto_0
    iput-object p1, p0, Lv3/j;->g0:Ljava/util/ArrayList;

    .line 236
    .line 237
    return-void

    .line 238
    :cond_0
    sget-object p1, Lv3/j;->n0:Ljava/util/ArrayList;

    .line 239
    .line 240
    iput-object p1, p0, Lv3/j;->d0:Ljava/util/ArrayList;

    .line 241
    .line 242
    sget-object p1, Lv3/j;->o0:Ljava/util/ArrayList;

    .line 243
    .line 244
    iput-object p1, p0, Lv3/j;->e0:Ljava/util/ArrayList;

    .line 245
    .line 246
    sget-object p1, Lv3/j;->p0:Ljava/util/ArrayList;

    .line 247
    .line 248
    iput-object p1, p0, Lv3/j;->f0:Ljava/util/ArrayList;

    .line 249
    .line 250
    sget-object p1, Lv3/j;->q0:Ljava/util/ArrayList;

    .line 251
    .line 252
    goto :goto_0
.end method

.method public static F3(Landroid/net/Uri;Ljava/util/List;Ljava/util/List;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_3

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_1

    .line 46
    .line 47
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_2

    .line 58
    .line 59
    const/4 p0, 0x1

    .line 60
    return p0

    .line 61
    :cond_3
    :goto_0
    return v1
.end method

.method public static final G3(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "&adurl="

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, -0x1

    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    const-string v1, "?adurl="

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    :cond_0
    if-eq v1, v2, :cond_1

    .line 21
    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    new-instance p0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string v2, "="

    .line 35
    .line 36
    const-string v3, "&"

    .line 37
    .line 38
    invoke-static {p0, p1, v2, p2, v3}, Lt/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0

    .line 57
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {p0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    return-object p0
.end method

.method public static final H3(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5

    .line 1
    const-string v0, ","

    .line 2
    .line 3
    invoke-static {p0, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    array-length v1, p0

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    if-ge v2, v1, :cond_1

    .line 15
    .line 16
    aget-object v3, p0, v2

    .line 17
    .line 18
    invoke-static {v3}, Lf/b;->j0(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-nez v4, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return-object v0
.end method

.method public static I3(LD4/b;Lcom/google/android/gms/internal/ads/de;)Lcom/google/android/gms/internal/ads/Tw;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/Uw;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/m8;->e:Lcom/google/android/gms/internal/ads/f8;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/Cw;->f2(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lcom/google/android/gms/internal/ads/Rg;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/Rg;->Q:Lcom/google/android/gms/internal/ads/MJ;

    .line 30
    .line 31
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    check-cast p0, Lcom/google/android/gms/internal/ads/Tw;

    .line 36
    .line 37
    new-instance v0, Ljava/util/ArrayList;

    .line 38
    .line 39
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/de;->H:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/Tw;->d(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/de;->J:Ll3/b1;

    .line 52
    .line 53
    if-nez p1, :cond_1

    .line 54
    .line 55
    :try_start_1
    const-string v0, ""

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception p0

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    iget-object v0, p1, Ll3/b1;->V:Ljava/lang/String;

    .line 61
    .line 62
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/Tw;->b(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p1, Ll3/b1;->S:Landroid/os/Bundle;

    .line 66
    .line 67
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Tw;->f(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    .line 68
    .line 69
    .line 70
    move-object v1, p0

    .line 71
    goto :goto_2

    .line 72
    :goto_1
    sget-object p1, Lk3/l;->A:Lk3/l;

    .line 73
    .line 74
    iget-object p1, p1, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 75
    .line 76
    const-string v0, "SignalGeneratorImpl.getConfiguredCriticalUserJourney"

    .line 77
    .line 78
    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/internal/ads/le;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    :cond_2
    :goto_2
    return-object v1
.end method


# virtual methods
.method public final A3(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/aC;
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Lcom/google/android/gms/internal/ads/Tm;

    .line 3
    .line 4
    iget-object v2, p0, Lv3/j;->L:Lcom/google/android/gms/internal/ads/hw;

    .line 5
    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/hw;->a()LD4/b;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    new-instance v3, Lv3/c;

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    invoke-direct {v3, p0, v1, p1, v4}, Lv3/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lv3/j;->M:Lcom/google/android/gms/internal/ads/jC;

    .line 17
    .line 18
    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/ads/Cw;->d2(LD4/b;Lcom/google/android/gms/internal/ads/RB;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/JB;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    new-instance v3, Ll/k;

    .line 23
    .line 24
    const/16 v5, 0x14

    .line 25
    .line 26
    invoke-direct {v3, p0, v1, v5}, Ll/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v3, p1}, Lcom/google/android/gms/internal/ads/GB;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/aC;->r(LD4/b;)Lcom/google/android/gms/internal/ads/aC;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->X6:Lcom/google/android/gms/internal/ads/J7;

    .line 37
    .line 38
    sget-object v3, Ll3/q;->d:Ll3/q;

    .line 39
    .line 40
    iget-object v3, v3, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 41
    .line 42
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Ljava/lang/Integer;

    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    int-to-long v2, v2

    .line 53
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 54
    .line 55
    iget-object v6, p0, Lv3/j;->N:Ljava/util/concurrent/ScheduledExecutorService;

    .line 56
    .line 57
    invoke-static {v1, v2, v3, v5, v6}, Lcom/google/android/gms/internal/ads/Cw;->e2(LD4/b;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)LD4/b;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Lcom/google/android/gms/internal/ads/aC;

    .line 62
    .line 63
    new-instance v2, Lv3/h;

    .line 64
    .line 65
    invoke-direct {v2, v4}, Lv3/h;-><init>(I)V

    .line 66
    .line 67
    .line 68
    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/ads/Cw;->b2(LD4/b;Lcom/google/android/gms/internal/ads/vz;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/KB;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    new-instance v2, Lv3/h;

    .line 73
    .line 74
    invoke-direct {v2, v0}, Lv3/h;-><init>(I)V

    .line 75
    .line 76
    .line 77
    const-class v0, Ljava/lang/Exception;

    .line 78
    .line 79
    invoke-static {v1, v0, v2, p1}, Lcom/google/android/gms/internal/ads/Cw;->w1(LD4/b;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/vz;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/sB;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    return-object p1
.end method

.method public final B3()V
    .locals 8

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/w8;->b:Lcom/google/android/gms/internal/ads/f8;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lv3/j;->l0:Lv3/x;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    const/4 v1, 0x1

    .line 19
    :try_start_0
    invoke-virtual {v0, v1}, Lv3/x;->c(Z)V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, v1}, Lv3/x;->c(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception v1

    .line 29
    monitor-exit v0

    .line 30
    throw v1

    .line 31
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->sa:Lcom/google/android/gms/internal/ads/J7;

    .line 32
    .line 33
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 34
    .line 35
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Ljava/lang/Boolean;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    new-instance v0, Lv3/F;

    .line 50
    .line 51
    invoke-direct {v0, p0}, Lv3/F;-><init>(Lv3/j;)V

    .line 52
    .line 53
    .line 54
    sget-object v1, Lcom/google/android/gms/internal/ads/se;->a:Lcom/google/android/gms/internal/ads/re;

    .line 55
    .line 56
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Cw;->W1(Lcom/google/android/gms/internal/ads/QB;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/tC;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    iget-object v2, p0, Lv3/j;->I:Landroid/content/Context;

    .line 62
    .line 63
    new-instance v7, Landroid/os/Bundle;

    .line 64
    .line 65
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v4, "BANNER"

    .line 69
    .line 70
    const/4 v5, 0x0

    .line 71
    const/4 v6, 0x0

    .line 72
    const/4 v3, 0x0

    .line 73
    move-object v1, p0

    .line 74
    invoke-virtual/range {v1 .. v7}, Lv3/j;->z3(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ll3/d1;Ll3/b1;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/Rg;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Rg;->R:Lcom/google/android/gms/internal/ads/MJ;

    .line 79
    .line 80
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, LD4/b;

    .line 85
    .line 86
    :goto_0
    new-instance v1, LC2/g;

    .line 87
    .line 88
    const/16 v2, 0xb

    .line 89
    .line 90
    invoke-direct {v1, p0, v2}, LC2/g;-><init>(Ljava/lang/Object;I)V

    .line 91
    .line 92
    .line 93
    iget-object v2, p0, Lv3/j;->H:Lcom/google/android/gms/internal/ads/fg;

    .line 94
    .line 95
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/fg;->a()Ljava/util/concurrent/Executor;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Cw;->h2(LD4/b;Lcom/google/android/gms/internal/ads/dC;Ljava/util/concurrent/Executor;)V

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method public final C3()V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->O8:Lcom/google/android/gms/internal/ads/J7;

    .line 2
    .line 3
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 4
    .line 5
    iget-object v2, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 6
    .line 7
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->R8:Lcom/google/android/gms/internal/ads/J7;

    .line 20
    .line 21
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/Boolean;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->V8:Lcom/google/android/gms/internal/ads/J7;

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Ljava/lang/Boolean;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    iget-object v0, p0, Lv3/j;->h0:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    .line 51
    const/4 v1, 0x1

    .line 52
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_1

    .line 57
    .line 58
    :cond_0
    invoke-virtual {p0}, Lv3/j;->B3()V

    .line 59
    .line 60
    .line 61
    :cond_1
    return-void
.end method

.method public final D3(Ljava/util/ArrayList;LR3/a;Lcom/google/android/gms/internal/ads/sc;Z)V
    .locals 8

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->W6:Lcom/google/android/gms/internal/ads/J7;

    .line 2
    .line 3
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 4
    .line 5
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const-string p1, "The updating URL feature is not enabled."

    .line 20
    .line 21
    invoke-static {p1}, Lp3/h;->g(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :try_start_0
    check-cast p3, Lcom/google/android/gms/internal/ads/qc;

    .line 25
    .line 26
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 p1, 0x2

    .line 34
    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/ads/y5;->O2(ILandroid/os/Parcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :catch_0
    move-exception p1

    .line 39
    const-string p2, ""

    .line 40
    .line 41
    invoke-static {p2, p1}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const/4 v1, 0x0

    .line 50
    const/4 v2, 0x0

    .line 51
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    iget-object v4, p0, Lv3/j;->e0:Ljava/util/ArrayList;

    .line 56
    .line 57
    iget-object v5, p0, Lv3/j;->d0:Ljava/util/ArrayList;

    .line 58
    .line 59
    if-eqz v3, :cond_2

    .line 60
    .line 61
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    check-cast v3, Landroid/net/Uri;

    .line 66
    .line 67
    invoke-static {v3, v5, v4}, Lv3/j;->F3(Landroid/net/Uri;Ljava/util/List;Ljava/util/List;)Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_1

    .line 72
    .line 73
    add-int/lit8 v2, v2, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    const/4 v0, 0x1

    .line 77
    if-le v2, v0, :cond_3

    .line 78
    .line 79
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    const-string v3, "Multiple google urls found: "

    .line 84
    .line 85
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-static {v2}, Lp3/h;->g(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    if-eqz v3, :cond_6

    .line 106
    .line 107
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    check-cast v3, Landroid/net/Uri;

    .line 112
    .line 113
    invoke-static {v3, v5, v4}, Lv3/j;->F3(Landroid/net/Uri;Ljava/util/List;Ljava/util/List;)Z

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    if-nez v6, :cond_4

    .line 118
    .line 119
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    const-string v7, "Not a Google URL: "

    .line 124
    .line 125
    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    invoke-static {v6}, Lp3/h;->g(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    goto :goto_2

    .line 137
    :cond_4
    new-instance v6, Lv3/d;

    .line 138
    .line 139
    invoke-direct {v6, p0, v3, p2, v1}, Lv3/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 140
    .line 141
    .line 142
    iget-object v3, p0, Lv3/j;->M:Lcom/google/android/gms/internal/ads/jC;

    .line 143
    .line 144
    move-object v7, v3

    .line 145
    check-cast v7, Lcom/google/android/gms/internal/ads/IB;

    .line 146
    .line 147
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/IB;->b(Ljava/util/concurrent/Callable;)LD4/b;

    .line 148
    .line 149
    .line 150
    move-result-object v6

    .line 151
    iget-object v7, p0, Lv3/j;->O:Lcom/google/android/gms/internal/ads/yc;

    .line 152
    .line 153
    if-eqz v7, :cond_5

    .line 154
    .line 155
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/yc;->H:Ljava/util/Map;

    .line 156
    .line 157
    if-eqz v7, :cond_5

    .line 158
    .line 159
    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    .line 160
    .line 161
    .line 162
    move-result v7

    .line 163
    if-nez v7, :cond_5

    .line 164
    .line 165
    new-instance v7, Lv3/e;

    .line 166
    .line 167
    invoke-direct {v7, p0, v1}, Lv3/e;-><init>(Ljava/lang/Object;I)V

    .line 168
    .line 169
    .line 170
    invoke-static {v6, v7, v3}, Lcom/google/android/gms/internal/ads/Cw;->d2(LD4/b;Lcom/google/android/gms/internal/ads/RB;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/JB;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    goto :goto_2

    .line 175
    :cond_5
    const-string v3, "Asset view map is empty."

    .line 176
    .line 177
    invoke-static {v3}, Lp3/h;->f(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    move-object v3, v6

    .line 181
    :goto_2
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_6
    new-instance p1, Lcom/google/android/gms/internal/ads/SB;

    .line 186
    .line 187
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/uA;->t(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/uA;

    .line 188
    .line 189
    .line 190
    move-result-object p2

    .line 191
    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/internal/ads/SB;-><init>(Lcom/google/android/gms/internal/ads/uA;Z)V

    .line 192
    .line 193
    .line 194
    new-instance p2, Lv3/i;

    .line 195
    .line 196
    invoke-direct {p2, p0, p3, p4, v0}, Lv3/i;-><init>(Lv3/j;Lcom/google/android/gms/internal/ads/sc;ZI)V

    .line 197
    .line 198
    .line 199
    iget-object p3, p0, Lv3/j;->H:Lcom/google/android/gms/internal/ads/fg;

    .line 200
    .line 201
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/fg;->a()Ljava/util/concurrent/Executor;

    .line 202
    .line 203
    .line 204
    move-result-object p3

    .line 205
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/Cw;->h2(LD4/b;Lcom/google/android/gms/internal/ads/dC;Ljava/util/concurrent/Executor;)V

    .line 206
    .line 207
    .line 208
    return-void
.end method

.method public final E3(Ljava/util/ArrayList;LR3/a;Lcom/google/android/gms/internal/ads/sc;Z)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->W6:Lcom/google/android/gms/internal/ads/J7;

    .line 2
    .line 3
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 4
    .line 5
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x2

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    :try_start_0
    const-string p1, "The updating URL feature is not enabled."

    .line 21
    .line 22
    check-cast p3, Lcom/google/android/gms/internal/ads/qc;

    .line 23
    .line 24
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p3, v1, p2}, Lcom/google/android/gms/internal/ads/y5;->O2(ILandroid/os/Parcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :catch_0
    move-exception p1

    .line 36
    const-string p2, ""

    .line 37
    .line 38
    invoke-static {p2, p1}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    new-instance v0, Lv3/d;

    .line 43
    .line 44
    invoke-direct {v0, p0, p1, p2, v1}, Lv3/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lv3/j;->M:Lcom/google/android/gms/internal/ads/jC;

    .line 48
    .line 49
    move-object p2, p1

    .line 50
    check-cast p2, Lcom/google/android/gms/internal/ads/IB;

    .line 51
    .line 52
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/IB;->b(Ljava/util/concurrent/Callable;)LD4/b;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    iget-object v0, p0, Lv3/j;->O:Lcom/google/android/gms/internal/ads/yc;

    .line 57
    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/yc;->H:Ljava/util/Map;

    .line 61
    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_1

    .line 69
    .line 70
    new-instance v0, Lv3/e;

    .line 71
    .line 72
    const/4 v1, 0x1

    .line 73
    invoke-direct {v0, p0, v1}, Lv3/e;-><init>(Ljava/lang/Object;I)V

    .line 74
    .line 75
    .line 76
    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/ads/Cw;->d2(LD4/b;Lcom/google/android/gms/internal/ads/RB;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/JB;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    goto :goto_0

    .line 81
    :cond_1
    const-string p1, "Asset view map is empty."

    .line 82
    .line 83
    invoke-static {p1}, Lp3/h;->f(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :goto_0
    new-instance p1, Lv3/i;

    .line 87
    .line 88
    const/4 v0, 0x0

    .line 89
    invoke-direct {p1, p0, p3, p4, v0}, Lv3/i;-><init>(Lv3/j;Lcom/google/android/gms/internal/ads/sc;ZI)V

    .line 90
    .line 91
    .line 92
    iget-object p3, p0, Lv3/j;->H:Lcom/google/android/gms/internal/ads/fg;

    .line 93
    .line 94
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/fg;->a()Ljava/util/concurrent/Executor;

    .line 95
    .line 96
    .line 97
    move-result-object p3

    .line 98
    invoke-static {p2, p1, p3}, Lcom/google/android/gms/internal/ads/Cw;->h2(LD4/b;Lcom/google/android/gms/internal/ads/dC;Ljava/util/concurrent/Executor;)V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public final t1(LR3/a;Lcom/google/android/gms/internal/ads/de;Lcom/google/android/gms/internal/ads/Wd;)V
    .locals 9

    .line 1
    new-instance v6, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->U1:Lcom/google/android/gms/internal/ads/J7;

    .line 7
    .line 8
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 9
    .line 10
    iget-object v2, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 11
    .line 12
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/Boolean;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/de;->J:Ll3/b1;

    .line 25
    .line 26
    iget-wide v2, v0, Ll3/b1;->f0:J

    .line 27
    .line 28
    const-string v0, "api-call"

    .line 29
    .line 30
    invoke-virtual {v6, v0, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 31
    .line 32
    .line 33
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 34
    .line 35
    iget-object v0, v0, Lk3/l;->j:LP3/b;

    .line 36
    .line 37
    const-string v2, "dynamite-enter"

    .line 38
    .line 39
    invoke-static {v0, v6, v2}, Lt/a;->g(LP3/b;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-static {p1}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Landroid/content/Context;

    .line 47
    .line 48
    iput-object v0, p0, Lv3/j;->I:Landroid/content/Context;

    .line 49
    .line 50
    const/16 v2, 0x16

    .line 51
    .line 52
    invoke-static {v0, v2}, LU4/a;->h(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/Ow;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/Ow;->zzi()Lcom/google/android/gms/internal/ads/Ow;

    .line 57
    .line 58
    .line 59
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/de;->H:Ljava/lang/String;

    .line 60
    .line 61
    const-string v2, "UNKNOWN"

    .line 62
    .line 63
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 68
    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    new-instance v0, Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .line 75
    .line 76
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->V6:Lcom/google/android/gms/internal/ads/J7;

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    check-cast v3, Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-nez v3, :cond_1

    .line 89
    .line 90
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Ljava/lang/String;

    .line 95
    .line 96
    const-string v2, ","

    .line 97
    .line 98
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    :cond_1
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/de;->J:Ll3/b1;

    .line 107
    .line 108
    invoke-static {v2}, LU2/m;->k(Ll3/b1;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-eqz v0, :cond_2

    .line 117
    .line 118
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 119
    .line 120
    const-string v1, "Unknown format is no longer supported."

    .line 121
    .line 122
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->H1(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/eC;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 130
    .line 131
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Cw;->H1(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/eC;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    move-object v2, v0

    .line 139
    move-object v6, v1

    .line 140
    goto :goto_1

    .line 141
    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->sa:Lcom/google/android/gms/internal/ads/J7;

    .line 142
    .line 143
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    check-cast v0, Ljava/lang/Boolean;

    .line 148
    .line 149
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-eqz v0, :cond_3

    .line 154
    .line 155
    sget-object v0, Lcom/google/android/gms/internal/ads/se;->a:Lcom/google/android/gms/internal/ads/re;

    .line 156
    .line 157
    new-instance v1, Lv3/d;

    .line 158
    .line 159
    const/4 v2, 0x1

    .line 160
    invoke-direct {v1, p0, p2, v6, v2}, Lv3/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/IB;->b(Ljava/util/concurrent/Callable;)LD4/b;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    new-instance v2, Lv3/g;

    .line 168
    .line 169
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 170
    .line 171
    .line 172
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/Cw;->d2(LD4/b;Lcom/google/android/gms/internal/ads/RB;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/JB;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    :goto_0
    move-object v6, v0

    .line 177
    move-object v2, v1

    .line 178
    goto :goto_1

    .line 179
    :cond_3
    iget-object v1, p0, Lv3/j;->I:Landroid/content/Context;

    .line 180
    .line 181
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/de;->G:Ljava/lang/String;

    .line 182
    .line 183
    iget-object v3, p2, Lcom/google/android/gms/internal/ads/de;->H:Ljava/lang/String;

    .line 184
    .line 185
    iget-object v4, p2, Lcom/google/android/gms/internal/ads/de;->I:Ll3/d1;

    .line 186
    .line 187
    iget-object v5, p2, Lcom/google/android/gms/internal/ads/de;->J:Ll3/b1;

    .line 188
    .line 189
    move-object v0, p0

    .line 190
    invoke-virtual/range {v0 .. v6}, Lv3/j;->z3(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ll3/d1;Ll3/b1;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/Rg;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Rg;->R:Lcom/google/android/gms/internal/ads/MJ;

    .line 199
    .line 200
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    check-cast v0, LD4/b;

    .line 205
    .line 206
    goto :goto_0

    .line 207
    :goto_1
    new-instance v8, Lo/j;

    .line 208
    .line 209
    move-object v0, v8

    .line 210
    move-object v1, p0

    .line 211
    move-object v3, p2

    .line 212
    move-object v4, p3

    .line 213
    move-object v5, v7

    .line 214
    invoke-direct/range {v0 .. v5}, Lo/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    iget-object v0, p0, Lv3/j;->H:Lcom/google/android/gms/internal/ads/fg;

    .line 218
    .line 219
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/fg;->a()Ljava/util/concurrent/Executor;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    invoke-static {v6, v8, v0}, Lcom/google/android/gms/internal/ads/Cw;->h2(LD4/b;Lcom/google/android/gms/internal/ads/dC;Ljava/util/concurrent/Executor;)V

    .line 224
    .line 225
    .line 226
    return-void
.end method

.method public final z3(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ll3/d1;Ll3/b1;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/Rg;
    .locals 40

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    new-instance v2, Lcom/google/android/gms/internal/ads/Xv;

    .line 6
    .line 7
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/Xv;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v3, "REWARDED"

    .line 11
    .line 12
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/Xv;->o:Landroidx/leanback/widget/j;

    .line 17
    .line 18
    const-string v6, "REWARDED_INTERSTITIAL"

    .line 19
    .line 20
    const/4 v7, 0x3

    .line 21
    const/4 v8, 0x2

    .line 22
    if-eqz v4, :cond_1

    .line 23
    .line 24
    iput v8, v5, Landroidx/leanback/widget/j;->H:I

    .line 25
    .line 26
    :cond_0
    :goto_0
    move-object/from16 v4, p0

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_0

    .line 34
    .line 35
    iput v7, v5, Landroidx/leanback/widget/j;->H:I

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :goto_1
    iget-object v5, v4, Lv3/j;->H:Lcom/google/android/gms/internal/ads/fg;

    .line 39
    .line 40
    check-cast v5, Lcom/google/android/gms/internal/ads/Bg;

    .line 41
    .line 42
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/Bg;->c:Lcom/google/android/gms/internal/ads/Bg;

    .line 43
    .line 44
    new-instance v9, Lcom/google/android/gms/internal/ads/dj;

    .line 45
    .line 46
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object v0, v9, Lcom/google/android/gms/internal/ads/dj;->a:Landroid/content/Context;

    .line 50
    .line 51
    if-nez p2, :cond_2

    .line 52
    .line 53
    const-string v10, "adUnitId"

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    move-object/from16 v10, p2

    .line 57
    .line 58
    :goto_2
    iput-object v10, v2, Lcom/google/android/gms/internal/ads/Xv;->c:Ljava/lang/String;

    .line 59
    .line 60
    if-nez p5, :cond_3

    .line 61
    .line 62
    new-instance v14, Landroid/os/Bundle;

    .line 63
    .line 64
    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 65
    .line 66
    .line 67
    new-instance v16, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .line 71
    .line 72
    new-instance v24, Landroid/os/Bundle;

    .line 73
    .line 74
    invoke-direct/range {v24 .. v24}, Landroid/os/Bundle;-><init>()V

    .line 75
    .line 76
    .line 77
    new-instance v25, Landroid/os/Bundle;

    .line 78
    .line 79
    invoke-direct/range {v25 .. v25}, Landroid/os/Bundle;-><init>()V

    .line 80
    .line 81
    .line 82
    new-instance v26, Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .line 86
    .line 87
    new-instance v33, Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .line 91
    .line 92
    new-instance v39, Ll3/b1;

    .line 93
    .line 94
    move-object/from16 v10, v39

    .line 95
    .line 96
    const/16 v35, 0x0

    .line 97
    .line 98
    const-wide/16 v37, 0x0

    .line 99
    .line 100
    const/16 v11, 0x8

    .line 101
    .line 102
    const-wide/16 v12, -0x1

    .line 103
    .line 104
    const/4 v15, -0x1

    .line 105
    const/16 v17, 0x0

    .line 106
    .line 107
    const/16 v18, -0x1

    .line 108
    .line 109
    move/from16 v31, v18

    .line 110
    .line 111
    const/16 v19, 0x0

    .line 112
    .line 113
    const/16 v20, 0x0

    .line 114
    .line 115
    const/16 v21, 0x0

    .line 116
    .line 117
    const/16 v22, 0x0

    .line 118
    .line 119
    const/16 v23, 0x0

    .line 120
    .line 121
    const/16 v27, 0x0

    .line 122
    .line 123
    const/16 v28, 0x0

    .line 124
    .line 125
    const/16 v29, 0x0

    .line 126
    .line 127
    const/16 v30, 0x0

    .line 128
    .line 129
    const/16 v32, 0x0

    .line 130
    .line 131
    const v34, 0xea60

    .line 132
    .line 133
    .line 134
    const/16 v36, 0x0

    .line 135
    .line 136
    invoke-direct/range {v10 .. v38}, Ll3/b1;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Ll3/V0;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLl3/L;ILjava/lang/String;Ljava/util/List;ILjava/lang/String;IJ)V

    .line 137
    .line 138
    .line 139
    move-object/from16 v10, v39

    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_3
    move-object/from16 v10, p5

    .line 143
    .line 144
    :goto_3
    iput-object v10, v2, Lcom/google/android/gms/internal/ads/Xv;->a:Ll3/b1;

    .line 145
    .line 146
    const/4 v10, 0x1

    .line 147
    if-nez p4, :cond_9

    .line 148
    .line 149
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    .line 150
    .line 151
    .line 152
    move-result v11

    .line 153
    const/4 v12, 0x4

    .line 154
    sparse-switch v11, :sswitch_data_0

    .line 155
    .line 156
    .line 157
    goto :goto_4

    .line 158
    :sswitch_0
    const-string v3, "BANNER"

    .line 159
    .line 160
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    if-eqz v3, :cond_4

    .line 165
    .line 166
    const/4 v3, 0x0

    .line 167
    goto :goto_5

    .line 168
    :sswitch_1
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    if-eqz v3, :cond_4

    .line 173
    .line 174
    const/4 v3, 0x2

    .line 175
    goto :goto_5

    .line 176
    :sswitch_2
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    if-eqz v3, :cond_4

    .line 181
    .line 182
    const/4 v3, 0x1

    .line 183
    goto :goto_5

    .line 184
    :sswitch_3
    const-string v3, "APP_OPEN_AD"

    .line 185
    .line 186
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v3

    .line 190
    if-eqz v3, :cond_4

    .line 191
    .line 192
    const/4 v3, 0x4

    .line 193
    goto :goto_5

    .line 194
    :sswitch_4
    const-string v3, "NATIVE"

    .line 195
    .line 196
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    if-eqz v3, :cond_4

    .line 201
    .line 202
    const/4 v3, 0x3

    .line 203
    goto :goto_5

    .line 204
    :cond_4
    :goto_4
    const/4 v3, -0x1

    .line 205
    :goto_5
    if-eqz v3, :cond_8

    .line 206
    .line 207
    if-eq v3, v10, :cond_7

    .line 208
    .line 209
    if-eq v3, v8, :cond_7

    .line 210
    .line 211
    if-eq v3, v7, :cond_6

    .line 212
    .line 213
    if-eq v3, v12, :cond_5

    .line 214
    .line 215
    new-instance v0, Ll3/d1;

    .line 216
    .line 217
    invoke-direct {v0}, Ll3/d1;-><init>()V

    .line 218
    .line 219
    .line 220
    goto :goto_6

    .line 221
    :cond_5
    invoke-static {}, Ll3/d1;->i()Ll3/d1;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    goto :goto_6

    .line 226
    :cond_6
    invoke-static {}, Ll3/d1;->l()Ll3/d1;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    goto :goto_6

    .line 231
    :cond_7
    new-instance v0, Ll3/d1;

    .line 232
    .line 233
    const/16 v23, 0x0

    .line 234
    .line 235
    const/16 v24, 0x0

    .line 236
    .line 237
    const-string v12, "reward_mb"

    .line 238
    .line 239
    const/4 v13, 0x0

    .line 240
    const/4 v14, 0x0

    .line 241
    const/4 v15, 0x1

    .line 242
    const/16 v16, 0x0

    .line 243
    .line 244
    const/16 v17, 0x0

    .line 245
    .line 246
    const/16 v18, 0x0

    .line 247
    .line 248
    const/16 v19, 0x0

    .line 249
    .line 250
    const/16 v20, 0x0

    .line 251
    .line 252
    const/16 v21, 0x0

    .line 253
    .line 254
    const/16 v22, 0x0

    .line 255
    .line 256
    const/16 v25, 0x0

    .line 257
    .line 258
    const/16 v26, 0x0

    .line 259
    .line 260
    move-object v11, v0

    .line 261
    invoke-direct/range {v11 .. v26}, Ll3/d1;-><init>(Ljava/lang/String;IIZII[Ll3/d1;ZZZZZZZZ)V

    .line 262
    .line 263
    .line 264
    goto :goto_6

    .line 265
    :cond_8
    new-instance v3, Ll3/d1;

    .line 266
    .line 267
    sget-object v6, Lf3/g;->h:Lf3/g;

    .line 268
    .line 269
    invoke-direct {v3, v0, v6}, Ll3/d1;-><init>(Landroid/content/Context;Lf3/g;)V

    .line 270
    .line 271
    .line 272
    move-object v0, v3

    .line 273
    goto :goto_6

    .line 274
    :cond_9
    move-object/from16 v0, p4

    .line 275
    .line 276
    :goto_6
    iput-object v0, v2, Lcom/google/android/gms/internal/ads/Xv;->b:Ll3/d1;

    .line 277
    .line 278
    iput-boolean v10, v2, Lcom/google/android/gms/internal/ads/Xv;->s:Z

    .line 279
    .line 280
    move-object/from16 v0, p6

    .line 281
    .line 282
    iput-object v0, v2, Lcom/google/android/gms/internal/ads/Xv;->t:Landroid/os/Bundle;

    .line 283
    .line 284
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Xv;->a()Lcom/google/android/gms/internal/ads/Yv;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    iput-object v0, v9, Lcom/google/android/gms/internal/ads/dj;->b:Lcom/google/android/gms/internal/ads/Yv;

    .line 289
    .line 290
    new-instance v0, Lcom/google/android/gms/internal/ads/dj;

    .line 291
    .line 292
    invoke-direct {v0, v9}, Lcom/google/android/gms/internal/ads/dj;-><init>(Lcom/google/android/gms/internal/ads/dj;)V

    .line 293
    .line 294
    .line 295
    new-instance v2, Lp3/e;

    .line 296
    .line 297
    invoke-direct {v2, v10}, Lp3/e;-><init>(I)V

    .line 298
    .line 299
    .line 300
    iput-object v1, v2, Lp3/e;->H:Ljava/lang/String;

    .line 301
    .line 302
    new-instance v1, Lv3/l;

    .line 303
    .line 304
    invoke-direct {v1, v2}, Lv3/l;-><init>(Lp3/e;)V

    .line 305
    .line 306
    .line 307
    new-instance v2, Ljava/util/HashSet;

    .line 308
    .line 309
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 310
    .line 311
    .line 312
    new-instance v2, Ljava/util/HashSet;

    .line 313
    .line 314
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 315
    .line 316
    .line 317
    new-instance v2, Ljava/util/HashSet;

    .line 318
    .line 319
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 320
    .line 321
    .line 322
    new-instance v2, Ljava/util/HashSet;

    .line 323
    .line 324
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 325
    .line 326
    .line 327
    new-instance v2, Ljava/util/HashSet;

    .line 328
    .line 329
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 330
    .line 331
    .line 332
    new-instance v2, Ljava/util/HashSet;

    .line 333
    .line 334
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 335
    .line 336
    .line 337
    new-instance v2, Ljava/util/HashSet;

    .line 338
    .line 339
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 340
    .line 341
    .line 342
    new-instance v2, Ljava/util/HashSet;

    .line 343
    .line 344
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 345
    .line 346
    .line 347
    new-instance v2, Ljava/util/HashSet;

    .line 348
    .line 349
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 350
    .line 351
    .line 352
    new-instance v2, Ljava/util/HashSet;

    .line 353
    .line 354
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 355
    .line 356
    .line 357
    new-instance v2, Ljava/util/HashSet;

    .line 358
    .line 359
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 360
    .line 361
    .line 362
    new-instance v2, Ljava/util/HashSet;

    .line 363
    .line 364
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 365
    .line 366
    .line 367
    new-instance v2, Ljava/util/HashSet;

    .line 368
    .line 369
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 370
    .line 371
    .line 372
    new-instance v2, Ljava/util/HashSet;

    .line 373
    .line 374
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 375
    .line 376
    .line 377
    new-instance v2, Lcom/google/android/gms/internal/ads/Rg;

    .line 378
    .line 379
    invoke-direct {v2, v5, v1, v0}, Lcom/google/android/gms/internal/ads/Rg;-><init>(Lcom/google/android/gms/internal/ads/Bg;Lv3/l;Lcom/google/android/gms/internal/ads/dj;)V

    .line 380
    .line 381
    .line 382
    return-object v2

    .line 383
    :sswitch_data_0
    .sparse-switch
        -0x772abbe9 -> :sswitch_4
        -0x1987ba06 -> :sswitch_3
        0x205e3c0e -> :sswitch_2
        0x6e8e03bd -> :sswitch_1
        0x7458732c -> :sswitch_0
    .end sparse-switch
.end method
