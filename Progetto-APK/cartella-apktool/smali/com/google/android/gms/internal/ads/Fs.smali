.class public final Lcom/google/android/gms/internal/ads/Fs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/uu;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/util/concurrent/ScheduledExecutorService;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(LD4/b;Lcom/google/android/gms/internal/ads/re;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/Fs;->a:I

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Fs;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Fs;->d:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Fs;->b:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/le;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/re;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/Fs;->a:I

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Fs;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Fs;->b:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Fs;->d:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/le;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/re;I)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p4, 0x1

    .line 8
    iput p4, p0, Lcom/google/android/gms/internal/ads/Fs;->a:I

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Fs;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Fs;->b:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Fs;->d:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/Fs;->a:I

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x2c

    return v0

    :pswitch_0
    const/16 v0, 0x2b

    return v0

    :pswitch_1
    const/4 v0, 0x6

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzb()LD4/b;
    .locals 7

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/Fs;->a:I

    .line 2
    .line 3
    const-class v1, Ljava/lang/Exception;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Fs;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Fs;->d:Ljava/util/concurrent/Executor;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance v0, Lcom/google/android/gms/internal/ads/y1;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/Cw;->W1(Lcom/google/android/gms/internal/ads/QB;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/tC;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/aC;->r(LD4/b;)Lcom/google/android/gms/internal/ads/aC;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    new-instance v4, Lcom/google/android/gms/internal/ads/u1;

    .line 26
    .line 27
    const/16 v5, 0xf

    .line 28
    .line 29
    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/ads/u1;-><init>(I)V

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v4, v3}, Lcom/google/android/gms/internal/ads/Cw;->b2(LD4/b;Lcom/google/android/gms/internal/ads/vz;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/KB;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sget-object v3, Lcom/google/android/gms/internal/ads/Q7;->O0:Lcom/google/android/gms/internal/ads/J7;

    .line 37
    .line 38
    sget-object v4, Ll3/q;->d:Ll3/q;

    .line 39
    .line 40
    iget-object v4, v4, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 41
    .line 42
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Ljava/lang/Long;

    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 49
    .line 50
    .line 51
    move-result-wide v3

    .line 52
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 53
    .line 54
    invoke-static {v0, v3, v4, v5, v2}, Lcom/google/android/gms/internal/ads/Cw;->e2(LD4/b;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)LD4/b;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Lcom/google/android/gms/internal/ads/aC;

    .line 59
    .line 60
    new-instance v2, Lcom/google/android/gms/internal/ads/Sc;

    .line 61
    .line 62
    const/4 v3, 0x7

    .line 63
    invoke-direct {v2, p0, v3}, Lcom/google/android/gms/internal/ads/Sc;-><init>(Ljava/lang/Object;I)V

    .line 64
    .line 65
    .line 66
    sget-object v3, Lcom/google/android/gms/internal/ads/XB;->G:Lcom/google/android/gms/internal/ads/XB;

    .line 67
    .line 68
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/Cw;->w1(LD4/b;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/vz;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/sB;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    return-object v0

    .line 73
    :pswitch_0
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->C2:Lcom/google/android/gms/internal/ads/J7;

    .line 74
    .line 75
    sget-object v4, Ll3/q;->d:Ll3/q;

    .line 76
    .line 77
    iget-object v5, v4, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 78
    .line 79
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Ljava/lang/Boolean;

    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    const/4 v5, 0x0

    .line 90
    if-eqz v0, :cond_1

    .line 91
    .line 92
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->H2:Lcom/google/android/gms/internal/ads/J7;

    .line 93
    .line 94
    iget-object v4, v4, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 95
    .line 96
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Ljava/lang/Boolean;

    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_1

    .line 107
    .line 108
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/Cw;->k(Ljava/lang/Object;)Lg4/r;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-static {v0}, Lcom/bumptech/glide/c;->B(Lg4/h;)Lcom/google/android/gms/internal/ads/Vy;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    new-instance v4, Lcom/google/android/gms/internal/ads/hh;

    .line 117
    .line 118
    const/16 v5, 0x14

    .line 119
    .line 120
    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/ads/hh;-><init>(I)V

    .line 121
    .line 122
    .line 123
    check-cast v3, Lcom/google/android/gms/internal/ads/jC;

    .line 124
    .line 125
    invoke-static {v0, v4, v3}, Lcom/google/android/gms/internal/ads/Cw;->d2(LD4/b;Lcom/google/android/gms/internal/ads/RB;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/JB;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    sget-object v4, Lcom/google/android/gms/internal/ads/h8;->a:Lcom/google/android/gms/internal/ads/f8;

    .line 130
    .line 131
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    check-cast v4, Ljava/lang/Boolean;

    .line 136
    .line 137
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    if-eqz v4, :cond_0

    .line 142
    .line 143
    sget-object v4, Lcom/google/android/gms/internal/ads/h8;->b:Lcom/google/android/gms/internal/ads/f8;

    .line 144
    .line 145
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    check-cast v4, Ljava/lang/Long;

    .line 150
    .line 151
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 152
    .line 153
    .line 154
    move-result-wide v4

    .line 155
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 156
    .line 157
    invoke-static {v0, v4, v5, v6, v2}, Lcom/google/android/gms/internal/ads/Cw;->e2(LD4/b;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)LD4/b;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/ads/Sc;

    .line 162
    .line 163
    const/4 v4, 0x6

    .line 164
    invoke-direct {v2, p0, v4}, Lcom/google/android/gms/internal/ads/Sc;-><init>(Ljava/lang/Object;I)V

    .line 165
    .line 166
    .line 167
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/Cw;->w1(LD4/b;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/vz;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/sB;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    goto :goto_0

    .line 172
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/Xs;

    .line 173
    .line 174
    const/4 v1, -0x1

    .line 175
    const/4 v2, 0x2

    .line 176
    invoke-direct {v0, v5, v1, v2}, Lcom/google/android/gms/internal/ads/Xs;-><init>(Ljava/lang/String;II)V

    .line 177
    .line 178
    .line 179
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    :goto_0
    return-object v0

    .line 184
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/ads/hh;

    .line 185
    .line 186
    const/16 v1, 0x10

    .line 187
    .line 188
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/hh;-><init>(I)V

    .line 189
    .line 190
    .line 191
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Fs;->c:Ljava/lang/Object;

    .line 192
    .line 193
    check-cast v1, LD4/b;

    .line 194
    .line 195
    invoke-static {v1, v0, v3}, Lcom/google/android/gms/internal/ads/Cw;->d2(LD4/b;Lcom/google/android/gms/internal/ads/RB;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/JB;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    sget-object v1, Lcom/google/android/gms/internal/ads/Q7;->Kb:Lcom/google/android/gms/internal/ads/J7;

    .line 200
    .line 201
    sget-object v4, Ll3/q;->d:Ll3/q;

    .line 202
    .line 203
    iget-object v5, v4, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 204
    .line 205
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v5

    .line 209
    check-cast v5, Ljava/lang/Integer;

    .line 210
    .line 211
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 212
    .line 213
    .line 214
    move-result v5

    .line 215
    if-lez v5, :cond_2

    .line 216
    .line 217
    iget-object v4, v4, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 218
    .line 219
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    check-cast v1, Ljava/lang/Integer;

    .line 224
    .line 225
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    int-to-long v4, v1

    .line 230
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 231
    .line 232
    invoke-static {v0, v4, v5, v1, v2}, Lcom/google/android/gms/internal/ads/Cw;->e2(LD4/b;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)LD4/b;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    :cond_2
    new-instance v1, Lcom/google/android/gms/internal/ads/hh;

    .line 237
    .line 238
    const/16 v2, 0x11

    .line 239
    .line 240
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/hh;-><init>(I)V

    .line 241
    .line 242
    .line 243
    const-class v2, Ljava/lang/Throwable;

    .line 244
    .line 245
    invoke-static {v0, v2, v1, v3}, Lcom/google/android/gms/internal/ads/Cw;->D1(LD4/b;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/RB;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/rB;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    return-object v0

    .line 250
    nop

    .line 251
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
