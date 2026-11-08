.class public final Lr5/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq5/k;


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final b(Lm2/l;)Lq5/m;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lr5/b;->c(Lm2/l;Ljava/util/Map;)Lq5/m;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public final c(Lm2/l;Ljava/util/Map;)Lq5/m;
    .locals 8

    .line 1
    new-instance v0, Lt5/a;

    .line 2
    .line 3
    invoke-virtual {p1}, Lm2/l;->i()Lw5/b;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Lt5/a;-><init>(Lw5/b;)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    const/4 v1, 0x0

    .line 12
    :try_start_0
    invoke-virtual {v0, p1}, Lt5/a;->a(Z)Lr5/a;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iget-object v3, v2, Lcom/google/android/gms/internal/atv_ads_framework/x0;->I:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v3, [Lq5/o;
    :try_end_0
    .catch Lq5/i; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lq5/e; {:try_start_0 .. :try_end_0} :catch_2

    .line 19
    .line 20
    :try_start_1
    new-instance v4, Ls5/a;

    .line 21
    .line 22
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v4, v2}, Ls5/a;->a(Lr5/a;)Lw5/d;

    .line 26
    .line 27
    .line 28
    move-result-object v2
    :try_end_1
    .catch Lq5/i; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lq5/e; {:try_start_1 .. :try_end_1} :catch_0

    .line 29
    move-object v4, v3

    .line 30
    move-object v3, v1

    .line 31
    move-object v1, v2

    .line 32
    move-object v2, v3

    .line 33
    goto :goto_4

    .line 34
    :catch_0
    move-exception v2

    .line 35
    goto :goto_2

    .line 36
    :catch_1
    move-exception v2

    .line 37
    goto :goto_3

    .line 38
    :goto_0
    move-object v3, v1

    .line 39
    goto :goto_2

    .line 40
    :goto_1
    move-object v3, v1

    .line 41
    goto :goto_3

    .line 42
    :catch_2
    move-exception v2

    .line 43
    goto :goto_0

    .line 44
    :goto_2
    move-object v4, v3

    .line 45
    move-object v3, v2

    .line 46
    move-object v2, v1

    .line 47
    goto :goto_4

    .line 48
    :catch_3
    move-exception v2

    .line 49
    goto :goto_1

    .line 50
    :goto_3
    move-object v4, v3

    .line 51
    move-object v3, v1

    .line 52
    :goto_4
    if-nez v1, :cond_0

    .line 53
    .line 54
    const/4 v1, 0x1

    .line 55
    :try_start_2
    invoke-virtual {v0, v1}, Lt5/a;->a(Z)Lr5/a;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget-object v1, v0, Lcom/google/android/gms/internal/atv_ads_framework/x0;->I:Ljava/lang/Object;

    .line 60
    .line 61
    move-object v4, v1

    .line 62
    check-cast v4, [Lq5/o;

    .line 63
    .line 64
    new-instance v1, Ls5/a;

    .line 65
    .line 66
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v0}, Ls5/a;->a(Lr5/a;)Lw5/d;

    .line 70
    .line 71
    .line 72
    move-result-object v1
    :try_end_2
    .catch Lq5/i; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lq5/e; {:try_start_2 .. :try_end_2} :catch_4

    .line 73
    :cond_0
    move-object v5, v4

    .line 74
    goto :goto_6

    .line 75
    :catch_4
    move-exception p1

    .line 76
    goto :goto_5

    .line 77
    :catch_5
    move-exception p1

    .line 78
    :goto_5
    if-nez v2, :cond_2

    .line 79
    .line 80
    if-eqz v3, :cond_1

    .line 81
    .line 82
    throw v3

    .line 83
    :cond_1
    throw p1

    .line 84
    :cond_2
    throw v2

    .line 85
    :goto_6
    if-eqz p2, :cond_3

    .line 86
    .line 87
    sget-object v0, Lq5/c;->P:Lq5/c;

    .line 88
    .line 89
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    check-cast p2, Lq5/p;

    .line 94
    .line 95
    if-eqz p2, :cond_3

    .line 96
    .line 97
    array-length v0, v5

    .line 98
    :goto_7
    if-ge p1, v0, :cond_3

    .line 99
    .line 100
    aget-object v2, v5, p1

    .line 101
    .line 102
    invoke-interface {p2, v2}, Lq5/p;->a(Lq5/o;)V

    .line 103
    .line 104
    .line 105
    add-int/lit8 p1, p1, 0x1

    .line 106
    .line 107
    goto :goto_7

    .line 108
    :cond_3
    new-instance p1, Lq5/m;

    .line 109
    .line 110
    sget-object v6, Lq5/a;->G:Lq5/a;

    .line 111
    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 113
    .line 114
    .line 115
    iget-object v4, v1, Lw5/d;->a:[B

    .line 116
    .line 117
    const/4 v7, 0x0

    .line 118
    iget-object v3, v1, Lw5/d;->b:Ljava/lang/String;

    .line 119
    .line 120
    move-object v2, p1

    .line 121
    invoke-direct/range {v2 .. v7}, Lq5/m;-><init>(Ljava/lang/String;[B[Lq5/o;Lq5/a;I)V

    .line 122
    .line 123
    .line 124
    iget-object p2, v1, Lw5/d;->c:Ljava/util/List;

    .line 125
    .line 126
    if-eqz p2, :cond_4

    .line 127
    .line 128
    sget-object v0, Lq5/n;->H:Lq5/n;

    .line 129
    .line 130
    invoke-virtual {p1, v0, p2}, Lq5/m;->b(Lq5/n;Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    :cond_4
    iget-object p2, v1, Lw5/d;->d:Ljava/lang/String;

    .line 134
    .line 135
    if-eqz p2, :cond_5

    .line 136
    .line 137
    sget-object v0, Lq5/n;->I:Lq5/n;

    .line 138
    .line 139
    invoke-virtual {p1, v0, p2}, Lq5/m;->b(Lq5/n;Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    :cond_5
    return-object p1
.end method
