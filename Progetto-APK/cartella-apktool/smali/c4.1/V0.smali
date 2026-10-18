.class public final Lc4/V0;
.super Lc4/B;
.source "SourceFile"


# instance fields
.field public volatile I:Lc4/S0;

.field public volatile J:Lc4/S0;

.field public K:Lc4/S0;

.field public final L:Ljava/util/concurrent/ConcurrentHashMap;

.field public M:Lcom/google/android/gms/internal/measurement/W;

.field public volatile N:Z

.field public volatile O:Lc4/S0;

.field public P:Lc4/S0;

.field public Q:Z

.field public final R:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lc4/l0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lc4/B;-><init>(Lc4/l0;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lc4/V0;->R:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lc4/V0;->L:Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    .line 18
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

.method public final q(Ljava/lang/String;Lc4/S0;Z)V
    .locals 16

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    iget-object v1, v7, Lc4/V0;->I:Lc4/S0;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget-object v1, v7, Lc4/V0;->J:Lc4/S0;

    .line 10
    .line 11
    :goto_0
    move-object v3, v1

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    iget-object v1, v7, Lc4/V0;->I:Lc4/S0;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :goto_1
    iget-object v1, v0, Lc4/S0;->b:Ljava/lang/String;

    .line 17
    .line 18
    if-nez v1, :cond_2

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    invoke-virtual/range {p0 .. p1}, Lc4/V0;->u(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    :goto_2
    move-object v10, v1

    .line 27
    goto :goto_3

    .line 28
    :cond_1
    const/4 v1, 0x0

    .line 29
    goto :goto_2

    .line 30
    :goto_3
    new-instance v1, Lc4/S0;

    .line 31
    .line 32
    iget-object v9, v0, Lc4/S0;->a:Ljava/lang/String;

    .line 33
    .line 34
    iget-wide v11, v0, Lc4/S0;->c:J

    .line 35
    .line 36
    iget-boolean v13, v0, Lc4/S0;->e:Z

    .line 37
    .line 38
    iget-wide v14, v0, Lc4/S0;->f:J

    .line 39
    .line 40
    move-object v8, v1

    .line 41
    invoke-direct/range {v8 .. v15}, Lc4/S0;-><init>(Ljava/lang/String;Ljava/lang/String;JZJ)V

    .line 42
    .line 43
    .line 44
    move-object v2, v1

    .line 45
    goto :goto_4

    .line 46
    :cond_2
    move-object v2, v0

    .line 47
    :goto_4
    iget-object v0, v7, Lc4/V0;->I:Lc4/S0;

    .line 48
    .line 49
    iput-object v0, v7, Lc4/V0;->J:Lc4/S0;

    .line 50
    .line 51
    iput-object v2, v7, Lc4/V0;->I:Lc4/S0;

    .line 52
    .line 53
    iget-object v0, v7, Lc1/d;->G:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v0, Lc4/l0;

    .line 56
    .line 57
    iget-object v1, v0, Lc4/l0;->T:LP3/b;

    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 63
    .line 64
    .line 65
    move-result-wide v4

    .line 66
    iget-object v8, v0, Lc4/l0;->P:Lc4/j0;

    .line 67
    .line 68
    invoke-static {v8}, Lc4/l0;->k(Lc4/s0;)V

    .line 69
    .line 70
    .line 71
    new-instance v9, Lc4/T0;

    .line 72
    .line 73
    move-object v0, v9

    .line 74
    move-object/from16 v1, p0

    .line 75
    .line 76
    move/from16 v6, p3

    .line 77
    .line 78
    invoke-direct/range {v0 .. v6}, Lc4/T0;-><init>(Lc4/V0;Lc4/S0;Lc4/S0;JZ)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v8, v9}, Lc4/j0;->x(Ljava/lang/Runnable;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public final r(Lc4/S0;Lc4/S0;JZLandroid/os/Bundle;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lc4/z;->m()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    iget-wide v2, p1, Lc4/S0;->c:J

    .line 9
    .line 10
    iget-wide v4, p2, Lc4/S0;->c:J

    .line 11
    .line 12
    cmp-long v6, v4, v2

    .line 13
    .line 14
    if-nez v6, :cond_0

    .line 15
    .line 16
    iget-object v2, p2, Lc4/S0;->b:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v3, p1, Lc4/S0;->b:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    iget-object v2, p2, Lc4/S0;->a:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v3, p1, Lc4/S0;->a:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_1

    .line 35
    .line 36
    :cond_0
    const/4 v2, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 v2, 0x0

    .line 39
    :goto_0
    if-eqz p5, :cond_2

    .line 40
    .line 41
    iget-object p5, p0, Lc4/V0;->K:Lc4/S0;

    .line 42
    .line 43
    if-eqz p5, :cond_2

    .line 44
    .line 45
    const/4 v0, 0x1

    .line 46
    :cond_2
    if-eqz v2, :cond_c

    .line 47
    .line 48
    if-eqz p6, :cond_3

    .line 49
    .line 50
    new-instance p5, Landroid/os/Bundle;

    .line 51
    .line 52
    invoke-direct {p5, p6}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 53
    .line 54
    .line 55
    :goto_1
    move-object v5, p5

    .line 56
    goto :goto_2

    .line 57
    :cond_3
    new-instance p5, Landroid/os/Bundle;

    .line 58
    .line 59
    invoke-direct {p5}, Landroid/os/Bundle;-><init>()V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :goto_2
    invoke-static {p1, v5, v1}, Lc4/I1;->C(Lc4/S0;Landroid/os/Bundle;Z)V

    .line 64
    .line 65
    .line 66
    if-eqz p2, :cond_6

    .line 67
    .line 68
    iget-object p5, p2, Lc4/S0;->a:Ljava/lang/String;

    .line 69
    .line 70
    if-eqz p5, :cond_4

    .line 71
    .line 72
    const-string p6, "_pn"

    .line 73
    .line 74
    invoke-virtual {v5, p6, p5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :cond_4
    iget-object p5, p2, Lc4/S0;->b:Ljava/lang/String;

    .line 78
    .line 79
    if-eqz p5, :cond_5

    .line 80
    .line 81
    const-string p6, "_pc"

    .line 82
    .line 83
    invoke-virtual {v5, p6, p5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :cond_5
    iget-wide p5, p2, Lc4/S0;->c:J

    .line 87
    .line 88
    const-string p2, "_pi"

    .line 89
    .line 90
    invoke-virtual {v5, p2, p5, p6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 91
    .line 92
    .line 93
    :cond_6
    const-wide/16 p5, 0x0

    .line 94
    .line 95
    if-eqz v0, :cond_7

    .line 96
    .line 97
    iget-object p2, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast p2, Lc4/l0;

    .line 100
    .line 101
    iget-object p2, p2, Lc4/l0;->Q:Lc4/k1;

    .line 102
    .line 103
    invoke-static {p2}, Lc4/l0;->j(Lc4/B;)V

    .line 104
    .line 105
    .line 106
    iget-object p2, p2, Lc4/k1;->L:Lcom/google/android/gms/internal/ads/PN;

    .line 107
    .line 108
    iget-wide v2, p2, Lcom/google/android/gms/internal/ads/PN;->b:J

    .line 109
    .line 110
    sub-long v2, p3, v2

    .line 111
    .line 112
    iput-wide p3, p2, Lcom/google/android/gms/internal/ads/PN;->b:J

    .line 113
    .line 114
    cmp-long p2, v2, p5

    .line 115
    .line 116
    if-lez p2, :cond_7

    .line 117
    .line 118
    iget-object p2, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast p2, Lc4/l0;

    .line 121
    .line 122
    iget-object p2, p2, Lc4/l0;->R:Lc4/I1;

    .line 123
    .line 124
    invoke-static {p2}, Lc4/l0;->i(Lc4/s0;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2, v5, v2, v3}, Lc4/I1;->A(Landroid/os/Bundle;J)V

    .line 128
    .line 129
    .line 130
    :cond_7
    iget-object p2, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast p2, Lc4/l0;

    .line 133
    .line 134
    iget-object v2, p2, Lc4/l0;->M:Lc4/h;

    .line 135
    .line 136
    invoke-virtual {v2}, Lc4/h;->C()Z

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    if-nez v2, :cond_8

    .line 141
    .line 142
    const-string v2, "_mst"

    .line 143
    .line 144
    const-wide/16 v3, 0x1

    .line 145
    .line 146
    invoke-virtual {v5, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 147
    .line 148
    .line 149
    :cond_8
    iget-boolean v2, p1, Lc4/S0;->e:Z

    .line 150
    .line 151
    if-eq v1, v2, :cond_9

    .line 152
    .line 153
    const-string v3, "auto"

    .line 154
    .line 155
    :goto_3
    move-object v6, v3

    .line 156
    goto :goto_4

    .line 157
    :cond_9
    const-string v3, "app"

    .line 158
    .line 159
    goto :goto_3

    .line 160
    :goto_4
    iget-object p2, p2, Lc4/l0;->T:LP3/b;

    .line 161
    .line 162
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 166
    .line 167
    .line 168
    move-result-wide v3

    .line 169
    if-eqz v2, :cond_b

    .line 170
    .line 171
    iget-wide v7, p1, Lc4/S0;->f:J

    .line 172
    .line 173
    cmp-long p2, v7, p5

    .line 174
    .line 175
    if-nez p2, :cond_a

    .line 176
    .line 177
    goto :goto_5

    .line 178
    :cond_a
    move-wide v3, v7

    .line 179
    :cond_b
    :goto_5
    iget-object p2, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 180
    .line 181
    check-cast p2, Lc4/l0;

    .line 182
    .line 183
    iget-object v2, p2, Lc4/l0;->V:Lc4/K0;

    .line 184
    .line 185
    invoke-static {v2}, Lc4/l0;->j(Lc4/B;)V

    .line 186
    .line 187
    .line 188
    const-string v7, "_vs"

    .line 189
    .line 190
    invoke-virtual/range {v2 .. v7}, Lc4/K0;->z(JLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    :cond_c
    if-eqz v0, :cond_d

    .line 194
    .line 195
    iget-object p2, p0, Lc4/V0;->K:Lc4/S0;

    .line 196
    .line 197
    invoke-virtual {p0, p2, v1, p3, p4}, Lc4/V0;->s(Lc4/S0;ZJ)V

    .line 198
    .line 199
    .line 200
    :cond_d
    iput-object p1, p0, Lc4/V0;->K:Lc4/S0;

    .line 201
    .line 202
    iget-boolean p2, p1, Lc4/S0;->e:Z

    .line 203
    .line 204
    if-eqz p2, :cond_e

    .line 205
    .line 206
    iput-object p1, p0, Lc4/V0;->P:Lc4/S0;

    .line 207
    .line 208
    :cond_e
    iget-object p2, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 209
    .line 210
    check-cast p2, Lc4/l0;

    .line 211
    .line 212
    invoke-virtual {p2}, Lc4/l0;->r()Lc4/d1;

    .line 213
    .line 214
    .line 215
    move-result-object p2

    .line 216
    invoke-virtual {p2}, Lc4/z;->m()V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p2}, Lc4/B;->n()V

    .line 220
    .line 221
    .line 222
    new-instance p3, LK3/V;

    .line 223
    .line 224
    const/16 p4, 0xe

    .line 225
    .line 226
    invoke-direct {p3, p4, p2, p1}, LK3/V;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p2, p3}, Lc4/d1;->E(Ljava/lang/Runnable;)V

    .line 230
    .line 231
    .line 232
    return-void
.end method

.method public final s(Lc4/S0;ZJ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lc4/l0;

    .line 4
    .line 5
    iget-object v1, v0, Lc4/l0;->W:Lc4/x;

    .line 6
    .line 7
    invoke-static {v1}, Lc4/l0;->h(Lc4/z;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, v0, Lc4/l0;->T:LP3/b;

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
    invoke-virtual {v1, v2, v3}, Lc4/x;->p(J)V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    iget-boolean v2, p1, Lc4/S0;->d:Z

    .line 26
    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v2, 0x0

    .line 32
    :goto_0
    iget-object v0, v0, Lc4/l0;->Q:Lc4/k1;

    .line 33
    .line 34
    invoke-static {v0}, Lc4/l0;->j(Lc4/B;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, v0, Lc4/k1;->L:Lcom/google/android/gms/internal/ads/PN;

    .line 38
    .line 39
    invoke-virtual {v0, p3, p4, v2, p2}, Lcom/google/android/gms/internal/ads/PN;->b(JZZ)Z

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    if-eqz p2, :cond_1

    .line 44
    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    iput-boolean v1, p1, Lc4/S0;->d:Z

    .line 48
    .line 49
    :cond_1
    return-void
.end method

.method public final t(Z)Lc4/S0;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc4/B;->n()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lc4/z;->m()V

    .line 5
    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lc4/V0;->K:Lc4/S0;

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    iget-object p1, p0, Lc4/V0;->K:Lc4/S0;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    return-object p1

    .line 17
    :cond_1
    iget-object p1, p0, Lc4/V0;->P:Lc4/S0;

    .line 18
    .line 19
    return-object p1
.end method

.method public final u(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, "Activity"

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    const-string v0, "\\."

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    array-length v0, p1

    .line 13
    if-lez v0, :cond_1

    .line 14
    .line 15
    add-int/lit8 v0, v0, -0x1

    .line 16
    .line 17
    aget-object p1, p1, v0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const-string p1, ""

    .line 21
    .line 22
    :goto_0
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Lc4/l0;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    iget-object v2, v0, Lc4/l0;->M:Lc4/h;

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    const/4 v4, 0x0

    .line 34
    invoke-virtual {v2, v3, v4}, Lc4/h;->s(Ljava/lang/String;Z)I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-le v1, v2, :cond_2

    .line 39
    .line 40
    iget-object v0, v0, Lc4/l0;->M:Lc4/h;

    .line 41
    .line 42
    invoke-virtual {v0, v3, v4}, Lc4/h;->s(Ljava/lang/String;Z)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    :cond_2
    return-object p1
.end method

.method public final w(Lcom/google/android/gms/internal/measurement/W;Landroid/os/Bundle;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lc4/l0;

    .line 4
    .line 5
    iget-object v0, v0, Lc4/l0;->M:Lc4/h;

    .line 6
    .line 7
    invoke-virtual {v0}, Lc4/h;->C()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    if-eqz p2, :cond_1

    .line 15
    .line 16
    const-string v0, "com.google.app_measurement.screen_service"

    .line 17
    .line 18
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    if-eqz p2, :cond_1

    .line 23
    .line 24
    new-instance v0, Lc4/S0;

    .line 25
    .line 26
    const-string v1, "name"

    .line 27
    .line 28
    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v2, "referrer_name"

    .line 33
    .line 34
    invoke-virtual {p2, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const-string v3, "id"

    .line 39
    .line 40
    invoke-virtual {p2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 41
    .line 42
    .line 43
    move-result-wide v3

    .line 44
    invoke-direct {v0, v3, v4, v1, v2}, Lc4/S0;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object p2, p0, Lc4/V0;->L:Ljava/util/concurrent/ConcurrentHashMap;

    .line 48
    .line 49
    iget p1, p1, Lcom/google/android/gms/internal/measurement/W;->G:I

    .line 50
    .line 51
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    :cond_1
    :goto_0
    return-void
.end method

.method public final x(Lcom/google/android/gms/internal/measurement/W;)Lc4/S0;
    .locals 6

    .line 1
    invoke-static {p1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Lcom/google/android/gms/internal/measurement/W;->G:I

    .line 5
    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lc4/V0;->L:Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lc4/S0;

    .line 17
    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/W;->H:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lc4/V0;->u(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object v2, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v2, Lc4/l0;

    .line 29
    .line 30
    new-instance v3, Lc4/S0;

    .line 31
    .line 32
    iget-object v2, v2, Lc4/l0;->R:Lc4/I1;

    .line 33
    .line 34
    invoke-static {v2}, Lc4/l0;->i(Lc4/s0;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Lc4/I1;->y0()J

    .line 38
    .line 39
    .line 40
    move-result-wide v4

    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-direct {v3, v4, v5, v2, p1}, Lc4/S0;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-object v2, v3

    .line 49
    :cond_0
    iget-object p1, p0, Lc4/V0;->O:Lc4/S0;

    .line 50
    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    iget-object p1, p0, Lc4/V0;->O:Lc4/S0;

    .line 54
    .line 55
    return-object p1

    .line 56
    :cond_1
    return-object v2
.end method
