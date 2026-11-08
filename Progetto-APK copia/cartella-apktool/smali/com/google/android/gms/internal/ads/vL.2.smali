.class public final Lcom/google/android/gms/internal/ads/vL;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:Ljava/util/Random;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/we;

.field public final b:Lcom/google/android/gms/internal/ads/je;

.field public final c:Ljava/util/HashMap;

.field public d:Lcom/google/android/gms/internal/ads/xL;

.field public e:Lcom/google/android/gms/internal/ads/Ie;

.field public f:Ljava/lang/String;

.field public g:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/Random;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/vL;->h:Ljava/util/Random;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/we;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/we;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/vL;->a:Lcom/google/android/gms/internal/ads/we;

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/gms/internal/ads/je;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/je;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/vL;->b:Lcom/google/android/gms/internal/ads/je;

    .line 17
    .line 18
    new-instance v0, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/vL;->c:Ljava/util/HashMap;

    .line 24
    .line 25
    sget-object v0, Lcom/google/android/gms/internal/ads/Ie;->a:Lcom/google/android/gms/internal/ads/Rd;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/vL;->e:Lcom/google/android/gms/internal/ads/Ie;

    .line 28
    .line 29
    const-wide/16 v0, -0x1

    .line 30
    .line 31
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/vL;->g:J

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/Ie;Lcom/google/android/gms/internal/ads/wN;)Ljava/lang/String;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/wN;->a:Ljava/lang/Object;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vL;->b:Lcom/google/android/gms/internal/ads/je;

    .line 5
    .line 6
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/Ie;->n(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/je;)Lcom/google/android/gms/internal/ads/je;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget p1, p1, Lcom/google/android/gms/internal/ads/je;->c:I

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/vL;->e(ILcom/google/android/gms/internal/ads/wN;)Lcom/google/android/gms/internal/ads/uL;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/uL;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-object p1

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    monitor-exit p0

    .line 22
    throw p1
.end method

.method public final declared-synchronized b(Lcom/google/android/gms/internal/ads/dL;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vL;->f:Ljava/lang/String;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vL;->c:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/google/android/gms/internal/ads/uL;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/vL;->f(Lcom/google/android/gms/internal/ads/uL;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_2

    .line 23
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vL;->c:Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lcom/google/android/gms/internal/ads/uL;

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 46
    .line 47
    .line 48
    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/uL;->e:Z

    .line 49
    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/vL;->d:Lcom/google/android/gms/internal/ads/xL;

    .line 53
    .line 54
    if-eqz v2, :cond_1

    .line 55
    .line 56
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/uL;->a:Ljava/lang/String;

    .line 57
    .line 58
    check-cast v2, Lcom/google/android/gms/internal/ads/wL;

    .line 59
    .line 60
    invoke-virtual {v2, p1, v1}, Lcom/google/android/gms/internal/ads/wL;->d(Lcom/google/android/gms/internal/ads/dL;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    monitor-exit p0

    .line 65
    return-void

    .line 66
    :goto_2
    monitor-exit p0

    .line 67
    throw p1
.end method

.method public final declared-synchronized c(Lcom/google/android/gms/internal/ads/dL;)V
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vL;->d:Lcom/google/android/gms/internal/ads/xL;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    :try_start_1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/dL;->b:Lcom/google/android/gms/internal/ads/Ie;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ie;->o()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto/16 :goto_3

    .line 16
    .line 17
    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/dL;->d:Lcom/google/android/gms/internal/ads/wN;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vL;->c:Ljava/util/HashMap;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/vL;->f:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/google/android/gms/internal/ads/uL;

    .line 30
    .line 31
    const-wide/16 v2, -0x1

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/uL;->c:J

    .line 36
    .line 37
    cmp-long v1, v4, v2

    .line 38
    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/vL;->g:J

    .line 43
    .line 44
    const-wide/16 v6, 0x1

    .line 45
    .line 46
    add-long/2addr v4, v6

    .line 47
    :goto_0
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/wN;->d:J

    .line 48
    .line 49
    cmp-long v6, v0, v4

    .line 50
    .line 51
    if-ltz v6, :cond_7

    .line 52
    .line 53
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vL;->c:Ljava/util/HashMap;

    .line 54
    .line 55
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vL;->f:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Lcom/google/android/gms/internal/ads/uL;

    .line 62
    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/uL;->c:J

    .line 66
    .line 67
    cmp-long v1, v4, v2

    .line 68
    .line 69
    if-nez v1, :cond_2

    .line 70
    .line 71
    iget v0, v0, Lcom/google/android/gms/internal/ads/uL;->b:I

    .line 72
    .line 73
    iget v1, p1, Lcom/google/android/gms/internal/ads/dL;->c:I

    .line 74
    .line 75
    if-ne v0, v1, :cond_7

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :catchall_0
    move-exception p1

    .line 79
    goto/16 :goto_4

    .line 80
    .line 81
    :cond_2
    :goto_1
    iget v0, p1, Lcom/google/android/gms/internal/ads/dL;->c:I

    .line 82
    .line 83
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/dL;->d:Lcom/google/android/gms/internal/ads/wN;

    .line 84
    .line 85
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/vL;->e(ILcom/google/android/gms/internal/ads/wN;)Lcom/google/android/gms/internal/ads/uL;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vL;->f:Ljava/lang/String;

    .line 90
    .line 91
    if-nez v1, :cond_3

    .line 92
    .line 93
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/uL;->a:Ljava/lang/String;

    .line 94
    .line 95
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/vL;->f:Ljava/lang/String;

    .line 96
    .line 97
    :cond_3
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/dL;->d:Lcom/google/android/gms/internal/ads/wN;

    .line 98
    .line 99
    const/4 v2, 0x1

    .line 100
    if-eqz v1, :cond_4

    .line 101
    .line 102
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/wN;->b()Z

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-eqz v3, :cond_4

    .line 107
    .line 108
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/wN;->a:Ljava/lang/Object;

    .line 109
    .line 110
    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/wN;->d:J

    .line 111
    .line 112
    iget v1, v1, Lcom/google/android/gms/internal/ads/wN;->b:I

    .line 113
    .line 114
    new-instance v6, Lcom/google/android/gms/internal/ads/wN;

    .line 115
    .line 116
    invoke-direct {v6, v3, v1, v4, v5}, Lcom/google/android/gms/internal/ads/wN;-><init>(Ljava/lang/Object;IJ)V

    .line 117
    .line 118
    .line 119
    iget v1, p1, Lcom/google/android/gms/internal/ads/dL;->c:I

    .line 120
    .line 121
    invoke-virtual {p0, v1, v6}, Lcom/google/android/gms/internal/ads/vL;->e(ILcom/google/android/gms/internal/ads/wN;)Lcom/google/android/gms/internal/ads/uL;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/uL;->e:Z

    .line 126
    .line 127
    if-nez v3, :cond_4

    .line 128
    .line 129
    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/uL;->e:Z

    .line 130
    .line 131
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/dL;->b:Lcom/google/android/gms/internal/ads/Ie;

    .line 132
    .line 133
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/dL;->d:Lcom/google/android/gms/internal/ads/wN;

    .line 134
    .line 135
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/vL;->b:Lcom/google/android/gms/internal/ads/je;

    .line 136
    .line 137
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/wN;->a:Ljava/lang/Object;

    .line 138
    .line 139
    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/ads/Ie;->n(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/je;)Lcom/google/android/gms/internal/ads/je;

    .line 140
    .line 141
    .line 142
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vL;->b:Lcom/google/android/gms/internal/ads/je;

    .line 143
    .line 144
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/dL;->d:Lcom/google/android/gms/internal/ads/wN;

    .line 145
    .line 146
    iget v3, v3, Lcom/google/android/gms/internal/ads/wN;->b:I

    .line 147
    .line 148
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/je;->f:Lcom/google/android/gms/internal/ads/T5;

    .line 149
    .line 150
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/T5;->a(I)Lcom/google/android/gms/internal/ads/a;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    .line 156
    .line 157
    const-wide/16 v3, 0x0

    .line 158
    .line 159
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/Et;->w(J)J

    .line 160
    .line 161
    .line 162
    move-result-wide v5

    .line 163
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/Et;->w(J)J

    .line 164
    .line 165
    .line 166
    move-result-wide v7

    .line 167
    add-long/2addr v5, v7

    .line 168
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 169
    .line 170
    .line 171
    :cond_4
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/uL;->e:Z

    .line 172
    .line 173
    if-nez v1, :cond_5

    .line 174
    .line 175
    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/uL;->e:Z

    .line 176
    .line 177
    :cond_5
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/uL;->a:Ljava/lang/String;

    .line 178
    .line 179
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/vL;->f:Ljava/lang/String;

    .line 180
    .line 181
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    if-eqz v1, :cond_7

    .line 186
    .line 187
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/uL;->f:Z

    .line 188
    .line 189
    if-nez v1, :cond_7

    .line 190
    .line 191
    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/uL;->f:Z

    .line 192
    .line 193
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vL;->d:Lcom/google/android/gms/internal/ads/xL;

    .line 194
    .line 195
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/uL;->a:Ljava/lang/String;

    .line 196
    .line 197
    check-cast v1, Lcom/google/android/gms/internal/ads/wL;

    .line 198
    .line 199
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    .line 201
    .line 202
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/dL;->d:Lcom/google/android/gms/internal/ads/wN;

    .line 203
    .line 204
    if-eqz v2, :cond_6

    .line 205
    .line 206
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/wN;->b()Z

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    if-eqz v2, :cond_6

    .line 211
    .line 212
    goto :goto_2

    .line 213
    :cond_6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/wL;->f()V

    .line 214
    .line 215
    .line 216
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/wL;->O:Ljava/lang/String;

    .line 217
    .line 218
    invoke-static {}, LC0/E;->i()Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    invoke-static {v0}, LC0/D;->c(Landroid/media/metrics/PlaybackMetrics$Builder;)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    invoke-static {v0}, LN/f;->e(Landroid/media/metrics/PlaybackMetrics$Builder;)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/wL;->P:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 231
    .line 232
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/dL;->b:Lcom/google/android/gms/internal/ads/Ie;

    .line 233
    .line 234
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/dL;->d:Lcom/google/android/gms/internal/ads/wN;

    .line 235
    .line 236
    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/ads/wL;->g(Lcom/google/android/gms/internal/ads/Ie;Lcom/google/android/gms/internal/ads/wN;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    .line 238
    .line 239
    :goto_2
    monitor-exit p0

    .line 240
    return-void

    .line 241
    :cond_7
    :goto_3
    monitor-exit p0

    .line 242
    return-void

    .line 243
    :goto_4
    monitor-exit p0

    .line 244
    throw p1
.end method

.method public final declared-synchronized d(Lcom/google/android/gms/internal/ads/dL;I)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/vL;->d:Lcom/google/android/gms/internal/ads/xL;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    :try_start_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/vL;->c:Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/google/android/gms/internal/ads/uL;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/uL;->a(Lcom/google/android/gms/internal/ads/dL;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    .line 36
    .line 37
    .line 38
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/uL;->e:Z

    .line 39
    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/uL;->a:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/vL;->f:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/vL;->f(Lcom/google/android/gms/internal/ads/uL;)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :catchall_0
    move-exception p1

    .line 57
    goto :goto_2

    .line 58
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vL;->d:Lcom/google/android/gms/internal/ads/xL;

    .line 59
    .line 60
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/uL;->a:Ljava/lang/String;

    .line 61
    .line 62
    check-cast v1, Lcom/google/android/gms/internal/ads/wL;

    .line 63
    .line 64
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/wL;->d(Lcom/google/android/gms/internal/ads/dL;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/vL;->g(Lcom/google/android/gms/internal/ads/dL;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    .line 70
    .line 71
    monitor-exit p0

    .line 72
    return-void

    .line 73
    :goto_2
    monitor-exit p0

    .line 74
    throw p1
.end method

.method public final e(ILcom/google/android/gms/internal/ads/wN;)Lcom/google/android/gms/internal/ads/uL;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/vL;->c:Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    const-wide v5, 0x7fffffffffffffffL

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    const/4 v7, 0x0

    .line 23
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v8

    .line 27
    if-eqz v8, :cond_7

    .line 28
    .line 29
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v8

    .line 33
    check-cast v8, Lcom/google/android/gms/internal/ads/uL;

    .line 34
    .line 35
    iget-wide v9, v8, Lcom/google/android/gms/internal/ads/uL;->c:J

    .line 36
    .line 37
    const-wide/16 v11, -0x1

    .line 38
    .line 39
    cmp-long v13, v9, v11

    .line 40
    .line 41
    if-nez v13, :cond_2

    .line 42
    .line 43
    iget v9, v8, Lcom/google/android/gms/internal/ads/uL;->b:I

    .line 44
    .line 45
    if-ne v1, v9, :cond_2

    .line 46
    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    iget-object v9, v8, Lcom/google/android/gms/internal/ads/uL;->g:Lcom/google/android/gms/internal/ads/vL;

    .line 50
    .line 51
    iget-object v10, v9, Lcom/google/android/gms/internal/ads/vL;->c:Ljava/util/HashMap;

    .line 52
    .line 53
    iget-object v13, v9, Lcom/google/android/gms/internal/ads/vL;->f:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v10

    .line 59
    check-cast v10, Lcom/google/android/gms/internal/ads/uL;

    .line 60
    .line 61
    if-eqz v10, :cond_1

    .line 62
    .line 63
    iget-wide v13, v10, Lcom/google/android/gms/internal/ads/uL;->c:J

    .line 64
    .line 65
    cmp-long v10, v13, v11

    .line 66
    .line 67
    if-eqz v10, :cond_1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    iget-wide v9, v9, Lcom/google/android/gms/internal/ads/vL;->g:J

    .line 71
    .line 72
    const-wide/16 v13, 0x1

    .line 73
    .line 74
    add-long/2addr v13, v9

    .line 75
    :goto_1
    iget-wide v9, v2, Lcom/google/android/gms/internal/ads/wN;->d:J

    .line 76
    .line 77
    cmp-long v15, v9, v13

    .line 78
    .line 79
    if-ltz v15, :cond_2

    .line 80
    .line 81
    iput-wide v9, v8, Lcom/google/android/gms/internal/ads/uL;->c:J

    .line 82
    .line 83
    :cond_2
    iget-object v9, v8, Lcom/google/android/gms/internal/ads/uL;->d:Lcom/google/android/gms/internal/ads/wN;

    .line 84
    .line 85
    if-nez v2, :cond_3

    .line 86
    .line 87
    iget v10, v8, Lcom/google/android/gms/internal/ads/uL;->b:I

    .line 88
    .line 89
    if-ne v1, v10, :cond_0

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_3
    iget-wide v13, v2, Lcom/google/android/gms/internal/ads/wN;->d:J

    .line 93
    .line 94
    if-nez v9, :cond_4

    .line 95
    .line 96
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/wN;->b()Z

    .line 97
    .line 98
    .line 99
    move-result v10

    .line 100
    if-nez v10, :cond_0

    .line 101
    .line 102
    iget-wide v11, v8, Lcom/google/android/gms/internal/ads/uL;->c:J

    .line 103
    .line 104
    cmp-long v10, v13, v11

    .line 105
    .line 106
    if-nez v10, :cond_0

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_4
    iget-wide v10, v9, Lcom/google/android/gms/internal/ads/wN;->d:J

    .line 110
    .line 111
    cmp-long v12, v13, v10

    .line 112
    .line 113
    if-nez v12, :cond_0

    .line 114
    .line 115
    iget v10, v2, Lcom/google/android/gms/internal/ads/wN;->b:I

    .line 116
    .line 117
    iget v11, v9, Lcom/google/android/gms/internal/ads/wN;->b:I

    .line 118
    .line 119
    if-ne v10, v11, :cond_0

    .line 120
    .line 121
    iget v10, v2, Lcom/google/android/gms/internal/ads/wN;->c:I

    .line 122
    .line 123
    iget v11, v9, Lcom/google/android/gms/internal/ads/wN;->c:I

    .line 124
    .line 125
    if-ne v10, v11, :cond_0

    .line 126
    .line 127
    :goto_2
    iget-wide v10, v8, Lcom/google/android/gms/internal/ads/uL;->c:J

    .line 128
    .line 129
    const-wide/16 v12, -0x1

    .line 130
    .line 131
    cmp-long v14, v10, v12

    .line 132
    .line 133
    if-eqz v14, :cond_6

    .line 134
    .line 135
    cmp-long v12, v10, v5

    .line 136
    .line 137
    if-gez v12, :cond_5

    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_5
    if-nez v12, :cond_0

    .line 141
    .line 142
    sget v10, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 143
    .line 144
    iget-object v10, v7, Lcom/google/android/gms/internal/ads/uL;->d:Lcom/google/android/gms/internal/ads/wN;

    .line 145
    .line 146
    if-eqz v10, :cond_0

    .line 147
    .line 148
    if-eqz v9, :cond_0

    .line 149
    .line 150
    move-object v7, v8

    .line 151
    goto/16 :goto_0

    .line 152
    .line 153
    :cond_6
    :goto_3
    move-object v7, v8

    .line 154
    move-wide v5, v10

    .line 155
    goto/16 :goto_0

    .line 156
    .line 157
    :cond_7
    if-nez v7, :cond_8

    .line 158
    .line 159
    const/16 v4, 0xc

    .line 160
    .line 161
    new-array v4, v4, [B

    .line 162
    .line 163
    sget-object v5, Lcom/google/android/gms/internal/ads/vL;->h:Ljava/util/Random;

    .line 164
    .line 165
    invoke-virtual {v5, v4}, Ljava/util/Random;->nextBytes([B)V

    .line 166
    .line 167
    .line 168
    const/16 v5, 0xa

    .line 169
    .line 170
    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    new-instance v5, Lcom/google/android/gms/internal/ads/uL;

    .line 175
    .line 176
    invoke-direct {v5, v0, v4, v1, v2}, Lcom/google/android/gms/internal/ads/uL;-><init>(Lcom/google/android/gms/internal/ads/vL;Ljava/lang/String;ILcom/google/android/gms/internal/ads/wN;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    return-object v5

    .line 183
    :cond_8
    return-object v7
.end method

.method public final f(Lcom/google/android/gms/internal/ads/uL;)V
    .locals 4

    .line 1
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/uL;->c:J

    .line 2
    .line 3
    const-wide/16 v2, -0x1

    .line 4
    .line 5
    cmp-long p1, v0, v2

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/vL;->g:J

    .line 10
    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vL;->f:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method

.method public final g(Lcom/google/android/gms/internal/ads/dL;)V
    .locals 7

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/dL;->b:Lcom/google/android/gms/internal/ads/Ie;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ie;->o()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vL;->c:Ljava/util/HashMap;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/vL;->f:Ljava/lang/String;

    .line 12
    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/google/android/gms/internal/ads/uL;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/vL;->f(Lcom/google/android/gms/internal/ads/uL;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vL;->f:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lcom/google/android/gms/internal/ads/uL;

    .line 35
    .line 36
    iget v1, p1, Lcom/google/android/gms/internal/ads/dL;->c:I

    .line 37
    .line 38
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/dL;->d:Lcom/google/android/gms/internal/ads/wN;

    .line 39
    .line 40
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/vL;->e(ILcom/google/android/gms/internal/ads/wN;)Lcom/google/android/gms/internal/ads/uL;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/uL;->a:Ljava/lang/String;

    .line 45
    .line 46
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/vL;->f:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/vL;->c(Lcom/google/android/gms/internal/ads/dL;)V

    .line 49
    .line 50
    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/wN;->b()Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/wN;->d:J

    .line 60
    .line 61
    if-eqz v0, :cond_1

    .line 62
    .line 63
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/uL;->c:J

    .line 64
    .line 65
    cmp-long p1, v5, v3

    .line 66
    .line 67
    if-nez p1, :cond_1

    .line 68
    .line 69
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/uL;->d:Lcom/google/android/gms/internal/ads/wN;

    .line 70
    .line 71
    if-eqz p1, :cond_1

    .line 72
    .line 73
    iget v0, p1, Lcom/google/android/gms/internal/ads/wN;->b:I

    .line 74
    .line 75
    iget v5, v2, Lcom/google/android/gms/internal/ads/wN;->b:I

    .line 76
    .line 77
    if-ne v0, v5, :cond_1

    .line 78
    .line 79
    iget p1, p1, Lcom/google/android/gms/internal/ads/wN;->c:I

    .line 80
    .line 81
    iget v0, v2, Lcom/google/android/gms/internal/ads/wN;->c:I

    .line 82
    .line 83
    if-eq p1, v0, :cond_2

    .line 84
    .line 85
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/wN;

    .line 86
    .line 87
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/wN;->a:Ljava/lang/Object;

    .line 88
    .line 89
    invoke-direct {p1, v0, v3, v4}, Lcom/google/android/gms/internal/ads/wN;-><init>(Ljava/lang/Object;J)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/ads/vL;->e(ILcom/google/android/gms/internal/ads/wN;)Lcom/google/android/gms/internal/ads/uL;

    .line 93
    .line 94
    .line 95
    :cond_2
    return-void
.end method
