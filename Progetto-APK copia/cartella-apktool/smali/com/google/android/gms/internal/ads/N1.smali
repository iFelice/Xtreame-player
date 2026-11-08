.class public final Lcom/google/android/gms/internal/ads/N1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:J

.field public c:I

.field public d:I

.field public e:I

.field public final f:[I

.field public final g:Lcom/google/android/gms/internal/ads/jr;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xff

    .line 5
    .line 6
    new-array v1, v0, [I

    .line 7
    .line 8
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/N1;->f:[I

    .line 9
    .line 10
    new-instance v1, Lcom/google/android/gms/internal/ads/jr;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/jr;-><init>(I)V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/N1;->g:Lcom/google/android/gms/internal/ads/jr;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/M;Z)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/N1;->a:I

    .line 3
    .line 4
    const-wide/16 v1, 0x0

    .line 5
    .line 6
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/N1;->b:J

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/gms/internal/ads/N1;->c:I

    .line 9
    .line 10
    iput v0, p0, Lcom/google/android/gms/internal/ads/N1;->d:I

    .line 11
    .line 12
    iput v0, p0, Lcom/google/android/gms/internal/ads/N1;->e:I

    .line 13
    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/N1;->g:Lcom/google/android/gms/internal/ads/jr;

    .line 15
    .line 16
    const/16 v2, 0x1b

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/jr;->g(I)V

    .line 19
    .line 20
    .line 21
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 22
    .line 23
    :try_start_0
    invoke-interface {p1, v3, v0, v2, p2}, Lcom/google/android/gms/internal/ads/M;->d([BIIZ)Z

    .line 24
    .line 25
    .line 26
    move-result v2
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1

    .line 27
    if-eqz v2, :cond_6

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/jr;->E()J

    .line 30
    .line 31
    .line 32
    move-result-wide v2

    .line 33
    const-wide/32 v4, 0x4f676753

    .line 34
    .line 35
    .line 36
    cmp-long v6, v2, v4

    .line 37
    .line 38
    if-eqz v6, :cond_0

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/jr;->w()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    if-eqz p2, :cond_1

    .line 48
    .line 49
    return v0

    .line 50
    :cond_1
    const-string p1, "unsupported bit stream revision"

    .line 51
    .line 52
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Ka;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/Ka;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    throw p1

    .line 57
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/jr;->w()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    iput v2, p0, Lcom/google/android/gms/internal/ads/N1;->a:I

    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/jr;->B()J

    .line 64
    .line 65
    .line 66
    move-result-wide v2

    .line 67
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/N1;->b:J

    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/jr;->C()J

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/jr;->C()J

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/jr;->C()J

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/jr;->w()I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    iput v2, p0, Lcom/google/android/gms/internal/ads/N1;->c:I

    .line 83
    .line 84
    add-int/lit8 v3, v2, 0x1b

    .line 85
    .line 86
    iput v3, p0, Lcom/google/android/gms/internal/ads/N1;->d:I

    .line 87
    .line 88
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/jr;->g(I)V

    .line 89
    .line 90
    .line 91
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 92
    .line 93
    iget v3, p0, Lcom/google/android/gms/internal/ads/N1;->c:I

    .line 94
    .line 95
    :try_start_1
    invoke-interface {p1, v2, v0, v3, p2}, Lcom/google/android/gms/internal/ads/M;->d([BIIZ)Z

    .line 96
    .line 97
    .line 98
    move-result p1
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    .line 99
    if-eqz p1, :cond_4

    .line 100
    .line 101
    :goto_0
    iget p1, p0, Lcom/google/android/gms/internal/ads/N1;->c:I

    .line 102
    .line 103
    if-ge v0, p1, :cond_3

    .line 104
    .line 105
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/jr;->w()I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/N1;->f:[I

    .line 110
    .line 111
    aput p1, p2, v0

    .line 112
    .line 113
    iget p2, p0, Lcom/google/android/gms/internal/ads/N1;->e:I

    .line 114
    .line 115
    add-int/2addr p2, p1

    .line 116
    iput p2, p0, Lcom/google/android/gms/internal/ads/N1;->e:I

    .line 117
    .line 118
    add-int/lit8 v0, v0, 0x1

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_3
    const/4 p1, 0x1

    .line 122
    return p1

    .line 123
    :catch_0
    move-exception p1

    .line 124
    if-eqz p2, :cond_5

    .line 125
    .line 126
    :cond_4
    return v0

    .line 127
    :cond_5
    throw p1

    .line 128
    :catch_1
    move-exception p1

    .line 129
    if-eqz p2, :cond_7

    .line 130
    .line 131
    :cond_6
    :goto_1
    return v0

    .line 132
    :cond_7
    throw p1
.end method

.method public final b(Lcom/google/android/gms/internal/ads/M;J)Z
    .locals 9

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/M;->zzf()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/M;->zze()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x1

    .line 11
    cmp-long v6, v0, v2

    .line 12
    .line 13
    if-nez v6, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    invoke-static {v0}, Lo3/r;->J(Z)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/N1;->g:Lcom/google/android/gms/internal/ads/jr;

    .line 22
    .line 23
    const/4 v1, 0x4

    .line 24
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/jr;->g(I)V

    .line 25
    .line 26
    .line 27
    :goto_1
    const-wide/16 v2, -0x1

    .line 28
    .line 29
    cmp-long v6, p2, v2

    .line 30
    .line 31
    if-eqz v6, :cond_1

    .line 32
    .line 33
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/M;->zzf()J

    .line 34
    .line 35
    .line 36
    move-result-wide v2

    .line 37
    const-wide/16 v7, 0x4

    .line 38
    .line 39
    add-long/2addr v2, v7

    .line 40
    cmp-long v7, v2, p2

    .line 41
    .line 42
    if-ltz v7, :cond_1

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_1
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 46
    .line 47
    :try_start_0
    invoke-interface {p1, v2, v4, v1, v5}, Lcom/google/android/gms/internal/ads/M;->d([BIIZ)Z

    .line 48
    .line 49
    .line 50
    move-result v2
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    if-eqz v2, :cond_3

    .line 52
    .line 53
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jr;->E()J

    .line 57
    .line 58
    .line 59
    move-result-wide v2

    .line 60
    const-wide/32 v6, 0x4f676753

    .line 61
    .line 62
    .line 63
    cmp-long v8, v2, v6

    .line 64
    .line 65
    if-nez v8, :cond_2

    .line 66
    .line 67
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/M;->zzj()V

    .line 68
    .line 69
    .line 70
    return v5

    .line 71
    :cond_2
    invoke-interface {p1, v5}, Lcom/google/android/gms/internal/ads/M;->q(I)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :catch_0
    nop

    .line 76
    :cond_3
    :goto_2
    if-eqz v6, :cond_4

    .line 77
    .line 78
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/M;->zzf()J

    .line 79
    .line 80
    .line 81
    move-result-wide v0

    .line 82
    cmp-long v2, v0, p2

    .line 83
    .line 84
    if-gez v2, :cond_5

    .line 85
    .line 86
    :cond_4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/M;->zzc()I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    const/4 v1, -0x1

    .line 91
    if-ne v0, v1, :cond_3

    .line 92
    .line 93
    :cond_5
    return v4
.end method
