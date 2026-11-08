.class public final Lcom/google/android/gms/internal/ads/n5;
.super Lcom/google/android/gms/internal/ads/t5;
.source "SourceFile"


# instance fields
.field public final h:Lcom/google/android/gms/internal/ads/K4;

.field public final i:J

.field public final j:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/V4;Lcom/google/android/gms/internal/ads/V3;ILcom/google/android/gms/internal/ads/K4;JJ)V
    .locals 7

    .line 1
    const/16 v6, 0xb

    .line 2
    .line 3
    const-string v2, "AFi1XUlQ2wB7zUl3EOk1zuEn8ZOxUh72pRw/0ERKEaN1JtcMwtQuK14gG9CY64a/"

    .line 4
    .line 5
    const-string v3, "Q54q2JslusSv8X8AsH7nKgnoWyF6GsnL4uj/9o5E5cc="

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    move-object v4, p2

    .line 10
    move v5, p3

    .line 11
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/t5;-><init>(Lcom/google/android/gms/internal/ads/V4;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/V3;II)V

    .line 12
    .line 13
    .line 14
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/n5;->h:Lcom/google/android/gms/internal/ads/K4;

    .line 15
    .line 16
    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/n5;->i:J

    .line 17
    .line 18
    iput-wide p7, p0, Lcom/google/android/gms/internal/ads/n5;->j:J

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/n5;->h:Lcom/google/android/gms/internal/ads/K4;

    .line 3
    .line 4
    if-eqz v1, :cond_2

    .line 5
    .line 6
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/t5;->e:Ljava/lang/reflect/Method;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/K4;->H:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Landroid/net/NetworkCapabilities;

    .line 11
    .line 12
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/n5;->i:J

    .line 13
    .line 14
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/n5;->j:J

    .line 19
    .line 20
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    const/4 v5, 0x3

    .line 25
    new-array v5, v5, [Ljava/lang/Object;

    .line 26
    .line 27
    aput-object v1, v5, v0

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    aput-object v3, v5, v1

    .line 31
    .line 32
    const/4 v1, 0x2

    .line 33
    aput-object v4, v5, v1

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-virtual {v2, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Ljava/lang/String;

    .line 41
    .line 42
    new-instance v2, Lcom/google/android/gms/internal/ads/J4;

    .line 43
    .line 44
    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/internal/ads/J4;-><init>(Ljava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t5;->d:Lcom/google/android/gms/internal/ads/V3;

    .line 48
    .line 49
    monitor-enter v0

    .line 50
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/t5;->d:Lcom/google/android/gms/internal/ads/V3;

    .line 51
    .line 52
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/J4;->b:Ljava/lang/Long;

    .line 53
    .line 54
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 55
    .line 56
    .line 57
    move-result-wide v3

    .line 58
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 59
    .line 60
    .line 61
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 62
    .line 63
    check-cast v1, Lcom/google/android/gms/internal/ads/j4;

    .line 64
    .line 65
    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/ads/j4;->E0(Lcom/google/android/gms/internal/ads/j4;J)V

    .line 66
    .line 67
    .line 68
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/J4;->c:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v1, Ljava/lang/Long;

    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 73
    .line 74
    .line 75
    move-result-wide v3

    .line 76
    const-wide/16 v5, 0x0

    .line 77
    .line 78
    cmp-long v1, v3, v5

    .line 79
    .line 80
    if-ltz v1, :cond_0

    .line 81
    .line 82
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/t5;->d:Lcom/google/android/gms/internal/ads/V3;

    .line 83
    .line 84
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/J4;->c:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v3, Ljava/lang/Long;

    .line 87
    .line 88
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 89
    .line 90
    .line 91
    move-result-wide v3

    .line 92
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 93
    .line 94
    .line 95
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 96
    .line 97
    check-cast v1, Lcom/google/android/gms/internal/ads/j4;

    .line 98
    .line 99
    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/ads/j4;->b0(Lcom/google/android/gms/internal/ads/j4;J)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :catchall_0
    move-exception v1

    .line 104
    goto :goto_1

    .line 105
    :cond_0
    :goto_0
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/J4;->d:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v1, Ljava/lang/Long;

    .line 108
    .line 109
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 110
    .line 111
    .line 112
    move-result-wide v3

    .line 113
    cmp-long v1, v3, v5

    .line 114
    .line 115
    if-ltz v1, :cond_1

    .line 116
    .line 117
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/t5;->d:Lcom/google/android/gms/internal/ads/V3;

    .line 118
    .line 119
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/J4;->d:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast v2, Ljava/lang/Long;

    .line 122
    .line 123
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 124
    .line 125
    .line 126
    move-result-wide v2

    .line 127
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 128
    .line 129
    .line 130
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 131
    .line 132
    check-cast v1, Lcom/google/android/gms/internal/ads/j4;

    .line 133
    .line 134
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/j4;->c0(Lcom/google/android/gms/internal/ads/j4;J)V

    .line 135
    .line 136
    .line 137
    :cond_1
    monitor-exit v0

    .line 138
    return-void

    .line 139
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    throw v1

    .line 141
    :cond_2
    return-void
.end method
