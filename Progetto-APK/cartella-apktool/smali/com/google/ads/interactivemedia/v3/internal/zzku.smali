.class public final Lcom/google/ads/interactivemedia/v3/internal/zzku;
.super Lcom/google/ads/interactivemedia/v3/internal/zzkx;
.source "SourceFile"


# instance fields
.field private final zzh:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzjj;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/zzan;IILandroid/view/View;)V
    .locals 7

    .line 1
    const-string v3, "J2273uJe3SOyR84V1pdek1TQgOTMXJxG9MDUVU7F0ew="

    .line 2
    .line 3
    const/16 v6, 0x39

    .line 4
    .line 5
    const-string v2, "eWuCTuBs0C/3RzXp2Vb1vvOoZ3gI6cRGRcjUOPnlCHO99O+zvrqChDuDIos51zgD"

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    move-object v4, p4

    .line 10
    move v5, p5

    .line 11
    invoke-direct/range {v0 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/zzkx;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzjj;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/zzan;II)V

    .line 12
    .line 13
    .line 14
    iput-object p7, p0, Lcom/google/ads/interactivemedia/v3/internal/zzku;->zzh:Landroid/view/View;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzku;->zzh:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzmj;->zzz:Lcom/google/ads/interactivemedia/v3/internal/zzma;

    .line 6
    .line 7
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzls;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzmh;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzma;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Boolean;

    .line 16
    .line 17
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/zzmj;->zzB:Lcom/google/ads/interactivemedia/v3/internal/zzma;

    .line 18
    .line 19
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzls;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzmh;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzma;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/lang/Boolean;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkx;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzjj;

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzjj;->zzb()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkx;->zze:Ljava/lang/reflect/Method;

    .line 44
    .line 45
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzku;->zzh:Landroid/view/View;

    .line 46
    .line 47
    const/4 v5, 0x0

    .line 48
    const/4 v6, 0x4

    .line 49
    new-array v6, v6, [Ljava/lang/Object;

    .line 50
    .line 51
    const/4 v7, 0x0

    .line 52
    aput-object v4, v6, v7

    .line 53
    .line 54
    const/4 v4, 0x1

    .line 55
    aput-object v2, v6, v4

    .line 56
    .line 57
    const/4 v2, 0x2

    .line 58
    aput-object v0, v6, v2

    .line 59
    .line 60
    const/4 v2, 0x3

    .line 61
    aput-object v1, v6, v2

    .line 62
    .line 63
    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    check-cast v2, Ljava/lang/String;

    .line 68
    .line 69
    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/zzjn;

    .line 70
    .line 71
    invoke-direct {v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzjn;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzbo;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzbn;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    iget-object v4, v3, Lcom/google/ads/interactivemedia/v3/internal/zzjn;->zza:Ljava/lang/Long;

    .line 79
    .line 80
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 81
    .line 82
    .line 83
    move-result-wide v4

    .line 84
    invoke-virtual {v2, v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/zzbn;->zzb(J)Lcom/google/ads/interactivemedia/v3/internal/zzbn;

    .line 85
    .line 86
    .line 87
    iget-object v4, v3, Lcom/google/ads/interactivemedia/v3/internal/zzjn;->zzb:Ljava/lang/Long;

    .line 88
    .line 89
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 90
    .line 91
    .line 92
    move-result-wide v4

    .line 93
    invoke-virtual {v2, v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/zzbn;->zzd(J)Lcom/google/ads/interactivemedia/v3/internal/zzbn;

    .line 94
    .line 95
    .line 96
    iget-object v4, v3, Lcom/google/ads/interactivemedia/v3/internal/zzjn;->zzc:Ljava/lang/Long;

    .line 97
    .line 98
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 99
    .line 100
    .line 101
    move-result-wide v4

    .line 102
    invoke-virtual {v2, v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/zzbn;->zze(J)Lcom/google/ads/interactivemedia/v3/internal/zzbn;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-eqz v1, :cond_0

    .line 110
    .line 111
    iget-object v1, v3, Lcom/google/ads/interactivemedia/v3/internal/zzjn;->zze:Ljava/lang/Long;

    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 114
    .line 115
    .line 116
    move-result-wide v4

    .line 117
    invoke-virtual {v2, v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/zzbn;->zzc(J)Lcom/google/ads/interactivemedia/v3/internal/zzbn;

    .line 118
    .line 119
    .line 120
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-eqz v0, :cond_1

    .line 125
    .line 126
    iget-object v0, v3, Lcom/google/ads/interactivemedia/v3/internal/zzjn;->zzd:Ljava/lang/Long;

    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 129
    .line 130
    .line 131
    move-result-wide v0

    .line 132
    invoke-virtual {v2, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzbn;->zza(J)Lcom/google/ads/interactivemedia/v3/internal/zzbn;

    .line 133
    .line 134
    .line 135
    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkx;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzan;

    .line 136
    .line 137
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzadu;->zzal()Lcom/google/ads/interactivemedia/v3/internal/zzady;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/zzbo;

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzan;->zzY(Lcom/google/ads/interactivemedia/v3/internal/zzbo;)Lcom/google/ads/interactivemedia/v3/internal/zzan;

    .line 144
    .line 145
    .line 146
    :cond_2
    return-void
.end method
