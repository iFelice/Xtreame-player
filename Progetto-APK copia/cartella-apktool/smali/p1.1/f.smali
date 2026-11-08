.class public final Lp1/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, -0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    const v3, 0xfe01

    .line 5
    .line 6
    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance p1, Lp1/g;

    .line 13
    .line 14
    invoke-direct {p1}, Lp1/g;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lp1/f;->d:Ljava/lang/Object;

    .line 18
    .line 19
    new-instance p1, Lp0/E;

    .line 20
    .line 21
    new-array v0, v3, [B

    .line 22
    .line 23
    invoke-direct {p1, v0, v2}, Lp0/E;-><init>([BI)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lp1/f;->e:Ljava/lang/Object;

    .line 27
    .line 28
    iput v1, p0, Lp1/f;->a:I

    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    new-instance p1, Lcom/google/android/gms/internal/ads/N1;

    .line 35
    .line 36
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/N1;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lp1/f;->d:Ljava/lang/Object;

    .line 40
    .line 41
    new-instance p1, Lcom/google/android/gms/internal/ads/jr;

    .line 42
    .line 43
    new-array v0, v3, [B

    .line 44
    .line 45
    invoke-direct {p1, v0, v2}, Lcom/google/android/gms/internal/ads/jr;-><init>([BI)V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lp1/f;->e:Ljava/lang/Object;

    .line 49
    .line 50
    iput v1, p0, Lp1/f;->a:I

    .line 51
    .line 52
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lp1/f;->b:I

    .line 3
    .line 4
    :cond_0
    iget v1, p0, Lp1/f;->b:I

    .line 5
    .line 6
    add-int v2, p1, v1

    .line 7
    .line 8
    iget-object v3, p0, Lp1/f;->d:Ljava/lang/Object;

    .line 9
    .line 10
    move-object v4, v3

    .line 11
    check-cast v4, Lp1/g;

    .line 12
    .line 13
    iget v4, v4, Lp1/g;->c:I

    .line 14
    .line 15
    if-ge v2, v4, :cond_1

    .line 16
    .line 17
    check-cast v3, Lp1/g;

    .line 18
    .line 19
    iget-object v2, v3, Lp1/g;->f:[I

    .line 20
    .line 21
    add-int/lit8 v3, v1, 0x1

    .line 22
    .line 23
    iput v3, p0, Lp1/f;->b:I

    .line 24
    .line 25
    add-int/2addr v1, p1

    .line 26
    aget v1, v2, v1

    .line 27
    .line 28
    add-int/2addr v0, v1

    .line 29
    const/16 v2, 0xff

    .line 30
    .line 31
    if-eq v1, v2, :cond_0

    .line 32
    .line 33
    :cond_1
    return v0
.end method

.method public final b(LW0/t;)Z
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v2, 0x0

    .line 8
    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 9
    .line 10
    .line 11
    iget-boolean v2, p0, Lp1/f;->c:Z

    .line 12
    .line 13
    iget-object v3, p0, Lp1/f;->e:Ljava/lang/Object;

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    iput-boolean v1, p0, Lp1/f;->c:Z

    .line 18
    .line 19
    move-object v2, v3

    .line 20
    check-cast v2, Lp0/E;

    .line 21
    .line 22
    invoke-virtual {v2, v1}, Lp0/E;->I(I)V

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_1
    iget-boolean v2, p0, Lp1/f;->c:Z

    .line 26
    .line 27
    if-nez v2, :cond_9

    .line 28
    .line 29
    iget v2, p0, Lp1/f;->a:I

    .line 30
    .line 31
    iget-object v4, p0, Lp1/f;->d:Ljava/lang/Object;

    .line 32
    .line 33
    if-gez v2, :cond_5

    .line 34
    .line 35
    move-object v2, v4

    .line 36
    check-cast v2, Lp1/g;

    .line 37
    .line 38
    const-wide/16 v5, -0x1

    .line 39
    .line 40
    invoke-virtual {v2, p1, v5, v6}, Lp1/g;->b(LW0/t;J)Z

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-eqz v5, :cond_4

    .line 45
    .line 46
    invoke-virtual {v2, p1, v0}, Lp1/g;->a(LW0/t;Z)Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-nez v5, :cond_2

    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_2
    iget v5, v2, Lp1/g;->d:I

    .line 54
    .line 55
    iget v2, v2, Lp1/g;->a:I

    .line 56
    .line 57
    and-int/2addr v2, v0

    .line 58
    if-ne v2, v0, :cond_3

    .line 59
    .line 60
    move-object v2, v3

    .line 61
    check-cast v2, Lp0/E;

    .line 62
    .line 63
    iget v2, v2, Lp0/E;->c:I

    .line 64
    .line 65
    if-nez v2, :cond_3

    .line 66
    .line 67
    invoke-virtual {p0, v1}, Lp1/f;->a(I)I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    add-int/2addr v5, v2

    .line 72
    iget v2, p0, Lp1/f;->b:I

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_3
    const/4 v2, 0x0

    .line 76
    :goto_2
    :try_start_0
    invoke-interface {p1, v5}, LW0/t;->n(I)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    .line 79
    iput v2, p0, Lp1/f;->a:I

    .line 80
    .line 81
    goto :goto_4

    .line 82
    :catch_0
    :cond_4
    :goto_3
    return v1

    .line 83
    :cond_5
    :goto_4
    iget v2, p0, Lp1/f;->a:I

    .line 84
    .line 85
    invoke-virtual {p0, v2}, Lp1/f;->a(I)I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    iget v5, p0, Lp1/f;->a:I

    .line 90
    .line 91
    iget v6, p0, Lp1/f;->b:I

    .line 92
    .line 93
    add-int/2addr v5, v6

    .line 94
    if-lez v2, :cond_7

    .line 95
    .line 96
    move-object v6, v3

    .line 97
    check-cast v6, Lp0/E;

    .line 98
    .line 99
    iget v7, v6, Lp0/E;->c:I

    .line 100
    .line 101
    add-int/2addr v7, v2

    .line 102
    invoke-virtual {v6, v7}, Lp0/E;->c(I)V

    .line 103
    .line 104
    .line 105
    iget-object v7, v6, Lp0/E;->a:[B

    .line 106
    .line 107
    iget v8, v6, Lp0/E;->c:I

    .line 108
    .line 109
    :try_start_1
    invoke-interface {p1, v7, v8, v2}, LW0/t;->readFully([BII)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_1

    .line 110
    .line 111
    .line 112
    iget v7, v6, Lp0/E;->c:I

    .line 113
    .line 114
    add-int/2addr v7, v2

    .line 115
    invoke-virtual {v6, v7}, Lp0/E;->K(I)V

    .line 116
    .line 117
    .line 118
    move-object v2, v4

    .line 119
    check-cast v2, Lp1/g;

    .line 120
    .line 121
    iget-object v2, v2, Lp1/g;->f:[I

    .line 122
    .line 123
    add-int/lit8 v6, v5, -0x1

    .line 124
    .line 125
    aget v2, v2, v6

    .line 126
    .line 127
    const/16 v6, 0xff

    .line 128
    .line 129
    if-eq v2, v6, :cond_6

    .line 130
    .line 131
    const/4 v2, 0x1

    .line 132
    goto :goto_5

    .line 133
    :cond_6
    const/4 v2, 0x0

    .line 134
    :goto_5
    iput-boolean v2, p0, Lp1/f;->c:Z

    .line 135
    .line 136
    goto :goto_6

    .line 137
    :catch_1
    return v1

    .line 138
    :cond_7
    :goto_6
    check-cast v4, Lp1/g;

    .line 139
    .line 140
    iget v2, v4, Lp1/g;->c:I

    .line 141
    .line 142
    if-ne v5, v2, :cond_8

    .line 143
    .line 144
    const/4 v5, -0x1

    .line 145
    :cond_8
    iput v5, p0, Lp1/f;->a:I

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_9
    return v0
.end method

.method public final c(Lcom/google/android/gms/internal/ads/M;)Z
    .locals 9

    .line 1
    iget-boolean v0, p0, Lp1/f;->c:Z

    .line 2
    .line 3
    iget-object v1, p0, Lp1/f;->e:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iput-boolean v2, p0, Lp1/f;->c:Z

    .line 10
    .line 11
    move-object v0, v1

    .line 12
    check-cast v0, Lcom/google/android/gms/internal/ads/jr;

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/jr;->g(I)V

    .line 15
    .line 16
    .line 17
    :goto_0
    iget-boolean v0, p0, Lp1/f;->c:Z

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    if-nez v0, :cond_8

    .line 21
    .line 22
    iget v0, p0, Lp1/f;->a:I

    .line 23
    .line 24
    iget-object v4, p0, Lp1/f;->d:Ljava/lang/Object;

    .line 25
    .line 26
    if-gez v0, :cond_4

    .line 27
    .line 28
    move-object v0, v4

    .line 29
    check-cast v0, Lcom/google/android/gms/internal/ads/N1;

    .line 30
    .line 31
    const-wide/16 v5, -0x1

    .line 32
    .line 33
    invoke-virtual {v0, p1, v5, v6}, Lcom/google/android/gms/internal/ads/N1;->b(Lcom/google/android/gms/internal/ads/M;J)Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-eqz v5, :cond_3

    .line 38
    .line 39
    invoke-virtual {v0, p1, v3}, Lcom/google/android/gms/internal/ads/N1;->a(Lcom/google/android/gms/internal/ads/M;Z)Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-nez v5, :cond_1

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_1
    iget v5, v0, Lcom/google/android/gms/internal/ads/N1;->d:I

    .line 47
    .line 48
    iget v0, v0, Lcom/google/android/gms/internal/ads/N1;->a:I

    .line 49
    .line 50
    and-int/2addr v0, v3

    .line 51
    if-ne v0, v3, :cond_2

    .line 52
    .line 53
    move-object v0, v1

    .line 54
    check-cast v0, Lcom/google/android/gms/internal/ads/jr;

    .line 55
    .line 56
    iget v0, v0, Lcom/google/android/gms/internal/ads/jr;->c:I

    .line 57
    .line 58
    if-nez v0, :cond_2

    .line 59
    .line 60
    invoke-virtual {p0, v2}, Lp1/f;->d(I)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    add-int/2addr v5, v0

    .line 65
    iget v0, p0, Lp1/f;->b:I

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    const/4 v0, 0x0

    .line 69
    :goto_1
    :try_start_0
    invoke-interface {p1, v5}, Lcom/google/android/gms/internal/ads/M;->q(I)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    .line 72
    iput v0, p0, Lp1/f;->a:I

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :catch_0
    :cond_3
    :goto_2
    return v2

    .line 76
    :cond_4
    :goto_3
    invoke-virtual {p0, v0}, Lp1/f;->d(I)I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    iget v5, p0, Lp1/f;->a:I

    .line 81
    .line 82
    iget v6, p0, Lp1/f;->b:I

    .line 83
    .line 84
    add-int/2addr v5, v6

    .line 85
    if-lez v0, :cond_6

    .line 86
    .line 87
    move-object v6, v1

    .line 88
    check-cast v6, Lcom/google/android/gms/internal/ads/jr;

    .line 89
    .line 90
    iget v7, v6, Lcom/google/android/gms/internal/ads/jr;->c:I

    .line 91
    .line 92
    add-int/2addr v7, v0

    .line 93
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/jr;->e(I)V

    .line 94
    .line 95
    .line 96
    iget-object v7, v6, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 97
    .line 98
    iget v8, v6, Lcom/google/android/gms/internal/ads/jr;->c:I

    .line 99
    .line 100
    :try_start_1
    invoke-interface {p1, v8, v7, v0}, Lcom/google/android/gms/internal/ads/M;->h(I[BI)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_1

    .line 101
    .line 102
    .line 103
    iget v7, v6, Lcom/google/android/gms/internal/ads/jr;->c:I

    .line 104
    .line 105
    add-int/2addr v7, v0

    .line 106
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/jr;->i(I)V

    .line 107
    .line 108
    .line 109
    move-object v0, v4

    .line 110
    check-cast v0, Lcom/google/android/gms/internal/ads/N1;

    .line 111
    .line 112
    add-int/lit8 v6, v5, -0x1

    .line 113
    .line 114
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/N1;->f:[I

    .line 115
    .line 116
    aget v0, v0, v6

    .line 117
    .line 118
    const/16 v6, 0xff

    .line 119
    .line 120
    if-eq v0, v6, :cond_5

    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_5
    const/4 v3, 0x0

    .line 124
    :goto_4
    iput-boolean v3, p0, Lp1/f;->c:Z

    .line 125
    .line 126
    goto :goto_5

    .line 127
    :catch_1
    return v2

    .line 128
    :cond_6
    :goto_5
    check-cast v4, Lcom/google/android/gms/internal/ads/N1;

    .line 129
    .line 130
    iget v0, v4, Lcom/google/android/gms/internal/ads/N1;->c:I

    .line 131
    .line 132
    if-ne v5, v0, :cond_7

    .line 133
    .line 134
    const/4 v5, -0x1

    .line 135
    :cond_7
    iput v5, p0, Lp1/f;->a:I

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_8
    return v3
.end method

.method public final d(I)I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lp1/f;->b:I

    .line 3
    .line 4
    :cond_0
    iget v1, p0, Lp1/f;->b:I

    .line 5
    .line 6
    add-int v2, p1, v1

    .line 7
    .line 8
    iget-object v3, p0, Lp1/f;->d:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v3, Lcom/google/android/gms/internal/ads/N1;

    .line 11
    .line 12
    iget v4, v3, Lcom/google/android/gms/internal/ads/N1;->c:I

    .line 13
    .line 14
    if-ge v2, v4, :cond_1

    .line 15
    .line 16
    add-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    iput v1, p0, Lp1/f;->b:I

    .line 19
    .line 20
    iget-object v1, v3, Lcom/google/android/gms/internal/ads/N1;->f:[I

    .line 21
    .line 22
    aget v1, v1, v2

    .line 23
    .line 24
    add-int/2addr v0, v1

    .line 25
    const/16 v2, 0xff

    .line 26
    .line 27
    if-eq v1, v2, :cond_0

    .line 28
    .line 29
    :cond_1
    return v0
.end method
