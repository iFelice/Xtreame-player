.class public final synthetic Lcom/google/android/gms/internal/cast/X;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/cast/X;->G:I

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/X;->H:Ljava/lang/Object;

    return-void
.end method

.method private final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/X;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/cast/a0;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/a0;->g:Lcom/google/android/gms/internal/cast/b0;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v2, v0, Lcom/google/android/gms/internal/cast/a0;->c:Lcom/google/android/gms/internal/cast/c0;

    .line 10
    .line 11
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/cast/c0;->b(Lcom/google/android/gms/internal/cast/b0;)Lcom/google/android/gms/internal/cast/r0;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/internal/cast/h2;->b()Lcom/google/android/gms/internal/cast/i2;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/google/android/gms/internal/cast/s0;

    .line 20
    .line 21
    const/16 v2, 0xdf

    .line 22
    .line 23
    iget-object v3, v0, Lcom/google/android/gms/internal/cast/a0;->a:Lcom/google/android/gms/internal/cast/N;

    .line 24
    .line 25
    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/cast/N;->a(Lcom/google/android/gms/internal/cast/s0;I)V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/a0;->e()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private final b()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/X;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/cast/D0;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/D0;->f:Ljava/util/HashSet;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    goto/16 :goto_3

    .line 14
    .line 15
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/D0;->g:Ljava/util/HashSet;

    .line 16
    .line 17
    iget-object v2, v0, Lcom/google/android/gms/internal/cast/D0;->f:Ljava/util/HashSet;

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const/4 v4, 0x1

    .line 24
    if-eq v4, v3, :cond_1

    .line 25
    .line 26
    const-wide/32 v3, 0x5265c00

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const-wide/32 v3, 0xa4cb800

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 34
    .line 35
    .line 36
    move-result-wide v5

    .line 37
    iget-wide v7, v0, Lcom/google/android/gms/internal/cast/D0;->h:J

    .line 38
    .line 39
    const-wide/16 v9, 0x0

    .line 40
    .line 41
    cmp-long v11, v7, v9

    .line 42
    .line 43
    if-eqz v11, :cond_2

    .line 44
    .line 45
    sub-long v7, v5, v7

    .line 46
    .line 47
    cmp-long v11, v7, v3

    .line 48
    .line 49
    if-ltz v11, :cond_6

    .line 50
    .line 51
    :cond_2
    const/4 v3, 0x0

    .line 52
    new-array v3, v3, [Ljava/lang/Object;

    .line 53
    .line 54
    sget-object v4, Lcom/google/android/gms/internal/cast/D0;->i:LH3/b;

    .line 55
    .line 56
    const-string v7, "Upload the feature usage report."

    .line 57
    .line 58
    invoke-virtual {v4, v7, v3}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-static {}, Lcom/google/android/gms/internal/cast/l0;->l()Lcom/google/android/gms/internal/cast/k0;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    sget-object v4, Lcom/google/android/gms/internal/cast/D0;->j:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v3}, Lcom/google/android/gms/internal/cast/h2;->d()V

    .line 68
    .line 69
    .line 70
    iget-object v7, v3, Lcom/google/android/gms/internal/cast/h2;->H:Lcom/google/android/gms/internal/cast/i2;

    .line 71
    .line 72
    check-cast v7, Lcom/google/android/gms/internal/cast/l0;

    .line 73
    .line 74
    invoke-static {v7, v4}, Lcom/google/android/gms/internal/cast/l0;->n(Lcom/google/android/gms/internal/cast/l0;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3}, Lcom/google/android/gms/internal/cast/h2;->d()V

    .line 78
    .line 79
    .line 80
    iget-object v4, v3, Lcom/google/android/gms/internal/cast/h2;->H:Lcom/google/android/gms/internal/cast/i2;

    .line 81
    .line 82
    check-cast v4, Lcom/google/android/gms/internal/cast/l0;

    .line 83
    .line 84
    iget-object v7, v0, Lcom/google/android/gms/internal/cast/D0;->c:Ljava/lang/String;

    .line 85
    .line 86
    invoke-static {v4, v7}, Lcom/google/android/gms/internal/cast/l0;->m(Lcom/google/android/gms/internal/cast/l0;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3}, Lcom/google/android/gms/internal/cast/h2;->b()Lcom/google/android/gms/internal/cast/i2;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    check-cast v3, Lcom/google/android/gms/internal/cast/l0;

    .line 94
    .line 95
    new-instance v4, Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 101
    .line 102
    .line 103
    invoke-static {}, Lcom/google/android/gms/internal/cast/h0;->l()Lcom/google/android/gms/internal/cast/g0;

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    invoke-virtual {v7}, Lcom/google/android/gms/internal/cast/h2;->d()V

    .line 108
    .line 109
    .line 110
    iget-object v8, v7, Lcom/google/android/gms/internal/cast/h2;->H:Lcom/google/android/gms/internal/cast/i2;

    .line 111
    .line 112
    check-cast v8, Lcom/google/android/gms/internal/cast/h0;

    .line 113
    .line 114
    invoke-static {v8, v4}, Lcom/google/android/gms/internal/cast/h0;->n(Lcom/google/android/gms/internal/cast/h0;Ljava/util/ArrayList;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v7}, Lcom/google/android/gms/internal/cast/h2;->d()V

    .line 118
    .line 119
    .line 120
    iget-object v4, v7, Lcom/google/android/gms/internal/cast/h2;->H:Lcom/google/android/gms/internal/cast/i2;

    .line 121
    .line 122
    check-cast v4, Lcom/google/android/gms/internal/cast/h0;

    .line 123
    .line 124
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/cast/h0;->m(Lcom/google/android/gms/internal/cast/h0;Lcom/google/android/gms/internal/cast/l0;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v7}, Lcom/google/android/gms/internal/cast/h2;->b()Lcom/google/android/gms/internal/cast/i2;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    check-cast v3, Lcom/google/android/gms/internal/cast/h0;

    .line 132
    .line 133
    invoke-static {}, Lcom/google/android/gms/internal/cast/s0;->m()Lcom/google/android/gms/internal/cast/r0;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    invoke-virtual {v4}, Lcom/google/android/gms/internal/cast/h2;->d()V

    .line 138
    .line 139
    .line 140
    iget-object v7, v4, Lcom/google/android/gms/internal/cast/h2;->H:Lcom/google/android/gms/internal/cast/i2;

    .line 141
    .line 142
    check-cast v7, Lcom/google/android/gms/internal/cast/s0;

    .line 143
    .line 144
    invoke-static {v7, v3}, Lcom/google/android/gms/internal/cast/s0;->s(Lcom/google/android/gms/internal/cast/s0;Lcom/google/android/gms/internal/cast/h0;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v4}, Lcom/google/android/gms/internal/cast/h2;->b()Lcom/google/android/gms/internal/cast/i2;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    check-cast v3, Lcom/google/android/gms/internal/cast/s0;

    .line 152
    .line 153
    iget-object v4, v0, Lcom/google/android/gms/internal/cast/D0;->a:Lcom/google/android/gms/internal/cast/N;

    .line 154
    .line 155
    const/16 v7, 0xf3

    .line 156
    .line 157
    invoke-virtual {v4, v3, v7}, Lcom/google/android/gms/internal/cast/N;->a(Lcom/google/android/gms/internal/cast/s0;I)V

    .line 158
    .line 159
    .line 160
    iget-object v3, v0, Lcom/google/android/gms/internal/cast/D0;->b:Landroid/content/SharedPreferences;

    .line 161
    .line 162
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v7

    .line 170
    if-nez v7, :cond_5

    .line 171
    .line 172
    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 173
    .line 174
    .line 175
    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    if-eqz v2, :cond_5

    .line 187
    .line 188
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    check-cast v2, Lcom/google/android/gms/internal/cast/d0;

    .line 193
    .line 194
    iget v2, v2, Lcom/google/android/gms/internal/cast/d0;->G:I

    .line 195
    .line 196
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    const-string v7, "feature_usage_timestamp_reported_feature_"

    .line 201
    .line 202
    invoke-static {v7, v2}, Lt/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v8

    .line 206
    invoke-interface {v3, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 207
    .line 208
    .line 209
    move-result v11

    .line 210
    if-eqz v11, :cond_4

    .line 211
    .line 212
    goto :goto_2

    .line 213
    :cond_4
    const-string v8, "feature_usage_timestamp_detected_feature_"

    .line 214
    .line 215
    invoke-static {v8, v2}, Lt/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v8

    .line 219
    :goto_2
    invoke-static {v7, v2}, Lt/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    invoke-static {v8, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 224
    .line 225
    .line 226
    move-result v7

    .line 227
    if-nez v7, :cond_3

    .line 228
    .line 229
    invoke-interface {v3, v8, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 230
    .line 231
    .line 232
    move-result-wide v11

    .line 233
    invoke-interface {v4, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 234
    .line 235
    .line 236
    cmp-long v7, v11, v9

    .line 237
    .line 238
    if-eqz v7, :cond_3

    .line 239
    .line 240
    invoke-interface {v4, v2, v11, v12}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 241
    .line 242
    .line 243
    goto :goto_1

    .line 244
    :cond_5
    iput-wide v5, v0, Lcom/google/android/gms/internal/cast/D0;->h:J

    .line 245
    .line 246
    const-string v0, "feature_usage_last_report_time"

    .line 247
    .line 248
    invoke-interface {v4, v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 253
    .line 254
    .line 255
    :cond_6
    :goto_3
    return-void
.end method

.method private final c()V
    .locals 3

    .line 1
    new-instance v0, LZ3/a0;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    const-string v2, "Web view timed out."

    .line 5
    .line 6
    invoke-direct {v0, v1, v2}, LZ3/a0;-><init>(ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/X;->H:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, LZ3/l;

    .line 12
    .line 13
    iget-object v1, v1, LZ3/l;->i:Ljava/util/concurrent/atomic/AtomicReference;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, LZ3/k;

    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v0}, LZ3/a0;->a()LK/k;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v1, v0}, LZ3/k;->a(LK/k;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method

.method private final d()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/X;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lc4/i1;

    .line 4
    .line 5
    iget-object v1, v0, Lc4/i1;->I:Lm2/e;

    .line 6
    .line 7
    iget-object v1, v1, Lm2/e;->I:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Lc4/k1;

    .line 10
    .line 11
    invoke-virtual {v1}, Lc4/z;->m()V

    .line 12
    .line 13
    .line 14
    iget-object v2, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Lc4/l0;

    .line 17
    .line 18
    iget-object v3, v2, Lc4/l0;->O:Lc4/T;

    .line 19
    .line 20
    invoke-static {v3}, Lc4/l0;->k(Lc4/s0;)V

    .line 21
    .line 22
    .line 23
    const-string v4, "Application going to the background"

    .line 24
    .line 25
    iget-object v3, v3, Lc4/T;->S:Lc4/Q;

    .line 26
    .line 27
    invoke-virtual {v3, v4}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v3, v2, Lc4/l0;->N:Lc4/Z;

    .line 31
    .line 32
    invoke-static {v3}, Lc4/l0;->i(Lc4/s0;)V

    .line 33
    .line 34
    .line 35
    iget-object v3, v3, Lc4/Z;->Z:Lc4/Y;

    .line 36
    .line 37
    const/4 v4, 0x1

    .line 38
    invoke-virtual {v3, v4}, Lc4/Y;->a(Z)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Lc4/z;->m()V

    .line 42
    .line 43
    .line 44
    iput-boolean v4, v1, Lc4/k1;->J:Z

    .line 45
    .line 46
    iget-object v3, v2, Lc4/l0;->M:Lc4/h;

    .line 47
    .line 48
    invoke-virtual {v3}, Lc4/h;->C()Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-nez v5, :cond_0

    .line 53
    .line 54
    iget-wide v5, v0, Lc4/i1;->H:J

    .line 55
    .line 56
    const/4 v7, 0x0

    .line 57
    iget-object v8, v1, Lc4/k1;->L:Lcom/google/android/gms/internal/ads/PN;

    .line 58
    .line 59
    invoke-virtual {v8, v5, v6, v7, v7}, Lcom/google/android/gms/internal/ads/PN;->b(JZZ)Z

    .line 60
    .line 61
    .line 62
    iget-object v5, v8, Lcom/google/android/gms/internal/ads/PN;->c:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v5, Lc4/p;

    .line 65
    .line 66
    invoke-virtual {v5}, Lc4/p;->a()V

    .line 67
    .line 68
    .line 69
    :cond_0
    iget-object v5, v2, Lc4/l0;->O:Lc4/T;

    .line 70
    .line 71
    invoke-static {v5}, Lc4/l0;->k(Lc4/s0;)V

    .line 72
    .line 73
    .line 74
    iget-wide v6, v0, Lc4/i1;->G:J

    .line 75
    .line 76
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    const-string v6, "Application backgrounded at: timestamp_millis"

    .line 81
    .line 82
    iget-object v7, v5, Lc4/T;->R:Lc4/Q;

    .line 83
    .line 84
    invoke-virtual {v7, v0, v6}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-object v0, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v0, Lc4/l0;

    .line 90
    .line 91
    iget-object v1, v0, Lc4/l0;->V:Lc4/K0;

    .line 92
    .line 93
    invoke-static {v1}, Lc4/l0;->j(Lc4/B;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Lc4/z;->m()V

    .line 97
    .line 98
    .line 99
    iget-object v6, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v6, Lc4/l0;

    .line 102
    .line 103
    invoke-virtual {v1}, Lc4/B;->n()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v6}, Lc4/l0;->r()Lc4/d1;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v1}, Lc4/z;->m()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1}, Lc4/B;->n()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1}, Lc4/d1;->A()Z

    .line 117
    .line 118
    .line 119
    move-result v7

    .line 120
    if-nez v7, :cond_1

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_1
    iget-object v1, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast v1, Lc4/l0;

    .line 126
    .line 127
    iget-object v1, v1, Lc4/l0;->R:Lc4/I1;

    .line 128
    .line 129
    invoke-static {v1}, Lc4/l0;->i(Lc4/s0;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1}, Lc4/I1;->v0()I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    const v7, 0x3b3a8

    .line 137
    .line 138
    .line 139
    if-lt v1, v7, :cond_2

    .line 140
    .line 141
    :goto_0
    invoke-virtual {v6}, Lc4/l0;->r()Lc4/d1;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-virtual {v1}, Lc4/z;->m()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1}, Lc4/B;->n()V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, v4}, Lc4/d1;->B(Z)Lc4/J1;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    new-instance v6, Lc4/Z0;

    .line 156
    .line 157
    const/4 v7, 0x2

    .line 158
    invoke-direct {v6, v1, v4, v7}, Lc4/Z0;-><init>(Lc4/d1;Lc4/J1;I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1, v6}, Lc4/d1;->E(Ljava/lang/Runnable;)V

    .line 162
    .line 163
    .line 164
    :cond_2
    const/4 v1, 0x0

    .line 165
    sget-object v4, Lc4/E;->T0:Lc4/D;

    .line 166
    .line 167
    invoke-virtual {v3, v1, v4}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    if-eqz v1, :cond_4

    .line 172
    .line 173
    iget-object v1, v2, Lc4/l0;->R:Lc4/I1;

    .line 174
    .line 175
    invoke-static {v1}, Lc4/l0;->i(Lc4/s0;)V

    .line 176
    .line 177
    .line 178
    iget-object v2, v2, Lc4/l0;->G:Landroid/content/Context;

    .line 179
    .line 180
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    iget-object v6, v3, Lc4/h;->I:Ljava/lang/String;

    .line 185
    .line 186
    invoke-virtual {v1, v4, v6}, Lc4/I1;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    if-eqz v1, :cond_3

    .line 191
    .line 192
    const-wide/16 v1, 0x3e8

    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_3
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    sget-object v2, Lc4/E;->E:Lc4/D;

    .line 200
    .line 201
    invoke-virtual {v3, v1, v2}, Lc4/h;->w(Ljava/lang/String;Lc4/D;)J

    .line 202
    .line 203
    .line 204
    move-result-wide v1

    .line 205
    :goto_1
    invoke-static {v5}, Lc4/l0;->k(Lc4/s0;)V

    .line 206
    .line 207
    .line 208
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    iget-object v4, v5, Lc4/T;->T:Lc4/Q;

    .line 213
    .line 214
    const-string v5, "[sgtm] Scheduling batch upload with minimum latency in millis"

    .line 215
    .line 216
    invoke-virtual {v4, v3, v5}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    iget-object v3, v0, Lc4/l0;->d0:Lc4/P0;

    .line 220
    .line 221
    invoke-static {v3}, Lc4/l0;->h(Lc4/z;)V

    .line 222
    .line 223
    .line 224
    iget-object v0, v0, Lc4/l0;->d0:Lc4/P0;

    .line 225
    .line 226
    invoke-virtual {v0, v1, v2}, Lc4/P0;->s(J)V

    .line 227
    .line 228
    .line 229
    :cond_4
    return-void
.end method

.method private e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/X;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LW4/c;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    throw v0
.end method


# virtual methods
.method public final run()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/google/android/gms/internal/cast/X;->G:I

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x1

    .line 8
    const/4 v5, 0x2

    .line 9
    const/4 v6, 0x0

    .line 10
    packed-switch v1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/X;->H:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Lpe/hf/black20/services/RecordingServices;

    .line 16
    .line 17
    sget v2, Lpe/hf/black20/services/RecordingServices;->T:I

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    const-string v2, "RecordingServices  Network Checking...."

    .line 23
    .line 24
    const-string v7, "XCIPTV_TAG"

    .line 25
    .line 26
    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    iget-object v2, v1, Lpe/hf/black20/services/RecordingServices;->G:Lpe/hf/black20/services/RecordingServices;

    .line 30
    .line 31
    invoke-static {v2}, Lpe/hf/black20/util/Methods;->Q(Landroid/content/ContextWrapper;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    const-string v7, "ORT_isRecordingRunning"

    .line 42
    .line 43
    invoke-virtual {v2, v7, v6}, LQ5/a;->a(Ljava/lang/String;Z)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_1

    .line 48
    .line 49
    new-instance v2, Lc7/c;

    .line 50
    .line 51
    invoke-direct {v2, v1, v5}, Lc7/c;-><init>(Landroid/content/Context;I)V

    .line 52
    .line 53
    .line 54
    iput-object v2, v1, Lpe/hf/black20/services/RecordingServices;->I:Lc7/c;

    .line 55
    .line 56
    const-string v2, "pe.hf.black20"

    .line 57
    .line 58
    invoke-virtual {v1, v2, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    iput-object v8, v1, Lpe/hf/black20/services/RecordingServices;->J:Landroid/content/SharedPreferences;

    .line 63
    .line 64
    iget-object v8, v1, Lpe/hf/black20/services/RecordingServices;->K:Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 67
    .line 68
    .line 69
    iget-object v8, v1, Lpe/hf/black20/services/RecordingServices;->I:Lc7/c;

    .line 70
    .line 71
    const-string v9, "Scheduled"

    .line 72
    .line 73
    invoke-virtual {v8, v9}, Lc7/c;->b0(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 74
    .line 75
    .line 76
    move-result-object v8

    .line 77
    iput-object v8, v1, Lpe/hf/black20/services/RecordingServices;->K:Ljava/util/ArrayList;

    .line 78
    .line 79
    new-instance v8, Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .line 83
    .line 84
    iput-object v8, v1, Lpe/hf/black20/services/RecordingServices;->L:Ljava/util/ArrayList;

    .line 85
    .line 86
    const/4 v8, 0x0

    .line 87
    :goto_0
    iget-object v9, v1, Lpe/hf/black20/services/RecordingServices;->K:Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 90
    .line 91
    .line 92
    move-result v9

    .line 93
    if-ge v8, v9, :cond_3

    .line 94
    .line 95
    new-instance v9, Ljava/util/HashMap;

    .line 96
    .line 97
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 98
    .line 99
    .line 100
    iget-object v10, v1, Lpe/hf/black20/services/RecordingServices;->K:Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v10

    .line 106
    check-cast v10, Lh7/f;

    .line 107
    .line 108
    iget-object v10, v10, Lh7/f;->a:Ljava/lang/String;

    .line 109
    .line 110
    const-string v11, "id"

    .line 111
    .line 112
    invoke-virtual {v9, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    iget-object v10, v1, Lpe/hf/black20/services/RecordingServices;->K:Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v10

    .line 121
    check-cast v10, Lh7/f;

    .line 122
    .line 123
    iget-object v10, v10, Lh7/f;->b:Ljava/lang/String;

    .line 124
    .line 125
    const-string v11, "title"

    .line 126
    .line 127
    invoke-virtual {v9, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    iget-object v10, v1, Lpe/hf/black20/services/RecordingServices;->K:Ljava/util/ArrayList;

    .line 131
    .line 132
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v10

    .line 136
    check-cast v10, Lh7/f;

    .line 137
    .line 138
    iget-object v10, v10, Lh7/f;->c:Ljava/lang/String;

    .line 139
    .line 140
    const-string v11, "path"

    .line 141
    .line 142
    invoke-virtual {v9, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    iget-object v10, v1, Lpe/hf/black20/services/RecordingServices;->K:Ljava/util/ArrayList;

    .line 146
    .line 147
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v10

    .line 151
    check-cast v10, Lh7/f;

    .line 152
    .line 153
    iget-object v10, v10, Lh7/f;->d:Ljava/lang/String;

    .line 154
    .line 155
    const-string v11, "stream"

    .line 156
    .line 157
    invoke-virtual {v9, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    iget-object v10, v1, Lpe/hf/black20/services/RecordingServices;->K:Ljava/util/ArrayList;

    .line 161
    .line 162
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v10

    .line 166
    check-cast v10, Lh7/f;

    .line 167
    .line 168
    iget-object v10, v10, Lh7/f;->e:Ljava/lang/String;

    .line 169
    .line 170
    const-string v11, "status"

    .line 171
    .line 172
    invoke-virtual {v9, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    iget-object v10, v1, Lpe/hf/black20/services/RecordingServices;->K:Ljava/util/ArrayList;

    .line 176
    .line 177
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v10

    .line 181
    check-cast v10, Lh7/f;

    .line 182
    .line 183
    iget-object v10, v10, Lh7/f;->f:Ljava/lang/String;

    .line 184
    .line 185
    const-string v11, "length"

    .line 186
    .line 187
    invoke-virtual {v9, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    iget-object v10, v1, Lpe/hf/black20/services/RecordingServices;->K:Ljava/util/ArrayList;

    .line 191
    .line 192
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v10

    .line 196
    check-cast v10, Lh7/f;

    .line 197
    .line 198
    iget-object v10, v10, Lh7/f;->g:Ljava/lang/String;

    .line 199
    .line 200
    const-string v11, "date"

    .line 201
    .line 202
    invoke-virtual {v9, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    invoke-static {}, Lpe/hf/black20/util/Methods;->H()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v10

    .line 209
    iget-object v11, v1, Lpe/hf/black20/services/RecordingServices;->K:Ljava/util/ArrayList;

    .line 210
    .line 211
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v11

    .line 215
    check-cast v11, Lh7/f;

    .line 216
    .line 217
    iget-object v11, v11, Lh7/f;->g:Ljava/lang/String;

    .line 218
    .line 219
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v10

    .line 223
    if-eqz v10, :cond_0

    .line 224
    .line 225
    iget-object v10, v1, Lpe/hf/black20/services/RecordingServices;->K:Ljava/util/ArrayList;

    .line 226
    .line 227
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v10

    .line 231
    check-cast v10, Lh7/f;

    .line 232
    .line 233
    iget-object v10, v10, Lh7/f;->a:Ljava/lang/String;

    .line 234
    .line 235
    iput-object v10, v1, Lpe/hf/black20/services/RecordingServices;->Q:Ljava/lang/String;

    .line 236
    .line 237
    iget-object v10, v1, Lpe/hf/black20/services/RecordingServices;->K:Ljava/util/ArrayList;

    .line 238
    .line 239
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v10

    .line 243
    check-cast v10, Lh7/f;

    .line 244
    .line 245
    iget-object v10, v10, Lh7/f;->b:Ljava/lang/String;

    .line 246
    .line 247
    iget-object v10, v1, Lpe/hf/black20/services/RecordingServices;->K:Ljava/util/ArrayList;

    .line 248
    .line 249
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v10

    .line 253
    check-cast v10, Lh7/f;

    .line 254
    .line 255
    iget-object v10, v10, Lh7/f;->c:Ljava/lang/String;

    .line 256
    .line 257
    iput-object v10, v1, Lpe/hf/black20/services/RecordingServices;->S:Ljava/lang/String;

    .line 258
    .line 259
    iget-object v10, v1, Lpe/hf/black20/services/RecordingServices;->K:Ljava/util/ArrayList;

    .line 260
    .line 261
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v10

    .line 265
    check-cast v10, Lh7/f;

    .line 266
    .line 267
    iget-object v10, v10, Lh7/f;->d:Ljava/lang/String;

    .line 268
    .line 269
    iput-object v10, v1, Lpe/hf/black20/services/RecordingServices;->R:Ljava/lang/String;

    .line 270
    .line 271
    iget-object v10, v1, Lpe/hf/black20/services/RecordingServices;->K:Ljava/util/ArrayList;

    .line 272
    .line 273
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v10

    .line 277
    check-cast v10, Lh7/f;

    .line 278
    .line 279
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 280
    .line 281
    .line 282
    iget-object v10, v1, Lpe/hf/black20/services/RecordingServices;->K:Ljava/util/ArrayList;

    .line 283
    .line 284
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v10

    .line 288
    check-cast v10, Lh7/f;

    .line 289
    .line 290
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 291
    .line 292
    .line 293
    iget-object v10, v1, Lpe/hf/black20/services/RecordingServices;->K:Ljava/util/ArrayList;

    .line 294
    .line 295
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v10

    .line 299
    check-cast v10, Lh7/f;

    .line 300
    .line 301
    iget-object v10, v10, Lh7/f;->f:Ljava/lang/String;

    .line 302
    .line 303
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 304
    .line 305
    .line 306
    move-result v10

    .line 307
    new-instance v11, Ljava/text/SimpleDateFormat;

    .line 308
    .line 309
    const-string v12, "MMM dd, yyyy HH:mm"

    .line 310
    .line 311
    invoke-direct {v11, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    invoke-static {}, Lpe/hf/black20/util/Methods;->H()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v12

    .line 318
    :try_start_0
    invoke-virtual {v11, v12}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 319
    .line 320
    .line 321
    move-result-object v12
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    goto :goto_1

    .line 323
    :catch_0
    move-object v12, v3

    .line 324
    :goto_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 325
    .line 326
    .line 327
    move-result-object v13

    .line 328
    invoke-virtual {v13, v12}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 329
    .line 330
    .line 331
    const/16 v12, 0xc

    .line 332
    .line 333
    invoke-virtual {v13, v12, v10}, Ljava/util/Calendar;->add(II)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v13}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 337
    .line 338
    .line 339
    move-result-object v10

    .line 340
    invoke-virtual {v11, v10}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v10

    .line 344
    iput-object v10, v1, Lpe/hf/black20/services/RecordingServices;->M:Ljava/lang/String;

    .line 345
    .line 346
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 347
    .line 348
    .line 349
    move-result-object v10

    .line 350
    invoke-virtual {v10, v7, v4}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 351
    .line 352
    .line 353
    iget-object v10, v1, Lpe/hf/black20/services/RecordingServices;->Q:Ljava/lang/String;

    .line 354
    .line 355
    iget-object v11, v1, Lpe/hf/black20/services/RecordingServices;->R:Ljava/lang/String;

    .line 356
    .line 357
    iget-object v12, v1, Lpe/hf/black20/services/RecordingServices;->S:Ljava/lang/String;

    .line 358
    .line 359
    new-instance v13, Lc7/c;

    .line 360
    .line 361
    invoke-direct {v13, v1, v5}, Lc7/c;-><init>(Landroid/content/Context;I)V

    .line 362
    .line 363
    .line 364
    iput-object v13, v1, Lpe/hf/black20/services/RecordingServices;->I:Lc7/c;

    .line 365
    .line 366
    invoke-virtual {v1, v2, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 367
    .line 368
    .line 369
    move-result-object v13

    .line 370
    iput-object v13, v1, Lpe/hf/black20/services/RecordingServices;->J:Landroid/content/SharedPreferences;

    .line 371
    .line 372
    const-string v13, " "

    .line 373
    .line 374
    const-string v14, ""

    .line 375
    .line 376
    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v11

    .line 380
    new-instance v13, Ljava/util/ArrayList;

    .line 381
    .line 382
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 383
    .line 384
    .line 385
    const-string v14, "--live-caching==300"

    .line 386
    .line 387
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    .line 389
    .line 390
    const-string v14, "--file-caching=300"

    .line 391
    .line 392
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    .line 394
    .line 395
    const-string v14, "--input-fast-seek"

    .line 396
    .line 397
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    .line 399
    .line 400
    new-instance v14, Lorg/videolan/libvlc/LibVLC;

    .line 401
    .line 402
    invoke-direct {v14, v1, v13}, Lorg/videolan/libvlc/LibVLC;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 403
    .line 404
    .line 405
    iget-object v13, v1, Lpe/hf/black20/services/RecordingServices;->J:Landroid/content/SharedPreferences;

    .line 406
    .line 407
    const-string v15, "agent"

    .line 408
    .line 409
    invoke-interface {v13, v15, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v13

    .line 413
    iget-object v5, v1, Lpe/hf/black20/services/RecordingServices;->J:Landroid/content/SharedPreferences;

    .line 414
    .line 415
    invoke-interface {v5, v15, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v5

    .line 419
    invoke-virtual {v14, v13, v5}, Lorg/videolan/libvlc/LibVLC;->setUserAgent(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    new-instance v5, Lorg/videolan/libvlc/MediaPlayer;

    .line 423
    .line 424
    invoke-direct {v5, v14}, Lorg/videolan/libvlc/MediaPlayer;-><init>(Lorg/videolan/libvlc/interfaces/ILibVLC;)V

    .line 425
    .line 426
    .line 427
    iput-object v5, v1, Lpe/hf/black20/services/RecordingServices;->H:Lorg/videolan/libvlc/MediaPlayer;

    .line 428
    .line 429
    new-instance v5, Lorg/videolan/libvlc/Media;

    .line 430
    .line 431
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 432
    .line 433
    .line 434
    move-result-object v11

    .line 435
    invoke-direct {v5, v14, v11}, Lorg/videolan/libvlc/Media;-><init>(Lorg/videolan/libvlc/interfaces/ILibVLC;Landroid/net/Uri;)V

    .line 436
    .line 437
    .line 438
    const-string v11, ":network-caching=300"

    .line 439
    .line 440
    invoke-virtual {v5, v11}, Lorg/videolan/libvlc/Media;->addOption(Ljava/lang/String;)V

    .line 441
    .line 442
    .line 443
    const-string v11, ":no-sout-all"

    .line 444
    .line 445
    invoke-virtual {v5, v11}, Lorg/videolan/libvlc/Media;->addOption(Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    const-string v11, ":sout-keep"

    .line 449
    .line 450
    invoke-virtual {v5, v11}, Lorg/videolan/libvlc/Media;->addOption(Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    iget-object v11, v1, Lpe/hf/black20/services/RecordingServices;->I:Lc7/c;

    .line 454
    .line 455
    const-string v13, "Recording Now"

    .line 456
    .line 457
    invoke-virtual {v11, v13, v10}, Lc7/c;->d0(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    new-instance v10, Ljava/lang/StringBuilder;

    .line 461
    .line 462
    const-string v11, ":sout=#std{access=file,mux=mp4,dst="

    .line 463
    .line 464
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    .line 469
    .line 470
    const-string v11, "}"

    .line 471
    .line 472
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    .line 474
    .line 475
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v10

    .line 479
    invoke-virtual {v5, v10}, Lorg/videolan/libvlc/Media;->addOption(Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    iget-object v10, v1, Lpe/hf/black20/services/RecordingServices;->H:Lorg/videolan/libvlc/MediaPlayer;

    .line 483
    .line 484
    invoke-virtual {v10, v5}, Lorg/videolan/libvlc/MediaPlayer;->setMedia(Lorg/videolan/libvlc/interfaces/IMedia;)V

    .line 485
    .line 486
    .line 487
    iget-object v5, v1, Lpe/hf/black20/services/RecordingServices;->H:Lorg/videolan/libvlc/MediaPlayer;

    .line 488
    .line 489
    const/16 v10, 0x5f

    .line 490
    .line 491
    invoke-virtual {v5, v10}, Lorg/videolan/libvlc/MediaPlayer;->setVolume(I)I

    .line 492
    .line 493
    .line 494
    iget-object v5, v1, Lpe/hf/black20/services/RecordingServices;->H:Lorg/videolan/libvlc/MediaPlayer;

    .line 495
    .line 496
    invoke-virtual {v5}, Lorg/videolan/libvlc/MediaPlayer;->play()V

    .line 497
    .line 498
    .line 499
    :cond_0
    iget-object v5, v1, Lpe/hf/black20/services/RecordingServices;->L:Ljava/util/ArrayList;

    .line 500
    .line 501
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    .line 503
    .line 504
    add-int/lit8 v8, v8, 0x1

    .line 505
    .line 506
    const/4 v5, 0x2

    .line 507
    goto/16 :goto_0

    .line 508
    .line 509
    :cond_1
    invoke-static {}, Lpe/hf/black20/util/Methods;->H()Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v2

    .line 513
    iget-object v3, v1, Lpe/hf/black20/services/RecordingServices;->M:Ljava/lang/String;

    .line 514
    .line 515
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 516
    .line 517
    .line 518
    move-result v2

    .line 519
    if-eqz v2, :cond_3

    .line 520
    .line 521
    iget-object v2, v1, Lpe/hf/black20/services/RecordingServices;->I:Lc7/c;

    .line 522
    .line 523
    const-string v3, "Recorded"

    .line 524
    .line 525
    iget-object v4, v1, Lpe/hf/black20/services/RecordingServices;->Q:Ljava/lang/String;

    .line 526
    .line 527
    invoke-virtual {v2, v3, v4}, Lc7/c;->d0(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    .line 529
    .line 530
    invoke-virtual {v1}, Lpe/hf/black20/services/RecordingServices;->a()V

    .line 531
    .line 532
    .line 533
    goto :goto_2

    .line 534
    :cond_2
    const-string v2, "Background recording Service Schedule Job aborted. No internet"

    .line 535
    .line 536
    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    .line 538
    .line 539
    :cond_3
    :goto_2
    iget-object v2, v1, Lpe/hf/black20/services/RecordingServices;->N:Landroid/os/Handler;

    .line 540
    .line 541
    iget-object v3, v1, Lpe/hf/black20/services/RecordingServices;->O:Lcom/google/android/gms/internal/cast/X;

    .line 542
    .line 543
    iget v1, v1, Lpe/hf/black20/services/RecordingServices;->P:I

    .line 544
    .line 545
    int-to-long v4, v1

    .line 546
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 547
    .line 548
    .line 549
    return-void

    .line 550
    :pswitch_0
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/X;->H:Ljava/lang/Object;

    .line 551
    .line 552
    check-cast v1, Lpe/hf/black20/services/OTRServices;

    .line 553
    .line 554
    sget v2, Lpe/hf/black20/services/OTRServices;->W:I

    .line 555
    .line 556
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 557
    .line 558
    .line 559
    new-instance v2, Ljava/lang/Thread;

    .line 560
    .line 561
    new-instance v3, Lj7/a;

    .line 562
    .line 563
    invoke-direct {v3, v1, v6}, Lj7/a;-><init>(Lpe/hf/black20/services/OTRServices;I)V

    .line 564
    .line 565
    .line 566
    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 567
    .line 568
    .line 569
    iput-object v2, v1, Lpe/hf/black20/services/OTRServices;->U:Ljava/lang/Thread;

    .line 570
    .line 571
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 572
    .line 573
    .line 574
    iget-object v2, v1, Lpe/hf/black20/services/OTRServices;->J:Landroid/os/Handler;

    .line 575
    .line 576
    iget-object v3, v1, Lpe/hf/black20/services/OTRServices;->K:Lcom/google/android/gms/internal/cast/X;

    .line 577
    .line 578
    iget v1, v1, Lpe/hf/black20/services/OTRServices;->L:I

    .line 579
    .line 580
    int-to-long v4, v1

    .line 581
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 582
    .line 583
    .line 584
    return-void

    .line 585
    :pswitch_1
    sget-object v1, Lpe/hf/black20/epg/EPGActivityXMLTV;->f0:Landroid/app/ProgressDialog;

    .line 586
    .line 587
    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    .line 588
    .line 589
    .line 590
    move-result v1

    .line 591
    if-eqz v1, :cond_4

    .line 592
    .line 593
    sget-object v1, Lpe/hf/black20/epg/EPGActivityXMLTV;->f0:Landroid/app/ProgressDialog;

    .line 594
    .line 595
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 596
    .line 597
    .line 598
    :cond_4
    return-void

    .line 599
    :pswitch_2
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/X;->H:Ljava/lang/Object;

    .line 600
    .line 601
    check-cast v1, Lw0/j;

    .line 602
    .line 603
    iget-object v1, v1, Lw0/j;->H:Ljava/lang/Object;

    .line 604
    .line 605
    check-cast v1, Lpe/hf/black20/epg/EPGActivityXMLTV;

    .line 606
    .line 607
    iget-object v1, v1, Lpe/hf/black20/epg/EPGActivityXMLTV;->V:Landroid/widget/TextView;

    .line 608
    .line 609
    sget-object v2, Lpe/hf/black20/util/Methods;->a:Landroid/content/SharedPreferences;

    .line 610
    .line 611
    const-string v2, "ORT_TIME_FORMAT"

    .line 612
    .line 613
    const-string v3, "12"

    .line 614
    .line 615
    const-string v4, "24"

    .line 616
    .line 617
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 618
    .line 619
    .line 620
    move-result v2

    .line 621
    if-eqz v2, :cond_5

    .line 622
    .line 623
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 624
    .line 625
    const-string v3, "HH:mm"

    .line 626
    .line 627
    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 628
    .line 629
    .line 630
    goto :goto_3

    .line 631
    :cond_5
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 632
    .line 633
    const-string v3, "hh:mm a"

    .line 634
    .line 635
    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 636
    .line 637
    .line 638
    :goto_3
    new-instance v3, Ljava/util/Date;

    .line 639
    .line 640
    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 641
    .line 642
    .line 643
    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 644
    .line 645
    .line 646
    move-result-object v2

    .line 647
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 648
    .line 649
    .line 650
    return-void

    .line 651
    :pswitch_3
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/X;->H:Ljava/lang/Object;

    .line 652
    .line 653
    check-cast v1, Ld7/a;

    .line 654
    .line 655
    iget-object v2, v1, Ld7/a;->H:Lpe/hf/black20/epg/EPGActivityXMLTV;

    .line 656
    .line 657
    iget-object v2, v2, Lpe/hf/black20/epg/EPGActivityXMLTV;->K:Ljava/util/ArrayList;

    .line 658
    .line 659
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 660
    .line 661
    .line 662
    move-result v2

    .line 663
    const-string v5, "category_id"

    .line 664
    .line 665
    const-string v7, "category_name"

    .line 666
    .line 667
    if-le v2, v4, :cond_7

    .line 668
    .line 669
    iget-object v2, v1, Ld7/a;->H:Lpe/hf/black20/epg/EPGActivityXMLTV;

    .line 670
    .line 671
    iget-object v2, v2, Lpe/hf/black20/epg/EPGActivityXMLTV;->O:Lc7/d;

    .line 672
    .line 673
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 674
    .line 675
    .line 676
    move-result-object v8

    .line 677
    const-string v9, "ORT_PROFILE_ID"

    .line 678
    .line 679
    const-string v10, ""

    .line 680
    .line 681
    invoke-virtual {v8, v9, v10}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 682
    .line 683
    .line 684
    move-result-object v8

    .line 685
    new-instance v11, Ljava/lang/StringBuilder;

    .line 686
    .line 687
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 688
    .line 689
    .line 690
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 691
    .line 692
    .line 693
    move-result-object v12

    .line 694
    invoke-virtual {v12, v9, v10}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 695
    .line 696
    .line 697
    move-result-object v9

    .line 698
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    .line 700
    .line 701
    const-string v9, "_live"

    .line 702
    .line 703
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    .line 705
    .line 706
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 707
    .line 708
    .line 709
    move-result-object v9

    .line 710
    invoke-virtual {v2, v8, v9}, Lc7/d;->v0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 711
    .line 712
    .line 713
    move-result-object v2

    .line 714
    const-string v8, "yes"

    .line 715
    .line 716
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 717
    .line 718
    .line 719
    move-result v2

    .line 720
    if-eqz v2, :cond_6

    .line 721
    .line 722
    iget-object v2, v1, Ld7/a;->H:Lpe/hf/black20/epg/EPGActivityXMLTV;

    .line 723
    .line 724
    iget-object v2, v2, Lpe/hf/black20/epg/EPGActivityXMLTV;->K:Ljava/util/ArrayList;

    .line 725
    .line 726
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 727
    .line 728
    .line 729
    move-result-object v2

    .line 730
    check-cast v2, Ljava/util/HashMap;

    .line 731
    .line 732
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    .line 734
    .line 735
    move-result-object v2

    .line 736
    check-cast v2, Ljava/lang/String;

    .line 737
    .line 738
    sput-object v2, Lpe/hf/black20/epg/EPGActivityXMLTV;->u0:Ljava/lang/String;

    .line 739
    .line 740
    iget-object v2, v1, Ld7/a;->H:Lpe/hf/black20/epg/EPGActivityXMLTV;

    .line 741
    .line 742
    iget-object v2, v2, Lpe/hf/black20/epg/EPGActivityXMLTV;->K:Ljava/util/ArrayList;

    .line 743
    .line 744
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 745
    .line 746
    .line 747
    move-result-object v2

    .line 748
    check-cast v2, Ljava/util/HashMap;

    .line 749
    .line 750
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    .line 752
    .line 753
    move-result-object v2

    .line 754
    check-cast v2, Ljava/lang/String;

    .line 755
    .line 756
    sput-object v2, Lpe/hf/black20/epg/EPGActivityXMLTV;->v0:Ljava/lang/String;

    .line 757
    .line 758
    iget-object v2, v1, Ld7/a;->H:Lpe/hf/black20/epg/EPGActivityXMLTV;

    .line 759
    .line 760
    iput v6, v2, Lpe/hf/black20/epg/EPGActivityXMLTV;->S:I

    .line 761
    .line 762
    goto :goto_4

    .line 763
    :cond_6
    iget-object v2, v1, Ld7/a;->H:Lpe/hf/black20/epg/EPGActivityXMLTV;

    .line 764
    .line 765
    iget-object v2, v2, Lpe/hf/black20/epg/EPGActivityXMLTV;->K:Ljava/util/ArrayList;

    .line 766
    .line 767
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 768
    .line 769
    .line 770
    move-result-object v2

    .line 771
    check-cast v2, Ljava/util/HashMap;

    .line 772
    .line 773
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    .line 775
    .line 776
    move-result-object v2

    .line 777
    check-cast v2, Ljava/lang/String;

    .line 778
    .line 779
    sput-object v2, Lpe/hf/black20/epg/EPGActivityXMLTV;->u0:Ljava/lang/String;

    .line 780
    .line 781
    iget-object v2, v1, Ld7/a;->H:Lpe/hf/black20/epg/EPGActivityXMLTV;

    .line 782
    .line 783
    iget-object v2, v2, Lpe/hf/black20/epg/EPGActivityXMLTV;->K:Ljava/util/ArrayList;

    .line 784
    .line 785
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 786
    .line 787
    .line 788
    move-result-object v2

    .line 789
    check-cast v2, Ljava/util/HashMap;

    .line 790
    .line 791
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    .line 793
    .line 794
    move-result-object v2

    .line 795
    check-cast v2, Ljava/lang/String;

    .line 796
    .line 797
    sput-object v2, Lpe/hf/black20/epg/EPGActivityXMLTV;->v0:Ljava/lang/String;

    .line 798
    .line 799
    iget-object v2, v1, Ld7/a;->H:Lpe/hf/black20/epg/EPGActivityXMLTV;

    .line 800
    .line 801
    iput v4, v2, Lpe/hf/black20/epg/EPGActivityXMLTV;->S:I

    .line 802
    .line 803
    :cond_7
    :goto_4
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 804
    .line 805
    .line 806
    move-result-object v2

    .line 807
    sget-object v8, Lpe/hf/black20/epg/EPGActivityXMLTV;->u0:Ljava/lang/String;

    .line 808
    .line 809
    const-string v9, "ORT_CAT_NAME"

    .line 810
    .line 811
    invoke-virtual {v2, v9, v8}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 812
    .line 813
    .line 814
    iget-object v2, v1, Ld7/a;->H:Lpe/hf/black20/epg/EPGActivityXMLTV;

    .line 815
    .line 816
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 817
    .line 818
    .line 819
    const-string v8, "XCIPTV_TAG"

    .line 820
    .line 821
    const-string v9, "--------------SetupCategoriesButtons----------------"

    .line 822
    .line 823
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    .line 825
    .line 826
    iget-object v8, v2, Lpe/hf/black20/epg/EPGActivityXMLTV;->Z:Landroid/widget/LinearLayout;

    .line 827
    .line 828
    invoke-virtual {v8, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 829
    .line 830
    .line 831
    iget-object v8, v2, Lpe/hf/black20/epg/EPGActivityXMLTV;->Z:Landroid/widget/LinearLayout;

    .line 832
    .line 833
    invoke-virtual {v8}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 834
    .line 835
    .line 836
    sget v8, Lpe/hf/black20/epg/EPGActivityXMLTV;->o0:I

    .line 837
    .line 838
    const/16 v9, 0xa

    .line 839
    .line 840
    mul-int/lit8 v8, v8, 0xa

    .line 841
    .line 842
    const/4 v10, 0x0

    .line 843
    :goto_5
    iget-object v11, v2, Lpe/hf/black20/epg/EPGActivityXMLTV;->K:Ljava/util/ArrayList;

    .line 844
    .line 845
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 846
    .line 847
    .line 848
    move-result v11

    .line 849
    const/16 v12, 0x18

    .line 850
    .line 851
    const v13, 0x7f090004

    .line 852
    .line 853
    .line 854
    const/16 v14, 0x11

    .line 855
    .line 856
    const/4 v15, -0x2

    .line 857
    if-ge v10, v11, :cond_b

    .line 858
    .line 859
    new-instance v11, Landroid/widget/Button;

    .line 860
    .line 861
    iget-object v9, v2, Lpe/hf/black20/epg/EPGActivityXMLTV;->G:Lpe/hf/black20/epg/EPGActivityXMLTV;

    .line 862
    .line 863
    invoke-direct {v11, v9}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 864
    .line 865
    .line 866
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 867
    .line 868
    invoke-direct {v3, v15, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 869
    .line 870
    .line 871
    invoke-virtual {v3, v6, v6, v8, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 872
    .line 873
    .line 874
    sget v15, Lpe/hf/black20/epg/EPGActivityXMLTV;->t0:I

    .line 875
    .line 876
    iput v15, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 877
    .line 878
    invoke-virtual {v11, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 879
    .line 880
    .line 881
    sget v3, Lpe/hf/black20/epg/EPGActivityXMLTV;->q0:I

    .line 882
    .line 883
    int-to-float v3, v3

    .line 884
    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 885
    .line 886
    .line 887
    sget v3, Lpe/hf/black20/epg/EPGActivityXMLTV;->o0:I

    .line 888
    .line 889
    const/4 v15, 0x2

    .line 890
    mul-int/lit8 v3, v3, 0x2

    .line 891
    .line 892
    invoke-virtual {v11, v8, v6, v8, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 893
    .line 894
    .line 895
    invoke-virtual {v11, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 896
    .line 897
    .line 898
    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 899
    .line 900
    .line 901
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 902
    .line 903
    .line 904
    move-result-object v3

    .line 905
    const-string v14, "ORT_isDemo"

    .line 906
    .line 907
    invoke-virtual {v3, v14, v6}, LQ5/a;->a(Ljava/lang/String;Z)Z

    .line 908
    .line 909
    .line 910
    move-result v3

    .line 911
    if-eqz v3, :cond_8

    .line 912
    .line 913
    new-instance v3, Ljava/lang/StringBuilder;

    .line 914
    .line 915
    const-string v14, "CATEGORY "

    .line 916
    .line 917
    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 918
    .line 919
    .line 920
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 921
    .line 922
    .line 923
    move-result-object v14

    .line 924
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 925
    .line 926
    .line 927
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 928
    .line 929
    .line 930
    move-result-object v3

    .line 931
    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 932
    .line 933
    .line 934
    goto :goto_6

    .line 935
    :cond_8
    iget-object v3, v2, Lpe/hf/black20/epg/EPGActivityXMLTV;->K:Ljava/util/ArrayList;

    .line 936
    .line 937
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 938
    .line 939
    .line 940
    move-result-object v3

    .line 941
    check-cast v3, Ljava/util/HashMap;

    .line 942
    .line 943
    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    .line 945
    .line 946
    move-result-object v3

    .line 947
    check-cast v3, Ljava/lang/CharSequence;

    .line 948
    .line 949
    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 950
    .line 951
    .line 952
    :goto_6
    iget-object v3, v2, Lpe/hf/black20/epg/EPGActivityXMLTV;->K:Ljava/util/ArrayList;

    .line 953
    .line 954
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 955
    .line 956
    .line 957
    move-result-object v3

    .line 958
    check-cast v3, Ljava/util/HashMap;

    .line 959
    .line 960
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 961
    .line 962
    .line 963
    move-result-object v3

    .line 964
    invoke-virtual {v11, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 965
    .line 966
    .line 967
    invoke-static {v9, v13}, LF/n;->b(Landroid/content/Context;I)Landroid/graphics/Typeface;

    .line 968
    .line 969
    .line 970
    move-result-object v3

    .line 971
    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 972
    .line 973
    .line 974
    iget-object v3, v2, Lpe/hf/black20/epg/EPGActivityXMLTV;->Z:Landroid/widget/LinearLayout;

    .line 975
    .line 976
    invoke-virtual {v3, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 977
    .line 978
    .line 979
    const v3, 0x7f090001

    .line 980
    .line 981
    .line 982
    if-nez v10, :cond_9

    .line 983
    .line 984
    iget v13, v2, Lpe/hf/black20/epg/EPGActivityXMLTV;->S:I

    .line 985
    .line 986
    if-nez v13, :cond_9

    .line 987
    .line 988
    invoke-static {v9, v3}, LF/n;->b(Landroid/content/Context;I)Landroid/graphics/Typeface;

    .line 989
    .line 990
    .line 991
    move-result-object v13

    .line 992
    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 993
    .line 994
    .line 995
    :cond_9
    if-ne v10, v4, :cond_a

    .line 996
    .line 997
    iget v13, v2, Lpe/hf/black20/epg/EPGActivityXMLTV;->S:I

    .line 998
    .line 999
    if-ne v13, v4, :cond_a

    .line 1000
    .line 1001
    invoke-static {v9, v3}, LF/n;->b(Landroid/content/Context;I)Landroid/graphics/Typeface;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v3

    .line 1005
    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1006
    .line 1007
    .line 1008
    :cond_a
    new-instance v3, Lf/c;

    .line 1009
    .line 1010
    invoke-direct {v3, v2, v12}, Lf/c;-><init>(Ljava/lang/Object;I)V

    .line 1011
    .line 1012
    .line 1013
    invoke-virtual {v11, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1014
    .line 1015
    .line 1016
    new-instance v3, Lb7/j0;

    .line 1017
    .line 1018
    const/16 v9, 0xb

    .line 1019
    .line 1020
    invoke-direct {v3, v9, v2, v11}, Lb7/j0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1021
    .line 1022
    .line 1023
    invoke-virtual {v11, v3}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1024
    .line 1025
    .line 1026
    add-int/lit8 v10, v10, 0x1

    .line 1027
    .line 1028
    const/4 v3, 0x0

    .line 1029
    const/16 v9, 0xa

    .line 1030
    .line 1031
    goto/16 :goto_5

    .line 1032
    .line 1033
    :cond_b
    iget-object v2, v1, Ld7/a;->H:Lpe/hf/black20/epg/EPGActivityXMLTV;

    .line 1034
    .line 1035
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1036
    .line 1037
    .line 1038
    new-instance v3, Lw0/j;

    .line 1039
    .line 1040
    const/4 v5, 0x6

    .line 1041
    invoke-direct {v3, v2, v5}, Lw0/j;-><init>(Landroid/app/Activity;I)V

    .line 1042
    .line 1043
    .line 1044
    iput-object v3, v2, Lpe/hf/black20/epg/EPGActivityXMLTV;->c0:Lw0/j;

    .line 1045
    .line 1046
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 1047
    .line 1048
    .line 1049
    iget-object v2, v1, Ld7/a;->H:Lpe/hf/black20/epg/EPGActivityXMLTV;

    .line 1050
    .line 1051
    const-string v3, "#ffffff"

    .line 1052
    .line 1053
    const-string v5, "E HH:mm"

    .line 1054
    .line 1055
    const-string v7, "epg_load_day"

    .line 1056
    .line 1057
    iget-object v8, v2, Lpe/hf/black20/epg/EPGActivityXMLTV;->X:Landroid/widget/FrameLayout;

    .line 1058
    .line 1059
    invoke-virtual {v8}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1060
    .line 1061
    .line 1062
    :try_start_1
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 1063
    .line 1064
    invoke-direct {v8, v15, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1065
    .line 1066
    .line 1067
    sget v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->r0:I

    .line 1068
    .line 1069
    sget v10, Lpe/hf/black20/epg/EPGActivityXMLTV;->o0:I

    .line 1070
    .line 1071
    add-int/2addr v9, v10

    .line 1072
    invoke-virtual {v8, v9, v6, v6, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1073
    .line 1074
    .line 1075
    iget-object v9, v2, Lpe/hf/black20/epg/EPGActivityXMLTV;->U:Landroid/widget/HorizontalScrollView;

    .line 1076
    .line 1077
    invoke-virtual {v9, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1078
    .line 1079
    .line 1080
    iget-object v8, v2, Lpe/hf/black20/epg/EPGActivityXMLTV;->U:Landroid/widget/HorizontalScrollView;

    .line 1081
    .line 1082
    invoke-virtual {v8, v6}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 1083
    .line 1084
    .line 1085
    invoke-static {}, Lpe/hf/black20/util/Methods;->G()Ljava/lang/String;

    .line 1086
    .line 1087
    .line 1088
    move-result-object v8

    .line 1089
    iget-object v9, v2, Lpe/hf/black20/epg/EPGActivityXMLTV;->M:LZ6/b;

    .line 1090
    .line 1091
    invoke-virtual {v9, v8}, LZ6/b;->b(Ljava/lang/String;)Ljava/util/Date;

    .line 1092
    .line 1093
    .line 1094
    move-result-object v8

    .line 1095
    sput v12, Lpe/hf/black20/epg/EPGActivityXMLTV;->l0:I

    .line 1096
    .line 1097
    iget-object v9, v2, Lpe/hf/black20/epg/EPGActivityXMLTV;->H:Landroid/content/SharedPreferences;

    .line 1098
    .line 1099
    invoke-interface {v9, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 1100
    .line 1101
    .line 1102
    move-result v9

    .line 1103
    if-eqz v9, :cond_c

    .line 1104
    .line 1105
    iget-object v9, v2, Lpe/hf/black20/epg/EPGActivityXMLTV;->H:Landroid/content/SharedPreferences;

    .line 1106
    .line 1107
    const/4 v10, 0x0

    .line 1108
    invoke-interface {v9, v7, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1109
    .line 1110
    .line 1111
    move-result-object v7

    .line 1112
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1113
    .line 1114
    .line 1115
    move-result v7

    .line 1116
    sput v7, Lpe/hf/black20/epg/EPGActivityXMLTV;->l0:I

    .line 1117
    .line 1118
    :cond_c
    invoke-static {v5}, LZ6/b;->a(Ljava/lang/String;)LZ6/b;

    .line 1119
    .line 1120
    .line 1121
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 1122
    .line 1123
    .line 1124
    move-result-object v7

    .line 1125
    const-string v9, "ORT_TIME_FORMAT"

    .line 1126
    .line 1127
    const-string v10, "12"

    .line 1128
    .line 1129
    invoke-virtual {v7, v9, v10}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1130
    .line 1131
    .line 1132
    move-result-object v7

    .line 1133
    const-string v9, "24"

    .line 1134
    .line 1135
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1136
    .line 1137
    .line 1138
    move-result v7

    .line 1139
    if-eqz v7, :cond_d

    .line 1140
    .line 1141
    invoke-static {v5}, LZ6/b;->a(Ljava/lang/String;)LZ6/b;

    .line 1142
    .line 1143
    .line 1144
    move-result-object v5

    .line 1145
    goto :goto_7

    .line 1146
    :cond_d
    const-string v5, "E hh:mm a"

    .line 1147
    .line 1148
    invoke-static {v5}, LZ6/b;->a(Ljava/lang/String;)LZ6/b;

    .line 1149
    .line 1150
    .line 1151
    move-result-object v5

    .line 1152
    :goto_7
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 1153
    .line 1154
    .line 1155
    move-result-object v7

    .line 1156
    invoke-virtual {v7, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1157
    .line 1158
    .line 1159
    new-instance v8, Landroid/widget/TextView;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1160
    .line 1161
    iget-object v9, v2, Lpe/hf/black20/epg/EPGActivityXMLTV;->G:Lpe/hf/black20/epg/EPGActivityXMLTV;

    .line 1162
    .line 1163
    :try_start_2
    invoke-direct {v8, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1164
    .line 1165
    .line 1166
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 1167
    .line 1168
    invoke-direct {v10, v15, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1169
    .line 1170
    .line 1171
    sget v11, Lpe/hf/black20/epg/EPGActivityXMLTV;->r0:I

    .line 1172
    .line 1173
    iput v11, v10, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1174
    .line 1175
    invoke-virtual {v10, v6, v6, v6, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1176
    .line 1177
    .line 1178
    const/4 v11, 0x5

    .line 1179
    invoke-virtual {v8, v6, v6, v6, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1180
    .line 1181
    .line 1182
    invoke-virtual {v8, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1183
    .line 1184
    .line 1185
    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 1186
    .line 1187
    .line 1188
    const-string v10, "CHANNEL"

    .line 1189
    .line 1190
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1191
    .line 1192
    .line 1193
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 1194
    .line 1195
    .line 1196
    move-result v10

    .line 1197
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1198
    .line 1199
    .line 1200
    invoke-virtual {v8, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1201
    .line 1202
    .line 1203
    invoke-static {v9, v13}, LF/n;->b(Landroid/content/Context;I)Landroid/graphics/Typeface;

    .line 1204
    .line 1205
    .line 1206
    move-result-object v10

    .line 1207
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1208
    .line 1209
    .line 1210
    iget-object v10, v2, Lpe/hf/black20/epg/EPGActivityXMLTV;->W:Landroid/widget/FrameLayout;

    .line 1211
    .line 1212
    invoke-virtual {v10, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1213
    .line 1214
    .line 1215
    const/4 v10, 0x0

    .line 1216
    const/4 v12, 0x0

    .line 1217
    :goto_8
    sget v11, Lpe/hf/black20/epg/EPGActivityXMLTV;->l0:I

    .line 1218
    .line 1219
    if-gt v10, v11, :cond_f

    .line 1220
    .line 1221
    new-instance v11, Landroid/widget/TextView;

    .line 1222
    .line 1223
    invoke-direct {v11, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1224
    .line 1225
    .line 1226
    if-nez v10, :cond_e

    .line 1227
    .line 1228
    const/16 v13, 0xa

    .line 1229
    .line 1230
    invoke-virtual {v7, v13, v6}, Ljava/util/Calendar;->add(II)V

    .line 1231
    .line 1232
    .line 1233
    goto :goto_9

    .line 1234
    :cond_e
    const/16 v13, 0xa

    .line 1235
    .line 1236
    invoke-virtual {v7, v13, v4}, Ljava/util/Calendar;->add(II)V

    .line 1237
    .line 1238
    .line 1239
    :goto_9
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 1240
    .line 1241
    invoke-direct {v13, v15, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1242
    .line 1243
    .line 1244
    sget v16, Lpe/hf/black20/epg/EPGActivityXMLTV;->r0:I

    .line 1245
    .line 1246
    sget v17, Lpe/hf/black20/epg/EPGActivityXMLTV;->o0:I

    .line 1247
    .line 1248
    mul-int/lit8 v18, v17, 0x2

    .line 1249
    .line 1250
    sub-int v15, v16, v18

    .line 1251
    .line 1252
    iput v15, v13, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1253
    .line 1254
    add-int v15, v12, v17

    .line 1255
    .line 1256
    invoke-virtual {v13, v15, v6, v6, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1257
    .line 1258
    .line 1259
    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 1260
    .line 1261
    .line 1262
    invoke-virtual {v11, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1263
    .line 1264
    .line 1265
    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 1266
    .line 1267
    .line 1268
    move-result-object v13

    .line 1269
    iget-object v15, v5, LZ6/b;->G:LZ6/C;

    .line 1270
    .line 1271
    invoke-virtual {v15, v13}, LZ6/C;->c(Ljava/util/Date;)Ljava/lang/String;

    .line 1272
    .line 1273
    .line 1274
    move-result-object v13

    .line 1275
    new-instance v15, Ljava/lang/StringBuilder;

    .line 1276
    .line 1277
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 1278
    .line 1279
    .line 1280
    const-string v14, " "

    .line 1281
    .line 1282
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1283
    .line 1284
    .line 1285
    invoke-virtual {v13}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 1286
    .line 1287
    .line 1288
    move-result-object v13

    .line 1289
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1290
    .line 1291
    .line 1292
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1293
    .line 1294
    .line 1295
    move-result-object v13

    .line 1296
    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1297
    .line 1298
    .line 1299
    const v13, 0x7f090004

    .line 1300
    .line 1301
    .line 1302
    invoke-static {v9, v13}, LF/n;->b(Landroid/content/Context;I)Landroid/graphics/Typeface;

    .line 1303
    .line 1304
    .line 1305
    move-result-object v14

    .line 1306
    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1307
    .line 1308
    .line 1309
    invoke-virtual {v8, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1310
    .line 1311
    .line 1312
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 1313
    .line 1314
    .line 1315
    move-result v14

    .line 1316
    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1317
    .line 1318
    .line 1319
    const/4 v14, 0x5

    .line 1320
    invoke-virtual {v11, v6, v6, v6, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1321
    .line 1322
    .line 1323
    iget-object v15, v2, Lpe/hf/black20/epg/EPGActivityXMLTV;->X:Landroid/widget/FrameLayout;

    .line 1324
    .line 1325
    invoke-virtual {v15, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1326
    .line 1327
    .line 1328
    sget v11, Lpe/hf/black20/epg/EPGActivityXMLTV;->r0:I

    .line 1329
    .line 1330
    add-int/2addr v12, v11

    .line 1331
    iget-object v11, v2, Lpe/hf/black20/epg/EPGActivityXMLTV;->M:LZ6/b;

    .line 1332
    .line 1333
    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 1334
    .line 1335
    .line 1336
    move-result-object v15

    .line 1337
    iget-object v11, v11, LZ6/b;->G:LZ6/C;

    .line 1338
    .line 1339
    invoke-virtual {v11, v15}, LZ6/C;->c(Ljava/util/Date;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1340
    .line 1341
    .line 1342
    add-int/lit8 v10, v10, 0x1

    .line 1343
    .line 1344
    const/16 v14, 0x11

    .line 1345
    .line 1346
    const/4 v15, -0x2

    .line 1347
    goto/16 :goto_8

    .line 1348
    .line 1349
    :catch_1
    :cond_f
    iget-object v1, v1, Ld7/a;->H:Lpe/hf/black20/epg/EPGActivityXMLTV;

    .line 1350
    .line 1351
    invoke-virtual {v1}, Lpe/hf/black20/epg/EPGActivityXMLTV;->b()V

    .line 1352
    .line 1353
    .line 1354
    return-void

    .line 1355
    :pswitch_4
    new-instance v1, Landroid/os/Handler;

    .line 1356
    .line 1357
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 1358
    .line 1359
    .line 1360
    new-instance v2, Lcom/google/android/gms/internal/cast/X;

    .line 1361
    .line 1362
    const/16 v3, 0x17

    .line 1363
    .line 1364
    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/cast/X;-><init>(Ljava/lang/Object;I)V

    .line 1365
    .line 1366
    .line 1367
    const-wide/16 v3, 0x7d0

    .line 1368
    .line 1369
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1370
    .line 1371
    .line 1372
    return-void

    .line 1373
    :pswitch_5
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/X;->H:Ljava/lang/Object;

    .line 1374
    .line 1375
    check-cast v1, Lcom/google/android/gms/internal/cast/X;

    .line 1376
    .line 1377
    iget-object v1, v1, Lcom/google/android/gms/internal/cast/X;->H:Ljava/lang/Object;

    .line 1378
    .line 1379
    check-cast v1, Lpe/hf/black20/SplashActivity;

    .line 1380
    .line 1381
    invoke-static {v1}, Lpe/hf/black20/SplashActivity;->a(Lpe/hf/black20/SplashActivity;)V

    .line 1382
    .line 1383
    .line 1384
    return-void

    .line 1385
    :pswitch_6
    const-string v1, "XCIPTV_TAG"

    .line 1386
    .line 1387
    const-string v2, "Loding movie info"

    .line 1388
    .line 1389
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    .line 1391
    .line 1392
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 1393
    .line 1394
    .line 1395
    move-result-object v1

    .line 1396
    const-string v2, "ORT_WHICH_PANEL"

    .line 1397
    .line 1398
    const-string v3, "xtreamcodes"

    .line 1399
    .line 1400
    invoke-virtual {v1, v2, v3}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1401
    .line 1402
    .line 1403
    move-result-object v1

    .line 1404
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1405
    .line 1406
    .line 1407
    move-result v1

    .line 1408
    iget-object v4, v0, Lcom/google/android/gms/internal/cast/X;->H:Ljava/lang/Object;

    .line 1409
    .line 1410
    if-eqz v1, :cond_10

    .line 1411
    .line 1412
    new-instance v1, Lk3/j;

    .line 1413
    .line 1414
    check-cast v4, Lb7/S0;

    .line 1415
    .line 1416
    invoke-direct {v1, v4}, Lk3/j;-><init>(Lb7/S0;)V

    .line 1417
    .line 1418
    .line 1419
    new-array v2, v6, [Ljava/lang/Void;

    .line 1420
    .line 1421
    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1422
    .line 1423
    .line 1424
    goto :goto_a

    .line 1425
    :cond_10
    const-string v1, "otr"

    .line 1426
    .line 1427
    invoke-static {v2, v3, v1}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1428
    .line 1429
    .line 1430
    move-result v1

    .line 1431
    if-eqz v1, :cond_11

    .line 1432
    .line 1433
    check-cast v4, Lb7/S0;

    .line 1434
    .line 1435
    sget v1, Lb7/S0;->z1:I

    .line 1436
    .line 1437
    invoke-virtual {v4}, Lb7/S0;->V()V

    .line 1438
    .line 1439
    .line 1440
    goto :goto_a

    .line 1441
    :cond_11
    new-instance v1, Lk3/j;

    .line 1442
    .line 1443
    check-cast v4, Lb7/S0;

    .line 1444
    .line 1445
    invoke-direct {v1, v4}, Lk3/j;-><init>(Lb7/S0;)V

    .line 1446
    .line 1447
    .line 1448
    new-array v2, v6, [Ljava/lang/Void;

    .line 1449
    .line 1450
    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1451
    .line 1452
    .line 1453
    :goto_a
    return-void

    .line 1454
    :pswitch_7
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/X;->H:Ljava/lang/Object;

    .line 1455
    .line 1456
    check-cast v1, Lb7/N0;

    .line 1457
    .line 1458
    iget-object v2, v1, Lb7/N0;->G:[Ljava/util/ArrayList;

    .line 1459
    .line 1460
    aget-object v2, v2, v6

    .line 1461
    .line 1462
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1463
    .line 1464
    .line 1465
    move-result v2

    .line 1466
    if-nez v2, :cond_12

    .line 1467
    .line 1468
    iget-object v1, v1, Lb7/N0;->O:Lb7/S0;

    .line 1469
    .line 1470
    sget v2, Lb7/S0;->z1:I

    .line 1471
    .line 1472
    invoke-virtual {v1}, Lb7/S0;->Y()V

    .line 1473
    .line 1474
    .line 1475
    goto/16 :goto_b

    .line 1476
    .line 1477
    :cond_12
    iget-object v2, v1, Lb7/N0;->J:[Lorg/json/JSONArray;

    .line 1478
    .line 1479
    aget-object v2, v2, v6

    .line 1480
    .line 1481
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 1482
    .line 1483
    .line 1484
    move-result v2

    .line 1485
    if-lez v2, :cond_13

    .line 1486
    .line 1487
    iget-object v2, v1, Lb7/N0;->O:Lb7/S0;

    .line 1488
    .line 1489
    new-instance v3, Lorg/json/JSONArray;

    .line 1490
    .line 1491
    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 1492
    .line 1493
    .line 1494
    iput-object v3, v2, Lb7/S0;->p1:Lorg/json/JSONArray;

    .line 1495
    .line 1496
    iget-object v2, v1, Lb7/N0;->O:Lb7/S0;

    .line 1497
    .line 1498
    iget-object v3, v1, Lb7/N0;->J:[Lorg/json/JSONArray;

    .line 1499
    .line 1500
    aget-object v3, v3, v6

    .line 1501
    .line 1502
    iput-object v3, v2, Lb7/S0;->p1:Lorg/json/JSONArray;

    .line 1503
    .line 1504
    iget-object v1, v1, Lb7/N0;->G:[Ljava/util/ArrayList;

    .line 1505
    .line 1506
    aget-object v1, v1, v6

    .line 1507
    .line 1508
    new-instance v3, LD1/q;

    .line 1509
    .line 1510
    invoke-virtual {v2}, LY/s;->l()Landroid/content/Context;

    .line 1511
    .line 1512
    .line 1513
    const/4 v4, 0x2

    .line 1514
    invoke-direct {v3, v2, v1, v4}, LD1/q;-><init>(Lb7/S0;Ljava/util/ArrayList;I)V

    .line 1515
    .line 1516
    .line 1517
    iget-object v1, v2, Lb7/S0;->Z0:Landroidx/recyclerview/widget/RecyclerView;

    .line 1518
    .line 1519
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(LO1/C;)V

    .line 1520
    .line 1521
    .line 1522
    iget-object v1, v2, Lb7/S0;->Z0:Landroidx/recyclerview/widget/RecyclerView;

    .line 1523
    .line 1524
    invoke-virtual {v1, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 1525
    .line 1526
    .line 1527
    iget-object v1, v2, Lb7/S0;->Z0:Landroidx/recyclerview/widget/RecyclerView;

    .line 1528
    .line 1529
    new-instance v3, LO1/m;

    .line 1530
    .line 1531
    const/4 v4, 0x4

    .line 1532
    invoke-direct {v3, v2, v4}, LO1/m;-><init>(Ljava/lang/Object;I)V

    .line 1533
    .line 1534
    .line 1535
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->j(LO1/P;)V

    .line 1536
    .line 1537
    .line 1538
    goto :goto_b

    .line 1539
    :cond_13
    iget-object v2, v1, Lb7/N0;->O:Lb7/S0;

    .line 1540
    .line 1541
    sget v3, Lb7/S0;->z1:I

    .line 1542
    .line 1543
    invoke-virtual {v2}, Lb7/S0;->Y()V

    .line 1544
    .line 1545
    .line 1546
    iget-object v2, v1, Lb7/N0;->O:Lb7/S0;

    .line 1547
    .line 1548
    iget-object v2, v2, Lb7/S0;->e1:Ljava/lang/String;

    .line 1549
    .line 1550
    const-string v3, "search"

    .line 1551
    .line 1552
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1553
    .line 1554
    .line 1555
    move-result v2

    .line 1556
    if-eqz v2, :cond_14

    .line 1557
    .line 1558
    iget-object v1, v1, Lb7/N0;->O:Lb7/S0;

    .line 1559
    .line 1560
    invoke-virtual {v1}, LY/s;->l()Landroid/content/Context;

    .line 1561
    .line 1562
    .line 1563
    move-result-object v1

    .line 1564
    const-string v2, "Your search found 0 VODs!"

    .line 1565
    .line 1566
    invoke-static {v1, v2}, Lpe/hf/black20/util/Methods;->l(Landroid/content/Context;Ljava/lang/String;)V

    .line 1567
    .line 1568
    .line 1569
    goto :goto_b

    .line 1570
    :cond_14
    iget-object v2, v1, Lb7/N0;->O:Lb7/S0;

    .line 1571
    .line 1572
    iget-object v2, v2, Lb7/S0;->e1:Ljava/lang/String;

    .line 1573
    .line 1574
    const-string v3, "fav"

    .line 1575
    .line 1576
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1577
    .line 1578
    .line 1579
    move-result v2

    .line 1580
    if-eqz v2, :cond_15

    .line 1581
    .line 1582
    iget-object v1, v1, Lb7/N0;->O:Lb7/S0;

    .line 1583
    .line 1584
    invoke-virtual {v1}, LY/s;->l()Landroid/content/Context;

    .line 1585
    .line 1586
    .line 1587
    move-result-object v1

    .line 1588
    const-string v2, "You don\'t have any Favorite VODs!"

    .line 1589
    .line 1590
    invoke-static {v1, v2}, Lpe/hf/black20/util/Methods;->l(Landroid/content/Context;Ljava/lang/String;)V

    .line 1591
    .line 1592
    .line 1593
    goto :goto_b

    .line 1594
    :cond_15
    iget-object v2, v1, Lb7/N0;->O:Lb7/S0;

    .line 1595
    .line 1596
    iget-object v2, v2, Lb7/S0;->e1:Ljava/lang/String;

    .line 1597
    .line 1598
    const-string v3, "cont"

    .line 1599
    .line 1600
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1601
    .line 1602
    .line 1603
    move-result v2

    .line 1604
    if-eqz v2, :cond_16

    .line 1605
    .line 1606
    iget-object v1, v1, Lb7/N0;->O:Lb7/S0;

    .line 1607
    .line 1608
    invoke-virtual {v1}, LY/s;->l()Landroid/content/Context;

    .line 1609
    .line 1610
    .line 1611
    move-result-object v1

    .line 1612
    const-string v2, "You don\'t have any VODs to continue watching!"

    .line 1613
    .line 1614
    invoke-static {v1, v2}, Lpe/hf/black20/util/Methods;->l(Landroid/content/Context;Ljava/lang/String;)V

    .line 1615
    .line 1616
    .line 1617
    goto :goto_b

    .line 1618
    :cond_16
    iget-object v2, v1, Lb7/N0;->O:Lb7/S0;

    .line 1619
    .line 1620
    iget-object v2, v2, Lb7/S0;->e1:Ljava/lang/String;

    .line 1621
    .line 1622
    const-string v3, "all"

    .line 1623
    .line 1624
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1625
    .line 1626
    .line 1627
    move-result v2

    .line 1628
    if-eqz v2, :cond_17

    .line 1629
    .line 1630
    iget-object v1, v1, Lb7/N0;->O:Lb7/S0;

    .line 1631
    .line 1632
    invoke-virtual {v1}, LY/s;->l()Landroid/content/Context;

    .line 1633
    .line 1634
    .line 1635
    move-result-object v1

    .line 1636
    const-string v2, "VODs not found!"

    .line 1637
    .line 1638
    invoke-static {v1, v2}, Lpe/hf/black20/util/Methods;->l(Landroid/content/Context;Ljava/lang/String;)V

    .line 1639
    .line 1640
    .line 1641
    :cond_17
    :goto_b
    return-void

    .line 1642
    :pswitch_8
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/X;->H:Ljava/lang/Object;

    .line 1643
    .line 1644
    check-cast v1, LZ3/v;

    .line 1645
    .line 1646
    iget-object v2, v1, LZ3/v;->J:Ljava/lang/Object;

    .line 1647
    .line 1648
    check-cast v2, Lb7/S0;

    .line 1649
    .line 1650
    new-instance v3, Lorg/json/JSONArray;

    .line 1651
    .line 1652
    iget-object v4, v1, LZ3/v;->I:Ljava/lang/Object;

    .line 1653
    .line 1654
    check-cast v4, [Ljava/util/ArrayList;

    .line 1655
    .line 1656
    aget-object v4, v4, v6

    .line 1657
    .line 1658
    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 1659
    .line 1660
    .line 1661
    iput-object v3, v2, Lb7/S0;->q1:Lorg/json/JSONArray;

    .line 1662
    .line 1663
    iget-object v1, v1, LZ3/v;->J:Ljava/lang/Object;

    .line 1664
    .line 1665
    check-cast v1, Lb7/S0;

    .line 1666
    .line 1667
    iget-object v2, v1, Lb7/S0;->q1:Lorg/json/JSONArray;

    .line 1668
    .line 1669
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 1670
    .line 1671
    .line 1672
    move-result-object v2

    .line 1673
    iput-object v2, v1, Lb7/S0;->k1:Ljava/lang/String;

    .line 1674
    .line 1675
    return-void

    .line 1676
    :pswitch_9
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/X;->H:Ljava/lang/Object;

    .line 1677
    .line 1678
    check-cast v1, Lb7/M0;

    .line 1679
    .line 1680
    iget-object v2, v1, Lb7/M0;->W0:Landroid/os/Handler;

    .line 1681
    .line 1682
    iget-object v3, v1, Lb7/M0;->X0:Lcom/google/android/gms/internal/cast/X;

    .line 1683
    .line 1684
    const-wide/16 v4, 0x3e8

    .line 1685
    .line 1686
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1687
    .line 1688
    .line 1689
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 1690
    .line 1691
    const-string v3, "EEEE, d MMM yyyy"

    .line 1692
    .line 1693
    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1694
    .line 1695
    .line 1696
    iget-object v3, v1, Lb7/M0;->V0:Ljava/lang/String;

    .line 1697
    .line 1698
    const-string v4, "24"

    .line 1699
    .line 1700
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1701
    .line 1702
    .line 1703
    move-result v3

    .line 1704
    if-eqz v3, :cond_18

    .line 1705
    .line 1706
    new-instance v3, Ljava/text/SimpleDateFormat;

    .line 1707
    .line 1708
    const-string v4, "HH:mm:ss"

    .line 1709
    .line 1710
    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1711
    .line 1712
    .line 1713
    goto :goto_c

    .line 1714
    :cond_18
    new-instance v3, Ljava/text/SimpleDateFormat;

    .line 1715
    .line 1716
    const-string v4, "hh:mm:ss aaa"

    .line 1717
    .line 1718
    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1719
    .line 1720
    .line 1721
    :goto_c
    iget-object v4, v1, Lb7/M0;->T0:Landroid/widget/TextView;

    .line 1722
    .line 1723
    new-instance v5, Ljava/util/Date;

    .line 1724
    .line 1725
    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 1726
    .line 1727
    .line 1728
    invoke-virtual {v2, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 1729
    .line 1730
    .line 1731
    move-result-object v2

    .line 1732
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1733
    .line 1734
    .line 1735
    iget-object v1, v1, Lb7/M0;->U0:Landroid/widget/TextView;

    .line 1736
    .line 1737
    new-instance v2, Ljava/util/Date;

    .line 1738
    .line 1739
    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 1740
    .line 1741
    .line 1742
    invoke-virtual {v3, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 1743
    .line 1744
    .line 1745
    move-result-object v2

    .line 1746
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1747
    .line 1748
    .line 1749
    return-void

    .line 1750
    :pswitch_a
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/X;->H:Ljava/lang/Object;

    .line 1751
    .line 1752
    check-cast v1, LZ3/v;

    .line 1753
    .line 1754
    iget-object v2, v1, LZ3/v;->J:Ljava/lang/Object;

    .line 1755
    .line 1756
    check-cast v2, Lb7/I0;

    .line 1757
    .line 1758
    iget-object v2, v2, Lb7/I0;->G0:Ljava/util/ArrayList;

    .line 1759
    .line 1760
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1761
    .line 1762
    .line 1763
    move-result v2

    .line 1764
    if-nez v2, :cond_19

    .line 1765
    .line 1766
    iget-object v1, v1, LZ3/v;->J:Ljava/lang/Object;

    .line 1767
    .line 1768
    check-cast v1, Lb7/I0;

    .line 1769
    .line 1770
    invoke-virtual {v1}, Lb7/I0;->V()V

    .line 1771
    .line 1772
    .line 1773
    goto/16 :goto_d

    .line 1774
    .line 1775
    :cond_19
    iget-object v2, v1, LZ3/v;->I:Ljava/lang/Object;

    .line 1776
    .line 1777
    check-cast v2, [Lorg/json/JSONArray;

    .line 1778
    .line 1779
    aget-object v2, v2, v6

    .line 1780
    .line 1781
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 1782
    .line 1783
    .line 1784
    move-result v2

    .line 1785
    if-lez v2, :cond_1a

    .line 1786
    .line 1787
    iget-object v2, v1, LZ3/v;->J:Ljava/lang/Object;

    .line 1788
    .line 1789
    check-cast v2, Lb7/I0;

    .line 1790
    .line 1791
    new-instance v3, Lorg/json/JSONArray;

    .line 1792
    .line 1793
    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 1794
    .line 1795
    .line 1796
    iput-object v3, v2, Lb7/I0;->M0:Lorg/json/JSONArray;

    .line 1797
    .line 1798
    iget-object v2, v1, LZ3/v;->J:Ljava/lang/Object;

    .line 1799
    .line 1800
    check-cast v2, Lb7/I0;

    .line 1801
    .line 1802
    iget-object v1, v1, LZ3/v;->I:Ljava/lang/Object;

    .line 1803
    .line 1804
    check-cast v1, [Lorg/json/JSONArray;

    .line 1805
    .line 1806
    aget-object v1, v1, v6

    .line 1807
    .line 1808
    iput-object v1, v2, Lb7/I0;->M0:Lorg/json/JSONArray;

    .line 1809
    .line 1810
    iget-object v1, v2, Lb7/I0;->G0:Ljava/util/ArrayList;

    .line 1811
    .line 1812
    new-instance v3, Lb7/E0;

    .line 1813
    .line 1814
    invoke-virtual {v2}, LY/s;->l()Landroid/content/Context;

    .line 1815
    .line 1816
    .line 1817
    invoke-direct {v3, v2, v1}, Lb7/E0;-><init>(Lb7/I0;Ljava/util/ArrayList;)V

    .line 1818
    .line 1819
    .line 1820
    iget-object v1, v2, Lb7/I0;->l1:Landroidx/recyclerview/widget/RecyclerView;

    .line 1821
    .line 1822
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(LO1/C;)V

    .line 1823
    .line 1824
    .line 1825
    iget-object v1, v2, Lb7/I0;->l1:Landroidx/recyclerview/widget/RecyclerView;

    .line 1826
    .line 1827
    invoke-virtual {v1, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 1828
    .line 1829
    .line 1830
    iget-object v1, v2, Lb7/I0;->l1:Landroidx/recyclerview/widget/RecyclerView;

    .line 1831
    .line 1832
    new-instance v3, LO1/m;

    .line 1833
    .line 1834
    const/4 v4, 0x2

    .line 1835
    invoke-direct {v3, v2, v4}, LO1/m;-><init>(Ljava/lang/Object;I)V

    .line 1836
    .line 1837
    .line 1838
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->j(LO1/P;)V

    .line 1839
    .line 1840
    .line 1841
    goto/16 :goto_d

    .line 1842
    .line 1843
    :cond_1a
    iget-object v2, v1, LZ3/v;->J:Ljava/lang/Object;

    .line 1844
    .line 1845
    check-cast v2, Lb7/I0;

    .line 1846
    .line 1847
    invoke-virtual {v2}, Lb7/I0;->V()V

    .line 1848
    .line 1849
    .line 1850
    iget-object v2, v1, LZ3/v;->J:Ljava/lang/Object;

    .line 1851
    .line 1852
    check-cast v2, Lb7/I0;

    .line 1853
    .line 1854
    iget-object v2, v2, Lb7/I0;->p1:Ljava/lang/String;

    .line 1855
    .line 1856
    const-string v3, "search"

    .line 1857
    .line 1858
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1859
    .line 1860
    .line 1861
    move-result v2

    .line 1862
    if-eqz v2, :cond_1b

    .line 1863
    .line 1864
    iget-object v1, v1, LZ3/v;->J:Ljava/lang/Object;

    .line 1865
    .line 1866
    check-cast v1, Lb7/I0;

    .line 1867
    .line 1868
    invoke-virtual {v1}, LY/s;->l()Landroid/content/Context;

    .line 1869
    .line 1870
    .line 1871
    move-result-object v1

    .line 1872
    const-string v2, "Your search found 0 Series!"

    .line 1873
    .line 1874
    invoke-static {v1, v2}, Lpe/hf/black20/util/Methods;->l(Landroid/content/Context;Ljava/lang/String;)V

    .line 1875
    .line 1876
    .line 1877
    goto :goto_d

    .line 1878
    :cond_1b
    iget-object v2, v1, LZ3/v;->J:Ljava/lang/Object;

    .line 1879
    .line 1880
    check-cast v2, Lb7/I0;

    .line 1881
    .line 1882
    iget-object v2, v2, Lb7/I0;->p1:Ljava/lang/String;

    .line 1883
    .line 1884
    const-string v3, "fav"

    .line 1885
    .line 1886
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1887
    .line 1888
    .line 1889
    move-result v2

    .line 1890
    if-eqz v2, :cond_1c

    .line 1891
    .line 1892
    iget-object v1, v1, LZ3/v;->J:Ljava/lang/Object;

    .line 1893
    .line 1894
    check-cast v1, Lb7/I0;

    .line 1895
    .line 1896
    invoke-virtual {v1}, LY/s;->l()Landroid/content/Context;

    .line 1897
    .line 1898
    .line 1899
    move-result-object v1

    .line 1900
    const-string v2, "You don\'t have any Favorite Series!"

    .line 1901
    .line 1902
    invoke-static {v1, v2}, Lpe/hf/black20/util/Methods;->l(Landroid/content/Context;Ljava/lang/String;)V

    .line 1903
    .line 1904
    .line 1905
    goto :goto_d

    .line 1906
    :cond_1c
    iget-object v2, v1, LZ3/v;->J:Ljava/lang/Object;

    .line 1907
    .line 1908
    check-cast v2, Lb7/I0;

    .line 1909
    .line 1910
    iget-object v2, v2, Lb7/I0;->p1:Ljava/lang/String;

    .line 1911
    .line 1912
    const-string v3, "continue"

    .line 1913
    .line 1914
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1915
    .line 1916
    .line 1917
    move-result v2

    .line 1918
    if-eqz v2, :cond_1d

    .line 1919
    .line 1920
    iget-object v1, v1, LZ3/v;->J:Ljava/lang/Object;

    .line 1921
    .line 1922
    check-cast v1, Lb7/I0;

    .line 1923
    .line 1924
    invoke-virtual {v1}, LY/s;->l()Landroid/content/Context;

    .line 1925
    .line 1926
    .line 1927
    move-result-object v1

    .line 1928
    const-string v2, "You don\'t have any Series to continue watching!"

    .line 1929
    .line 1930
    invoke-static {v1, v2}, Lpe/hf/black20/util/Methods;->l(Landroid/content/Context;Ljava/lang/String;)V

    .line 1931
    .line 1932
    .line 1933
    goto :goto_d

    .line 1934
    :cond_1d
    iget-object v2, v1, LZ3/v;->J:Ljava/lang/Object;

    .line 1935
    .line 1936
    check-cast v2, Lb7/I0;

    .line 1937
    .line 1938
    iget-object v2, v2, Lb7/I0;->p1:Ljava/lang/String;

    .line 1939
    .line 1940
    const-string v3, "all"

    .line 1941
    .line 1942
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1943
    .line 1944
    .line 1945
    move-result v2

    .line 1946
    if-eqz v2, :cond_1e

    .line 1947
    .line 1948
    iget-object v1, v1, LZ3/v;->J:Ljava/lang/Object;

    .line 1949
    .line 1950
    check-cast v1, Lb7/I0;

    .line 1951
    .line 1952
    invoke-virtual {v1}, LY/s;->l()Landroid/content/Context;

    .line 1953
    .line 1954
    .line 1955
    move-result-object v1

    .line 1956
    const-string v2, "Series not found!"

    .line 1957
    .line 1958
    invoke-static {v1, v2}, Lpe/hf/black20/util/Methods;->l(Landroid/content/Context;Ljava/lang/String;)V

    .line 1959
    .line 1960
    .line 1961
    :cond_1e
    :goto_d
    return-void

    .line 1962
    :pswitch_b
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/X;->H:Ljava/lang/Object;

    .line 1963
    .line 1964
    check-cast v1, LZ3/v;

    .line 1965
    .line 1966
    iget-object v2, v1, LZ3/v;->J:Ljava/lang/Object;

    .line 1967
    .line 1968
    check-cast v2, Lb7/I0;

    .line 1969
    .line 1970
    new-instance v3, Lorg/json/JSONArray;

    .line 1971
    .line 1972
    iget-object v4, v1, LZ3/v;->I:Ljava/lang/Object;

    .line 1973
    .line 1974
    check-cast v4, Ljava/util/ArrayList;

    .line 1975
    .line 1976
    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 1977
    .line 1978
    .line 1979
    iput-object v3, v2, Lb7/I0;->N0:Lorg/json/JSONArray;

    .line 1980
    .line 1981
    iget-object v1, v1, LZ3/v;->J:Ljava/lang/Object;

    .line 1982
    .line 1983
    check-cast v1, Lb7/I0;

    .line 1984
    .line 1985
    iget-object v2, v1, Lb7/I0;->N0:Lorg/json/JSONArray;

    .line 1986
    .line 1987
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 1988
    .line 1989
    .line 1990
    move-result-object v2

    .line 1991
    iput-object v2, v1, Lb7/I0;->r1:Ljava/lang/String;

    .line 1992
    .line 1993
    return-void

    .line 1994
    :pswitch_c
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/X;->H:Ljava/lang/Object;

    .line 1995
    .line 1996
    check-cast v1, Lb7/c0;

    .line 1997
    .line 1998
    iget-object v2, v1, Lb7/c0;->H:Lb7/t0;

    .line 1999
    .line 2000
    iget-object v2, v2, Lb7/t0;->Z0:Ljava/util/ArrayList;

    .line 2001
    .line 2002
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 2003
    .line 2004
    .line 2005
    move-result v2

    .line 2006
    if-nez v2, :cond_1f

    .line 2007
    .line 2008
    goto :goto_e

    .line 2009
    :cond_1f
    new-instance v2, Lb7/i0;

    .line 2010
    .line 2011
    iget-object v3, v1, Lb7/c0;->H:Lb7/t0;

    .line 2012
    .line 2013
    invoke-virtual {v3}, LY/s;->l()Landroid/content/Context;

    .line 2014
    .line 2015
    .line 2016
    iget-object v5, v1, Lb7/c0;->H:Lb7/t0;

    .line 2017
    .line 2018
    iget-object v5, v5, Lb7/t0;->Z0:Ljava/util/ArrayList;

    .line 2019
    .line 2020
    invoke-direct {v2, v3, v5, v6}, Lb7/i0;-><init>(Lb7/t0;Ljava/util/ArrayList;I)V

    .line 2021
    .line 2022
    .line 2023
    iget-object v3, v1, Lb7/c0;->H:Lb7/t0;

    .line 2024
    .line 2025
    iget-object v3, v3, Lb7/t0;->a1:Landroidx/recyclerview/widget/RecyclerView;

    .line 2026
    .line 2027
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(LO1/C;)V

    .line 2028
    .line 2029
    .line 2030
    iget-object v2, v1, Lb7/c0;->H:Lb7/t0;

    .line 2031
    .line 2032
    iget-object v2, v2, Lb7/t0;->a1:Landroidx/recyclerview/widget/RecyclerView;

    .line 2033
    .line 2034
    invoke-virtual {v2, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 2035
    .line 2036
    .line 2037
    iget-object v2, v1, Lb7/c0;->H:Lb7/t0;

    .line 2038
    .line 2039
    iget-object v2, v2, Lb7/t0;->a1:Landroidx/recyclerview/widget/RecyclerView;

    .line 2040
    .line 2041
    new-instance v3, LO1/m;

    .line 2042
    .line 2043
    invoke-direct {v3, v0, v4}, LO1/m;-><init>(Ljava/lang/Object;I)V

    .line 2044
    .line 2045
    .line 2046
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->j(LO1/P;)V

    .line 2047
    .line 2048
    .line 2049
    :goto_e
    iget-object v1, v1, Lb7/c0;->H:Lb7/t0;

    .line 2050
    .line 2051
    iget-object v2, v1, Lb7/t0;->N0:Landroid/widget/ProgressBar;

    .line 2052
    .line 2053
    const/16 v3, 0x8

    .line 2054
    .line 2055
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2056
    .line 2057
    .line 2058
    iget-object v1, v1, Lb7/t0;->O0:Landroid/widget/ImageView;

    .line 2059
    .line 2060
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2061
    .line 2062
    .line 2063
    return-void

    .line 2064
    :pswitch_d
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 2065
    .line 2066
    const-string v2, "EEEE, d MMM yyyy"

    .line 2067
    .line 2068
    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2069
    .line 2070
    .line 2071
    iget-object v2, v0, Lcom/google/android/gms/internal/cast/X;->H:Ljava/lang/Object;

    .line 2072
    .line 2073
    check-cast v2, Lw0/j;

    .line 2074
    .line 2075
    iget-object v3, v2, Lw0/j;->H:Ljava/lang/Object;

    .line 2076
    .line 2077
    check-cast v3, Lpe/hf/black20/ChannelListActivity;

    .line 2078
    .line 2079
    iget-object v3, v3, Lpe/hf/black20/ChannelListActivity;->k0:Ljava/lang/String;

    .line 2080
    .line 2081
    const-string v4, "24"

    .line 2082
    .line 2083
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2084
    .line 2085
    .line 2086
    move-result v3

    .line 2087
    if-eqz v3, :cond_20

    .line 2088
    .line 2089
    new-instance v3, Ljava/text/SimpleDateFormat;

    .line 2090
    .line 2091
    const-string v4, "HH:mm:ss"

    .line 2092
    .line 2093
    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2094
    .line 2095
    .line 2096
    goto :goto_f

    .line 2097
    :cond_20
    new-instance v3, Ljava/text/SimpleDateFormat;

    .line 2098
    .line 2099
    const-string v4, "hh:mm:ss aaa"

    .line 2100
    .line 2101
    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2102
    .line 2103
    .line 2104
    :goto_f
    iget-object v4, v2, Lw0/j;->H:Ljava/lang/Object;

    .line 2105
    .line 2106
    check-cast v4, Lpe/hf/black20/ChannelListActivity;

    .line 2107
    .line 2108
    iget-object v4, v4, Lpe/hf/black20/ChannelListActivity;->X:Landroid/widget/TextView;

    .line 2109
    .line 2110
    new-instance v5, Ljava/util/Date;

    .line 2111
    .line 2112
    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 2113
    .line 2114
    .line 2115
    invoke-virtual {v1, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 2116
    .line 2117
    .line 2118
    move-result-object v1

    .line 2119
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2120
    .line 2121
    .line 2122
    iget-object v1, v2, Lw0/j;->H:Ljava/lang/Object;

    .line 2123
    .line 2124
    check-cast v1, Lpe/hf/black20/ChannelListActivity;

    .line 2125
    .line 2126
    iget-object v1, v1, Lpe/hf/black20/ChannelListActivity;->Y:Landroid/widget/TextView;

    .line 2127
    .line 2128
    new-instance v2, Ljava/util/Date;

    .line 2129
    .line 2130
    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 2131
    .line 2132
    .line 2133
    invoke-virtual {v3, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 2134
    .line 2135
    .line 2136
    move-result-object v2

    .line 2137
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2138
    .line 2139
    .line 2140
    return-void

    .line 2141
    :pswitch_e
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/X;->H:Ljava/lang/Object;

    .line 2142
    .line 2143
    check-cast v1, Lb7/q;

    .line 2144
    .line 2145
    iget-object v1, v1, Lb7/q;->b:Lpe/hf/black20/CategoriesActivity;

    .line 2146
    .line 2147
    invoke-virtual {v1}, Landroid/app/Activity;->finishAffinity()V

    .line 2148
    .line 2149
    .line 2150
    return-void

    .line 2151
    :pswitch_f
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 2152
    .line 2153
    const-string v2, "EEEE, d MMM yyyy"

    .line 2154
    .line 2155
    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2156
    .line 2157
    .line 2158
    const-string v2, "12"

    .line 2159
    .line 2160
    const-string v3, "ORT_TIME_FORMAT"

    .line 2161
    .line 2162
    const-string v4, "24"

    .line 2163
    .line 2164
    invoke-static {v3, v2, v4}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2165
    .line 2166
    .line 2167
    move-result v2

    .line 2168
    if-eqz v2, :cond_21

    .line 2169
    .line 2170
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 2171
    .line 2172
    const-string v3, "HH:mm:ss"

    .line 2173
    .line 2174
    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2175
    .line 2176
    .line 2177
    goto :goto_10

    .line 2178
    :cond_21
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 2179
    .line 2180
    const-string v3, "hh:mm:ss aaa"

    .line 2181
    .line 2182
    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2183
    .line 2184
    .line 2185
    :goto_10
    iget-object v3, v0, Lcom/google/android/gms/internal/cast/X;->H:Ljava/lang/Object;

    .line 2186
    .line 2187
    check-cast v3, Lw0/j;

    .line 2188
    .line 2189
    iget-object v4, v3, Lw0/j;->H:Ljava/lang/Object;

    .line 2190
    .line 2191
    check-cast v4, Lpe/hf/black20/CategoriesActivity;

    .line 2192
    .line 2193
    iget-object v4, v4, Lpe/hf/black20/CategoriesActivity;->t0:Landroid/widget/TextView;

    .line 2194
    .line 2195
    new-instance v5, Ljava/util/Date;

    .line 2196
    .line 2197
    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 2198
    .line 2199
    .line 2200
    invoke-virtual {v1, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 2201
    .line 2202
    .line 2203
    move-result-object v1

    .line 2204
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2205
    .line 2206
    .line 2207
    iget-object v1, v3, Lw0/j;->H:Ljava/lang/Object;

    .line 2208
    .line 2209
    check-cast v1, Lpe/hf/black20/CategoriesActivity;

    .line 2210
    .line 2211
    iget-object v1, v1, Lpe/hf/black20/CategoriesActivity;->u0:Landroid/widget/TextView;

    .line 2212
    .line 2213
    new-instance v3, Ljava/util/Date;

    .line 2214
    .line 2215
    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 2216
    .line 2217
    .line 2218
    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 2219
    .line 2220
    .line 2221
    move-result-object v2

    .line 2222
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2223
    .line 2224
    .line 2225
    return-void

    .line 2226
    :pswitch_10
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/X;->H:Ljava/lang/Object;

    .line 2227
    .line 2228
    check-cast v1, LS6/a;

    .line 2229
    .line 2230
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 2231
    .line 2232
    .line 2233
    return-void

    .line 2234
    :pswitch_11
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/X;->H:Ljava/lang/Object;

    .line 2235
    .line 2236
    check-cast v1, La6/f;

    .line 2237
    .line 2238
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2239
    .line 2240
    .line 2241
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/X;->H:Ljava/lang/Object;

    .line 2242
    .line 2243
    check-cast v1, La6/f;

    .line 2244
    .line 2245
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2246
    .line 2247
    .line 2248
    iget-object v1, v1, La6/f;->b:LE1/N;

    .line 2249
    .line 2250
    const/4 v1, 0x0

    .line 2251
    throw v1

    .line 2252
    :pswitch_12
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/X;->H:Ljava/lang/Object;

    .line 2253
    .line 2254
    :try_start_3
    move-object v2, v1

    .line 2255
    check-cast v2, La6/a;

    .line 2256
    .line 2257
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 2258
    .line 2259
    .line 2260
    check-cast v1, La6/a;

    .line 2261
    .line 2262
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2263
    .line 2264
    .line 2265
    const/4 v1, 0x0

    .line 2266
    throw v1

    .line 2267
    :catch_2
    check-cast v1, La6/a;

    .line 2268
    .line 2269
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2270
    .line 2271
    .line 2272
    const/4 v1, 0x0

    .line 2273
    throw v1

    .line 2274
    :pswitch_13
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/cast/X;->e()V

    .line 2275
    .line 2276
    .line 2277
    return-void

    .line 2278
    :pswitch_14
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/X;->H:Ljava/lang/Object;

    .line 2279
    .line 2280
    check-cast v1, Lf/G;

    .line 2281
    .line 2282
    iget-object v1, v1, Lf/G;->b:Ljava/lang/Object;

    .line 2283
    .line 2284
    check-cast v1, Lc4/l0;

    .line 2285
    .line 2286
    iget-object v2, v1, Lc4/l0;->d0:Lc4/P0;

    .line 2287
    .line 2288
    invoke-static {v2}, Lc4/l0;->h(Lc4/z;)V

    .line 2289
    .line 2290
    .line 2291
    iget-object v1, v1, Lc4/l0;->d0:Lc4/P0;

    .line 2292
    .line 2293
    sget-object v2, Lc4/E;->D:Lc4/D;

    .line 2294
    .line 2295
    const/4 v3, 0x0

    .line 2296
    invoke-virtual {v2, v3}, Lc4/D;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2297
    .line 2298
    .line 2299
    move-result-object v2

    .line 2300
    check-cast v2, Ljava/lang/Long;

    .line 2301
    .line 2302
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 2303
    .line 2304
    .line 2305
    move-result-wide v2

    .line 2306
    invoke-virtual {v1, v2, v3}, Lc4/P0;->s(J)V

    .line 2307
    .line 2308
    .line 2309
    return-void

    .line 2310
    :pswitch_15
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/X;->H:Ljava/lang/Object;

    .line 2311
    .line 2312
    check-cast v1, Lc4/l0;

    .line 2313
    .line 2314
    iget-object v3, v1, Lc4/l0;->R:Lc4/I1;

    .line 2315
    .line 2316
    invoke-static {v3}, Lc4/l0;->i(Lc4/s0;)V

    .line 2317
    .line 2318
    .line 2319
    invoke-virtual {v3}, Lc1/d;->m()V

    .line 2320
    .line 2321
    .line 2322
    invoke-virtual {v3}, Lc4/I1;->w0()J

    .line 2323
    .line 2324
    .line 2325
    move-result-wide v3

    .line 2326
    const-wide/16 v5, 0x1

    .line 2327
    .line 2328
    cmp-long v7, v3, v5

    .line 2329
    .line 2330
    if-nez v7, :cond_23

    .line 2331
    .line 2332
    iget-object v1, v1, Lc4/l0;->V:Lc4/K0;

    .line 2333
    .line 2334
    invoke-static {v1}, Lc4/l0;->j(Lc4/B;)V

    .line 2335
    .line 2336
    .line 2337
    invoke-virtual {v1}, Lc4/z;->m()V

    .line 2338
    .line 2339
    .line 2340
    iget-object v3, v1, Lc4/K0;->R:Lc4/F0;

    .line 2341
    .line 2342
    if-eqz v3, :cond_22

    .line 2343
    .line 2344
    invoke-virtual {v3}, Lc4/p;->a()V

    .line 2345
    .line 2346
    .line 2347
    :cond_22
    new-instance v3, Ljava/lang/Thread;

    .line 2348
    .line 2349
    invoke-static {v1}, Lc4/l0;->j(Lc4/B;)V

    .line 2350
    .line 2351
    .line 2352
    new-instance v4, Lc4/E0;

    .line 2353
    .line 2354
    invoke-direct {v4, v1, v2}, Lc4/E0;-><init>(Lc4/K0;I)V

    .line 2355
    .line 2356
    .line 2357
    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2358
    .line 2359
    .line 2360
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 2361
    .line 2362
    .line 2363
    goto :goto_11

    .line 2364
    :cond_23
    iget-object v1, v1, Lc4/l0;->O:Lc4/T;

    .line 2365
    .line 2366
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 2367
    .line 2368
    .line 2369
    const-string v2, "registerTrigger called but app not eligible"

    .line 2370
    .line 2371
    iget-object v1, v1, Lc4/T;->O:Lc4/Q;

    .line 2372
    .line 2373
    invoke-virtual {v1, v2}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 2374
    .line 2375
    .line 2376
    :goto_11
    return-void

    .line 2377
    :pswitch_16
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/cast/X;->d()V

    .line 2378
    .line 2379
    .line 2380
    return-void

    .line 2381
    :pswitch_17
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/X;->H:Ljava/lang/Object;

    .line 2382
    .line 2383
    check-cast v1, LK3/V;

    .line 2384
    .line 2385
    iget-object v1, v1, LK3/V;->I:Ljava/lang/Object;

    .line 2386
    .line 2387
    check-cast v1, Lc4/c1;

    .line 2388
    .line 2389
    iget-object v1, v1, Lc4/c1;->c:Lc4/d1;

    .line 2390
    .line 2391
    iget-object v2, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 2392
    .line 2393
    check-cast v2, Lc4/l0;

    .line 2394
    .line 2395
    iget-object v2, v2, Lc4/l0;->P:Lc4/j0;

    .line 2396
    .line 2397
    invoke-static {v2}, Lc4/l0;->k(Lc4/s0;)V

    .line 2398
    .line 2399
    .line 2400
    new-instance v3, Lc4/W0;

    .line 2401
    .line 2402
    const/4 v4, 0x2

    .line 2403
    invoke-direct {v3, v1, v4}, Lc4/W0;-><init>(Lc4/d1;I)V

    .line 2404
    .line 2405
    .line 2406
    invoke-virtual {v2, v3}, Lc4/j0;->x(Ljava/lang/Runnable;)V

    .line 2407
    .line 2408
    .line 2409
    return-void

    .line 2410
    :pswitch_18
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/X;->H:Ljava/lang/Object;

    .line 2411
    .line 2412
    check-cast v1, Lc4/c1;

    .line 2413
    .line 2414
    iget-object v1, v1, Lc4/c1;->c:Lc4/d1;

    .line 2415
    .line 2416
    new-instance v2, Landroid/content/ComponentName;

    .line 2417
    .line 2418
    iget-object v3, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 2419
    .line 2420
    check-cast v3, Lc4/l0;

    .line 2421
    .line 2422
    iget-object v3, v3, Lc4/l0;->G:Landroid/content/Context;

    .line 2423
    .line 2424
    const-string v4, "com.google.android.gms.measurement.AppMeasurementService"

    .line 2425
    .line 2426
    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2427
    .line 2428
    .line 2429
    invoke-static {v1, v2}, Lc4/d1;->G(Lc4/d1;Landroid/content/ComponentName;)V

    .line 2430
    .line 2431
    .line 2432
    return-void

    .line 2433
    :pswitch_19
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/X;->H:Ljava/lang/Object;

    .line 2434
    .line 2435
    check-cast v1, La3/i;

    .line 2436
    .line 2437
    iget-object v1, v1, La3/i;->H:Ljava/lang/Object;

    .line 2438
    .line 2439
    check-cast v1, Lpe/hf/black20/CategoriesActivity;

    .line 2440
    .line 2441
    sget-object v3, Lpe/hf/black20/CategoriesActivity;->THEME:Ljava/lang/String;

    .line 2442
    .line 2443
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2444
    .line 2445
    .line 2446
    new-instance v3, Lb7/n;

    .line 2447
    .line 2448
    invoke-direct {v3, v1}, Lb7/n;-><init>(Lpe/hf/black20/CategoriesActivity;)V

    .line 2449
    .line 2450
    .line 2451
    invoke-static {v1}, LZ3/c;->a(Landroid/content/Context;)LZ3/c;

    .line 2452
    .line 2453
    .line 2454
    move-result-object v4

    .line 2455
    iget-object v4, v4, LZ3/c;->h:LZ3/X;

    .line 2456
    .line 2457
    invoke-interface {v4}, LZ3/Y;->zza()Ljava/lang/Object;

    .line 2458
    .line 2459
    .line 2460
    move-result-object v4

    .line 2461
    check-cast v4, LZ3/b0;

    .line 2462
    .line 2463
    invoke-virtual {v4}, LZ3/b0;->a()Z

    .line 2464
    .line 2465
    .line 2466
    move-result v4

    .line 2467
    if-eqz v4, :cond_24

    .line 2468
    .line 2469
    const/4 v4, 0x0

    .line 2470
    invoke-virtual {v3, v4}, Lb7/n;->a(LK/k;)V

    .line 2471
    .line 2472
    .line 2473
    goto :goto_12

    .line 2474
    :cond_24
    invoke-static {v1}, LZ3/c;->a(Landroid/content/Context;)LZ3/c;

    .line 2475
    .line 2476
    .line 2477
    move-result-object v4

    .line 2478
    iget-object v4, v4, LZ3/c;->e:LZ3/X;

    .line 2479
    .line 2480
    invoke-interface {v4}, LZ3/Y;->zza()Ljava/lang/Object;

    .line 2481
    .line 2482
    .line 2483
    move-result-object v4

    .line 2484
    check-cast v4, LZ3/p;

    .line 2485
    .line 2486
    invoke-static {}, LZ3/G;->a()V

    .line 2487
    .line 2488
    .line 2489
    new-instance v5, LZ3/n;

    .line 2490
    .line 2491
    invoke-direct {v5, v1, v3}, LZ3/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2492
    .line 2493
    .line 2494
    new-instance v1, LZ3/o;

    .line 2495
    .line 2496
    invoke-direct {v1, v3, v6}, LZ3/o;-><init>(Ljava/lang/Object;I)V

    .line 2497
    .line 2498
    .line 2499
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2500
    .line 2501
    .line 2502
    invoke-static {}, LZ3/G;->a()V

    .line 2503
    .line 2504
    .line 2505
    iget-object v3, v4, LZ3/p;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2506
    .line 2507
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 2508
    .line 2509
    .line 2510
    move-result-object v3

    .line 2511
    check-cast v3, LZ3/q;

    .line 2512
    .line 2513
    if-nez v3, :cond_25

    .line 2514
    .line 2515
    new-instance v3, LZ3/a0;

    .line 2516
    .line 2517
    const-string v4, "No available form can be built."

    .line 2518
    .line 2519
    invoke-direct {v3, v2, v4}, LZ3/a0;-><init>(ILjava/lang/String;)V

    .line 2520
    .line 2521
    .line 2522
    invoke-virtual {v3}, LZ3/a0;->a()LK/k;

    .line 2523
    .line 2524
    .line 2525
    move-result-object v2

    .line 2526
    invoke-virtual {v1, v2}, LZ3/o;->a(LK/k;)V

    .line 2527
    .line 2528
    .line 2529
    goto :goto_12

    .line 2530
    :cond_25
    iget-object v2, v4, LZ3/p;->a:LZ3/Y;

    .line 2531
    .line 2532
    invoke-interface {v2}, LZ3/Y;->zza()Ljava/lang/Object;

    .line 2533
    .line 2534
    .line 2535
    move-result-object v2

    .line 2536
    check-cast v2, LZ3/d;

    .line 2537
    .line 2538
    iput-object v3, v2, LZ3/d;->b:LZ3/q;

    .line 2539
    .line 2540
    invoke-virtual {v2}, LZ3/d;->a()Ll/x;

    .line 2541
    .line 2542
    .line 2543
    move-result-object v2

    .line 2544
    iget-object v2, v2, Ll/x;->J:Ljava/lang/Object;

    .line 2545
    .line 2546
    check-cast v2, LZ3/X;

    .line 2547
    .line 2548
    invoke-interface {v2}, LZ3/Y;->zza()Ljava/lang/Object;

    .line 2549
    .line 2550
    .line 2551
    move-result-object v2

    .line 2552
    check-cast v2, LZ3/l;

    .line 2553
    .line 2554
    invoke-virtual {v2, v5, v1}, LZ3/l;->a(Lv4/d;Lv4/c;)V

    .line 2555
    .line 2556
    .line 2557
    :goto_12
    return-void

    .line 2558
    :pswitch_1a
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/cast/X;->c()V

    .line 2559
    .line 2560
    .line 2561
    return-void

    .line 2562
    :pswitch_1b
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/cast/X;->b()V

    .line 2563
    .line 2564
    .line 2565
    return-void

    .line 2566
    :pswitch_1c
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/cast/X;->a()V

    .line 2567
    .line 2568
    .line 2569
    return-void

    .line 2570
    nop

    .line 2571
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
