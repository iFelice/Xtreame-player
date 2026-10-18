.class public final Lcom/google/android/gms/internal/ads/n1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/l1;


# instance fields
.field public final a:J

.field public final b:I

.field public final c:J

.field public final d:I

.field public final e:J

.field public final f:J

.field public final g:[J


# direct methods
.method public constructor <init>(JIJIJ[J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/n1;->a:J

    iput p3, p0, Lcom/google/android/gms/internal/ads/n1;->b:I

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/n1;->c:J

    iput p6, p0, Lcom/google/android/gms/internal/ads/n1;->d:I

    iput-wide p7, p0, Lcom/google/android/gms/internal/ads/n1;->e:J

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/n1;->g:[J

    const-wide/16 p3, -0x1

    cmp-long p5, p7, p3

    if-nez p5, :cond_0

    goto :goto_0

    :cond_0
    add-long p3, p1, p7

    :goto_0
    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/n1;->f:J

    return-void
.end method

.method public static c(Ln1/h;J)Lcom/google/android/gms/internal/ads/n1;
    .locals 10

    .line 1
    invoke-virtual {p0}, Ln1/h;->a()J

    .line 2
    .line 3
    .line 4
    move-result-wide v4

    .line 5
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    cmp-long v2, v4, v0

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    return-object p0

    .line 16
    :cond_0
    const-wide/16 v0, -0x1

    .line 17
    .line 18
    iget-object v2, p0, Ln1/h;->f:LW0/b;

    .line 19
    .line 20
    iget-wide v7, p0, Ln1/h;->b:J

    .line 21
    .line 22
    cmp-long v3, v7, v0

    .line 23
    .line 24
    if-eqz v3, :cond_2

    .line 25
    .line 26
    iget-object v9, p0, Ln1/h;->e:[J

    .line 27
    .line 28
    if-nez v9, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/ads/n1;

    .line 32
    .line 33
    iget v3, v2, LW0/b;->c:I

    .line 34
    .line 35
    iget v6, v2, LW0/b;->f:I

    .line 36
    .line 37
    move-object v0, p0

    .line 38
    move-wide v1, p1

    .line 39
    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/n1;-><init>(JIJIJ[J)V

    .line 40
    .line 41
    .line 42
    return-object p0

    .line 43
    :cond_2
    :goto_0
    new-instance p0, Lcom/google/android/gms/internal/ads/n1;

    .line 44
    .line 45
    iget v3, v2, LW0/b;->c:I

    .line 46
    .line 47
    iget v6, v2, LW0/b;->f:I

    .line 48
    .line 49
    const-wide/16 v7, -0x1

    .line 50
    .line 51
    const/4 v9, 0x0

    .line 52
    move-object v0, p0

    .line 53
    move-wide v1, p1

    .line 54
    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/n1;-><init>(JIJIJ[J)V

    .line 55
    .line 56
    .line 57
    return-object p0
.end method


# virtual methods
.method public final a(J)J
    .locals 13

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/n1;->zzh()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/n1;->a:J

    .line 8
    .line 9
    sub-long/2addr p1, v0

    .line 10
    iget v0, p0, Lcom/google/android/gms/internal/ads/n1;->b:I

    .line 11
    .line 12
    int-to-long v0, v0

    .line 13
    cmp-long v2, p1, v0

    .line 14
    .line 15
    if-gtz v2, :cond_0

    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/n1;->g:[J

    .line 19
    .line 20
    invoke-static {v0}, Lo3/r;->x(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    long-to-double p1, p1

    .line 24
    const-wide/high16 v1, 0x4070000000000000L    # 256.0

    .line 25
    .line 26
    mul-double p1, p1, v1

    .line 27
    .line 28
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/n1;->e:J

    .line 29
    .line 30
    long-to-double v1, v1

    .line 31
    div-double/2addr p1, v1

    .line 32
    double-to-long v1, p1

    .line 33
    const/4 v3, 0x1

    .line 34
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/Et;->k([JJZ)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    int-to-long v2, v1

    .line 39
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/n1;->c:J

    .line 40
    .line 41
    mul-long v2, v2, v4

    .line 42
    .line 43
    const-wide/16 v6, 0x64

    .line 44
    .line 45
    div-long/2addr v2, v6

    .line 46
    aget-wide v8, v0, v1

    .line 47
    .line 48
    add-int/lit8 v10, v1, 0x1

    .line 49
    .line 50
    int-to-long v11, v10

    .line 51
    mul-long v4, v4, v11

    .line 52
    .line 53
    div-long/2addr v4, v6

    .line 54
    const/16 v6, 0x63

    .line 55
    .line 56
    if-ne v1, v6, :cond_1

    .line 57
    .line 58
    const-wide/16 v0, 0x100

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    aget-wide v6, v0, v10

    .line 62
    .line 63
    move-wide v0, v6

    .line 64
    :goto_0
    cmp-long v6, v8, v0

    .line 65
    .line 66
    if-nez v6, :cond_2

    .line 67
    .line 68
    const-wide/16 p1, 0x0

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    long-to-double v6, v8

    .line 72
    sub-double/2addr p1, v6

    .line 73
    sub-long/2addr v0, v8

    .line 74
    long-to-double v0, v0

    .line 75
    div-double/2addr p1, v0

    .line 76
    :goto_1
    sub-long/2addr v4, v2

    .line 77
    long-to-double v0, v4

    .line 78
    mul-double p1, p1, v0

    .line 79
    .line 80
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    .line 81
    .line 82
    .line 83
    move-result-wide p1

    .line 84
    add-long/2addr p1, v2

    .line 85
    return-wide p1

    .line 86
    :cond_3
    :goto_2
    const-wide/16 p1, 0x0

    .line 87
    .line 88
    return-wide p1
.end method

.method public final b(J)Lcom/google/android/gms/internal/ads/X;
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/n1;->zzh()Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    iget v4, v0, Lcom/google/android/gms/internal/ads/n1;->b:I

    .line 9
    .line 10
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/n1;->a:J

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Lcom/google/android/gms/internal/ads/X;

    .line 15
    .line 16
    new-instance v7, Lcom/google/android/gms/internal/ads/Z;

    .line 17
    .line 18
    int-to-long v8, v4

    .line 19
    add-long/2addr v5, v8

    .line 20
    invoke-direct {v7, v2, v3, v5, v6}, Lcom/google/android/gms/internal/ads/Z;-><init>(JJ)V

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, v7, v7}, Lcom/google/android/gms/internal/ads/X;-><init>(Lcom/google/android/gms/internal/ads/Z;Lcom/google/android/gms/internal/ads/Z;)V

    .line 24
    .line 25
    .line 26
    return-object v1

    .line 27
    :cond_0
    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/n1;->c:J

    .line 28
    .line 29
    move-wide/from16 v9, p1

    .line 30
    .line 31
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->min(JJ)J

    .line 32
    .line 33
    .line 34
    move-result-wide v9

    .line 35
    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->max(JJ)J

    .line 36
    .line 37
    .line 38
    move-result-wide v1

    .line 39
    long-to-double v9, v1

    .line 40
    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    .line 41
    .line 42
    mul-double v9, v9, v11

    .line 43
    .line 44
    long-to-double v7, v7

    .line 45
    div-double/2addr v9, v7

    .line 46
    const-wide/16 v7, 0x0

    .line 47
    .line 48
    cmpg-double v3, v9, v7

    .line 49
    .line 50
    if-gtz v3, :cond_1

    .line 51
    .line 52
    :goto_0
    const-wide/high16 v9, 0x4070000000000000L    # 256.0

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_1
    cmpl-double v3, v9, v11

    .line 56
    .line 57
    if-ltz v3, :cond_2

    .line 58
    .line 59
    const-wide/high16 v7, 0x4070000000000000L    # 256.0

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    double-to-int v3, v9

    .line 63
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/n1;->g:[J

    .line 64
    .line 65
    invoke-static {v7}, Lo3/r;->x(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    aget-wide v11, v7, v3

    .line 69
    .line 70
    long-to-double v11, v11

    .line 71
    const/16 v8, 0x63

    .line 72
    .line 73
    if-ne v3, v8, :cond_3

    .line 74
    .line 75
    const-wide/high16 v7, 0x4070000000000000L    # 256.0

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    add-int/lit8 v8, v3, 0x1

    .line 79
    .line 80
    aget-wide v13, v7, v8

    .line 81
    .line 82
    long-to-double v7, v13

    .line 83
    :goto_1
    int-to-double v13, v3

    .line 84
    sub-double/2addr v9, v13

    .line 85
    sub-double/2addr v7, v11

    .line 86
    mul-double v7, v7, v9

    .line 87
    .line 88
    add-double/2addr v7, v11

    .line 89
    goto :goto_0

    .line 90
    :goto_2
    div-double/2addr v7, v9

    .line 91
    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/n1;->e:J

    .line 92
    .line 93
    long-to-double v11, v9

    .line 94
    mul-double v7, v7, v11

    .line 95
    .line 96
    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    .line 97
    .line 98
    .line 99
    move-result-wide v7

    .line 100
    const-wide/16 v11, -0x1

    .line 101
    .line 102
    add-long/2addr v9, v11

    .line 103
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    .line 104
    .line 105
    .line 106
    move-result-wide v7

    .line 107
    int-to-long v3, v4

    .line 108
    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 109
    .line 110
    .line 111
    move-result-wide v3

    .line 112
    add-long/2addr v3, v5

    .line 113
    new-instance v5, Lcom/google/android/gms/internal/ads/X;

    .line 114
    .line 115
    new-instance v6, Lcom/google/android/gms/internal/ads/Z;

    .line 116
    .line 117
    invoke-direct {v6, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/Z;-><init>(JJ)V

    .line 118
    .line 119
    .line 120
    invoke-direct {v5, v6, v6}, Lcom/google/android/gms/internal/ads/X;-><init>(Lcom/google/android/gms/internal/ads/Z;Lcom/google/android/gms/internal/ads/Z;)V

    .line 121
    .line 122
    .line 123
    return-object v5
.end method

.method public final zza()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/n1;->c:J

    return-wide v0
.end method

.method public final zzc()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/n1;->d:I

    return v0
.end method

.method public final zzd()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/n1;->f:J

    return-wide v0
.end method

.method public final zzh()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/n1;->g:[J

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
