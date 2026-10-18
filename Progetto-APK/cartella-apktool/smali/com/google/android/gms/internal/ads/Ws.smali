.class public final Lcom/google/android/gms/internal/ads/Ws;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/uu;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/le;

.field public final b:LW3/i;

.field public final c:Ljava/util/concurrent/ScheduledExecutorService;

.field public final d:Lcom/google/android/gms/internal/ads/jC;

.field public final e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/le;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/re;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->G2:Lcom/google/android/gms/internal/ads/J7;

    .line 5
    .line 6
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 7
    .line 8
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

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
    new-instance v0, LW3/i;

    .line 23
    .line 24
    invoke-direct {v0, p1}, LW3/i;-><init>(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ws;->b:LW3/i;

    .line 28
    .line 29
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ws;->e:Landroid/content/Context;

    .line 30
    .line 31
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Ws;->a:Lcom/google/android/gms/internal/ads/le;

    .line 32
    .line 33
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Ws;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 34
    .line 35
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/Ws;->d:Lcom/google/android/gms/internal/ads/jC;

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    const/16 v0, 0xb

    return v0
.end method

.method public final zzb()LD4/b;
    .locals 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->C2:Lcom/google/android/gms/internal/ads/J7;

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
    const/4 v2, -0x1

    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x0

    .line 20
    if-eqz v0, :cond_4

    .line 21
    .line 22
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->H2:Lcom/google/android/gms/internal/ads/J7;

    .line 23
    .line 24
    iget-object v5, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 25
    .line 26
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ljava/lang/Boolean;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_4

    .line 37
    .line 38
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->D2:Lcom/google/android/gms/internal/ads/J7;

    .line 39
    .line 40
    iget-object v5, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 41
    .line 42
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Ljava/lang/Boolean;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_0

    .line 53
    .line 54
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ws;->b:LW3/i;

    .line 55
    .line 56
    invoke-virtual {v0}, LW3/i;->a()Lg4/h;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {v0}, Lcom/bumptech/glide/c;->B(Lg4/h;)Lcom/google/android/gms/internal/ads/Vy;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    new-instance v1, Lcom/google/android/gms/internal/ads/u1;

    .line 65
    .line 66
    const/16 v2, 0xb

    .line 67
    .line 68
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/u1;-><init>(I)V

    .line 69
    .line 70
    .line 71
    sget-object v2, Lcom/google/android/gms/internal/ads/se;->f:Lcom/google/android/gms/internal/ads/re;

    .line 72
    .line 73
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Cw;->b2(LD4/b;Lcom/google/android/gms/internal/ads/vz;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/KB;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    goto/16 :goto_1

    .line 78
    .line 79
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->G2:Lcom/google/android/gms/internal/ads/J7;

    .line 80
    .line 81
    iget-object v5, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 82
    .line 83
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Ljava/lang/Boolean;

    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_1

    .line 94
    .line 95
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ws;->e:Landroid/content/Context;

    .line 96
    .line 97
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/iw;->a(Landroid/content/Context;Z)V

    .line 98
    .line 99
    .line 100
    sget-object v0, Lcom/google/android/gms/internal/ads/iw;->c:Ljava/lang/Object;

    .line 101
    .line 102
    monitor-enter v0

    .line 103
    :try_start_0
    sget-object v5, Lcom/google/android/gms/internal/ads/iw;->a:Lg4/h;

    .line 104
    .line 105
    monitor-exit v0

    .line 106
    goto :goto_0

    .line 107
    :catchall_0
    move-exception v1

    .line 108
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    throw v1

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ws;->b:LW3/i;

    .line 111
    .line 112
    invoke-virtual {v0}, LW3/i;->a()Lg4/h;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    :goto_0
    if-nez v5, :cond_2

    .line 117
    .line 118
    new-instance v0, Lcom/google/android/gms/internal/ads/Xs;

    .line 119
    .line 120
    invoke-direct {v0, v4, v2, v3}, Lcom/google/android/gms/internal/ads/Xs;-><init>(Ljava/lang/String;II)V

    .line 121
    .line 122
    .line 123
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    goto :goto_1

    .line 128
    :cond_2
    invoke-static {v5}, Lcom/bumptech/glide/c;->B(Lg4/h;)Lcom/google/android/gms/internal/ads/Vy;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    new-instance v2, Lcom/google/android/gms/internal/ads/hh;

    .line 133
    .line 134
    const/16 v3, 0x12

    .line 135
    .line 136
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/hh;-><init>(I)V

    .line 137
    .line 138
    .line 139
    sget-object v3, Lcom/google/android/gms/internal/ads/se;->f:Lcom/google/android/gms/internal/ads/re;

    .line 140
    .line 141
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/Cw;->d2(LD4/b;Lcom/google/android/gms/internal/ads/RB;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/JB;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->E2:Lcom/google/android/gms/internal/ads/J7;

    .line 146
    .line 147
    iget-object v3, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 148
    .line 149
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    check-cast v2, Ljava/lang/Boolean;

    .line 154
    .line 155
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    if-eqz v2, :cond_3

    .line 160
    .line 161
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->F2:Lcom/google/android/gms/internal/ads/J7;

    .line 162
    .line 163
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 164
    .line 165
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    check-cast v1, Ljava/lang/Long;

    .line 170
    .line 171
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 172
    .line 173
    .line 174
    move-result-wide v1

    .line 175
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Ws;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 176
    .line 177
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 178
    .line 179
    invoke-static {v0, v1, v2, v4, v3}, Lcom/google/android/gms/internal/ads/Cw;->e2(LD4/b;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)LD4/b;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/ads/Sc;

    .line 184
    .line 185
    const/4 v2, 0x5

    .line 186
    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/ads/Sc;-><init>(Ljava/lang/Object;I)V

    .line 187
    .line 188
    .line 189
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ws;->d:Lcom/google/android/gms/internal/ads/jC;

    .line 190
    .line 191
    const-class v3, Ljava/lang/Exception;

    .line 192
    .line 193
    invoke-static {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/Cw;->w1(LD4/b;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/vz;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/sB;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    :goto_1
    return-object v0

    .line 198
    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/ads/Xs;

    .line 199
    .line 200
    invoke-direct {v0, v4, v2, v3}, Lcom/google/android/gms/internal/ads/Xs;-><init>(Ljava/lang/String;II)V

    .line 201
    .line 202
    .line 203
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    return-object v0
.end method
