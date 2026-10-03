.class public final Lcom/google/ads/interactivemedia/v3/internal/zzie;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/google/ads/interactivemedia/v3/internal/zzia;


# instance fields
.field final zza:Ljava/util/concurrent/CountDownLatch;

.field private final zzb:Ljava/util/concurrent/atomic/AtomicReference;

.field private zzc:Landroid/content/Context;

.field private final zzd:Lcom/google/ads/interactivemedia/v3/internal/zznt;

.field private final zze:Ljava/util/concurrent/Executor;

.field private final zzf:Lcom/google/ads/interactivemedia/v3/internal/zzm;

.field private final zzg:Z

.field private final zzh:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/ads/interactivemedia/v3/internal/zzm;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zza:Ljava/util/concurrent/CountDownLatch;

    .line 18
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zzh:Ljava/util/List;

    .line 25
    .line 26
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zzf:Lcom/google/ads/interactivemedia/v3/internal/zzm;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zzc:Landroid/content/Context;

    .line 29
    .line 30
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zze:Ljava/util/concurrent/Executor;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzmj;->zza(Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzmj;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzma;

    .line 36
    .line 37
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzls;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzmh;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzma;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Ljava/lang/Boolean;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    const/4 v2, 0x0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    invoke-virtual {p3}, Lcom/google/ads/interactivemedia/v3/internal/zzm;->zzk()Z

    .line 55
    .line 56
    .line 57
    move-result p3

    .line 58
    if-eqz p3, :cond_0

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    const/4 v1, 0x0

    .line 62
    :goto_0
    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zzg:Z

    .line 63
    .line 64
    invoke-static {p1, p2, v1}, Lcom/google/ads/interactivemedia/v3/internal/zznt;->zza(Landroid/content/Context;Ljava/util/concurrent/Executor;Z)Lcom/google/ads/interactivemedia/v3/internal/zznt;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zznt;

    .line 69
    .line 70
    invoke-interface {p2, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public static bridge synthetic zzb(Lcom/google/ads/interactivemedia/v3/internal/zzie;)Lcom/google/ads/interactivemedia/v3/internal/zznt;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zznt;

    return-object p0
.end method

.method private final zzd()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zzh:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_4

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zzh:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, [Ljava/lang/Object;

    .line 35
    .line 36
    array-length v2, v1

    .line 37
    const/4 v3, 0x0

    .line 38
    const/4 v4, 0x1

    .line 39
    if-ne v2, v4, :cond_2

    .line 40
    .line 41
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/zzia;

    .line 48
    .line 49
    aget-object v1, v1, v3

    .line 50
    .line 51
    check-cast v1, Landroid/view/MotionEvent;

    .line 52
    .line 53
    invoke-interface {v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzia;->zzk(Landroid/view/MotionEvent;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    const/4 v5, 0x3

    .line 58
    if-ne v2, v5, :cond_1

    .line 59
    .line 60
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/zzia;

    .line 67
    .line 68
    aget-object v3, v1, v3

    .line 69
    .line 70
    check-cast v3, Ljava/lang/Integer;

    .line 71
    .line 72
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    aget-object v4, v1, v4

    .line 77
    .line 78
    check-cast v4, Ljava/lang/Integer;

    .line 79
    .line 80
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    const/4 v5, 0x2

    .line 85
    aget-object v1, v1, v5

    .line 86
    .line 87
    check-cast v1, Ljava/lang/Integer;

    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    invoke-interface {v2, v3, v4, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzia;->zzl(III)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_3
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zzh:Ljava/util/List;

    .line 98
    .line 99
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 100
    .line 101
    .line 102
    :cond_4
    :goto_1
    return-void
.end method

.method private final zzi()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zzc:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zzj(Landroid/content/Context;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zzif;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zzf:Lcom/google/ads/interactivemedia/v3/internal/zzm;

    .line 10
    .line 11
    invoke-direct {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzif;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzm;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzih;->zzu(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/zzif;)Lcom/google/ads/interactivemedia/v3/internal/zzih;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    return v0
.end method

.method private static final zzj(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zzf:Lcom/google/ads/interactivemedia/v3/internal/zzm;

    .line 7
    .line 8
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzm;->zzn()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    add-int/lit8 v3, v3, -0x1

    .line 13
    .line 14
    const/4 v4, 0x3

    .line 15
    const/4 v5, 0x2

    .line 16
    if-eq v3, v5, :cond_0

    .line 17
    .line 18
    :goto_0
    const/4 v3, 0x2

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zzc:Landroid/content/Context;

    .line 21
    .line 22
    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zznt;

    .line 23
    .line 24
    new-instance v7, Lcom/google/ads/interactivemedia/v3/internal/zzid;

    .line 25
    .line 26
    invoke-direct {v7, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzid;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzie;)V

    .line 27
    .line 28
    .line 29
    new-instance v8, Lcom/google/ads/interactivemedia/v3/internal/zzpd;

    .line 30
    .line 31
    iget-object v9, p0, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zzc:Landroid/content/Context;

    .line 32
    .line 33
    invoke-static {v3, v6}, Lcom/google/ads/interactivemedia/v3/internal/zzol;->zzb(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/zznt;)I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    sget-object v6, Lcom/google/ads/interactivemedia/v3/internal/zzmj;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzma;

    .line 38
    .line 39
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzls;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzmh;

    .line 40
    .line 41
    .line 42
    move-result-object v10

    .line 43
    invoke-virtual {v10, v6}, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzma;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    check-cast v6, Ljava/lang/Boolean;

    .line 48
    .line 49
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    invoke-direct {v8, v9, v3, v7, v6}, Lcom/google/ads/interactivemedia/v3/internal/zzpd;-><init>(Landroid/content/Context;ILcom/google/ads/interactivemedia/v3/internal/zzom;Z)V

    .line 54
    .line 55
    .line 56
    const/4 v3, 0x1

    .line 57
    invoke-virtual {v8, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzpd;->zzd(I)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-nez v3, :cond_1

    .line 62
    .line 63
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zzf:Lcom/google/ads/interactivemedia/v3/internal/zzm;

    .line 64
    .line 65
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzm;->zzl()Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    const/4 v3, 0x3

    .line 73
    goto :goto_1

    .line 74
    :catchall_0
    move-exception v0

    .line 75
    goto :goto_4

    .line 76
    :catch_0
    move-exception v3

    .line 77
    goto :goto_2

    .line 78
    :goto_1
    add-int/lit8 v3, v3, -0x1

    .line 79
    .line 80
    if-eq v3, v5, :cond_2

    .line 81
    .line 82
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zzi()Z

    .line 83
    .line 84
    .line 85
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zzf:Lcom/google/ads/interactivemedia/v3/internal/zzm;

    .line 86
    .line 87
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzm;->zzn()I

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-ne v3, v4, :cond_4

    .line 92
    .line 93
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zze:Ljava/util/concurrent/Executor;

    .line 94
    .line 95
    new-instance v4, Lcom/google/ads/interactivemedia/v3/internal/zzic;

    .line 96
    .line 97
    invoke-direct {v4, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzic;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzie;)V

    .line 98
    .line 99
    .line 100
    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 101
    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_2
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zzf:Lcom/google/ads/interactivemedia/v3/internal/zzm;

    .line 105
    .line 106
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzm;->zze()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zzc:Landroid/content/Context;

    .line 111
    .line 112
    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zzj(Landroid/content/Context;)Landroid/content/Context;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zze:Ljava/util/concurrent/Executor;

    .line 117
    .line 118
    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zzf:Lcom/google/ads/interactivemedia/v3/internal/zzm;

    .line 119
    .line 120
    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/internal/zzm;->zzj()Z

    .line 121
    .line 122
    .line 123
    move-result v6

    .line 124
    iget-boolean v7, p0, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zzg:Z

    .line 125
    .line 126
    invoke-static {v3, v4, v5, v6, v7}, Lcom/google/ads/interactivemedia/v3/internal/zzhx;->zzb(Ljava/lang/String;Landroid/content/Context;Ljava/util/concurrent/Executor;ZZ)Lcom/google/ads/interactivemedia/v3/internal/zzhx;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    .line 131
    .line 132
    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzhx;->zzr()Z

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    if-nez v3, :cond_4

    .line 140
    .line 141
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zzf:Lcom/google/ads/interactivemedia/v3/internal/zzm;

    .line 142
    .line 143
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzm;->zzl()Z

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    if-eqz v3, :cond_4

    .line 148
    .line 149
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zzi()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    .line 151
    .line 152
    goto :goto_3

    .line 153
    :goto_2
    :try_start_1
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zzf:Lcom/google/ads/interactivemedia/v3/internal/zzm;

    .line 154
    .line 155
    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/zzm;->zzl()Z

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    if-eqz v4, :cond_3

    .line 160
    .line 161
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zzi()Z

    .line 162
    .line 163
    .line 164
    :cond_3
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zznt;

    .line 165
    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 167
    .line 168
    .line 169
    move-result-wide v5

    .line 170
    sub-long/2addr v5, v0

    .line 171
    const/16 v0, 0x7ef

    .line 172
    .line 173
    invoke-virtual {v4, v0, v5, v6, v3}, Lcom/google/ads/interactivemedia/v3/internal/zznt;->zzc(IJLjava/lang/Exception;)Lg4/h;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    .line 175
    .line 176
    :cond_4
    :goto_3
    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zzc:Landroid/content/Context;

    .line 177
    .line 178
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zza:Ljava/util/concurrent/CountDownLatch;

    .line 179
    .line 180
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 181
    .line 182
    .line 183
    return-void

    .line 184
    :goto_4
    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zzc:Landroid/content/Context;

    .line 185
    .line 186
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zza:Ljava/util/concurrent/CountDownLatch;

    .line 187
    .line 188
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 189
    .line 190
    .line 191
    throw v0
.end method

.method public final zza()Lcom/google/ads/interactivemedia/v3/internal/zzia;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzia;

    .line 8
    .line 9
    return-object v0
.end method

.method public final synthetic zzc()V
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zzf:Lcom/google/ads/interactivemedia/v3/internal/zzm;

    .line 6
    .line 7
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzm;->zze()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zzc:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zzj(Landroid/content/Context;)Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zzf:Lcom/google/ads/interactivemedia/v3/internal/zzm;

    .line 18
    .line 19
    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/zzm;->zzj()Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    iget-boolean v5, p0, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zzg:Z

    .line 24
    .line 25
    invoke-static {v2, v3, v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/zzhx;->zza(Ljava/lang/String;Landroid/content/Context;ZZ)Lcom/google/ads/interactivemedia/v3/internal/zzhx;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzhx;->zzo()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catch_0
    move-exception v2

    .line 34
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zznt;

    .line 35
    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 37
    .line 38
    .line 39
    move-result-wide v4

    .line 40
    sub-long/2addr v4, v0

    .line 41
    const/16 v0, 0x7eb

    .line 42
    .line 43
    invoke-virtual {v3, v0, v4, v5, v2}, Lcom/google/ads/interactivemedia/v3/internal/zznt;->zzc(IJLjava/lang/Exception;)Lg4/h;

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final zze(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zzs()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zzd()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzia;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zzj(Landroid/content/Context;)Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/ads/interactivemedia/v3/internal/zzia;->zze(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1

    .line 27
    :cond_0
    const-string p1, ""

    .line 28
    .line 29
    return-object p1
.end method

.method public final zzf(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zzg(Landroid/content/Context;[B)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public final zzg(Landroid/content/Context;[B)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zzs()Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zzd()V

    .line 8
    .line 9
    .line 10
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    .line 11
    .line 12
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    check-cast p2, Lcom/google/ads/interactivemedia/v3/internal/zzia;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zzj(Landroid/content/Context;)Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-interface {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzia;->zzf(Landroid/content/Context;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1

    .line 27
    :cond_0
    const-string p1, ""

    .line 28
    .line 29
    return-object p1
.end method

.method public final zzh(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zzs()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzia;

    .line 14
    .line 15
    invoke-interface {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzia;->zzh(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :cond_0
    const-string p1, ""

    .line 21
    .line 22
    return-object p1
.end method

.method public final zzk(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zzd()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzia;

    .line 19
    .line 20
    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzia;->zzk(Landroid/view/MotionEvent;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zzh:Ljava/util/List;

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    new-array v1, v1, [Ljava/lang/Object;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    aput-object p1, v1, v2

    .line 31
    .line 32
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final zzl(III)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zzd()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzia;

    .line 19
    .line 20
    invoke-interface {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzia;->zzl(III)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zzh:Ljava/util/List;

    .line 25
    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object p3

    .line 38
    const/4 v1, 0x3

    .line 39
    new-array v1, v1, [Ljava/lang/Object;

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    aput-object p1, v1, v2

    .line 43
    .line 44
    const/4 p1, 0x1

    .line 45
    aput-object p2, v1, p1

    .line 46
    .line 47
    const/4 p1, 0x2

    .line 48
    aput-object p3, v1, p1

    .line 49
    .line 50
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final zzn(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzia;

    .line 16
    .line 17
    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzia;->zzn(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final zzq()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zza:Ljava/util/concurrent/CountDownLatch;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v4, v0, v2

    .line 10
    .line 11
    if-nez v4, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzia;

    .line 28
    .line 29
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzia;->zzq()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    return v0

    .line 37
    :cond_0
    const/4 v0, 0x0

    .line 38
    return v0
.end method

.method public final zzs()Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zza:Ljava/util/concurrent/CountDownLatch;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/zzia;

    .line 22
    .line 23
    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzia;->zzs()Z

    .line 24
    .line 25
    .line 26
    move-result v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    :catch_0
    :cond_0
    return v0
.end method
