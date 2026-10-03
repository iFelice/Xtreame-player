.class public final Lcom/google/android/gms/internal/ads/tB;
.super Lcom/google/android/gms/internal/ads/Nz;
.source "SourceFile"


# instance fields
.field public e:Lcom/google/android/gms/internal/ads/CD;

.field public f:[B

.field public g:I

.field public h:I


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/CD;)J
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Nz;->j(Lcom/google/android/gms/internal/ads/CD;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tB;->e:Lcom/google/android/gms/internal/ads/CD;

    .line 5
    .line 6
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/CD;->a:Landroid/net/Uri;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "data"

    .line 17
    .line 18
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v3, "Unsupported scheme: "

    .line 27
    .line 28
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v2, v1}, Lo3/r;->L(ZLjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    sget v2, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 40
    .line 41
    const-string v2, ","

    .line 42
    .line 43
    const/4 v3, -0x1

    .line 44
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    array-length v2, v1

    .line 49
    const/4 v3, 0x0

    .line 50
    const/4 v4, 0x1

    .line 51
    const/4 v5, 0x2

    .line 52
    const/4 v6, 0x0

    .line 53
    if-ne v2, v5, :cond_4

    .line 54
    .line 55
    aget-object v0, v1, v4

    .line 56
    .line 57
    aget-object v1, v1, v3

    .line 58
    .line 59
    const-string v2, ";base64"

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_0

    .line 66
    .line 67
    :try_start_0
    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/tB;->f:[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :catch_0
    move-exception p1

    .line 75
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    const-string v1, "Error while parsing Base64 encoded string: "

    .line 80
    .line 81
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    new-instance v1, Lcom/google/android/gms/internal/ads/Ka;

    .line 86
    .line 87
    invoke-direct {v1, v0, p1, v4, v3}, Lcom/google/android/gms/internal/ads/Ka;-><init>(Ljava/lang/String;Ljava/lang/RuntimeException;ZI)V

    .line 88
    .line 89
    .line 90
    throw v1

    .line 91
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/uz;->a:Ljava/nio/charset/Charset;

    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/tB;->f:[B

    .line 108
    .line 109
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tB;->f:[B

    .line 110
    .line 111
    array-length v0, v0

    .line 112
    int-to-long v1, v0

    .line 113
    iget-wide v3, p1, Lcom/google/android/gms/internal/ads/CD;->c:J

    .line 114
    .line 115
    cmp-long v5, v3, v1

    .line 116
    .line 117
    if-gtz v5, :cond_3

    .line 118
    .line 119
    long-to-int v1, v3

    .line 120
    iput v1, p0, Lcom/google/android/gms/internal/ads/tB;->g:I

    .line 121
    .line 122
    sub-int/2addr v0, v1

    .line 123
    iput v0, p0, Lcom/google/android/gms/internal/ads/tB;->h:I

    .line 124
    .line 125
    const-wide/16 v1, -0x1

    .line 126
    .line 127
    iget-wide v3, p1, Lcom/google/android/gms/internal/ads/CD;->d:J

    .line 128
    .line 129
    cmp-long v5, v3, v1

    .line 130
    .line 131
    if-eqz v5, :cond_1

    .line 132
    .line 133
    int-to-long v0, v0

    .line 134
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 135
    .line 136
    .line 137
    move-result-wide v0

    .line 138
    long-to-int v1, v0

    .line 139
    iput v1, p0, Lcom/google/android/gms/internal/ads/tB;->h:I

    .line 140
    .line 141
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Nz;->k(Lcom/google/android/gms/internal/ads/CD;)V

    .line 142
    .line 143
    .line 144
    if-eqz v5, :cond_2

    .line 145
    .line 146
    return-wide v3

    .line 147
    :cond_2
    iget p1, p0, Lcom/google/android/gms/internal/ads/tB;->h:I

    .line 148
    .line 149
    int-to-long v0, p1

    .line 150
    return-wide v0

    .line 151
    :cond_3
    iput-object v6, p0, Lcom/google/android/gms/internal/ads/tB;->f:[B

    .line 152
    .line 153
    new-instance p1, Lcom/google/android/gms/internal/ads/xC;

    .line 154
    .line 155
    const/16 v0, 0x7d8

    .line 156
    .line 157
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/xC;-><init>(I)V

    .line 158
    .line 159
    .line 160
    throw p1

    .line 161
    :cond_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    const-string v0, "Unexpected URI format: "

    .line 166
    .line 167
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    new-instance v0, Lcom/google/android/gms/internal/ads/Ka;

    .line 172
    .line 173
    invoke-direct {v0, p1, v6, v4, v3}, Lcom/google/android/gms/internal/ads/Ka;-><init>(Ljava/lang/String;Ljava/lang/RuntimeException;ZI)V

    .line 174
    .line 175
    .line 176
    throw v0
.end method

.method public final e([BII)I
    .locals 2

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/tB;->h:I

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p1, -0x1

    .line 10
    return p1

    .line 11
    :cond_1
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    .line 12
    .line 13
    .line 14
    move-result p3

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tB;->f:[B

    .line 16
    .line 17
    sget v1, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 18
    .line 19
    iget v1, p0, Lcom/google/android/gms/internal/ads/tB;->g:I

    .line 20
    .line 21
    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    .line 23
    .line 24
    iget p1, p0, Lcom/google/android/gms/internal/ads/tB;->g:I

    .line 25
    .line 26
    add-int/2addr p1, p3

    .line 27
    iput p1, p0, Lcom/google/android/gms/internal/ads/tB;->g:I

    .line 28
    .line 29
    iget p1, p0, Lcom/google/android/gms/internal/ads/tB;->h:I

    .line 30
    .line 31
    sub-int/2addr p1, p3

    .line 32
    iput p1, p0, Lcom/google/android/gms/internal/ads/tB;->h:I

    .line 33
    .line 34
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/Nz;->zzg(I)V

    .line 35
    .line 36
    .line 37
    return p3
.end method

.method public final zzc()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tB;->e:Lcom/google/android/gms/internal/ads/CD;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/CD;->a:Landroid/net/Uri;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzd()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tB;->f:[B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/tB;->f:[B

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Nz;->i()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/tB;->e:Lcom/google/android/gms/internal/ads/CD;

    .line 12
    .line 13
    return-void
.end method
