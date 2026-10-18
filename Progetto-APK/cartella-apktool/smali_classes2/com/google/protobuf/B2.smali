.class public final Lcom/google/protobuf/B2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Object;)Lcom/google/protobuf/A2;
    .locals 2

    .line 1
    check-cast p0, Lcom/google/protobuf/i1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/protobuf/i1;->unknownFields:Lcom/google/protobuf/A2;

    .line 4
    .line 5
    sget-object v1, Lcom/google/protobuf/A2;->f:Lcom/google/protobuf/A2;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/google/protobuf/A2;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/google/protobuf/A2;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/google/protobuf/i1;->unknownFields:Lcom/google/protobuf/A2;

    .line 15
    .line 16
    :cond_0
    return-object v0
.end method

.method public static b(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p0, Lcom/google/protobuf/i1;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/protobuf/i1;->unknownFields:Lcom/google/protobuf/A2;

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/google/protobuf/A2;->e:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/google/protobuf/A2;->e:Z

    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public static c(ILcom/google/android/gms/internal/ads/CO;Ljava/lang/Object;)Z
    .locals 8

    .line 1
    iget v0, p1, Lcom/google/android/gms/internal/ads/CO;->a:I

    .line 2
    .line 3
    ushr-int/lit8 v1, v0, 0x3

    .line 4
    .line 5
    and-int/lit8 v0, v0, 0x7

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v0, :cond_a

    .line 10
    .line 11
    if-eq v0, v3, :cond_9

    .line 12
    .line 13
    const/4 v4, 0x2

    .line 14
    if-eq v0, v4, :cond_8

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    if-eq v0, v2, :cond_2

    .line 18
    .line 19
    const/4 p0, 0x4

    .line 20
    if-eq v0, p0, :cond_1

    .line 21
    .line 22
    const/4 p0, 0x5

    .line 23
    if-ne v0, p0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/CO;->l()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    check-cast p2, Lcom/google/protobuf/A2;

    .line 30
    .line 31
    shl-int/lit8 v0, v1, 0x3

    .line 32
    .line 33
    or-int/2addr p0, v0

    .line 34
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p2, p0, p1}, Lcom/google/protobuf/A2;->f(ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto/16 :goto_0

    .line 42
    .line 43
    :cond_0
    invoke-static {}, Lcom/google/protobuf/x1;->c()Lcom/google/protobuf/w1;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    throw p0

    .line 48
    :cond_1
    const/4 v3, 0x0

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    new-instance v0, Lcom/google/protobuf/A2;

    .line 51
    .line 52
    invoke-direct {v0}, Lcom/google/protobuf/A2;-><init>()V

    .line 53
    .line 54
    .line 55
    shl-int/2addr v1, v2

    .line 56
    or-int/lit8 v5, v1, 0x4

    .line 57
    .line 58
    add-int/2addr p0, v3

    .line 59
    const/16 v6, 0x64

    .line 60
    .line 61
    if-ge p0, v6, :cond_7

    .line 62
    .line 63
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/CO;->b()I

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    const v7, 0x7fffffff

    .line 68
    .line 69
    .line 70
    if-eq v6, v7, :cond_4

    .line 71
    .line 72
    invoke-static {p0, p1, v0}, Lcom/google/protobuf/B2;->c(ILcom/google/android/gms/internal/ads/CO;Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    if-nez v6, :cond_3

    .line 77
    .line 78
    :cond_4
    iget p0, p1, Lcom/google/android/gms/internal/ads/CO;->a:I

    .line 79
    .line 80
    if-ne v5, p0, :cond_6

    .line 81
    .line 82
    iget-boolean p0, v0, Lcom/google/protobuf/A2;->e:Z

    .line 83
    .line 84
    if-eqz p0, :cond_5

    .line 85
    .line 86
    iput-boolean v4, v0, Lcom/google/protobuf/A2;->e:Z

    .line 87
    .line 88
    :cond_5
    check-cast p2, Lcom/google/protobuf/A2;

    .line 89
    .line 90
    or-int/lit8 p0, v1, 0x3

    .line 91
    .line 92
    invoke-virtual {p2, p0, v0}, Lcom/google/protobuf/A2;->f(ILjava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_6
    new-instance p0, Lcom/google/protobuf/x1;

    .line 97
    .line 98
    const-string p1, "Protocol message end-group tag did not match expected tag."

    .line 99
    .line 100
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw p0

    .line 104
    :cond_7
    new-instance p0, Lcom/google/protobuf/x1;

    .line 105
    .line 106
    const-string p1, "Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit."

    .line 107
    .line 108
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw p0

    .line 112
    :cond_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/CO;->g()Lcom/google/protobuf/r;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    check-cast p2, Lcom/google/protobuf/A2;

    .line 117
    .line 118
    shl-int/lit8 p1, v1, 0x3

    .line 119
    .line 120
    or-int/2addr p1, v4

    .line 121
    invoke-virtual {p2, p1, p0}, Lcom/google/protobuf/A2;->f(ILjava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/CO;->n()J

    .line 126
    .line 127
    .line 128
    move-result-wide p0

    .line 129
    check-cast p2, Lcom/google/protobuf/A2;

    .line 130
    .line 131
    shl-int/lit8 v0, v1, 0x3

    .line 132
    .line 133
    or-int/2addr v0, v3

    .line 134
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    invoke-virtual {p2, v0, p0}, Lcom/google/protobuf/A2;->f(ILjava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/CO;->s()J

    .line 143
    .line 144
    .line 145
    move-result-wide p0

    .line 146
    check-cast p2, Lcom/google/protobuf/A2;

    .line 147
    .line 148
    shl-int/lit8 v0, v1, 0x3

    .line 149
    .line 150
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    invoke-virtual {p2, v0, p0}, Lcom/google/protobuf/A2;->f(ILjava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    :goto_0
    return v3
.end method

.method public static d(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/protobuf/A2;

    .line 2
    .line 3
    check-cast p0, Lcom/google/protobuf/i1;

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/protobuf/i1;->unknownFields:Lcom/google/protobuf/A2;

    .line 6
    .line 7
    return-void
.end method
