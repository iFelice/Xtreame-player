.class public final Lcom/google/android/gms/internal/ads/wL;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/eL;
.implements Lcom/google/android/gms/internal/ads/xL;


# instance fields
.field public final G:Landroid/content/Context;

.field public final H:Lcom/google/android/gms/internal/ads/vL;

.field public final I:Landroid/media/metrics/PlaybackSession;

.field public final J:J

.field public final K:Lcom/google/android/gms/internal/ads/we;

.field public final L:Lcom/google/android/gms/internal/ads/je;

.field public final M:Ljava/util/HashMap;

.field public final N:Ljava/util/HashMap;

.field public O:Ljava/lang/String;

.field public P:Landroid/media/metrics/PlaybackMetrics$Builder;

.field public Q:I

.field public R:I

.field public S:I

.field public T:Lcom/google/android/gms/internal/ads/Xa;

.field public U:Lcom/google/android/gms/internal/ads/f8;

.field public V:Lcom/google/android/gms/internal/ads/f8;

.field public W:Lcom/google/android/gms/internal/ads/f8;

.field public X:Lcom/google/android/gms/internal/ads/p0;

.field public Y:Lcom/google/android/gms/internal/ads/p0;

.field public Z:Lcom/google/android/gms/internal/ads/p0;

.field public a0:Z

.field public b0:Z

.field public c0:I

.field public d0:I

.field public e0:I

.field public f0:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/metrics/PlaybackSession;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wL;->G:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/wL;->I:Landroid/media/metrics/PlaybackSession;

    .line 11
    .line 12
    new-instance p1, Lcom/google/android/gms/internal/ads/we;

    .line 13
    .line 14
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/we;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wL;->K:Lcom/google/android/gms/internal/ads/we;

    .line 18
    .line 19
    new-instance p1, Lcom/google/android/gms/internal/ads/je;

    .line 20
    .line 21
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/je;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wL;->L:Lcom/google/android/gms/internal/ads/je;

    .line 25
    .line 26
    new-instance p1, Ljava/util/HashMap;

    .line 27
    .line 28
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wL;->N:Ljava/util/HashMap;

    .line 32
    .line 33
    new-instance p1, Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wL;->M:Ljava/util/HashMap;

    .line 39
    .line 40
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 41
    .line 42
    .line 43
    move-result-wide p1

    .line 44
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/wL;->J:J

    .line 45
    .line 46
    const/4 p1, 0x0

    .line 47
    iput p1, p0, Lcom/google/android/gms/internal/ads/wL;->R:I

    .line 48
    .line 49
    iput p1, p0, Lcom/google/android/gms/internal/ads/wL;->S:I

    .line 50
    .line 51
    new-instance p1, Lcom/google/android/gms/internal/ads/vL;

    .line 52
    .line 53
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/vL;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wL;->H:Lcom/google/android/gms/internal/ads/vL;

    .line 57
    .line 58
    iput-object p0, p1, Lcom/google/android/gms/internal/ads/vL;->d:Lcom/google/android/gms/internal/ads/xL;

    .line 59
    .line 60
    return-void
.end method


# virtual methods
.method public final synthetic E()V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/p0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/dL;Lcom/google/android/gms/internal/ads/nL;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/dL;->d:Lcom/google/android/gms/internal/ads/wN;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p2, Lcom/google/android/gms/internal/ads/nL;->J:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Lcom/google/android/gms/internal/ads/p0;

    .line 9
    .line 10
    new-instance v2, Lcom/google/android/gms/internal/ads/f8;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/wL;->H:Lcom/google/android/gms/internal/ads/vL;

    .line 16
    .line 17
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/dL;->b:Lcom/google/android/gms/internal/ads/Ie;

    .line 18
    .line 19
    invoke-virtual {v3, p1, v0}, Lcom/google/android/gms/internal/ads/vL;->a(Lcom/google/android/gms/internal/ads/Ie;Lcom/google/android/gms/internal/ads/wN;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/4 v0, 0x7

    .line 24
    invoke-direct {v2, v1, p1, v0}, Lcom/google/android/gms/internal/ads/f8;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 25
    .line 26
    .line 27
    iget p1, p2, Lcom/google/android/gms/internal/ads/nL;->G:I

    .line 28
    .line 29
    if-eqz p1, :cond_3

    .line 30
    .line 31
    const/4 p2, 0x1

    .line 32
    if-eq p1, p2, :cond_2

    .line 33
    .line 34
    const/4 p2, 0x2

    .line 35
    if-eq p1, p2, :cond_3

    .line 36
    .line 37
    const/4 p2, 0x3

    .line 38
    if-eq p1, p2, :cond_1

    .line 39
    .line 40
    :goto_0
    return-void

    .line 41
    :cond_1
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/wL;->W:Lcom/google/android/gms/internal/ads/f8;

    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/wL;->V:Lcom/google/android/gms/internal/ads/f8;

    .line 45
    .line 46
    return-void

    .line 47
    :cond_3
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/wL;->U:Lcom/google/android/gms/internal/ads/f8;

    .line 48
    .line 49
    return-void
.end method

.method public final c(Ljava/io/IOException;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final d(Lcom/google/android/gms/internal/ads/dL;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/dL;->d:Lcom/google/android/gms/internal/ads/wN;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/wN;->b()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_1

    .line 10
    .line 11
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/wL;->O:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/wL;->f()V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/wL;->M:Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/wL;->N:Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final e(Lcom/google/android/gms/internal/ads/Vc;Lcom/google/android/gms/internal/ads/Om;)V
    .locals 25

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Om;->H:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lcom/google/android/gms/internal/ads/o;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/o;->a:Landroid/util/SparseBooleanArray;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    goto/16 :goto_23

    .line 18
    .line 19
    :cond_0
    const/4 v8, 0x0

    .line 20
    const/4 v1, 0x0

    .line 21
    :goto_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/Om;->H:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v2, Lcom/google/android/gms/internal/ads/o;

    .line 24
    .line 25
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/o;->a:Landroid/util/SparseBooleanArray;

    .line 26
    .line 27
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    const/16 v9, 0xb

    .line 32
    .line 33
    if-ge v1, v2, :cond_7

    .line 34
    .line 35
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/Om;->H:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v2, Lcom/google/android/gms/internal/ads/o;

    .line 38
    .line 39
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/o;->a(I)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/Om;->I:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v3, Landroid/util/SparseArray;

    .line 46
    .line 47
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Lcom/google/android/gms/internal/ads/dL;

    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    if-nez v2, :cond_5

    .line 57
    .line 58
    iget-object v2, v7, Lcom/google/android/gms/internal/ads/wL;->H:Lcom/google/android/gms/internal/ads/vL;

    .line 59
    .line 60
    monitor-enter v2

    .line 61
    :try_start_0
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/vL;->d:Lcom/google/android/gms/internal/ads/xL;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    :try_start_1
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/vL;->e:Lcom/google/android/gms/internal/ads/Ie;

    .line 67
    .line 68
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/dL;->b:Lcom/google/android/gms/internal/ads/Ie;

    .line 69
    .line 70
    iput-object v5, v2, Lcom/google/android/gms/internal/ads/vL;->e:Lcom/google/android/gms/internal/ads/Ie;

    .line 71
    .line 72
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/vL;->c:Ljava/util/HashMap;

    .line 73
    .line 74
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    if-eqz v6, :cond_4

    .line 87
    .line 88
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    check-cast v6, Lcom/google/android/gms/internal/ads/uL;

    .line 93
    .line 94
    iget-object v9, v2, Lcom/google/android/gms/internal/ads/vL;->e:Lcom/google/android/gms/internal/ads/Ie;

    .line 95
    .line 96
    invoke-virtual {v6, v4, v9}, Lcom/google/android/gms/internal/ads/uL;->b(Lcom/google/android/gms/internal/ads/Ie;Lcom/google/android/gms/internal/ads/Ie;)Z

    .line 97
    .line 98
    .line 99
    move-result v9

    .line 100
    if-eqz v9, :cond_2

    .line 101
    .line 102
    invoke-virtual {v6, v3}, Lcom/google/android/gms/internal/ads/uL;->a(Lcom/google/android/gms/internal/ads/dL;)Z

    .line 103
    .line 104
    .line 105
    move-result v9

    .line 106
    if-eqz v9, :cond_1

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :catchall_0
    move-exception v0

    .line 110
    goto :goto_3

    .line 111
    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 112
    .line 113
    .line 114
    iget-boolean v9, v6, Lcom/google/android/gms/internal/ads/uL;->e:Z

    .line 115
    .line 116
    if-eqz v9, :cond_1

    .line 117
    .line 118
    iget-object v9, v6, Lcom/google/android/gms/internal/ads/uL;->a:Ljava/lang/String;

    .line 119
    .line 120
    iget-object v10, v2, Lcom/google/android/gms/internal/ads/vL;->f:Ljava/lang/String;

    .line 121
    .line 122
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v9

    .line 126
    if-eqz v9, :cond_3

    .line 127
    .line 128
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/vL;->f(Lcom/google/android/gms/internal/ads/uL;)V

    .line 129
    .line 130
    .line 131
    :cond_3
    iget-object v9, v2, Lcom/google/android/gms/internal/ads/vL;->d:Lcom/google/android/gms/internal/ads/xL;

    .line 132
    .line 133
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/uL;->a:Ljava/lang/String;

    .line 134
    .line 135
    check-cast v9, Lcom/google/android/gms/internal/ads/wL;

    .line 136
    .line 137
    invoke-virtual {v9, v3, v6}, Lcom/google/android/gms/internal/ads/wL;->d(Lcom/google/android/gms/internal/ads/dL;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_4
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/vL;->g(Lcom/google/android/gms/internal/ads/dL;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    .line 143
    .line 144
    monitor-exit v2

    .line 145
    goto :goto_4

    .line 146
    :goto_3
    monitor-exit v2

    .line 147
    throw v0

    .line 148
    :cond_5
    if-ne v2, v9, :cond_6

    .line 149
    .line 150
    iget-object v2, v7, Lcom/google/android/gms/internal/ads/wL;->H:Lcom/google/android/gms/internal/ads/vL;

    .line 151
    .line 152
    iget v4, v7, Lcom/google/android/gms/internal/ads/wL;->Q:I

    .line 153
    .line 154
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/vL;->d(Lcom/google/android/gms/internal/ads/dL;I)V

    .line 155
    .line 156
    .line 157
    goto :goto_4

    .line 158
    :cond_6
    iget-object v2, v7, Lcom/google/android/gms/internal/ads/wL;->H:Lcom/google/android/gms/internal/ads/vL;

    .line 159
    .line 160
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/vL;->c(Lcom/google/android/gms/internal/ads/dL;)V

    .line 161
    .line 162
    .line 163
    :goto_4
    add-int/lit8 v1, v1, 0x1

    .line 164
    .line 165
    goto/16 :goto_0

    .line 166
    .line 167
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 168
    .line 169
    .line 170
    move-result-wide v10

    .line 171
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/Om;->s(I)Z

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    if-eqz v1, :cond_8

    .line 176
    .line 177
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Om;->I:Ljava/lang/Object;

    .line 178
    .line 179
    check-cast v1, Landroid/util/SparseArray;

    .line 180
    .line 181
    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    check-cast v1, Lcom/google/android/gms/internal/ads/dL;

    .line 186
    .line 187
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    .line 189
    .line 190
    iget-object v2, v7, Lcom/google/android/gms/internal/ads/wL;->P:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 191
    .line 192
    if-eqz v2, :cond_8

    .line 193
    .line 194
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/dL;->b:Lcom/google/android/gms/internal/ads/Ie;

    .line 195
    .line 196
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/dL;->d:Lcom/google/android/gms/internal/ads/wN;

    .line 197
    .line 198
    invoke-virtual {v7, v2, v1}, Lcom/google/android/gms/internal/ads/wL;->g(Lcom/google/android/gms/internal/ads/Ie;Lcom/google/android/gms/internal/ads/wN;)V

    .line 199
    .line 200
    .line 201
    :cond_8
    const/4 v12, 0x2

    .line 202
    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/Om;->s(I)Z

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    const/4 v13, 0x1

    .line 207
    const/4 v15, 0x3

    .line 208
    const/4 v6, 0x0

    .line 209
    if-eqz v1, :cond_10

    .line 210
    .line 211
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/wL;->P:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 212
    .line 213
    if-eqz v1, :cond_10

    .line 214
    .line 215
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/Vc;->zzo()Lcom/google/android/gms/internal/ads/Hg;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Hg;->a:Lcom/google/android/gms/internal/ads/uA;

    .line 220
    .line 221
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 222
    .line 223
    .line 224
    move-result v2

    .line 225
    const/4 v3, 0x0

    .line 226
    :goto_5
    if-ge v3, v2, :cond_b

    .line 227
    .line 228
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v4

    .line 232
    check-cast v4, Lcom/google/android/gms/internal/ads/wg;

    .line 233
    .line 234
    const/4 v5, 0x0

    .line 235
    :goto_6
    iget v9, v4, Lcom/google/android/gms/internal/ads/wg;->a:I

    .line 236
    .line 237
    add-int/lit8 v16, v3, 0x1

    .line 238
    .line 239
    if-ge v5, v9, :cond_a

    .line 240
    .line 241
    iget-object v9, v4, Lcom/google/android/gms/internal/ads/wg;->e:[Z

    .line 242
    .line 243
    aget-boolean v9, v9, v5

    .line 244
    .line 245
    if-eqz v9, :cond_9

    .line 246
    .line 247
    iget-object v9, v4, Lcom/google/android/gms/internal/ads/wg;->b:Lcom/google/android/gms/internal/ads/Ve;

    .line 248
    .line 249
    iget-object v9, v9, Lcom/google/android/gms/internal/ads/Ve;->d:[Lcom/google/android/gms/internal/ads/p0;

    .line 250
    .line 251
    aget-object v9, v9, v5

    .line 252
    .line 253
    iget-object v9, v9, Lcom/google/android/gms/internal/ads/p0;->q:Lcom/google/android/gms/internal/ads/mO;

    .line 254
    .line 255
    if-eqz v9, :cond_9

    .line 256
    .line 257
    goto :goto_7

    .line 258
    :cond_9
    add-int/lit8 v5, v5, 0x1

    .line 259
    .line 260
    goto :goto_6

    .line 261
    :cond_a
    move/from16 v3, v16

    .line 262
    .line 263
    const/16 v9, 0xb

    .line 264
    .line 265
    goto :goto_5

    .line 266
    :cond_b
    move-object v9, v6

    .line 267
    :goto_7
    if-eqz v9, :cond_10

    .line 268
    .line 269
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/wL;->P:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 270
    .line 271
    sget v2, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 272
    .line 273
    const/4 v2, 0x0

    .line 274
    :goto_8
    iget v3, v9, Lcom/google/android/gms/internal/ads/mO;->J:I

    .line 275
    .line 276
    if-ge v2, v3, :cond_f

    .line 277
    .line 278
    iget-object v3, v9, Lcom/google/android/gms/internal/ads/mO;->G:[Lcom/google/android/gms/internal/ads/cO;

    .line 279
    .line 280
    aget-object v3, v3, v2

    .line 281
    .line 282
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/cO;->H:Ljava/util/UUID;

    .line 283
    .line 284
    sget-object v4, Lcom/google/android/gms/internal/ads/wK;->d:Ljava/util/UUID;

    .line 285
    .line 286
    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result v4

    .line 290
    if-eqz v4, :cond_c

    .line 291
    .line 292
    const/4 v2, 0x3

    .line 293
    goto :goto_9

    .line 294
    :cond_c
    sget-object v4, Lcom/google/android/gms/internal/ads/wK;->e:Ljava/util/UUID;

    .line 295
    .line 296
    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    move-result v4

    .line 300
    if-eqz v4, :cond_d

    .line 301
    .line 302
    const/4 v2, 0x2

    .line 303
    goto :goto_9

    .line 304
    :cond_d
    sget-object v4, Lcom/google/android/gms/internal/ads/wK;->c:Ljava/util/UUID;

    .line 305
    .line 306
    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    move-result v3

    .line 310
    if-eqz v3, :cond_e

    .line 311
    .line 312
    const/4 v2, 0x6

    .line 313
    goto :goto_9

    .line 314
    :cond_e
    add-int/lit8 v2, v2, 0x1

    .line 315
    .line 316
    goto :goto_8

    .line 317
    :cond_f
    const/4 v2, 0x1

    .line 318
    :goto_9
    invoke-virtual {v1, v2}, Landroid/media/metrics/PlaybackMetrics$Builder;->setDrmType(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 319
    .line 320
    .line 321
    :cond_10
    const/16 v1, 0x3f3

    .line 322
    .line 323
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Om;->s(I)Z

    .line 324
    .line 325
    .line 326
    move-result v1

    .line 327
    if-eqz v1, :cond_11

    .line 328
    .line 329
    iget v1, v7, Lcom/google/android/gms/internal/ads/wL;->e0:I

    .line 330
    .line 331
    add-int/2addr v1, v13

    .line 332
    iput v1, v7, Lcom/google/android/gms/internal/ads/wL;->e0:I

    .line 333
    .line 334
    :cond_11
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/wL;->T:Lcom/google/android/gms/internal/ads/Xa;

    .line 335
    .line 336
    const/16 v16, 0x8

    .line 337
    .line 338
    const/16 v17, 0x7

    .line 339
    .line 340
    const/16 v18, 0x5

    .line 341
    .line 342
    const/16 v19, 0x9

    .line 343
    .line 344
    if-nez v1, :cond_12

    .line 345
    .line 346
    goto/16 :goto_11

    .line 347
    .line 348
    :cond_12
    iget-object v2, v7, Lcom/google/android/gms/internal/ads/wL;->G:Landroid/content/Context;

    .line 349
    .line 350
    iget v3, v1, Lcom/google/android/gms/internal/ads/Xa;->G:I

    .line 351
    .line 352
    const/16 v4, 0x3e9

    .line 353
    .line 354
    if-ne v3, v4, :cond_14

    .line 355
    .line 356
    const/16 v2, 0x14

    .line 357
    .line 358
    :cond_13
    :goto_a
    const/4 v3, 0x0

    .line 359
    goto/16 :goto_10

    .line 360
    .line 361
    :cond_14
    move-object v3, v1

    .line 362
    check-cast v3, Lcom/google/android/gms/internal/ads/jK;

    .line 363
    .line 364
    iget v4, v3, Lcom/google/android/gms/internal/ads/jK;->I:I

    .line 365
    .line 366
    if-ne v4, v13, :cond_15

    .line 367
    .line 368
    const/4 v4, 0x1

    .line 369
    goto :goto_b

    .line 370
    :cond_15
    const/4 v4, 0x0

    .line 371
    :goto_b
    iget v3, v3, Lcom/google/android/gms/internal/ads/jK;->M:I

    .line 372
    .line 373
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 374
    .line 375
    .line 376
    move-result-object v5

    .line 377
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 378
    .line 379
    .line 380
    instance-of v9, v5, Ljava/io/IOException;

    .line 381
    .line 382
    const/16 v20, 0x1c

    .line 383
    .line 384
    const/16 v21, 0x19

    .line 385
    .line 386
    const/16 v22, 0x1a

    .line 387
    .line 388
    const/16 v23, 0x18

    .line 389
    .line 390
    const/16 v24, 0x1b

    .line 391
    .line 392
    const/16 v14, 0x17

    .line 393
    .line 394
    if-eqz v9, :cond_27

    .line 395
    .line 396
    instance-of v3, v5, Lcom/google/android/gms/internal/ads/cH;

    .line 397
    .line 398
    if-eqz v3, :cond_16

    .line 399
    .line 400
    check-cast v5, Lcom/google/android/gms/internal/ads/cH;

    .line 401
    .line 402
    iget v2, v5, Lcom/google/android/gms/internal/ads/cH;->I:I

    .line 403
    .line 404
    move v3, v2

    .line 405
    const/4 v2, 0x5

    .line 406
    goto/16 :goto_10

    .line 407
    .line 408
    :cond_16
    instance-of v3, v5, Lcom/google/android/gms/internal/ads/Ka;

    .line 409
    .line 410
    if-eqz v3, :cond_17

    .line 411
    .line 412
    const/16 v2, 0xb

    .line 413
    .line 414
    goto :goto_a

    .line 415
    :cond_17
    instance-of v3, v5, Lcom/google/android/gms/internal/ads/GG;

    .line 416
    .line 417
    if-nez v3, :cond_22

    .line 418
    .line 419
    instance-of v4, v5, Lcom/google/android/gms/internal/ads/CJ;

    .line 420
    .line 421
    if-eqz v4, :cond_18

    .line 422
    .line 423
    goto/16 :goto_f

    .line 424
    .line 425
    :cond_18
    iget v2, v1, Lcom/google/android/gms/internal/ads/Xa;->G:I

    .line 426
    .line 427
    const/16 v3, 0x3ea

    .line 428
    .line 429
    if-ne v2, v3, :cond_19

    .line 430
    .line 431
    const/16 v2, 0x15

    .line 432
    .line 433
    goto :goto_a

    .line 434
    :cond_19
    instance-of v2, v5, Lcom/google/android/gms/internal/ads/tM;

    .line 435
    .line 436
    if-eqz v2, :cond_1f

    .line 437
    .line 438
    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 439
    .line 440
    .line 441
    move-result-object v2

    .line 442
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 443
    .line 444
    .line 445
    instance-of v3, v2, Landroid/media/MediaDrm$MediaDrmStateException;

    .line 446
    .line 447
    if-eqz v3, :cond_1a

    .line 448
    .line 449
    check-cast v2, Landroid/media/MediaDrm$MediaDrmStateException;

    .line 450
    .line 451
    invoke-virtual {v2}, Landroid/media/MediaDrm$MediaDrmStateException;->getDiagnosticInfo()Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v2

    .line 455
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Et;->q(Ljava/lang/String;)I

    .line 456
    .line 457
    .line 458
    move-result v2

    .line 459
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Et;->p(I)I

    .line 460
    .line 461
    .line 462
    move-result v3

    .line 463
    packed-switch v3, :pswitch_data_0

    .line 464
    .line 465
    .line 466
    :goto_c
    const/16 v20, 0x1b

    .line 467
    .line 468
    goto :goto_d

    .line 469
    :pswitch_0
    const/16 v20, 0x1a

    .line 470
    .line 471
    goto :goto_d

    .line 472
    :pswitch_1
    const/16 v20, 0x19

    .line 473
    .line 474
    goto :goto_d

    .line 475
    :pswitch_2
    const/16 v20, 0x18

    .line 476
    .line 477
    :goto_d
    :pswitch_3
    move v3, v2

    .line 478
    move/from16 v2, v20

    .line 479
    .line 480
    goto/16 :goto_10

    .line 481
    .line 482
    :cond_1a
    sget v3, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 483
    .line 484
    if-lt v3, v14, :cond_1b

    .line 485
    .line 486
    instance-of v3, v2, Landroid/media/MediaDrmResetException;

    .line 487
    .line 488
    if-eqz v3, :cond_1b

    .line 489
    .line 490
    const/16 v2, 0x1b

    .line 491
    .line 492
    goto/16 :goto_a

    .line 493
    .line 494
    :cond_1b
    instance-of v3, v2, Landroid/media/NotProvisionedException;

    .line 495
    .line 496
    if-eqz v3, :cond_1c

    .line 497
    .line 498
    const/16 v2, 0x18

    .line 499
    .line 500
    goto/16 :goto_a

    .line 501
    .line 502
    :cond_1c
    instance-of v3, v2, Landroid/media/DeniedByServerException;

    .line 503
    .line 504
    if-eqz v3, :cond_1d

    .line 505
    .line 506
    const/16 v2, 0x1d

    .line 507
    .line 508
    goto/16 :goto_a

    .line 509
    .line 510
    :cond_1d
    instance-of v2, v2, Lcom/google/android/gms/internal/ads/AM;

    .line 511
    .line 512
    if-eqz v2, :cond_1e

    .line 513
    .line 514
    :goto_e
    const/16 v2, 0x17

    .line 515
    .line 516
    goto/16 :goto_a

    .line 517
    .line 518
    :cond_1e
    const/16 v2, 0x1e

    .line 519
    .line 520
    goto/16 :goto_a

    .line 521
    .line 522
    :cond_1f
    instance-of v2, v5, Lcom/google/android/gms/internal/ads/JF;

    .line 523
    .line 524
    if-eqz v2, :cond_21

    .line 525
    .line 526
    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 527
    .line 528
    .line 529
    move-result-object v2

    .line 530
    instance-of v2, v2, Ljava/io/FileNotFoundException;

    .line 531
    .line 532
    if-eqz v2, :cond_21

    .line 533
    .line 534
    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 535
    .line 536
    .line 537
    move-result-object v2

    .line 538
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 539
    .line 540
    .line 541
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 542
    .line 543
    .line 544
    move-result-object v2

    .line 545
    instance-of v3, v2, Landroid/system/ErrnoException;

    .line 546
    .line 547
    const/16 v4, 0x1f

    .line 548
    .line 549
    if-eqz v3, :cond_20

    .line 550
    .line 551
    check-cast v2, Landroid/system/ErrnoException;

    .line 552
    .line 553
    iget v2, v2, Landroid/system/ErrnoException;->errno:I

    .line 554
    .line 555
    sget v3, Landroid/system/OsConstants;->EACCES:I

    .line 556
    .line 557
    if-ne v2, v3, :cond_20

    .line 558
    .line 559
    const/16 v2, 0x20

    .line 560
    .line 561
    goto/16 :goto_a

    .line 562
    .line 563
    :cond_20
    const/16 v2, 0x1f

    .line 564
    .line 565
    goto/16 :goto_a

    .line 566
    .line 567
    :cond_21
    const/16 v2, 0x9

    .line 568
    .line 569
    goto/16 :goto_a

    .line 570
    .line 571
    :cond_22
    :goto_f
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Kq;->e(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/Kq;

    .line 572
    .line 573
    .line 574
    move-result-object v2

    .line 575
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Kq;->b()I

    .line 576
    .line 577
    .line 578
    move-result v2

    .line 579
    if-ne v2, v13, :cond_23

    .line 580
    .line 581
    const/4 v2, 0x3

    .line 582
    goto/16 :goto_a

    .line 583
    .line 584
    :cond_23
    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 585
    .line 586
    .line 587
    move-result-object v2

    .line 588
    instance-of v4, v2, Ljava/net/UnknownHostException;

    .line 589
    .line 590
    if-eqz v4, :cond_24

    .line 591
    .line 592
    const/4 v2, 0x6

    .line 593
    goto/16 :goto_a

    .line 594
    .line 595
    :cond_24
    instance-of v2, v2, Ljava/net/SocketTimeoutException;

    .line 596
    .line 597
    if-eqz v2, :cond_25

    .line 598
    .line 599
    const/4 v2, 0x7

    .line 600
    goto/16 :goto_a

    .line 601
    .line 602
    :cond_25
    if-eqz v3, :cond_26

    .line 603
    .line 604
    check-cast v5, Lcom/google/android/gms/internal/ads/GG;

    .line 605
    .line 606
    iget v2, v5, Lcom/google/android/gms/internal/ads/GG;->H:I

    .line 607
    .line 608
    if-ne v2, v13, :cond_26

    .line 609
    .line 610
    const/4 v2, 0x4

    .line 611
    goto/16 :goto_a

    .line 612
    .line 613
    :cond_26
    const/16 v2, 0x8

    .line 614
    .line 615
    goto/16 :goto_a

    .line 616
    .line 617
    :cond_27
    if-eqz v4, :cond_28

    .line 618
    .line 619
    const/16 v2, 0x23

    .line 620
    .line 621
    if-eqz v3, :cond_13

    .line 622
    .line 623
    if-ne v3, v13, :cond_28

    .line 624
    .line 625
    goto/16 :goto_a

    .line 626
    .line 627
    :cond_28
    if-eqz v4, :cond_29

    .line 628
    .line 629
    if-ne v3, v15, :cond_29

    .line 630
    .line 631
    const/16 v2, 0xf

    .line 632
    .line 633
    goto/16 :goto_a

    .line 634
    .line 635
    :cond_29
    if-eqz v4, :cond_2a

    .line 636
    .line 637
    if-ne v3, v12, :cond_2a

    .line 638
    .line 639
    goto :goto_e

    .line 640
    :cond_2a
    instance-of v2, v5, Lcom/google/android/gms/internal/ads/SM;

    .line 641
    .line 642
    if-eqz v2, :cond_2b

    .line 643
    .line 644
    check-cast v5, Lcom/google/android/gms/internal/ads/SM;

    .line 645
    .line 646
    iget-object v2, v5, Lcom/google/android/gms/internal/ads/SM;->I:Ljava/lang/String;

    .line 647
    .line 648
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Et;->q(Ljava/lang/String;)I

    .line 649
    .line 650
    .line 651
    move-result v2

    .line 652
    move v3, v2

    .line 653
    const/16 v2, 0xd

    .line 654
    .line 655
    goto :goto_10

    .line 656
    :cond_2b
    instance-of v2, v5, Lcom/google/android/gms/internal/ads/OM;

    .line 657
    .line 658
    const/16 v3, 0xe

    .line 659
    .line 660
    if-eqz v2, :cond_2c

    .line 661
    .line 662
    check-cast v5, Lcom/google/android/gms/internal/ads/OM;

    .line 663
    .line 664
    iget v2, v5, Lcom/google/android/gms/internal/ads/OM;->G:I

    .line 665
    .line 666
    move v3, v2

    .line 667
    const/16 v2, 0xe

    .line 668
    .line 669
    goto :goto_10

    .line 670
    :cond_2c
    instance-of v2, v5, Ljava/lang/OutOfMemoryError;

    .line 671
    .line 672
    if-eqz v2, :cond_2d

    .line 673
    .line 674
    const/16 v2, 0xe

    .line 675
    .line 676
    goto/16 :goto_a

    .line 677
    .line 678
    :cond_2d
    instance-of v2, v5, Lcom/google/android/gms/internal/ads/RL;

    .line 679
    .line 680
    if-eqz v2, :cond_2e

    .line 681
    .line 682
    check-cast v5, Lcom/google/android/gms/internal/ads/RL;

    .line 683
    .line 684
    iget v2, v5, Lcom/google/android/gms/internal/ads/RL;->G:I

    .line 685
    .line 686
    const/16 v3, 0x11

    .line 687
    .line 688
    move v3, v2

    .line 689
    const/16 v2, 0x11

    .line 690
    .line 691
    goto :goto_10

    .line 692
    :cond_2e
    instance-of v2, v5, Lcom/google/android/gms/internal/ads/SL;

    .line 693
    .line 694
    if-eqz v2, :cond_2f

    .line 695
    .line 696
    check-cast v5, Lcom/google/android/gms/internal/ads/SL;

    .line 697
    .line 698
    iget v2, v5, Lcom/google/android/gms/internal/ads/SL;->G:I

    .line 699
    .line 700
    const/16 v3, 0x12

    .line 701
    .line 702
    move v3, v2

    .line 703
    const/16 v2, 0x12

    .line 704
    .line 705
    goto :goto_10

    .line 706
    :cond_2f
    instance-of v2, v5, Landroid/media/MediaCodec$CryptoException;

    .line 707
    .line 708
    if-eqz v2, :cond_30

    .line 709
    .line 710
    check-cast v5, Landroid/media/MediaCodec$CryptoException;

    .line 711
    .line 712
    invoke-virtual {v5}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    .line 713
    .line 714
    .line 715
    move-result v2

    .line 716
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Et;->p(I)I

    .line 717
    .line 718
    .line 719
    move-result v3

    .line 720
    packed-switch v3, :pswitch_data_1

    .line 721
    .line 722
    .line 723
    goto/16 :goto_c

    .line 724
    .line 725
    :cond_30
    const/16 v2, 0x16

    .line 726
    .line 727
    goto/16 :goto_a

    .line 728
    .line 729
    :goto_10
    iget-object v4, v7, Lcom/google/android/gms/internal/ads/wL;->I:Landroid/media/metrics/PlaybackSession;

    .line 730
    .line 731
    new-instance v5, Landroid/media/metrics/PlaybackErrorEvent$Builder;

    .line 732
    .line 733
    invoke-direct {v5}, Landroid/media/metrics/PlaybackErrorEvent$Builder;-><init>()V

    .line 734
    .line 735
    .line 736
    iget-wide v8, v7, Lcom/google/android/gms/internal/ads/wL;->J:J

    .line 737
    .line 738
    sub-long v8, v10, v8

    .line 739
    .line 740
    invoke-virtual {v5, v8, v9}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->setTimeSinceCreatedMillis(J)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    .line 741
    .line 742
    .line 743
    move-result-object v5

    .line 744
    invoke-virtual {v5, v2}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->setErrorCode(I)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    .line 745
    .line 746
    .line 747
    move-result-object v2

    .line 748
    invoke-virtual {v2, v3}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->setSubErrorCode(I)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    .line 749
    .line 750
    .line 751
    move-result-object v2

    .line 752
    invoke-virtual {v2, v1}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->setException(Ljava/lang/Exception;)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    .line 753
    .line 754
    .line 755
    move-result-object v1

    .line 756
    invoke-virtual {v1}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->build()Landroid/media/metrics/PlaybackErrorEvent;

    .line 757
    .line 758
    .line 759
    move-result-object v1

    .line 760
    invoke-virtual {v4, v1}, Landroid/media/metrics/PlaybackSession;->reportPlaybackErrorEvent(Landroid/media/metrics/PlaybackErrorEvent;)V

    .line 761
    .line 762
    .line 763
    iput-boolean v13, v7, Lcom/google/android/gms/internal/ads/wL;->f0:Z

    .line 764
    .line 765
    iput-object v6, v7, Lcom/google/android/gms/internal/ads/wL;->T:Lcom/google/android/gms/internal/ads/Xa;

    .line 766
    .line 767
    :goto_11
    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/Om;->s(I)Z

    .line 768
    .line 769
    .line 770
    move-result v1

    .line 771
    if-eqz v1, :cond_31

    .line 772
    .line 773
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/Vc;->zzo()Lcom/google/android/gms/internal/ads/Hg;

    .line 774
    .line 775
    .line 776
    move-result-object v1

    .line 777
    invoke-virtual {v1, v12}, Lcom/google/android/gms/internal/ads/Hg;->a(I)Z

    .line 778
    .line 779
    .line 780
    move-result v2

    .line 781
    invoke-virtual {v1, v13}, Lcom/google/android/gms/internal/ads/Hg;->a(I)Z

    .line 782
    .line 783
    .line 784
    move-result v8

    .line 785
    invoke-virtual {v1, v15}, Lcom/google/android/gms/internal/ads/Hg;->a(I)Z

    .line 786
    .line 787
    .line 788
    move-result v1

    .line 789
    if-nez v2, :cond_32

    .line 790
    .line 791
    if-nez v8, :cond_32

    .line 792
    .line 793
    if-eqz v1, :cond_31

    .line 794
    .line 795
    const/4 v9, 0x1

    .line 796
    goto :goto_12

    .line 797
    :cond_31
    move-object v15, v6

    .line 798
    const/4 v14, 0x4

    .line 799
    goto/16 :goto_19

    .line 800
    .line 801
    :cond_32
    move v9, v1

    .line 802
    :goto_12
    if-nez v2, :cond_35

    .line 803
    .line 804
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/wL;->X:Lcom/google/android/gms/internal/ads/p0;

    .line 805
    .line 806
    invoke-static {v1, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 807
    .line 808
    .line 809
    move-result v1

    .line 810
    if-eqz v1, :cond_33

    .line 811
    .line 812
    goto :goto_14

    .line 813
    :cond_33
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/wL;->X:Lcom/google/android/gms/internal/ads/p0;

    .line 814
    .line 815
    if-nez v1, :cond_34

    .line 816
    .line 817
    const/16 v20, 0x1

    .line 818
    .line 819
    goto :goto_13

    .line 820
    :cond_34
    const/16 v20, 0x0

    .line 821
    .line 822
    :goto_13
    iput-object v6, v7, Lcom/google/android/gms/internal/ads/wL;->X:Lcom/google/android/gms/internal/ads/p0;

    .line 823
    .line 824
    const/4 v2, 0x1

    .line 825
    move-object/from16 v1, p0

    .line 826
    .line 827
    move-wide v3, v10

    .line 828
    const/4 v14, 0x4

    .line 829
    move-object v5, v6

    .line 830
    move-object v15, v6

    .line 831
    move/from16 v6, v20

    .line 832
    .line 833
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/wL;->n(IJLcom/google/android/gms/internal/ads/p0;I)V

    .line 834
    .line 835
    .line 836
    goto :goto_15

    .line 837
    :cond_35
    :goto_14
    move-object v15, v6

    .line 838
    const/4 v14, 0x4

    .line 839
    :goto_15
    if-nez v8, :cond_38

    .line 840
    .line 841
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/wL;->Y:Lcom/google/android/gms/internal/ads/p0;

    .line 842
    .line 843
    invoke-static {v1, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 844
    .line 845
    .line 846
    move-result v1

    .line 847
    if-eqz v1, :cond_36

    .line 848
    .line 849
    goto :goto_17

    .line 850
    :cond_36
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/wL;->Y:Lcom/google/android/gms/internal/ads/p0;

    .line 851
    .line 852
    if-nez v1, :cond_37

    .line 853
    .line 854
    const/4 v6, 0x1

    .line 855
    goto :goto_16

    .line 856
    :cond_37
    const/4 v6, 0x0

    .line 857
    :goto_16
    iput-object v15, v7, Lcom/google/android/gms/internal/ads/wL;->Y:Lcom/google/android/gms/internal/ads/p0;

    .line 858
    .line 859
    const/4 v2, 0x0

    .line 860
    move-object/from16 v1, p0

    .line 861
    .line 862
    move-wide v3, v10

    .line 863
    move-object v5, v15

    .line 864
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/wL;->n(IJLcom/google/android/gms/internal/ads/p0;I)V

    .line 865
    .line 866
    .line 867
    :cond_38
    :goto_17
    if-nez v9, :cond_3b

    .line 868
    .line 869
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/wL;->Z:Lcom/google/android/gms/internal/ads/p0;

    .line 870
    .line 871
    invoke-static {v1, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 872
    .line 873
    .line 874
    move-result v1

    .line 875
    if-eqz v1, :cond_39

    .line 876
    .line 877
    goto :goto_19

    .line 878
    :cond_39
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/wL;->Z:Lcom/google/android/gms/internal/ads/p0;

    .line 879
    .line 880
    if-nez v1, :cond_3a

    .line 881
    .line 882
    const/4 v6, 0x1

    .line 883
    goto :goto_18

    .line 884
    :cond_3a
    const/4 v6, 0x0

    .line 885
    :goto_18
    iput-object v15, v7, Lcom/google/android/gms/internal/ads/wL;->Z:Lcom/google/android/gms/internal/ads/p0;

    .line 886
    .line 887
    const/4 v2, 0x2

    .line 888
    move-object/from16 v1, p0

    .line 889
    .line 890
    move-wide v3, v10

    .line 891
    move-object v5, v15

    .line 892
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/wL;->n(IJLcom/google/android/gms/internal/ads/p0;I)V

    .line 893
    .line 894
    .line 895
    :cond_3b
    :goto_19
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/wL;->U:Lcom/google/android/gms/internal/ads/f8;

    .line 896
    .line 897
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/wL;->o(Lcom/google/android/gms/internal/ads/f8;)Z

    .line 898
    .line 899
    .line 900
    move-result v1

    .line 901
    if-eqz v1, :cond_3e

    .line 902
    .line 903
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/wL;->U:Lcom/google/android/gms/internal/ads/f8;

    .line 904
    .line 905
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/f8;->J:Ljava/lang/Object;

    .line 906
    .line 907
    move-object v5, v1

    .line 908
    check-cast v5, Lcom/google/android/gms/internal/ads/p0;

    .line 909
    .line 910
    iget v1, v5, Lcom/google/android/gms/internal/ads/p0;->t:I

    .line 911
    .line 912
    const/4 v2, -0x1

    .line 913
    if-eq v1, v2, :cond_3e

    .line 914
    .line 915
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/wL;->X:Lcom/google/android/gms/internal/ads/p0;

    .line 916
    .line 917
    invoke-static {v1, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 918
    .line 919
    .line 920
    move-result v1

    .line 921
    if-eqz v1, :cond_3c

    .line 922
    .line 923
    goto :goto_1b

    .line 924
    :cond_3c
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/wL;->X:Lcom/google/android/gms/internal/ads/p0;

    .line 925
    .line 926
    if-nez v1, :cond_3d

    .line 927
    .line 928
    const/4 v6, 0x1

    .line 929
    goto :goto_1a

    .line 930
    :cond_3d
    const/4 v6, 0x0

    .line 931
    :goto_1a
    iput-object v5, v7, Lcom/google/android/gms/internal/ads/wL;->X:Lcom/google/android/gms/internal/ads/p0;

    .line 932
    .line 933
    const/4 v2, 0x1

    .line 934
    move-object/from16 v1, p0

    .line 935
    .line 936
    move-wide v3, v10

    .line 937
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/wL;->n(IJLcom/google/android/gms/internal/ads/p0;I)V

    .line 938
    .line 939
    .line 940
    :goto_1b
    iput-object v15, v7, Lcom/google/android/gms/internal/ads/wL;->U:Lcom/google/android/gms/internal/ads/f8;

    .line 941
    .line 942
    :cond_3e
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/wL;->V:Lcom/google/android/gms/internal/ads/f8;

    .line 943
    .line 944
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/wL;->o(Lcom/google/android/gms/internal/ads/f8;)Z

    .line 945
    .line 946
    .line 947
    move-result v1

    .line 948
    if-eqz v1, :cond_41

    .line 949
    .line 950
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/wL;->V:Lcom/google/android/gms/internal/ads/f8;

    .line 951
    .line 952
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/f8;->J:Ljava/lang/Object;

    .line 953
    .line 954
    move-object v5, v1

    .line 955
    check-cast v5, Lcom/google/android/gms/internal/ads/p0;

    .line 956
    .line 957
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/wL;->Y:Lcom/google/android/gms/internal/ads/p0;

    .line 958
    .line 959
    invoke-static {v1, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 960
    .line 961
    .line 962
    move-result v1

    .line 963
    if-eqz v1, :cond_3f

    .line 964
    .line 965
    goto :goto_1d

    .line 966
    :cond_3f
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/wL;->Y:Lcom/google/android/gms/internal/ads/p0;

    .line 967
    .line 968
    if-nez v1, :cond_40

    .line 969
    .line 970
    const/4 v6, 0x1

    .line 971
    goto :goto_1c

    .line 972
    :cond_40
    const/4 v6, 0x0

    .line 973
    :goto_1c
    iput-object v5, v7, Lcom/google/android/gms/internal/ads/wL;->Y:Lcom/google/android/gms/internal/ads/p0;

    .line 974
    .line 975
    const/4 v2, 0x0

    .line 976
    move-object/from16 v1, p0

    .line 977
    .line 978
    move-wide v3, v10

    .line 979
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/wL;->n(IJLcom/google/android/gms/internal/ads/p0;I)V

    .line 980
    .line 981
    .line 982
    :goto_1d
    iput-object v15, v7, Lcom/google/android/gms/internal/ads/wL;->V:Lcom/google/android/gms/internal/ads/f8;

    .line 983
    .line 984
    :cond_41
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/wL;->W:Lcom/google/android/gms/internal/ads/f8;

    .line 985
    .line 986
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/wL;->o(Lcom/google/android/gms/internal/ads/f8;)Z

    .line 987
    .line 988
    .line 989
    move-result v1

    .line 990
    if-eqz v1, :cond_44

    .line 991
    .line 992
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/wL;->W:Lcom/google/android/gms/internal/ads/f8;

    .line 993
    .line 994
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/f8;->J:Ljava/lang/Object;

    .line 995
    .line 996
    move-object v5, v1

    .line 997
    check-cast v5, Lcom/google/android/gms/internal/ads/p0;

    .line 998
    .line 999
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/wL;->Z:Lcom/google/android/gms/internal/ads/p0;

    .line 1000
    .line 1001
    invoke-static {v1, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1002
    .line 1003
    .line 1004
    move-result v1

    .line 1005
    if-eqz v1, :cond_42

    .line 1006
    .line 1007
    goto :goto_1f

    .line 1008
    :cond_42
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/wL;->Z:Lcom/google/android/gms/internal/ads/p0;

    .line 1009
    .line 1010
    if-nez v1, :cond_43

    .line 1011
    .line 1012
    const/4 v6, 0x1

    .line 1013
    goto :goto_1e

    .line 1014
    :cond_43
    const/4 v6, 0x0

    .line 1015
    :goto_1e
    iput-object v5, v7, Lcom/google/android/gms/internal/ads/wL;->Z:Lcom/google/android/gms/internal/ads/p0;

    .line 1016
    .line 1017
    const/4 v2, 0x2

    .line 1018
    move-object/from16 v1, p0

    .line 1019
    .line 1020
    move-wide v3, v10

    .line 1021
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/wL;->n(IJLcom/google/android/gms/internal/ads/p0;I)V

    .line 1022
    .line 1023
    .line 1024
    :goto_1f
    iput-object v15, v7, Lcom/google/android/gms/internal/ads/wL;->W:Lcom/google/android/gms/internal/ads/f8;

    .line 1025
    .line 1026
    :cond_44
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/wL;->G:Landroid/content/Context;

    .line 1027
    .line 1028
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Kq;->e(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/Kq;

    .line 1029
    .line 1030
    .line 1031
    move-result-object v1

    .line 1032
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kq;->b()I

    .line 1033
    .line 1034
    .line 1035
    move-result v1

    .line 1036
    packed-switch v1, :pswitch_data_2

    .line 1037
    .line 1038
    .line 1039
    :pswitch_4
    const/4 v1, 0x1

    .line 1040
    goto :goto_20

    .line 1041
    :pswitch_5
    const/4 v1, 0x7

    .line 1042
    goto :goto_20

    .line 1043
    :pswitch_6
    const/16 v1, 0x8

    .line 1044
    .line 1045
    goto :goto_20

    .line 1046
    :pswitch_7
    const/4 v1, 0x3

    .line 1047
    goto :goto_20

    .line 1048
    :pswitch_8
    const/4 v1, 0x6

    .line 1049
    goto :goto_20

    .line 1050
    :pswitch_9
    const/4 v1, 0x5

    .line 1051
    goto :goto_20

    .line 1052
    :pswitch_a
    const/4 v1, 0x4

    .line 1053
    goto :goto_20

    .line 1054
    :pswitch_b
    const/4 v1, 0x2

    .line 1055
    goto :goto_20

    .line 1056
    :pswitch_c
    const/16 v1, 0x9

    .line 1057
    .line 1058
    goto :goto_20

    .line 1059
    :pswitch_d
    const/4 v1, 0x0

    .line 1060
    :goto_20
    iget v2, v7, Lcom/google/android/gms/internal/ads/wL;->S:I

    .line 1061
    .line 1062
    if-eq v1, v2, :cond_45

    .line 1063
    .line 1064
    iput v1, v7, Lcom/google/android/gms/internal/ads/wL;->S:I

    .line 1065
    .line 1066
    iget-object v2, v7, Lcom/google/android/gms/internal/ads/wL;->I:Landroid/media/metrics/PlaybackSession;

    .line 1067
    .line 1068
    new-instance v3, Landroid/media/metrics/NetworkEvent$Builder;

    .line 1069
    .line 1070
    invoke-direct {v3}, Landroid/media/metrics/NetworkEvent$Builder;-><init>()V

    .line 1071
    .line 1072
    .line 1073
    invoke-virtual {v3, v1}, Landroid/media/metrics/NetworkEvent$Builder;->setNetworkType(I)Landroid/media/metrics/NetworkEvent$Builder;

    .line 1074
    .line 1075
    .line 1076
    move-result-object v1

    .line 1077
    iget-wide v3, v7, Lcom/google/android/gms/internal/ads/wL;->J:J

    .line 1078
    .line 1079
    sub-long v3, v10, v3

    .line 1080
    .line 1081
    invoke-virtual {v1, v3, v4}, Landroid/media/metrics/NetworkEvent$Builder;->setTimeSinceCreatedMillis(J)Landroid/media/metrics/NetworkEvent$Builder;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v1

    .line 1085
    invoke-virtual {v1}, Landroid/media/metrics/NetworkEvent$Builder;->build()Landroid/media/metrics/NetworkEvent;

    .line 1086
    .line 1087
    .line 1088
    move-result-object v1

    .line 1089
    invoke-virtual {v2, v1}, Landroid/media/metrics/PlaybackSession;->reportNetworkEvent(Landroid/media/metrics/NetworkEvent;)V

    .line 1090
    .line 1091
    .line 1092
    :cond_45
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/Vc;->zzf()I

    .line 1093
    .line 1094
    .line 1095
    move-result v1

    .line 1096
    if-eq v1, v12, :cond_46

    .line 1097
    .line 1098
    const/4 v1, 0x0

    .line 1099
    iput-boolean v1, v7, Lcom/google/android/gms/internal/ads/wL;->a0:Z

    .line 1100
    .line 1101
    :cond_46
    move-object/from16 v2, p1

    .line 1102
    .line 1103
    check-cast v2, Lcom/google/android/gms/internal/ads/aL;

    .line 1104
    .line 1105
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/aL;->c:LG/c;

    .line 1106
    .line 1107
    invoke-virtual {v3}, LG/c;->c()V

    .line 1108
    .line 1109
    .line 1110
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/aL;->b:Lcom/google/android/gms/internal/ads/vK;

    .line 1111
    .line 1112
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/vK;->r()V

    .line 1113
    .line 1114
    .line 1115
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/vK;->P:Lcom/google/android/gms/internal/ads/RK;

    .line 1116
    .line 1117
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/RK;->f:Lcom/google/android/gms/internal/ads/jK;

    .line 1118
    .line 1119
    const/16 v3, 0xa

    .line 1120
    .line 1121
    if-nez v2, :cond_47

    .line 1122
    .line 1123
    const/4 v1, 0x0

    .line 1124
    iput-boolean v1, v7, Lcom/google/android/gms/internal/ads/wL;->b0:Z

    .line 1125
    .line 1126
    goto :goto_21

    .line 1127
    :cond_47
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/Om;->s(I)Z

    .line 1128
    .line 1129
    .line 1130
    move-result v1

    .line 1131
    if-eqz v1, :cond_48

    .line 1132
    .line 1133
    iput-boolean v13, v7, Lcom/google/android/gms/internal/ads/wL;->b0:Z

    .line 1134
    .line 1135
    :cond_48
    :goto_21
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/Vc;->zzf()I

    .line 1136
    .line 1137
    .line 1138
    move-result v1

    .line 1139
    iget-boolean v2, v7, Lcom/google/android/gms/internal/ads/wL;->a0:Z

    .line 1140
    .line 1141
    if-eqz v2, :cond_49

    .line 1142
    .line 1143
    const/4 v9, 0x5

    .line 1144
    goto :goto_22

    .line 1145
    :cond_49
    iget-boolean v2, v7, Lcom/google/android/gms/internal/ads/wL;->b0:Z

    .line 1146
    .line 1147
    if-eqz v2, :cond_4a

    .line 1148
    .line 1149
    const/16 v9, 0xd

    .line 1150
    .line 1151
    goto :goto_22

    .line 1152
    :cond_4a
    if-ne v1, v14, :cond_4b

    .line 1153
    .line 1154
    const/16 v9, 0xb

    .line 1155
    .line 1156
    goto :goto_22

    .line 1157
    :cond_4b
    const/16 v9, 0xc

    .line 1158
    .line 1159
    if-ne v1, v12, :cond_50

    .line 1160
    .line 1161
    iget v1, v7, Lcom/google/android/gms/internal/ads/wL;->R:I

    .line 1162
    .line 1163
    if-eqz v1, :cond_4c

    .line 1164
    .line 1165
    if-eq v1, v12, :cond_4c

    .line 1166
    .line 1167
    if-ne v1, v9, :cond_4d

    .line 1168
    .line 1169
    :cond_4c
    const/4 v9, 0x2

    .line 1170
    goto :goto_22

    .line 1171
    :cond_4d
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/Vc;->u()Z

    .line 1172
    .line 1173
    .line 1174
    move-result v1

    .line 1175
    if-nez v1, :cond_4e

    .line 1176
    .line 1177
    const/4 v9, 0x7

    .line 1178
    goto :goto_22

    .line 1179
    :cond_4e
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/Vc;->zzg()I

    .line 1180
    .line 1181
    .line 1182
    move-result v1

    .line 1183
    if-eqz v1, :cond_4f

    .line 1184
    .line 1185
    const/16 v9, 0xa

    .line 1186
    .line 1187
    goto :goto_22

    .line 1188
    :cond_4f
    const/4 v9, 0x6

    .line 1189
    goto :goto_22

    .line 1190
    :cond_50
    const/4 v2, 0x3

    .line 1191
    if-ne v1, v2, :cond_53

    .line 1192
    .line 1193
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/Vc;->u()Z

    .line 1194
    .line 1195
    .line 1196
    move-result v1

    .line 1197
    if-nez v1, :cond_51

    .line 1198
    .line 1199
    const/4 v9, 0x4

    .line 1200
    goto :goto_22

    .line 1201
    :cond_51
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/Vc;->zzg()I

    .line 1202
    .line 1203
    .line 1204
    move-result v1

    .line 1205
    if-eqz v1, :cond_52

    .line 1206
    .line 1207
    const/16 v9, 0x9

    .line 1208
    .line 1209
    goto :goto_22

    .line 1210
    :cond_52
    const/4 v9, 0x3

    .line 1211
    goto :goto_22

    .line 1212
    :cond_53
    if-ne v1, v13, :cond_54

    .line 1213
    .line 1214
    iget v1, v7, Lcom/google/android/gms/internal/ads/wL;->R:I

    .line 1215
    .line 1216
    if-eqz v1, :cond_54

    .line 1217
    .line 1218
    goto :goto_22

    .line 1219
    :cond_54
    iget v9, v7, Lcom/google/android/gms/internal/ads/wL;->R:I

    .line 1220
    .line 1221
    :goto_22
    iget v1, v7, Lcom/google/android/gms/internal/ads/wL;->R:I

    .line 1222
    .line 1223
    if-eq v1, v9, :cond_55

    .line 1224
    .line 1225
    iput v9, v7, Lcom/google/android/gms/internal/ads/wL;->R:I

    .line 1226
    .line 1227
    iput-boolean v13, v7, Lcom/google/android/gms/internal/ads/wL;->f0:Z

    .line 1228
    .line 1229
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/wL;->I:Landroid/media/metrics/PlaybackSession;

    .line 1230
    .line 1231
    new-instance v2, Landroid/media/metrics/PlaybackStateEvent$Builder;

    .line 1232
    .line 1233
    invoke-direct {v2}, Landroid/media/metrics/PlaybackStateEvent$Builder;-><init>()V

    .line 1234
    .line 1235
    .line 1236
    iget v3, v7, Lcom/google/android/gms/internal/ads/wL;->R:I

    .line 1237
    .line 1238
    invoke-virtual {v2, v3}, Landroid/media/metrics/PlaybackStateEvent$Builder;->setState(I)Landroid/media/metrics/PlaybackStateEvent$Builder;

    .line 1239
    .line 1240
    .line 1241
    move-result-object v2

    .line 1242
    iget-wide v3, v7, Lcom/google/android/gms/internal/ads/wL;->J:J

    .line 1243
    .line 1244
    sub-long/2addr v10, v3

    .line 1245
    invoke-virtual {v2, v10, v11}, Landroid/media/metrics/PlaybackStateEvent$Builder;->setTimeSinceCreatedMillis(J)Landroid/media/metrics/PlaybackStateEvent$Builder;

    .line 1246
    .line 1247
    .line 1248
    move-result-object v2

    .line 1249
    invoke-virtual {v2}, Landroid/media/metrics/PlaybackStateEvent$Builder;->build()Landroid/media/metrics/PlaybackStateEvent;

    .line 1250
    .line 1251
    .line 1252
    move-result-object v2

    .line 1253
    invoke-virtual {v1, v2}, Landroid/media/metrics/PlaybackSession;->reportPlaybackStateEvent(Landroid/media/metrics/PlaybackStateEvent;)V

    .line 1254
    .line 1255
    .line 1256
    :cond_55
    const/16 v1, 0x404

    .line 1257
    .line 1258
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Om;->s(I)Z

    .line 1259
    .line 1260
    .line 1261
    move-result v2

    .line 1262
    if-eqz v2, :cond_56

    .line 1263
    .line 1264
    iget-object v2, v7, Lcom/google/android/gms/internal/ads/wL;->H:Lcom/google/android/gms/internal/ads/vL;

    .line 1265
    .line 1266
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Om;->I:Ljava/lang/Object;

    .line 1267
    .line 1268
    check-cast v0, Landroid/util/SparseArray;

    .line 1269
    .line 1270
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1271
    .line 1272
    .line 1273
    move-result-object v0

    .line 1274
    check-cast v0, Lcom/google/android/gms/internal/ads/dL;

    .line 1275
    .line 1276
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1277
    .line 1278
    .line 1279
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/vL;->b(Lcom/google/android/gms/internal/ads/dL;)V

    .line 1280
    .line 1281
    .line 1282
    :cond_56
    :goto_23
    return-void

    .line 1283
    :pswitch_data_0
    .packed-switch 0x1772
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1284
    .line 1285
    .line 1286
    .line 1287
    .line 1288
    .line 1289
    .line 1290
    .line 1291
    .line 1292
    .line 1293
    .line 1294
    .line 1295
    :pswitch_data_1
    .packed-switch 0x1772
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1296
    .line 1297
    .line 1298
    .line 1299
    .line 1300
    .line 1301
    .line 1302
    .line 1303
    .line 1304
    .line 1305
    .line 1306
    .line 1307
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_4
        :pswitch_7
        :pswitch_4
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public final f()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wL;->P:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/wL;->f0:Z

    .line 7
    .line 8
    if-eqz v2, :cond_3

    .line 9
    .line 10
    iget v2, p0, Lcom/google/android/gms/internal/ads/wL;->e0:I

    .line 11
    .line 12
    invoke-static {v0, v2}, LN/f;->n(Landroid/media/metrics/PlaybackMetrics$Builder;I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wL;->P:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 16
    .line 17
    iget v2, p0, Lcom/google/android/gms/internal/ads/wL;->c0:I

    .line 18
    .line 19
    invoke-static {v0, v2}, LC0/D;->r(Landroid/media/metrics/PlaybackMetrics$Builder;I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wL;->P:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 23
    .line 24
    iget v2, p0, Lcom/google/android/gms/internal/ads/wL;->d0:I

    .line 25
    .line 26
    invoke-static {v0, v2}, LC0/D;->v(Landroid/media/metrics/PlaybackMetrics$Builder;I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wL;->M:Ljava/util/HashMap;

    .line 30
    .line 31
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/wL;->O:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Ljava/lang/Long;

    .line 38
    .line 39
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/wL;->P:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 40
    .line 41
    const-wide/16 v3, 0x0

    .line 42
    .line 43
    if-nez v0, :cond_0

    .line 44
    .line 45
    move-wide v5, v3

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 48
    .line 49
    .line 50
    move-result-wide v5

    .line 51
    :goto_0
    invoke-static {v2, v5, v6}, LC0/D;->i(Landroid/media/metrics/PlaybackMetrics$Builder;J)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wL;->N:Ljava/util/HashMap;

    .line 55
    .line 56
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/wL;->O:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Ljava/lang/Long;

    .line 63
    .line 64
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/wL;->P:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 65
    .line 66
    if-nez v0, :cond_1

    .line 67
    .line 68
    move-wide v5, v3

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 71
    .line 72
    .line 73
    move-result-wide v5

    .line 74
    :goto_1
    invoke-static {v2, v5, v6}, LC0/D;->s(Landroid/media/metrics/PlaybackMetrics$Builder;J)V

    .line 75
    .line 76
    .line 77
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/wL;->P:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 78
    .line 79
    if-eqz v0, :cond_2

    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 82
    .line 83
    .line 84
    move-result-wide v5

    .line 85
    cmp-long v0, v5, v3

    .line 86
    .line 87
    if-lez v0, :cond_2

    .line 88
    .line 89
    const/4 v0, 0x1

    .line 90
    goto :goto_2

    .line 91
    :cond_2
    const/4 v0, 0x0

    .line 92
    :goto_2
    invoke-static {v2, v0}, LC0/D;->z(Landroid/media/metrics/PlaybackMetrics$Builder;I)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wL;->P:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 96
    .line 97
    invoke-static {v0}, LC0/D;->d(Landroid/media/metrics/PlaybackMetrics$Builder;)Landroid/media/metrics/PlaybackMetrics;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/wL;->I:Landroid/media/metrics/PlaybackSession;

    .line 102
    .line 103
    invoke-static {v2, v0}, LC0/D;->l(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/PlaybackMetrics;)V

    .line 104
    .line 105
    .line 106
    :cond_3
    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/wL;->P:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 108
    .line 109
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/wL;->O:Ljava/lang/String;

    .line 110
    .line 111
    iput v1, p0, Lcom/google/android/gms/internal/ads/wL;->e0:I

    .line 112
    .line 113
    iput v1, p0, Lcom/google/android/gms/internal/ads/wL;->c0:I

    .line 114
    .line 115
    iput v1, p0, Lcom/google/android/gms/internal/ads/wL;->d0:I

    .line 116
    .line 117
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/wL;->X:Lcom/google/android/gms/internal/ads/p0;

    .line 118
    .line 119
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/wL;->Y:Lcom/google/android/gms/internal/ads/p0;

    .line 120
    .line 121
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/wL;->Z:Lcom/google/android/gms/internal/ads/p0;

    .line 122
    .line 123
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/wL;->f0:Z

    .line 124
    .line 125
    return-void
.end method

.method public final g(Lcom/google/android/gms/internal/ads/Ie;Lcom/google/android/gms/internal/ads/wN;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wL;->P:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    goto/16 :goto_6

    .line 6
    .line 7
    :cond_0
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/wN;->a:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/Ie;->a(Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    const/4 v1, -0x1

    .line 14
    if-eq p2, v1, :cond_13

    .line 15
    .line 16
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/wL;->L:Lcom/google/android/gms/internal/ads/je;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-virtual {p1, p2, v2, v3}, Lcom/google/android/gms/internal/ads/Ie;->d(ILcom/google/android/gms/internal/ads/je;Z)Lcom/google/android/gms/internal/ads/je;

    .line 20
    .line 21
    .line 22
    iget p2, v2, Lcom/google/android/gms/internal/ads/je;->c:I

    .line 23
    .line 24
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/wL;->K:Lcom/google/android/gms/internal/ads/we;

    .line 25
    .line 26
    const-wide/16 v4, 0x0

    .line 27
    .line 28
    invoke-virtual {p1, p2, v2, v4, v5}, Lcom/google/android/gms/internal/ads/Ie;->e(ILcom/google/android/gms/internal/ads/we;J)Lcom/google/android/gms/internal/ads/we;

    .line 29
    .line 30
    .line 31
    iget-object p1, v2, Lcom/google/android/gms/internal/ads/we;->b:Lcom/google/android/gms/internal/ads/x6;

    .line 32
    .line 33
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/x6;->b:Lcom/google/android/gms/internal/ads/e5;

    .line 34
    .line 35
    const/4 p2, 0x1

    .line 36
    const/4 v4, 0x2

    .line 37
    if-nez p1, :cond_1

    .line 38
    .line 39
    goto/16 :goto_5

    .line 40
    .line 41
    :cond_1
    sget v5, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 42
    .line 43
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/e5;->a:Landroid/net/Uri;

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    const/4 v6, 0x3

    .line 50
    const/4 v7, 0x4

    .line 51
    if-eqz v5, :cond_3

    .line 52
    .line 53
    const-string v8, "rtsp"

    .line 54
    .line 55
    invoke-static {v8, v5}, Lo3/r;->F(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-nez v5, :cond_2

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    const/4 v3, 0x3

    .line 63
    goto/16 :goto_4

    .line 64
    .line 65
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    if-nez v5, :cond_5

    .line 70
    .line 71
    :cond_4
    const/4 v3, 0x4

    .line 72
    goto/16 :goto_4

    .line 73
    .line 74
    :cond_5
    const/16 v8, 0x2e

    .line 75
    .line 76
    invoke-virtual {v5, v8}, Ljava/lang/String;->lastIndexOf(I)I

    .line 77
    .line 78
    .line 79
    move-result v8

    .line 80
    if-ltz v8, :cond_b

    .line 81
    .line 82
    add-int/2addr v8, p2

    .line 83
    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    invoke-static {v5}, Lo3/r;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 95
    .line 96
    .line 97
    move-result v8

    .line 98
    sparse-switch v8, :sswitch_data_0

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :sswitch_0
    const-string v8, "m3u8"

    .line 103
    .line 104
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    if-nez v5, :cond_6

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_6
    const/4 v1, 0x3

    .line 112
    goto :goto_1

    .line 113
    :sswitch_1
    const-string v8, "isml"

    .line 114
    .line 115
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    if-nez v5, :cond_7

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_7
    const/4 v1, 0x2

    .line 123
    goto :goto_1

    .line 124
    :sswitch_2
    const-string v8, "mpd"

    .line 125
    .line 126
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v5

    .line 130
    if-nez v5, :cond_8

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_8
    const/4 v1, 0x1

    .line 134
    goto :goto_1

    .line 135
    :sswitch_3
    const-string v8, "ism"

    .line 136
    .line 137
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v5

    .line 141
    if-nez v5, :cond_9

    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_9
    const/4 v1, 0x0

    .line 145
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 146
    .line 147
    .line 148
    const/4 v1, 0x4

    .line 149
    goto :goto_2

    .line 150
    :pswitch_0
    const/4 v1, 0x2

    .line 151
    goto :goto_2

    .line 152
    :pswitch_1
    const/4 v1, 0x0

    .line 153
    goto :goto_2

    .line 154
    :pswitch_2
    const/4 v1, 0x1

    .line 155
    :goto_2
    if-ne v1, v7, :cond_a

    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_a
    move v3, v1

    .line 159
    goto :goto_4

    .line 160
    :cond_b
    :goto_3
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    sget-object v1, Lcom/google/android/gms/internal/ads/Et;->g:Ljava/util/regex/Pattern;

    .line 168
    .line 169
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    if-eqz v1, :cond_4

    .line 178
    .line 179
    invoke-virtual {p1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    if-eqz p1, :cond_d

    .line 184
    .line 185
    const-string v1, "format=mpd-time-csf"

    .line 186
    .line 187
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    if-eqz v1, :cond_c

    .line 192
    .line 193
    goto :goto_4

    .line 194
    :cond_c
    const-string v1, "format=m3u8-aapl"

    .line 195
    .line 196
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    if-eqz p1, :cond_d

    .line 201
    .line 202
    const/4 v3, 0x2

    .line 203
    goto :goto_4

    .line 204
    :cond_d
    const/4 v3, 0x1

    .line 205
    :goto_4
    if-eqz v3, :cond_10

    .line 206
    .line 207
    if-eq v3, p2, :cond_f

    .line 208
    .line 209
    if-eq v3, v4, :cond_e

    .line 210
    .line 211
    const/4 v3, 0x1

    .line 212
    goto :goto_5

    .line 213
    :cond_e
    const/4 v3, 0x4

    .line 214
    goto :goto_5

    .line 215
    :cond_f
    const/4 v3, 0x5

    .line 216
    goto :goto_5

    .line 217
    :cond_10
    const/4 v3, 0x3

    .line 218
    :goto_5
    invoke-static {v0, v3}, LC0/D;->B(Landroid/media/metrics/PlaybackMetrics$Builder;I)V

    .line 219
    .line 220
    .line 221
    iget-wide v5, v2, Lcom/google/android/gms/internal/ads/we;->j:J

    .line 222
    .line 223
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    cmp-long p1, v5, v7

    .line 229
    .line 230
    if-eqz p1, :cond_11

    .line 231
    .line 232
    iget-boolean p1, v2, Lcom/google/android/gms/internal/ads/we;->i:Z

    .line 233
    .line 234
    if-nez p1, :cond_11

    .line 235
    .line 236
    iget-boolean p1, v2, Lcom/google/android/gms/internal/ads/we;->g:Z

    .line 237
    .line 238
    if-nez p1, :cond_11

    .line 239
    .line 240
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/we;->b()Z

    .line 241
    .line 242
    .line 243
    move-result p1

    .line 244
    if-nez p1, :cond_11

    .line 245
    .line 246
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/Et;->w(J)J

    .line 247
    .line 248
    .line 249
    move-result-wide v5

    .line 250
    invoke-static {v0, v5, v6}, LC0/D;->w(Landroid/media/metrics/PlaybackMetrics$Builder;J)V

    .line 251
    .line 252
    .line 253
    :cond_11
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/we;->b()Z

    .line 254
    .line 255
    .line 256
    move-result p1

    .line 257
    if-eq p2, p1, :cond_12

    .line 258
    .line 259
    const/4 v4, 0x1

    .line 260
    :cond_12
    invoke-static {v0, v4}, LC0/D;->D(Landroid/media/metrics/PlaybackMetrics$Builder;I)V

    .line 261
    .line 262
    .line 263
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/wL;->f0:Z

    .line 264
    .line 265
    :cond_13
    :goto_6
    return-void

    .line 266
    nop

    .line 267
    :sswitch_data_0
    .sparse-switch
        0x19883 -> :sswitch_3
        0x1a721 -> :sswitch_2
        0x317849 -> :sswitch_1
        0x325a49 -> :sswitch_0
    .end sparse-switch

    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public final h(Lcom/google/android/gms/internal/ads/Xa;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wL;->T:Lcom/google/android/gms/internal/ads/Xa;

    .line 2
    .line 3
    return-void
.end method

.method public final i(Lcom/google/android/gms/internal/ads/cK;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/wL;->c0:I

    .line 2
    .line 3
    iget v1, p1, Lcom/google/android/gms/internal/ads/cK;->g:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    iput v0, p0, Lcom/google/android/gms/internal/ads/wL;->c0:I

    .line 7
    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/ads/wL;->d0:I

    .line 9
    .line 10
    iget p1, p1, Lcom/google/android/gms/internal/ads/cK;->e:I

    .line 11
    .line 12
    add-int/2addr v0, p1

    .line 13
    iput v0, p0, Lcom/google/android/gms/internal/ads/wL;->d0:I

    .line 14
    .line 15
    return-void
.end method

.method public final j(Lcom/google/android/gms/internal/ads/dL;IJ)V
    .locals 8

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/dL;->d:Lcom/google/android/gms/internal/ads/wN;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/wL;->H:Lcom/google/android/gms/internal/ads/vL;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/dL;->b:Lcom/google/android/gms/internal/ads/Ie;

    .line 8
    .line 9
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/vL;->a(Lcom/google/android/gms/internal/ads/Ie;Lcom/google/android/gms/internal/ads/wN;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wL;->N:Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/lang/Long;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/wL;->M:Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Ljava/lang/Long;

    .line 28
    .line 29
    const-wide/16 v4, 0x0

    .line 30
    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    move-wide v6, v4

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 36
    .line 37
    .line 38
    move-result-wide v6

    .line 39
    :goto_0
    add-long/2addr v6, p3

    .line 40
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    if-nez v3, :cond_1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 51
    .line 52
    .line 53
    move-result-wide v4

    .line 54
    :goto_1
    int-to-long p2, p2

    .line 55
    add-long/2addr v4, p2

    .line 56
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    :cond_2
    return-void
.end method

.method public final synthetic k(Lcom/google/android/gms/internal/ads/p0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final l(Lcom/google/android/gms/internal/ads/th;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wL;->U:Lcom/google/android/gms/internal/ads/f8;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/f8;->J:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lcom/google/android/gms/internal/ads/p0;

    .line 8
    .line 9
    iget v2, v1, Lcom/google/android/gms/internal/ads/p0;->t:I

    .line 10
    .line 11
    const/4 v3, -0x1

    .line 12
    if-ne v2, v3, :cond_0

    .line 13
    .line 14
    new-instance v2, Lcom/google/android/gms/internal/ads/K;

    .line 15
    .line 16
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/K;-><init>(Lcom/google/android/gms/internal/ads/p0;)V

    .line 17
    .line 18
    .line 19
    iget v1, p1, Lcom/google/android/gms/internal/ads/th;->a:I

    .line 20
    .line 21
    iput v1, v2, Lcom/google/android/gms/internal/ads/K;->r:I

    .line 22
    .line 23
    iget p1, p1, Lcom/google/android/gms/internal/ads/th;->b:I

    .line 24
    .line 25
    iput p1, v2, Lcom/google/android/gms/internal/ads/K;->s:I

    .line 26
    .line 27
    new-instance p1, Lcom/google/android/gms/internal/ads/p0;

    .line 28
    .line 29
    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/ads/p0;-><init>(Lcom/google/android/gms/internal/ads/K;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/f8;->I:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, Ljava/lang/String;

    .line 35
    .line 36
    new-instance v1, Lcom/google/android/gms/internal/ads/f8;

    .line 37
    .line 38
    const/4 v2, 0x7

    .line 39
    invoke-direct {v1, p1, v0, v2}, Lcom/google/android/gms/internal/ads/f8;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 40
    .line 41
    .line 42
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/wL;->U:Lcom/google/android/gms/internal/ads/f8;

    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method public final m(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/wL;->a0:Z

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    :cond_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/wL;->Q:I

    .line 8
    .line 9
    return-void
.end method

.method public final n(IJLcom/google/android/gms/internal/ads/p0;I)V
    .locals 2

    .line 1
    invoke-static {p1}, LC0/D;->f(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/wL;->J:J

    .line 6
    .line 7
    sub-long/2addr p2, v0

    .line 8
    invoke-static {p1, p2, p3}, LC0/D;->g(Landroid/media/metrics/TrackChangeEvent$Builder;J)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const/4 p2, 0x1

    .line 13
    if-eqz p4, :cond_b

    .line 14
    .line 15
    invoke-static {p1}, LC0/E;->C(Landroid/media/metrics/TrackChangeEvent$Builder;)V

    .line 16
    .line 17
    .line 18
    const/4 p3, 0x2

    .line 19
    if-eq p5, p2, :cond_0

    .line 20
    .line 21
    const/4 p5, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p5, 0x2

    .line 24
    :goto_0
    invoke-static {p1, p5}, LC0/D;->o(Landroid/media/metrics/TrackChangeEvent$Builder;I)V

    .line 25
    .line 26
    .line 27
    iget-object p5, p4, Lcom/google/android/gms/internal/ads/p0;->l:Ljava/lang/String;

    .line 28
    .line 29
    if-eqz p5, :cond_1

    .line 30
    .line 31
    invoke-static {p1, p5}, LC0/D;->p(Landroid/media/metrics/TrackChangeEvent$Builder;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-object p5, p4, Lcom/google/android/gms/internal/ads/p0;->m:Ljava/lang/String;

    .line 35
    .line 36
    if-eqz p5, :cond_2

    .line 37
    .line 38
    invoke-static {p1, p5}, LC0/D;->u(Landroid/media/metrics/TrackChangeEvent$Builder;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    iget-object p5, p4, Lcom/google/android/gms/internal/ads/p0;->j:Ljava/lang/String;

    .line 42
    .line 43
    if-eqz p5, :cond_3

    .line 44
    .line 45
    invoke-static {p1, p5}, LC0/D;->y(Landroid/media/metrics/TrackChangeEvent$Builder;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_3
    const/4 p5, -0x1

    .line 49
    iget v0, p4, Lcom/google/android/gms/internal/ads/p0;->i:I

    .line 50
    .line 51
    if-eq v0, p5, :cond_4

    .line 52
    .line 53
    invoke-static {p1, v0}, LC0/D;->t(Landroid/media/metrics/TrackChangeEvent$Builder;I)V

    .line 54
    .line 55
    .line 56
    :cond_4
    iget v0, p4, Lcom/google/android/gms/internal/ads/p0;->s:I

    .line 57
    .line 58
    if-eq v0, p5, :cond_5

    .line 59
    .line 60
    invoke-static {p1, v0}, LC0/D;->x(Landroid/media/metrics/TrackChangeEvent$Builder;I)V

    .line 61
    .line 62
    .line 63
    :cond_5
    iget v0, p4, Lcom/google/android/gms/internal/ads/p0;->t:I

    .line 64
    .line 65
    if-eq v0, p5, :cond_6

    .line 66
    .line 67
    invoke-static {p1, v0}, LC0/D;->A(Landroid/media/metrics/TrackChangeEvent$Builder;I)V

    .line 68
    .line 69
    .line 70
    :cond_6
    iget v0, p4, Lcom/google/android/gms/internal/ads/p0;->A:I

    .line 71
    .line 72
    if-eq v0, p5, :cond_7

    .line 73
    .line 74
    invoke-static {p1, v0}, LC0/D;->C(Landroid/media/metrics/TrackChangeEvent$Builder;I)V

    .line 75
    .line 76
    .line 77
    :cond_7
    iget v0, p4, Lcom/google/android/gms/internal/ads/p0;->B:I

    .line 78
    .line 79
    if-eq v0, p5, :cond_8

    .line 80
    .line 81
    invoke-static {p1, v0}, LC0/E;->s(Landroid/media/metrics/TrackChangeEvent$Builder;I)V

    .line 82
    .line 83
    .line 84
    :cond_8
    iget-object v0, p4, Lcom/google/android/gms/internal/ads/p0;->d:Ljava/lang/String;

    .line 85
    .line 86
    if-eqz v0, :cond_a

    .line 87
    .line 88
    sget v1, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 89
    .line 90
    const-string v1, "-"

    .line 91
    .line 92
    invoke-virtual {v0, v1, p5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p5

    .line 96
    const/4 v0, 0x0

    .line 97
    aget-object v0, p5, v0

    .line 98
    .line 99
    array-length v1, p5

    .line 100
    if-lt v1, p3, :cond_9

    .line 101
    .line 102
    aget-object p3, p5, p2

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_9
    const/4 p3, 0x0

    .line 106
    :goto_1
    invoke-static {v0, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 107
    .line 108
    .line 109
    move-result-object p3

    .line 110
    iget-object p5, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast p5, Ljava/lang/String;

    .line 113
    .line 114
    invoke-static {p1, p5}, LC0/E;->t(Landroid/media/metrics/TrackChangeEvent$Builder;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 118
    .line 119
    if-eqz p3, :cond_a

    .line 120
    .line 121
    check-cast p3, Ljava/lang/String;

    .line 122
    .line 123
    invoke-static {p1, p3}, LC0/E;->D(Landroid/media/metrics/TrackChangeEvent$Builder;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    :cond_a
    const/high16 p3, -0x40800000    # -1.0f

    .line 127
    .line 128
    iget p4, p4, Lcom/google/android/gms/internal/ads/p0;->u:F

    .line 129
    .line 130
    cmpl-float p3, p4, p3

    .line 131
    .line 132
    if-eqz p3, :cond_c

    .line 133
    .line 134
    invoke-static {p1, p4}, LC0/E;->r(Landroid/media/metrics/TrackChangeEvent$Builder;F)V

    .line 135
    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_b
    invoke-static {p1}, LC0/E;->q(Landroid/media/metrics/TrackChangeEvent$Builder;)V

    .line 139
    .line 140
    .line 141
    :cond_c
    :goto_2
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/wL;->f0:Z

    .line 142
    .line 143
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/wL;->I:Landroid/media/metrics/PlaybackSession;

    .line 144
    .line 145
    invoke-static {p1}, LC0/E;->j(Landroid/media/metrics/TrackChangeEvent$Builder;)Landroid/media/metrics/TrackChangeEvent;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-static {p2, p1}, LC0/D;->n(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/TrackChangeEvent;)V

    .line 150
    .line 151
    .line 152
    return-void
.end method

.method public final o(Lcom/google/android/gms/internal/ads/f8;)Z
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wL;->H:Lcom/google/android/gms/internal/ads/vL;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/f8;->I:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p1, Ljava/lang/String;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/vL;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    return p1

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    monitor-exit v0

    .line 23
    throw p1

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    return p1
.end method

.method public final synthetic q(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic zzh(I)V
    .locals 0

    .line 1
    return-void
.end method
