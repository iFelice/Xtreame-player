.class public final Lcom/google/ads/interactivemedia/v3/internal/zzjx;
.super Lcom/google/ads/interactivemedia/v3/internal/zzkx;
.source "SourceFile"


# static fields
.field private static final zzh:Lcom/google/ads/interactivemedia/v3/internal/zzky;


# instance fields
.field private final zzi:Lcom/google/ads/interactivemedia/v3/internal/zzai;

.field private final zzj:Landroid/content/Context;

.field private final zzk:Lcom/google/ads/interactivemedia/v3/internal/zzgq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzky;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzky;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzjx;->zzh:Lcom/google/ads/interactivemedia/v3/internal/zzky;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzjj;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/zzan;IILandroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/zzy;Lcom/google/ads/interactivemedia/v3/internal/zzai;Lcom/google/ads/interactivemedia/v3/internal/zzgq;)V
    .locals 8

    .line 1
    move-object v7, p0

    .line 2
    const-string v3, "/TGj8+Sp8IdKBz9y8bC3H0KHpnJRg9DGCA85aF22WXc="

    .line 3
    .line 4
    const/16 v6, 0x1b

    .line 5
    .line 6
    const-string v2, "tJmUdMX6gqvtYlGKWrIbrrzb8XPfGATZoLaUzDKGLsbQDYlTX2kjiVwbkwxCBzrp"

    .line 7
    .line 8
    move-object v0, p0

    .line 9
    move-object v1, p1

    .line 10
    move-object v4, p4

    .line 11
    move v5, p5

    .line 12
    invoke-direct/range {v0 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/zzkx;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzjj;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/zzan;II)V

    .line 13
    .line 14
    .line 15
    move-object v0, p7

    .line 16
    iput-object v0, v7, Lcom/google/ads/interactivemedia/v3/internal/zzjx;->zzj:Landroid/content/Context;

    .line 17
    .line 18
    move-object/from16 v0, p9

    .line 19
    .line 20
    iput-object v0, v7, Lcom/google/ads/interactivemedia/v3/internal/zzjx;->zzi:Lcom/google/ads/interactivemedia/v3/internal/zzai;

    .line 21
    .line 22
    move-object/from16 v0, p10

    .line 23
    .line 24
    iput-object v0, v7, Lcom/google/ads/interactivemedia/v3/internal/zzjx;->zzk:Lcom/google/ads/interactivemedia/v3/internal/zzgq;

    .line 25
    .line 26
    return-void
.end method

.method private final zzc()Lcom/google/ads/interactivemedia/v3/internal/zzgm;
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/zzmj;->zzq:Lcom/google/ads/interactivemedia/v3/internal/zzma;

    .line 3
    .line 4
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzls;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzmh;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    invoke-virtual {v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzma;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const-string v2, "E"

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/zzmj;->zzr:Lcom/google/ads/interactivemedia/v3/internal/zzma;

    .line 23
    .line 24
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzls;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzmh;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v3, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzma;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Ljava/lang/Integer;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzjx;->zzi:Lcom/google/ads/interactivemedia/v3/internal/zzai;

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzai;->zza()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    :goto_0
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkx;->zze:Ljava/lang/reflect/Method;

    .line 46
    .line 47
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzjx;->zzj:Landroid/content/Context;

    .line 48
    .line 49
    const/4 v5, 0x3

    .line 50
    new-array v5, v5, [Ljava/lang/Object;

    .line 51
    .line 52
    const/4 v6, 0x0

    .line 53
    aput-object v4, v5, v6

    .line 54
    .line 55
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 56
    .line 57
    aput-object v4, v5, v0

    .line 58
    .line 59
    const-string v4, ""

    .line 60
    .line 61
    const/4 v6, 0x2

    .line 62
    aput-object v4, v5, v6

    .line 63
    .line 64
    const/4 v4, 0x0

    .line 65
    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    check-cast v3, Ljava/lang/String;

    .line 70
    .line 71
    new-instance v4, Lcom/google/ads/interactivemedia/v3/internal/zzgm;

    .line 72
    .line 73
    invoke-direct {v4, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzgm;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :try_start_0
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkx;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzjj;

    .line 77
    .line 78
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzjj;->zzp()Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-eqz v3, :cond_2

    .line 83
    .line 84
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkx;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzjj;

    .line 85
    .line 86
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzjj;->zzl()Ljava/util/concurrent/Future;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    if-eqz v3, :cond_2

    .line 91
    .line 92
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 93
    .line 94
    const/16 v5, 0x1f

    .line 95
    .line 96
    if-lt v3, v5, :cond_1

    .line 97
    .line 98
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkx;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzjj;

    .line 99
    .line 100
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzjj;->zzl()Ljava/util/concurrent/Future;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-interface {v3}, Ljava/util/concurrent/Future;->isDone()Z

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    if-eqz v3, :cond_2

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :catch_0
    nop

    .line 112
    goto :goto_2

    .line 113
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzjx;->zzi:Lcom/google/ads/interactivemedia/v3/internal/zzai;

    .line 114
    .line 115
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzai;->zzg()Z

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    if-nez v3, :cond_2

    .line 120
    .line 121
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkx;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzjj;

    .line 122
    .line 123
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzjj;->zzl()Ljava/util/concurrent/Future;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    int-to-long v5, v1

    .line 128
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 129
    .line 130
    invoke-interface {v3, v5, v6, v7}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkx;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzjj;

    .line 134
    .line 135
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzjj;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzbp;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    if-eqz v3, :cond_2

    .line 140
    .line 141
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzbp;->zzaj()Z

    .line 142
    .line 143
    .line 144
    move-result v5

    .line 145
    if-eqz v5, :cond_2

    .line 146
    .line 147
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzbp;->zzg()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    goto :goto_3

    .line 152
    :cond_2
    :goto_2
    move-object v3, v2

    .line 153
    :goto_3
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    if-eqz v2, :cond_3

    .line 158
    .line 159
    :try_start_1
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzjx;->zzk:Lcom/google/ads/interactivemedia/v3/internal/zzgq;

    .line 160
    .line 161
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzgq;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzuu;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    int-to-long v5, v1

    .line 166
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 167
    .line 168
    invoke-interface {v2, v5, v6, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    check-cast v1, Ljava/lang/String;

    .line 173
    .line 174
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzjm;->zzd(Ljava/lang/String;)Z

    .line 175
    .line 176
    .line 177
    move-result v2
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1

    .line 178
    if-eq v0, v2, :cond_3

    .line 179
    .line 180
    move-object v3, v1

    .line 181
    :catch_1
    :cond_3
    iput-object v3, v4, Lcom/google/ads/interactivemedia/v3/internal/zzgm;->zza:Ljava/lang/String;

    .line 182
    .line 183
    return-object v4
.end method

.method private final zzd()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkx;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzjj;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzjj;->zzl()Ljava/util/concurrent/Future;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkx;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzjj;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzjj;->zzl()Ljava/util/concurrent/Future;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkx;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzjj;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzjj;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzbp;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzbp;->zzaj()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzbp;->zzg()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    return-object v0

    .line 37
    :catch_0
    :cond_1
    const/4 v0, 0x0

    .line 38
    return-object v0
.end method


# virtual methods
.method public final zza()V
    .locals 11

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzjx;->zzh:Lcom/google/ads/interactivemedia/v3/internal/zzky;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzjx;->zzj:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzky;->zza(Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/zzgm;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/zzgm;->zza:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzjm;->zzd(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_0

    .line 29
    .line 30
    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/zzgm;->zza:Ljava/lang/String;

    .line 31
    .line 32
    const-string v3, "E"

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-nez v2, :cond_0

    .line 39
    .line 40
    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/zzgm;->zza:Ljava/lang/String;

    .line 41
    .line 42
    const-string v2, "0000000000000000000000000000000000000000000000000000000000000000"

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_a

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception v1

    .line 52
    goto/16 :goto_8

    .line 53
    .line 54
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 55
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzjm;->zzd(Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    const/4 v3, 0x3

    .line 60
    if-nez v2, :cond_1

    .line 61
    .line 62
    const/4 v2, 0x5

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzjm;->zzd(Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    const/4 v2, 0x3

    .line 68
    :goto_1
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzjx;->zzk:Lcom/google/ads/interactivemedia/v3/internal/zzgq;

    .line 69
    .line 70
    if-eqz v4, :cond_2

    .line 71
    .line 72
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzjx;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzgm;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    goto/16 :goto_5

    .line 77
    .line 78
    :cond_2
    const/4 v4, 0x1

    .line 79
    const/4 v5, 0x0

    .line 80
    if-ne v2, v3, :cond_3

    .line 81
    .line 82
    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/internal/zzjx;->zzi:Lcom/google/ads/interactivemedia/v3/internal/zzai;

    .line 83
    .line 84
    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/internal/zzai;->zzf()Z

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    if-nez v6, :cond_3

    .line 89
    .line 90
    const/4 v6, 0x1

    .line 91
    goto :goto_2

    .line 92
    :cond_3
    const/4 v6, 0x0

    .line 93
    :goto_2
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    sget-object v7, Lcom/google/ads/interactivemedia/v3/internal/zzmj;->zze:Lcom/google/ads/interactivemedia/v3/internal/zzma;

    .line 98
    .line 99
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzls;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzmh;

    .line 100
    .line 101
    .line 102
    move-result-object v8

    .line 103
    invoke-virtual {v8, v7}, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzma;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    check-cast v7, Ljava/lang/Boolean;

    .line 108
    .line 109
    sget-object v8, Lcom/google/ads/interactivemedia/v3/internal/zzmj;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzma;

    .line 110
    .line 111
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzls;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzmh;

    .line 112
    .line 113
    .line 114
    move-result-object v9

    .line 115
    invoke-virtual {v9, v8}, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzma;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v8

    .line 119
    check-cast v8, Ljava/lang/Boolean;

    .line 120
    .line 121
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 122
    .line 123
    .line 124
    move-result v8

    .line 125
    if-eqz v8, :cond_4

    .line 126
    .line 127
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzjx;->zzb()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v8

    .line 131
    goto :goto_3

    .line 132
    :cond_4
    move-object v8, v1

    .line 133
    :goto_3
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 134
    .line 135
    .line 136
    move-result v7

    .line 137
    if-eqz v7, :cond_5

    .line 138
    .line 139
    iget-object v7, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkx;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzjj;

    .line 140
    .line 141
    invoke-virtual {v7}, Lcom/google/ads/interactivemedia/v3/internal/zzjj;->zzp()Z

    .line 142
    .line 143
    .line 144
    move-result v7

    .line 145
    if-eqz v7, :cond_5

    .line 146
    .line 147
    invoke-static {v8}, Lcom/google/ads/interactivemedia/v3/internal/zzjm;->zzd(Ljava/lang/String;)Z

    .line 148
    .line 149
    .line 150
    move-result v7

    .line 151
    if-eqz v7, :cond_5

    .line 152
    .line 153
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzjx;->zzd()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v8

    .line 157
    :cond_5
    iget-object v7, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkx;->zze:Ljava/lang/reflect/Method;

    .line 158
    .line 159
    new-array v9, v3, [Ljava/lang/Object;

    .line 160
    .line 161
    iget-object v10, p0, Lcom/google/ads/interactivemedia/v3/internal/zzjx;->zzj:Landroid/content/Context;

    .line 162
    .line 163
    aput-object v10, v9, v5

    .line 164
    .line 165
    aput-object v6, v9, v4

    .line 166
    .line 167
    const/4 v4, 0x2

    .line 168
    aput-object v8, v9, v4

    .line 169
    .line 170
    invoke-virtual {v7, v1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    check-cast v4, Ljava/lang/String;

    .line 175
    .line 176
    new-instance v5, Lcom/google/ads/interactivemedia/v3/internal/zzgm;

    .line 177
    .line 178
    invoke-direct {v5, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzgm;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    iget-object v4, v5, Lcom/google/ads/interactivemedia/v3/internal/zzgm;->zza:Ljava/lang/String;

    .line 182
    .line 183
    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/internal/zzjm;->zzd(Ljava/lang/String;)Z

    .line 184
    .line 185
    .line 186
    move-result v4

    .line 187
    if-nez v4, :cond_6

    .line 188
    .line 189
    iget-object v4, v5, Lcom/google/ads/interactivemedia/v3/internal/zzgm;->zza:Ljava/lang/String;

    .line 190
    .line 191
    const-string v6, "E"

    .line 192
    .line 193
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v4

    .line 197
    if-eqz v4, :cond_9

    .line 198
    .line 199
    :cond_6
    add-int/lit8 v2, v2, -0x1

    .line 200
    .line 201
    if-eq v2, v3, :cond_8

    .line 202
    .line 203
    const/4 v3, 0x4

    .line 204
    if-eq v2, v3, :cond_7

    .line 205
    .line 206
    goto :goto_4

    .line 207
    :cond_7
    throw v1

    .line 208
    :cond_8
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzjx;->zzd()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzjm;->zzd(Ljava/lang/String;)Z

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    if-nez v2, :cond_9

    .line 217
    .line 218
    iput-object v1, v5, Lcom/google/ads/interactivemedia/v3/internal/zzgm;->zza:Ljava/lang/String;

    .line 219
    .line 220
    :cond_9
    :goto_4
    move-object v1, v5

    .line 221
    :goto_5
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    :cond_a
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/zzgm;

    .line 229
    .line 230
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkx;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzan;

    .line 232
    .line 233
    monitor-enter v2

    .line 234
    if-eqz v1, :cond_b

    .line 235
    .line 236
    :try_start_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkx;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzan;

    .line 237
    .line 238
    iget-object v3, v1, Lcom/google/ads/interactivemedia/v3/internal/zzgm;->zza:Ljava/lang/String;

    .line 239
    .line 240
    invoke-virtual {v0, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzan;->zzx(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzan;

    .line 241
    .line 242
    .line 243
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkx;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzan;

    .line 244
    .line 245
    iget-wide v3, v1, Lcom/google/ads/interactivemedia/v3/internal/zzgm;->zzb:J

    .line 246
    .line 247
    invoke-virtual {v0, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzan;->zzX(J)Lcom/google/ads/interactivemedia/v3/internal/zzan;

    .line 248
    .line 249
    .line 250
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkx;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzan;

    .line 251
    .line 252
    iget-object v3, v1, Lcom/google/ads/interactivemedia/v3/internal/zzgm;->zzc:Ljava/lang/String;

    .line 253
    .line 254
    invoke-virtual {v0, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzan;->zzZ(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzan;

    .line 255
    .line 256
    .line 257
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkx;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzan;

    .line 258
    .line 259
    iget-object v3, v1, Lcom/google/ads/interactivemedia/v3/internal/zzgm;->zzd:Ljava/lang/String;

    .line 260
    .line 261
    invoke-virtual {v0, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzan;->zzi(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzan;

    .line 262
    .line 263
    .line 264
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkx;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzan;

    .line 265
    .line 266
    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/zzgm;->zze:Ljava/lang/String;

    .line 267
    .line 268
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzan;->zzw(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzan;

    .line 269
    .line 270
    .line 271
    goto :goto_6

    .line 272
    :catchall_1
    move-exception v0

    .line 273
    goto :goto_7

    .line 274
    :cond_b
    :goto_6
    monitor-exit v2

    .line 275
    return-void

    .line 276
    :goto_7
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 277
    throw v0

    .line 278
    :goto_8
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 279
    throw v1
.end method

.method public final zzb()Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "X.509"

    .line 3
    .line 4
    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/zzmj;->zzf:Lcom/google/ads/interactivemedia/v3/internal/zzma;

    .line 9
    .line 10
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzls;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzmh;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-virtual {v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzma;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzjm;->zzf(Ljava/lang/String;)[B

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    new-instance v3, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    new-instance v4, Ljava/io/ByteArrayInputStream;

    .line 30
    .line 31
    invoke-direct {v4, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 42
    .line 43
    const-string v4, "user"

    .line 44
    .line 45
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-nez v2, :cond_0

    .line 50
    .line 51
    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/zzmj;->zzg:Lcom/google/ads/interactivemedia/v3/internal/zzma;

    .line 52
    .line 53
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzls;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzmh;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v4, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzma;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzjm;->zzf(Ljava/lang/String;)[B

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    new-instance v4, Ljava/io/ByteArrayInputStream;

    .line 68
    .line 69
    invoke-direct {v4, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    :cond_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzjx;->zzj:Landroid/content/Context;

    .line 80
    .line 81
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkx;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzjj;

    .line 86
    .line 87
    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/zzjj;->zzk()Ljava/util/concurrent/ExecutorService;

    .line 88
    .line 89
    .line 90
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 91
    .line 92
    const/16 v5, 0x1e

    .line 93
    .line 94
    if-gt v4, v5, :cond_1

    .line 95
    .line 96
    sget-object v4, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 97
    .line 98
    const-string v5, "S"

    .line 99
    .line 100
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    if-nez v4, :cond_1

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzvd;->zzs()Lcom/google/ads/interactivemedia/v3/internal/zzvd;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    new-instance v5, Lcom/google/ads/interactivemedia/v3/internal/zzkz;

    .line 116
    .line 117
    invoke-direct {v5, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzkz;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzvd;)V

    .line 118
    .line 119
    .line 120
    invoke-static {v1, v2, v3, v5}, LN/f;->k(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/util/ArrayList;Lcom/google/ads/interactivemedia/v3/internal/zzkz;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/zztg;->get()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .line 129
    move-object v0, v1

    .line 130
    :catch_0
    :goto_0
    return-object v0
.end method
