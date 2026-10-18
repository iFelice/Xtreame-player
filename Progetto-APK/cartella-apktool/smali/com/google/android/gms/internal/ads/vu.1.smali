.class public final Lcom/google/android/gms/internal/ads/vu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/Set;

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Lcom/google/android/gms/internal/ads/Tw;

.field public final e:Lcom/google/android/gms/internal/ads/Fn;

.field public f:J

.field public g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/re;Ljava/util/Set;Lcom/google/android/gms/internal/ads/Tw;Lcom/google/android/gms/internal/ads/Fn;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/vu;->f:J

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/google/android/gms/internal/ads/vu;->g:I

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vu;->a:Landroid/content/Context;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/vu;->c:Ljava/util/concurrent/Executor;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/vu;->b:Ljava/util/Set;

    .line 16
    .line 17
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/vu;->d:Lcom/google/android/gms/internal/ads/Tw;

    .line 18
    .line 19
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/vu;->e:Lcom/google/android/gms/internal/ads/Fn;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/WB;
    .locals 16

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/vu;->a:Landroid/content/Context;

    .line 6
    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    invoke-static {v0, v1}, LU4/a;->h(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/Ow;

    .line 10
    .line 11
    .line 12
    move-result-object v8

    .line 13
    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/Ow;->zzi()Lcom/google/android/gms/internal/ads/Ow;

    .line 14
    .line 15
    .line 16
    new-instance v9, Ljava/util/ArrayList;

    .line 17
    .line 18
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/vu;->b:Ljava/util/Set;

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-direct {v9, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 25
    .line 26
    .line 27
    new-instance v1, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->bb:Lcom/google/android/gms/internal/ads/J7;

    .line 33
    .line 34
    sget-object v3, Ll3/q;->d:Ll3/q;

    .line 35
    .line 36
    iget-object v4, v3, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 37
    .line 38
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    check-cast v4, Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    iget-object v3, v3, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 49
    .line 50
    if-nez v4, :cond_0

    .line 51
    .line 52
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Ljava/lang/String;

    .line 57
    .line 58
    const-string v2, ","

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    :cond_0
    move-object v10, v1

    .line 69
    sget-object v1, Lk3/l;->A:Lk3/l;

    .line 70
    .line 71
    iget-object v2, v1, Lk3/l;->j:LP3/b;

    .line 72
    .line 73
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 77
    .line 78
    .line 79
    move-result-wide v4

    .line 80
    iput-wide v4, v6, Lcom/google/android/gms/internal/ads/vu;->f:J

    .line 81
    .line 82
    new-instance v11, Landroid/os/Bundle;

    .line 83
    .line 84
    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 85
    .line 86
    .line 87
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->U1:Lcom/google/android/gms/internal/ads/J7;

    .line 88
    .line 89
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    check-cast v2, Ljava/lang/Boolean;

    .line 94
    .line 95
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-eqz v2, :cond_2

    .line 100
    .line 101
    if-eqz v7, :cond_2

    .line 102
    .line 103
    iget-object v1, v1, Lk3/l;->j:LP3/b;

    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 109
    .line 110
    .line 111
    move-result-wide v1

    .line 112
    move-object/from16 v12, p2

    .line 113
    .line 114
    instance-of v3, v12, Landroid/os/Bundle;

    .line 115
    .line 116
    if-eqz v3, :cond_1

    .line 117
    .line 118
    const-string v3, "client-signals-start"

    .line 119
    .line 120
    invoke-virtual {v7, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_1
    const-string v3, "gms-signals-start"

    .line 125
    .line 126
    invoke-virtual {v7, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_2
    move-object/from16 v12, p2

    .line 131
    .line 132
    :goto_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 133
    .line 134
    .line 135
    move-result-object v13

    .line 136
    :cond_3
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-eqz v0, :cond_5

    .line 141
    .line 142
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    move-object v4, v0

    .line 147
    check-cast v4, Lcom/google/android/gms/internal/ads/uu;

    .line 148
    .line 149
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/uu;->zza()I

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-interface {v10, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-nez v0, :cond_3

    .line 162
    .line 163
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->w5:Lcom/google/android/gms/internal/ads/J7;

    .line 164
    .line 165
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 166
    .line 167
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 168
    .line 169
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    check-cast v0, Ljava/lang/Boolean;

    .line 174
    .line 175
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    if-eqz v0, :cond_4

    .line 180
    .line 181
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/uu;->zza()I

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    const/16 v1, 0x2c

    .line 186
    .line 187
    if-eq v0, v1, :cond_3

    .line 188
    .line 189
    :cond_4
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 190
    .line 191
    iget-object v0, v0, Lk3/l;->j:LP3/b;

    .line 192
    .line 193
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    .line 195
    .line 196
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 197
    .line 198
    .line 199
    move-result-wide v2

    .line 200
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/uu;->zzb()LD4/b;

    .line 201
    .line 202
    .line 203
    move-result-object v14

    .line 204
    new-instance v15, Lcom/google/android/gms/internal/ads/hf;

    .line 205
    .line 206
    move-object v0, v15

    .line 207
    move-object/from16 v1, p0

    .line 208
    .line 209
    move-object v5, v11

    .line 210
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/hf;-><init>(Lcom/google/android/gms/internal/ads/vu;JLcom/google/android/gms/internal/ads/uu;Landroid/os/Bundle;)V

    .line 211
    .line 212
    .line 213
    sget-object v0, Lcom/google/android/gms/internal/ads/se;->f:Lcom/google/android/gms/internal/ads/re;

    .line 214
    .line 215
    invoke-interface {v14, v15, v0}, LD4/b;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    goto :goto_1

    .line 222
    :cond_5
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/uA;->t(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/uA;

    .line 223
    .line 224
    .line 225
    move-result-object v10

    .line 226
    new-instance v13, Lcom/google/android/gms/internal/ads/Ki;

    .line 227
    .line 228
    const/4 v5, 0x2

    .line 229
    move-object v0, v13

    .line 230
    move-object v1, v9

    .line 231
    move-object/from16 v2, p2

    .line 232
    .line 233
    move-object/from16 v3, p1

    .line 234
    .line 235
    move-object v4, v11

    .line 236
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/Ki;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 237
    .line 238
    .line 239
    new-instance v0, Lcom/google/android/gms/internal/ads/WB;

    .line 240
    .line 241
    const/4 v1, 0x1

    .line 242
    const/4 v2, 0x0

    .line 243
    invoke-direct {v0, v10, v1, v2}, Lcom/google/android/gms/internal/ads/MB;-><init>(Lcom/google/android/gms/internal/ads/uA;ZZ)V

    .line 244
    .line 245
    .line 246
    new-instance v1, Lcom/google/android/gms/internal/ads/UB;

    .line 247
    .line 248
    iget-object v3, v6, Lcom/google/android/gms/internal/ads/vu;->c:Ljava/util/concurrent/Executor;

    .line 249
    .line 250
    invoke-direct {v1, v0, v13, v3}, Lcom/google/android/gms/internal/ads/UB;-><init>(Lcom/google/android/gms/internal/ads/WB;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)V

    .line 251
    .line 252
    .line 253
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/WB;->V:Lcom/google/android/gms/internal/ads/UB;

    .line 254
    .line 255
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/MB;->x()V

    .line 256
    .line 257
    .line 258
    invoke-static {}, Lcom/google/android/gms/internal/ads/Uw;->a()Z

    .line 259
    .line 260
    .line 261
    move-result v1

    .line 262
    if-eqz v1, :cond_6

    .line 263
    .line 264
    iget-object v1, v6, Lcom/google/android/gms/internal/ads/vu;->d:Lcom/google/android/gms/internal/ads/Tw;

    .line 265
    .line 266
    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/measurement/H1;->N(LD4/b;Lcom/google/android/gms/internal/ads/Tw;Lcom/google/android/gms/internal/ads/Ow;Z)V

    .line 267
    .line 268
    .line 269
    :cond_6
    return-object v0
.end method
