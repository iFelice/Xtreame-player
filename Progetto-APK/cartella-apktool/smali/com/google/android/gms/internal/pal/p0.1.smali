.class public final Lcom/google/android/gms/internal/pal/p0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/android/gms/internal/pal/o0;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/pal/o0;->a()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static b(Ljava/lang/Object;)Lcom/google/android/gms/internal/pal/o0;
    .locals 0

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/pal/D;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/gms/internal/pal/D;->zzc:Lcom/google/android/gms/internal/pal/o0;

    .line 4
    .line 5
    return-object p0
.end method

.method public static c(Lcom/google/android/gms/internal/pal/o0;Lcom/google/android/gms/internal/pal/w;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/pal/o0;->d(Lcom/google/android/gms/internal/pal/w;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static d(Ljava/lang/Object;Lcom/google/android/gms/internal/pal/u;)Z
    .locals 8

    .line 1
    iget v0, p1, Lcom/google/android/gms/internal/pal/u;->b:I

    .line 2
    .line 3
    ushr-int/lit8 v1, v0, 0x3

    .line 4
    .line 5
    and-int/lit8 v0, v0, 0x7

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    const/4 v4, 0x3

    .line 10
    iget-object v5, p1, Lcom/google/android/gms/internal/pal/u;->a:Lcom/google/android/gms/internal/pal/t;

    .line 11
    .line 12
    if-eqz v0, :cond_7

    .line 13
    .line 14
    if-eq v0, v3, :cond_6

    .line 15
    .line 16
    const/4 v6, 0x2

    .line 17
    if-eq v0, v6, :cond_5

    .line 18
    .line 19
    if-eq v0, v4, :cond_1

    .line 20
    .line 21
    const/4 v6, 0x4

    .line 22
    if-eq v0, v6, :cond_8

    .line 23
    .line 24
    const/4 v2, 0x5

    .line 25
    if-ne v0, v2, :cond_0

    .line 26
    .line 27
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/pal/u;->q(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v5}, Lcom/google/android/gms/internal/pal/t;->b()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p0, Lcom/google/android/gms/internal/pal/o0;

    .line 39
    .line 40
    shl-int/lit8 v0, v1, 0x3

    .line 41
    .line 42
    or-int/2addr v0, v2

    .line 43
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/pal/o0;->c(ILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    const/4 v2, 0x1

    .line 47
    goto :goto_1

    .line 48
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/pal/L;->a()Lcom/google/android/gms/internal/pal/K;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    throw p0

    .line 53
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/pal/o0;->b()Lcom/google/android/gms/internal/pal/o0;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    shl-int/2addr v1, v4

    .line 58
    or-int/lit8 v5, v1, 0x4

    .line 59
    .line 60
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/u;->r()I

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    const v7, 0x7fffffff

    .line 65
    .line 66
    .line 67
    if-eq v6, v7, :cond_3

    .line 68
    .line 69
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/pal/p0;->d(Ljava/lang/Object;Lcom/google/android/gms/internal/pal/u;)Z

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    if-nez v6, :cond_2

    .line 74
    .line 75
    :cond_3
    iget p1, p1, Lcom/google/android/gms/internal/pal/u;->b:I

    .line 76
    .line 77
    if-ne v5, p1, :cond_4

    .line 78
    .line 79
    iput-boolean v2, v0, Lcom/google/android/gms/internal/pal/o0;->e:Z

    .line 80
    .line 81
    check-cast p0, Lcom/google/android/gms/internal/pal/o0;

    .line 82
    .line 83
    or-int/lit8 p1, v1, 0x3

    .line 84
    .line 85
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/pal/o0;->c(ILjava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_4
    new-instance p0, Lcom/google/android/gms/internal/pal/L;

    .line 90
    .line 91
    const-string p1, "Protocol message end-group tag did not match expected tag."

    .line 92
    .line 93
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw p0

    .line 97
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/u;->s()Lcom/google/android/gms/internal/pal/q;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    check-cast p0, Lcom/google/android/gms/internal/pal/o0;

    .line 102
    .line 103
    shl-int/lit8 v0, v1, 0x3

    .line 104
    .line 105
    or-int/2addr v0, v6

    .line 106
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/pal/o0;->c(ILjava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_6
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/pal/u;->q(I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5}, Lcom/google/android/gms/internal/pal/t;->e()J

    .line 114
    .line 115
    .line 116
    move-result-wide v5

    .line 117
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    check-cast p0, Lcom/google/android/gms/internal/pal/o0;

    .line 122
    .line 123
    shl-int/lit8 v0, v1, 0x3

    .line 124
    .line 125
    or-int/2addr v0, v3

    .line 126
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/pal/o0;->c(ILjava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_7
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/pal/u;->q(I)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v5}, Lcom/google/android/gms/internal/pal/t;->f()J

    .line 134
    .line 135
    .line 136
    move-result-wide v5

    .line 137
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    check-cast p0, Lcom/google/android/gms/internal/pal/o0;

    .line 142
    .line 143
    shl-int/lit8 v0, v1, 0x3

    .line 144
    .line 145
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/pal/o0;->c(ILjava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_8
    :goto_1
    return v2
.end method
