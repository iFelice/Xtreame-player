.class public final Lc4/f1;
.super Lc4/u1;
.source "SourceFile"


# instance fields
.field public final J:Ljava/util/HashMap;

.field public final K:LE1/I;

.field public final L:LE1/I;

.field public final M:LE1/I;

.field public final N:LE1/I;

.field public final O:LE1/I;

.field public final P:LE1/I;


# direct methods
.method public constructor <init>(Lc4/A1;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lc4/u1;-><init>(Lc4/A1;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lc4/f1;->J:Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance p1, LE1/I;

    .line 12
    .line 13
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lc4/l0;

    .line 16
    .line 17
    iget-object v0, v0, Lc4/l0;->N:Lc4/Z;

    .line 18
    .line 19
    invoke-static {v0}, Lc4/l0;->i(Lc4/s0;)V

    .line 20
    .line 21
    .line 22
    const-string v1, "last_delete_stale"

    .line 23
    .line 24
    const-wide/16 v2, 0x0

    .line 25
    .line 26
    invoke-direct {p1, v0, v1, v2, v3}, LE1/I;-><init>(Lc4/Z;Ljava/lang/String;J)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lc4/f1;->K:LE1/I;

    .line 30
    .line 31
    new-instance p1, LE1/I;

    .line 32
    .line 33
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v0, Lc4/l0;

    .line 36
    .line 37
    iget-object v0, v0, Lc4/l0;->N:Lc4/Z;

    .line 38
    .line 39
    invoke-static {v0}, Lc4/l0;->i(Lc4/s0;)V

    .line 40
    .line 41
    .line 42
    const-string v1, "last_delete_stale_batch"

    .line 43
    .line 44
    invoke-direct {p1, v0, v1, v2, v3}, LE1/I;-><init>(Lc4/Z;Ljava/lang/String;J)V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lc4/f1;->L:LE1/I;

    .line 48
    .line 49
    new-instance p1, LE1/I;

    .line 50
    .line 51
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v0, Lc4/l0;

    .line 54
    .line 55
    iget-object v0, v0, Lc4/l0;->N:Lc4/Z;

    .line 56
    .line 57
    invoke-static {v0}, Lc4/l0;->i(Lc4/s0;)V

    .line 58
    .line 59
    .line 60
    const-string v1, "backoff"

    .line 61
    .line 62
    invoke-direct {p1, v0, v1, v2, v3}, LE1/I;-><init>(Lc4/Z;Ljava/lang/String;J)V

    .line 63
    .line 64
    .line 65
    iput-object p1, p0, Lc4/f1;->M:LE1/I;

    .line 66
    .line 67
    new-instance p1, LE1/I;

    .line 68
    .line 69
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v0, Lc4/l0;

    .line 72
    .line 73
    iget-object v0, v0, Lc4/l0;->N:Lc4/Z;

    .line 74
    .line 75
    invoke-static {v0}, Lc4/l0;->i(Lc4/s0;)V

    .line 76
    .line 77
    .line 78
    const-string v1, "last_upload"

    .line 79
    .line 80
    invoke-direct {p1, v0, v1, v2, v3}, LE1/I;-><init>(Lc4/Z;Ljava/lang/String;J)V

    .line 81
    .line 82
    .line 83
    iput-object p1, p0, Lc4/f1;->N:LE1/I;

    .line 84
    .line 85
    new-instance p1, LE1/I;

    .line 86
    .line 87
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v0, Lc4/l0;

    .line 90
    .line 91
    iget-object v0, v0, Lc4/l0;->N:Lc4/Z;

    .line 92
    .line 93
    invoke-static {v0}, Lc4/l0;->i(Lc4/s0;)V

    .line 94
    .line 95
    .line 96
    const-string v1, "last_upload_attempt"

    .line 97
    .line 98
    invoke-direct {p1, v0, v1, v2, v3}, LE1/I;-><init>(Lc4/Z;Ljava/lang/String;J)V

    .line 99
    .line 100
    .line 101
    iput-object p1, p0, Lc4/f1;->O:LE1/I;

    .line 102
    .line 103
    new-instance p1, LE1/I;

    .line 104
    .line 105
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v0, Lc4/l0;

    .line 108
    .line 109
    iget-object v0, v0, Lc4/l0;->N:Lc4/Z;

    .line 110
    .line 111
    invoke-static {v0}, Lc4/l0;->i(Lc4/s0;)V

    .line 112
    .line 113
    .line 114
    const-string v1, "midnight_offset"

    .line 115
    .line 116
    invoke-direct {p1, v0, v1, v2, v3}, LE1/I;-><init>(Lc4/Z;Ljava/lang/String;J)V

    .line 117
    .line 118
    .line 119
    iput-object p1, p0, Lc4/f1;->P:LE1/I;

    .line 120
    .line 121
    return-void
.end method


# virtual methods
.method public final p()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final q(Ljava/lang/String;)Landroid/util/Pair;
    .locals 12

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-virtual {p0}, Lc1/d;->m()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Lc4/l0;

    .line 9
    .line 10
    iget-object v2, v1, Lc4/l0;->T:LP3/b;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    iget-object v4, p0, Lc4/f1;->J:Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    check-cast v5, Lc4/e1;

    .line 26
    .line 27
    if-eqz v5, :cond_1

    .line 28
    .line 29
    iget-wide v6, v5, Lc4/e1;->c:J

    .line 30
    .line 31
    cmp-long v8, v2, v6

    .line 32
    .line 33
    if-ltz v8, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    new-instance p1, Landroid/util/Pair;

    .line 37
    .line 38
    iget-boolean v0, v5, Lc4/e1;->b:Z

    .line 39
    .line 40
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-object v1, v5, Lc4/e1;->a:Ljava/lang/String;

    .line 45
    .line 46
    invoke-direct {p1, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    return-object p1

    .line 50
    :cond_1
    :goto_0
    sget-object v6, Lc4/E;->b:Lc4/D;

    .line 51
    .line 52
    iget-object v7, v1, Lc4/l0;->M:Lc4/h;

    .line 53
    .line 54
    invoke-virtual {v7, p1, v6}, Lc4/h;->w(Ljava/lang/String;Lc4/D;)J

    .line 55
    .line 56
    .line 57
    move-result-wide v6

    .line 58
    add-long/2addr v6, v2

    .line 59
    :try_start_0
    iget-object v1, v1, Lc4/l0;->G:Landroid/content/Context;

    .line 60
    .line 61
    invoke-static {v1}, Lj3/b;->a(Landroid/content/Context;)Lj3/a;

    .line 62
    .line 63
    .line 64
    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    goto :goto_1

    .line 66
    :catch_0
    move-exception v1

    .line 67
    goto :goto_2

    .line 68
    :catch_1
    nop

    .line 69
    const/4 v1, 0x0

    .line 70
    if-eqz v5, :cond_2

    .line 71
    .line 72
    :try_start_1
    iget-wide v8, v5, Lc4/e1;->c:J

    .line 73
    .line 74
    iget-object v10, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v10, Lc4/l0;

    .line 77
    .line 78
    iget-object v10, v10, Lc4/l0;->M:Lc4/h;

    .line 79
    .line 80
    sget-object v11, Lc4/E;->c:Lc4/D;

    .line 81
    .line 82
    invoke-virtual {v10, p1, v11}, Lc4/h;->w(Ljava/lang/String;Lc4/D;)J

    .line 83
    .line 84
    .line 85
    move-result-wide v10

    .line 86
    add-long/2addr v8, v10

    .line 87
    cmp-long v10, v2, v8

    .line 88
    .line 89
    if-gez v10, :cond_2

    .line 90
    .line 91
    new-instance v1, Landroid/util/Pair;

    .line 92
    .line 93
    iget-object v2, v5, Lc4/e1;->a:Ljava/lang/String;

    .line 94
    .line 95
    iget-boolean v3, v5, Lc4/e1;->b:Z

    .line 96
    .line 97
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    return-object v1

    .line 105
    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 106
    .line 107
    new-instance v1, Landroid/util/Pair;

    .line 108
    .line 109
    const-string v2, "00000000-0000-0000-0000-000000000000"

    .line 110
    .line 111
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 112
    .line 113
    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    return-object v1

    .line 117
    :cond_3
    iget-object v2, v1, Lj3/a;->a:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 118
    .line 119
    iget-boolean v1, v1, Lj3/a;->b:Z

    .line 120
    .line 121
    if-eqz v2, :cond_4

    .line 122
    .line 123
    :try_start_2
    new-instance v3, Lc4/e1;

    .line 124
    .line 125
    invoke-direct {v3, v6, v7, v2, v1}, Lc4/e1;-><init>(JLjava/lang/String;Z)V

    .line 126
    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_4
    new-instance v3, Lc4/e1;

    .line 130
    .line 131
    invoke-direct {v3, v6, v7, v0, v1}, Lc4/e1;-><init>(JLjava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 132
    .line 133
    .line 134
    goto :goto_3

    .line 135
    :goto_2
    iget-object v2, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast v2, Lc4/l0;

    .line 138
    .line 139
    iget-object v2, v2, Lc4/l0;->O:Lc4/T;

    .line 140
    .line 141
    invoke-static {v2}, Lc4/l0;->k(Lc4/s0;)V

    .line 142
    .line 143
    .line 144
    const-string v3, "Unable to get advertising id"

    .line 145
    .line 146
    iget-object v2, v2, Lc4/T;->S:Lc4/Q;

    .line 147
    .line 148
    invoke-virtual {v2, v1, v3}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    new-instance v3, Lc4/e1;

    .line 152
    .line 153
    const/4 v1, 0x0

    .line 154
    invoke-direct {v3, v6, v7, v0, v1}, Lc4/e1;-><init>(JLjava/lang/String;Z)V

    .line 155
    .line 156
    .line 157
    :goto_3
    invoke-virtual {v4, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    new-instance p1, Landroid/util/Pair;

    .line 161
    .line 162
    iget-boolean v0, v3, Lc4/e1;->b:Z

    .line 163
    .line 164
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    iget-object v1, v3, Lc4/e1;->a:Ljava/lang/String;

    .line 169
    .line 170
    invoke-direct {p1, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    return-object p1
.end method

.method public final r(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0}, Lc1/d;->m()V

    .line 3
    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lc4/f1;->q(Ljava/lang/String;)Landroid/util/Pair;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Ljava/lang/String;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string p1, "00000000-0000-0000-0000-000000000000"

    .line 17
    .line 18
    :goto_0
    invoke-static {}, Lc4/I1;->x()Ljava/security/MessageDigest;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    if-nez p2, :cond_1

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    return-object p1

    .line 26
    :cond_1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 27
    .line 28
    new-instance v2, Ljava/math/BigInteger;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p2, p1}, Ljava/security/MessageDigest;->digest([B)[B

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-direct {v2, v0, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 39
    .line 40
    .line 41
    new-array p1, v0, [Ljava/lang/Object;

    .line 42
    .line 43
    const/4 p2, 0x0

    .line 44
    aput-object v2, p1, p2

    .line 45
    .line 46
    const-string p2, "%032X"

    .line 47
    .line 48
    invoke-static {v1, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    return-object p1
.end method
