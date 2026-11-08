.class public final LG0/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Lm0/B;

.field public c:LG0/i;

.field public d:Ls0/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LG0/j;->a:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Lm0/B;)LG0/i;
    .locals 14

    .line 1
    iget-object v0, p0, LG0/j;->d:Ls0/h;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Ls0/p;

    .line 8
    .line 9
    invoke-direct {v0}, Ls0/p;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, v0, Ls0/p;->b:Ljava/lang/String;

    .line 13
    .line 14
    :goto_0
    new-instance v5, LB0/c;

    .line 15
    .line 16
    iget-object v2, p1, Lm0/B;->b:Landroid/net/Uri;

    .line 17
    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    move-object v2, v1

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    :goto_1
    iget-boolean v3, p1, Lm0/B;->e:Z

    .line 27
    .line 28
    invoke-direct {v5, v2, v3, v0}, LB0/c;-><init>(Ljava/lang/String;ZLs0/h;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p1, Lm0/B;->c:Lz4/J;

    .line 32
    .line 33
    invoke-virtual {v0}, Lz4/J;->c()Lz4/L;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lz4/L;->t()Lcom/google/android/gms/internal/ads/gB;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Ljava/util/Map$Entry;

    .line 52
    .line 53
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    check-cast v3, Ljava/lang/String;

    .line 58
    .line 59
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    iget-object v4, v5, LB0/c;->J:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v4, Ljava/util/Map;

    .line 74
    .line 75
    monitor-enter v4

    .line 76
    :try_start_0
    iget-object v6, v5, LB0/c;->J:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v6, Ljava/util/Map;

    .line 79
    .line 80
    invoke-interface {v6, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    monitor-exit v4

    .line 84
    goto :goto_2

    .line 85
    :catchall_0
    move-exception p1

    .line 86
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    throw p1

    .line 88
    :cond_2
    new-instance v6, Ljava/util/HashMap;

    .line 89
    .line 90
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 91
    .line 92
    .line 93
    sget-object v0, Lm0/g;->a:Ljava/util/UUID;

    .line 94
    .line 95
    new-instance v10, LU4/b;

    .line 96
    .line 97
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 98
    .line 99
    .line 100
    iget-object v3, p1, Lm0/B;->a:Ljava/util/UUID;

    .line 101
    .line 102
    sget-object v4, LG0/z;->d:LC0/g;

    .line 103
    .line 104
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    iget-boolean v9, p1, Lm0/B;->d:Z

    .line 108
    .line 109
    iget-object p1, p1, Lm0/B;->f:Lz4/H;

    .line 110
    .line 111
    invoke-static {p1}, Ly4/k;->g0(Ljava/util/Collection;)[I

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    array-length v0, p1

    .line 116
    const/4 v13, 0x0

    .line 117
    const/4 v2, 0x0

    .line 118
    :goto_3
    if-ge v2, v0, :cond_5

    .line 119
    .line 120
    aget v7, p1, v2

    .line 121
    .line 122
    const/4 v8, 0x2

    .line 123
    const/4 v11, 0x1

    .line 124
    if-eq v7, v8, :cond_4

    .line 125
    .line 126
    if-ne v7, v11, :cond_3

    .line 127
    .line 128
    goto :goto_4

    .line 129
    :cond_3
    const/4 v11, 0x0

    .line 130
    :cond_4
    :goto_4
    invoke-static {v11}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 131
    .line 132
    .line 133
    add-int/lit8 v2, v2, 0x1

    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_5
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    move-object v8, p1

    .line 141
    check-cast v8, [I

    .line 142
    .line 143
    new-instance p1, LG0/i;

    .line 144
    .line 145
    const/4 v7, 0x0

    .line 146
    const-wide/32 v11, 0x493e0

    .line 147
    .line 148
    .line 149
    move-object v2, p1

    .line 150
    invoke-direct/range {v2 .. v12}, LG0/i;-><init>(Ljava/util/UUID;LC0/g;LB0/c;Ljava/util/HashMap;Z[IZLU4/b;J)V

    .line 151
    .line 152
    .line 153
    iget-object v0, p1, LG0/i;->R:Ljava/util/ArrayList;

    .line 154
    .line 155
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 160
    .line 161
    .line 162
    iput v13, p1, LG0/i;->a0:I

    .line 163
    .line 164
    iput-object v1, p1, LG0/i;->b0:[B

    .line 165
    .line 166
    return-object p1
.end method

.method public final b(Lm0/I;)LG0/r;
    .locals 2

    .line 1
    iget-object v0, p1, Lm0/I;->b:Lm0/E;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p1, p1, Lm0/I;->b:Lm0/E;

    .line 7
    .line 8
    iget-object p1, p1, Lm0/E;->c:Lm0/B;

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    sget-object p1, LG0/r;->d:LU4/b;

    .line 13
    .line 14
    return-object p1

    .line 15
    :cond_0
    iget-object v0, p0, LG0/j;->a:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object v1, p0, LG0/j;->b:Lm0/B;

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Lm0/B;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    iput-object p1, p0, LG0/j;->b:Lm0/B;

    .line 27
    .line 28
    invoke-virtual {p0, p1}, LG0/j;->a(Lm0/B;)LG0/i;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, LG0/j;->c:LG0/i;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    :goto_0
    iget-object p1, p0, LG0/j;->c:LG0/i;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    monitor-exit v0

    .line 43
    return-object p1

    .line 44
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p1
.end method
