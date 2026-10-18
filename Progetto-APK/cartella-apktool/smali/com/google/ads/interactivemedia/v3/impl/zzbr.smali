.class final Lcom/google/ads/interactivemedia/v3/impl/zzbr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/impl/zzbq;


# instance fields
.field private final zza:Lcom/google/ads/interactivemedia/v3/internal/zznf;

.field private final zzb:Lcom/google/ads/interactivemedia/v3/impl/data/zzbn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/data/zzbn;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zznm;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zznm;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbr;->zza:Lcom/google/ads/interactivemedia/v3/internal/zznf;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbr;->zzb:Lcom/google/ads/interactivemedia/v3/impl/data/zzbn;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/ads/interactivemedia/v3/impl/data/zzby;)Lcom/google/ads/interactivemedia/v3/impl/data/zzbz;
    .locals 9

    .line 1
    const/16 v0, 0x64

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/zzby;->requestType()Lcom/google/ads/interactivemedia/v3/impl/data/zzbx;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/data/zzbx;->GET:Lcom/google/ads/interactivemedia/v3/impl/data/zzbx;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    const/4 v4, 0x0

    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v5, 0x1

    .line 16
    :goto_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/zzby;->url()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v6

    .line 20
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/zzby;->content()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v7

    .line 24
    if-eqz v6, :cond_3

    .line 25
    .line 26
    if-eq v1, v2, :cond_1

    .line 27
    .line 28
    if-nez v7, :cond_1

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_1
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbr;->zza:Lcom/google/ads/interactivemedia/v3/internal/zznf;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbr;->zzb:Lcom/google/ads/interactivemedia/v3/impl/data/zzbn;

    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/impl/data/zzbn;->isLimitedAdTracking()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zzng;

    .line 42
    .line 43
    const/16 v2, 0x8

    .line 44
    .line 45
    invoke-direct {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzng;-><init>(I)V

    .line 46
    .line 47
    .line 48
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Cw;->j(Ljava/lang/Exception;)Lg4/r;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    goto :goto_1

    .line 53
    :catch_0
    move-exception v1

    .line 54
    goto :goto_3

    .line 55
    :cond_2
    invoke-static {}, LK3/s;->a()LK3/r;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    new-array v3, v3, [LJ3/d;

    .line 60
    .line 61
    sget-object v8, Lcom/google/ads/interactivemedia/v3/internal/zzpo;->zzb:LJ3/d;

    .line 62
    .line 63
    aput-object v8, v3, v4

    .line 64
    .line 65
    iput-object v3, v2, LK3/r;->d:Ljava/lang/Object;

    .line 66
    .line 67
    iput-boolean v4, v2, LK3/r;->b:Z

    .line 68
    .line 69
    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/zznh;

    .line 70
    .line 71
    move-object v4, v1

    .line 72
    check-cast v4, Lcom/google/ads/interactivemedia/v3/internal/zznm;

    .line 73
    .line 74
    invoke-direct {v3, v4, v6, v5, v7}, Lcom/google/ads/interactivemedia/v3/internal/zznh;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zznm;Ljava/lang/String;ILjava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iput-object v3, v2, LK3/r;->c:Ljava/lang/Object;

    .line 78
    .line 79
    invoke-virtual {v2}, LK3/r;->a()LK3/O;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/zznm;

    .line 84
    .line 85
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/j;->doRead(LK3/s;)Lg4/h;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    :goto_1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/zzby;->connectionTimeoutMs()I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/zzby;->readTimeoutMs()I

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    add-int/2addr v2, v3

    .line 98
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 99
    .line 100
    int-to-long v4, v2

    .line 101
    invoke-static {v1, v4, v5, v3}, Lcom/google/android/gms/internal/ads/Cw;->b(Lg4/h;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    check-cast v1, Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/zzby;->id()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-static {v2, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/zzbz;->forResponse(Ljava/lang/String;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/zzbz;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    return-object p1

    .line 116
    :cond_3
    :goto_2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/zzby;->id()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-static {v1, v0}, Lcom/google/ads/interactivemedia/v3/impl/data/zzbz;->forError(Ljava/lang/String;I)Lcom/google/ads/interactivemedia/v3/impl/data/zzbz;

    .line 121
    .line 122
    .line 123
    move-result-object p1
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    return-object p1

    .line 125
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    instance-of v2, v1, Lcom/google/ads/interactivemedia/v3/internal/zzng;

    .line 130
    .line 131
    if-eqz v2, :cond_4

    .line 132
    .line 133
    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/zzng;

    .line 134
    .line 135
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzng;->zza()I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/zzby;->id()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-static {p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/data/zzbz;->forError(Ljava/lang/String;I)Lcom/google/ads/interactivemedia/v3/impl/data/zzbz;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    return-object p1

    .line 148
    :cond_4
    instance-of v1, v1, Lcom/google/android/gms/common/api/h;

    .line 149
    .line 150
    if-eqz v1, :cond_5

    .line 151
    .line 152
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/zzby;->id()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    const/16 v0, 0x66

    .line 157
    .line 158
    invoke-static {p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/data/zzbz;->forError(Ljava/lang/String;I)Lcom/google/ads/interactivemedia/v3/impl/data/zzbz;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    return-object p1

    .line 163
    :cond_5
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/zzby;->id()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-static {p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/data/zzbz;->forError(Ljava/lang/String;I)Lcom/google/ads/interactivemedia/v3/impl/data/zzbz;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    return-object p1

    .line 172
    :catch_1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/zzby;->id()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    const/16 v0, 0x65

    .line 177
    .line 178
    invoke-static {p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/data/zzbz;->forError(Ljava/lang/String;I)Lcom/google/ads/interactivemedia/v3/impl/data/zzbz;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    return-object p1
.end method
