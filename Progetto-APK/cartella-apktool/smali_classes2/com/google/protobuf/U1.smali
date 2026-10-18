.class public final Lcom/google/protobuf/U1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/j2;


# instance fields
.field public final a:Lcom/google/protobuf/Q1;

.field public final b:Lcom/google/protobuf/B2;

.field public final c:Z

.field public final d:Lcom/google/protobuf/P0;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/B2;Lcom/google/protobuf/P0;Lcom/google/protobuf/Q1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/protobuf/U1;->b:Lcom/google/protobuf/B2;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    instance-of p1, p3, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    .line 10
    .line 11
    iput-boolean p1, p0, Lcom/google/protobuf/U1;->c:Z

    .line 12
    .line 13
    iput-object p2, p0, Lcom/google/protobuf/U1;->d:Lcom/google/protobuf/P0;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/google/protobuf/U1;->a:Lcom/google/protobuf/Q1;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;[BIILcom/google/android/gms/internal/ads/SG;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p2

    .line 4
    .line 5
    move/from16 v8, p4

    .line 6
    .line 7
    move-object/from16 v9, p5

    .line 8
    .line 9
    move-object/from16 v1, p1

    .line 10
    .line 11
    check-cast v1, Lcom/google/protobuf/i1;

    .line 12
    .line 13
    iget-object v2, v1, Lcom/google/protobuf/i1;->unknownFields:Lcom/google/protobuf/A2;

    .line 14
    .line 15
    sget-object v3, Lcom/google/protobuf/A2;->f:Lcom/google/protobuf/A2;

    .line 16
    .line 17
    if-ne v2, v3, :cond_0

    .line 18
    .line 19
    new-instance v2, Lcom/google/protobuf/A2;

    .line 20
    .line 21
    invoke-direct {v2}, Lcom/google/protobuf/A2;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v2, v1, Lcom/google/protobuf/i1;->unknownFields:Lcom/google/protobuf/A2;

    .line 25
    .line 26
    :cond_0
    move-object v10, v2

    .line 27
    move-object/from16 v1, p1

    .line 28
    .line 29
    check-cast v1, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->ensureExtensionsAreMutable()Lcom/google/protobuf/W0;

    .line 32
    .line 33
    .line 34
    move-result-object v11

    .line 35
    move/from16 v1, p3

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    :goto_0
    if-ge v1, v8, :cond_b

    .line 39
    .line 40
    invoke-static {v7, v1, v9}, Lcom/google/protobuf/i;->N([BILcom/google/android/gms/internal/ads/SG;)I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    iget v1, v9, Lcom/google/android/gms/internal/ads/SG;->a:I

    .line 45
    .line 46
    const/16 v4, 0xb

    .line 47
    .line 48
    iget-object v5, v0, Lcom/google/protobuf/U1;->a:Lcom/google/protobuf/Q1;

    .line 49
    .line 50
    iget-object v6, v0, Lcom/google/protobuf/U1;->d:Lcom/google/protobuf/P0;

    .line 51
    .line 52
    const/4 v13, 0x2

    .line 53
    iget-object v14, v9, Lcom/google/android/gms/internal/ads/SG;->e:Ljava/lang/Object;

    .line 54
    .line 55
    if-eq v1, v4, :cond_3

    .line 56
    .line 57
    and-int/lit8 v4, v1, 0x7

    .line 58
    .line 59
    if-ne v4, v13, :cond_2

    .line 60
    .line 61
    check-cast v14, Lcom/google/protobuf/O0;

    .line 62
    .line 63
    ushr-int/lit8 v2, v1, 0x3

    .line 64
    .line 65
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v14, v2, v5}, Lcom/google/protobuf/O0;->a(ILcom/google/protobuf/Q1;)Lcom/google/protobuf/g1;

    .line 69
    .line 70
    .line 71
    move-result-object v13

    .line 72
    if-eqz v13, :cond_1

    .line 73
    .line 74
    sget-object v1, Lcom/google/protobuf/g2;->c:Lcom/google/protobuf/g2;

    .line 75
    .line 76
    iget-object v2, v13, Lcom/google/protobuf/g1;->c:Lcom/google/protobuf/Q1;

    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v1, v2}, Lcom/google/protobuf/g2;->a(Ljava/lang/Class;)Lcom/google/protobuf/j2;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-static {v1, v7, v3, v8, v9}, Lcom/google/protobuf/i;->t(Lcom/google/protobuf/j2;[BIILcom/google/android/gms/internal/ads/SG;)I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    iget-object v2, v13, Lcom/google/protobuf/g1;->d:Lcom/google/protobuf/f1;

    .line 91
    .line 92
    iget-object v3, v9, Lcom/google/android/gms/internal/ads/SG;->c:Ljava/lang/Object;

    .line 93
    .line 94
    invoke-virtual {v11, v2, v3}, Lcom/google/protobuf/W0;->p(Lcom/google/protobuf/f1;Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    :goto_1
    move-object v2, v13

    .line 98
    goto :goto_0

    .line 99
    :cond_1
    move-object/from16 v2, p2

    .line 100
    .line 101
    move/from16 v4, p4

    .line 102
    .line 103
    move-object v5, v10

    .line 104
    move-object/from16 v6, p5

    .line 105
    .line 106
    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/i;->K(I[BIILcom/google/protobuf/A2;Lcom/google/android/gms/internal/ads/SG;)I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    goto :goto_1

    .line 111
    :cond_2
    invoke-static {v1, v7, v3, v8, v9}, Lcom/google/protobuf/i;->W(I[BIILcom/google/android/gms/internal/ads/SG;)I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    goto :goto_0

    .line 116
    :cond_3
    const/4 v1, 0x0

    .line 117
    const/4 v4, 0x0

    .line 118
    :goto_2
    if-ge v3, v8, :cond_9

    .line 119
    .line 120
    invoke-static {v7, v3, v9}, Lcom/google/protobuf/i;->N([BILcom/google/android/gms/internal/ads/SG;)I

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    iget v15, v9, Lcom/google/android/gms/internal/ads/SG;->a:I

    .line 125
    .line 126
    ushr-int/lit8 v12, v15, 0x3

    .line 127
    .line 128
    and-int/lit8 v0, v15, 0x7

    .line 129
    .line 130
    if-eq v12, v13, :cond_6

    .line 131
    .line 132
    const/4 v13, 0x3

    .line 133
    if-eq v12, v13, :cond_4

    .line 134
    .line 135
    goto :goto_4

    .line 136
    :cond_4
    if-eqz v2, :cond_5

    .line 137
    .line 138
    sget-object v0, Lcom/google/protobuf/g2;->c:Lcom/google/protobuf/g2;

    .line 139
    .line 140
    iget-object v12, v2, Lcom/google/protobuf/g1;->c:Lcom/google/protobuf/Q1;

    .line 141
    .line 142
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    move-result-object v12

    .line 146
    invoke-virtual {v0, v12}, Lcom/google/protobuf/g2;->a(Ljava/lang/Class;)Lcom/google/protobuf/j2;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-static {v0, v7, v3, v8, v9}, Lcom/google/protobuf/i;->t(Lcom/google/protobuf/j2;[BIILcom/google/android/gms/internal/ads/SG;)I

    .line 151
    .line 152
    .line 153
    move-result v3

    .line 154
    iget-object v0, v2, Lcom/google/protobuf/g1;->d:Lcom/google/protobuf/f1;

    .line 155
    .line 156
    iget-object v12, v9, Lcom/google/android/gms/internal/ads/SG;->c:Ljava/lang/Object;

    .line 157
    .line 158
    invoke-virtual {v11, v0, v12}, Lcom/google/protobuf/W0;->p(Lcom/google/protobuf/f1;Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    :goto_3
    const/4 v13, 0x2

    .line 162
    move-object/from16 v0, p0

    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_5
    const/4 v12, 0x2

    .line 166
    if-ne v0, v12, :cond_7

    .line 167
    .line 168
    invoke-static {v7, v3, v9}, Lcom/google/protobuf/i;->f([BILcom/google/android/gms/internal/ads/SG;)I

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    iget-object v0, v9, Lcom/google/android/gms/internal/ads/SG;->c:Ljava/lang/Object;

    .line 173
    .line 174
    move-object v4, v0

    .line 175
    check-cast v4, Lcom/google/protobuf/r;

    .line 176
    .line 177
    goto :goto_3

    .line 178
    :cond_6
    if-nez v0, :cond_7

    .line 179
    .line 180
    invoke-static {v7, v3, v9}, Lcom/google/protobuf/i;->N([BILcom/google/android/gms/internal/ads/SG;)I

    .line 181
    .line 182
    .line 183
    move-result v3

    .line 184
    iget v1, v9, Lcom/google/android/gms/internal/ads/SG;->a:I

    .line 185
    .line 186
    move-object v0, v14

    .line 187
    check-cast v0, Lcom/google/protobuf/O0;

    .line 188
    .line 189
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0, v1, v5}, Lcom/google/protobuf/O0;->a(ILcom/google/protobuf/Q1;)Lcom/google/protobuf/g1;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    goto :goto_3

    .line 197
    :cond_7
    :goto_4
    const/16 v0, 0xc

    .line 198
    .line 199
    if-ne v15, v0, :cond_8

    .line 200
    .line 201
    goto :goto_5

    .line 202
    :cond_8
    invoke-static {v15, v7, v3, v8, v9}, Lcom/google/protobuf/i;->W(I[BIILcom/google/android/gms/internal/ads/SG;)I

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    goto :goto_3

    .line 207
    :cond_9
    :goto_5
    if-eqz v4, :cond_a

    .line 208
    .line 209
    shl-int/lit8 v0, v1, 0x3

    .line 210
    .line 211
    const/4 v1, 0x2

    .line 212
    or-int/2addr v0, v1

    .line 213
    invoke-virtual {v10, v0, v4}, Lcom/google/protobuf/A2;->f(ILjava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    :cond_a
    move-object/from16 v0, p0

    .line 217
    .line 218
    move v1, v3

    .line 219
    goto/16 :goto_0

    .line 220
    .line 221
    :cond_b
    if-ne v1, v8, :cond_c

    .line 222
    .line 223
    return-void

    .line 224
    :cond_c
    invoke-static {}, Lcom/google/protobuf/x1;->f()Lcom/google/protobuf/x1;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    throw v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/U1;->b:Lcom/google/protobuf/B2;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lcom/google/protobuf/k2;->B(Lcom/google/protobuf/B2;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/google/protobuf/U1;->c:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/protobuf/U1;->d:Lcom/google/protobuf/P0;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    .line 16
    .line 17
    iget-object p2, p2, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/W0;

    .line 18
    .line 19
    iget-object v0, p2, Lcom/google/protobuf/W0;->a:Lcom/google/protobuf/l2;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->ensureExtensionsAreMutable()Lcom/google/protobuf/W0;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1, p2}, Lcom/google/protobuf/W0;->n(Lcom/google/protobuf/W0;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/CO;Lcom/google/protobuf/O0;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/U1;->b:Lcom/google/protobuf/B2;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/protobuf/B2;->a(Ljava/lang/Object;)Lcom/google/protobuf/A2;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v7, p0, Lcom/google/protobuf/U1;->d:Lcom/google/protobuf/P0;

    .line 11
    .line 12
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-object v1, p1

    .line 16
    check-cast v1, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->ensureExtensionsAreMutable()Lcom/google/protobuf/W0;

    .line 19
    .line 20
    .line 21
    move-result-object v8

    .line 22
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/CO;->b()I

    .line 23
    .line 24
    .line 25
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    const v2, 0x7fffffff

    .line 27
    .line 28
    .line 29
    if-ne v1, v2, :cond_1

    .line 30
    .line 31
    :cond_0
    check-cast p1, Lcom/google/protobuf/i1;

    .line 32
    .line 33
    iput-object v0, p1, Lcom/google/protobuf/i1;->unknownFields:Lcom/google/protobuf/A2;

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move-object v1, p0

    .line 37
    move-object v2, p2

    .line 38
    move-object v3, p3

    .line 39
    move-object v4, v7

    .line 40
    move-object v5, v8

    .line 41
    move-object v6, v0

    .line 42
    :try_start_1
    invoke-virtual/range {v1 .. v6}, Lcom/google/protobuf/U1;->k(Lcom/google/android/gms/internal/ads/CO;Lcom/google/protobuf/O0;Lcom/google/protobuf/P0;Lcom/google/protobuf/W0;Lcom/google/protobuf/A2;)Z

    .line 43
    .line 44
    .line 45
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :goto_1
    return-void

    .line 50
    :catchall_0
    move-exception p2

    .line 51
    check-cast p1, Lcom/google/protobuf/i1;

    .line 52
    .line 53
    iput-object v0, p1, Lcom/google/protobuf/i1;->unknownFields:Lcom/google/protobuf/A2;

    .line 54
    .line 55
    throw p2
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/U1;->b:Lcom/google/protobuf/B2;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/protobuf/B2;->b(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/protobuf/U1;->d:Lcom/google/protobuf/P0;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lcom/google/protobuf/P0;->c(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final e(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/U1;->d:Lcom/google/protobuf/P0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/W0;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/protobuf/W0;->j()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public final f(Ljava/lang/Object;LZ3/o;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/U1;->d:Lcom/google/protobuf/P0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-object v0, p1

    .line 7
    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/W0;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/protobuf/W0;->l()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Ljava/util/Map$Entry;

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Lcom/google/protobuf/f1;

    .line 32
    .line 33
    iget-object v3, v2, Lcom/google/protobuf/f1;->I:Lcom/google/protobuf/S2;

    .line 34
    .line 35
    iget-object v3, v3, Lcom/google/protobuf/S2;->G:Lcom/google/protobuf/T2;

    .line 36
    .line 37
    sget-object v4, Lcom/google/protobuf/T2;->P:Lcom/google/protobuf/T2;

    .line 38
    .line 39
    if-ne v3, v4, :cond_1

    .line 40
    .line 41
    iget-boolean v3, v2, Lcom/google/protobuf/f1;->J:Z

    .line 42
    .line 43
    if-nez v3, :cond_1

    .line 44
    .line 45
    iget-boolean v3, v2, Lcom/google/protobuf/f1;->K:Z

    .line 46
    .line 47
    if-nez v3, :cond_1

    .line 48
    .line 49
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    instance-of v3, v1, Lcom/google/protobuf/r;

    .line 57
    .line 58
    iget v2, v2, Lcom/google/protobuf/f1;->H:I

    .line 59
    .line 60
    if-eqz v3, :cond_0

    .line 61
    .line 62
    iget-object v3, p2, LZ3/o;->H:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v3, Lcom/google/protobuf/z;

    .line 65
    .line 66
    check-cast v1, Lcom/google/protobuf/r;

    .line 67
    .line 68
    invoke-virtual {v3, v2, v1}, Lcom/google/protobuf/z;->L0(ILcom/google/protobuf/r;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    iget-object v3, p2, LZ3/o;->H:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v3, Lcom/google/protobuf/z;

    .line 75
    .line 76
    check-cast v1, Lcom/google/protobuf/Q1;

    .line 77
    .line 78
    invoke-virtual {v3, v2, v1}, Lcom/google/protobuf/z;->K0(ILcom/google/protobuf/Q1;)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 83
    .line 84
    const-string p2, "Found invalid MessageSet item."

    .line 85
    .line 86
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p1

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/U1;->b:Lcom/google/protobuf/B2;

    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    check-cast p1, Lcom/google/protobuf/i1;

    .line 96
    .line 97
    iget-object p1, p1, Lcom/google/protobuf/i1;->unknownFields:Lcom/google/protobuf/A2;

    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    const/4 v0, 0x0

    .line 106
    :goto_1
    iget v1, p1, Lcom/google/protobuf/A2;->a:I

    .line 107
    .line 108
    if-ge v0, v1, :cond_4

    .line 109
    .line 110
    iget-object v1, p1, Lcom/google/protobuf/A2;->b:[I

    .line 111
    .line 112
    aget v1, v1, v0

    .line 113
    .line 114
    ushr-int/lit8 v1, v1, 0x3

    .line 115
    .line 116
    iget-object v2, p1, Lcom/google/protobuf/A2;->c:[Ljava/lang/Object;

    .line 117
    .line 118
    aget-object v2, v2, v0

    .line 119
    .line 120
    instance-of v3, v2, Lcom/google/protobuf/r;

    .line 121
    .line 122
    if-eqz v3, :cond_3

    .line 123
    .line 124
    iget-object v3, p2, LZ3/o;->H:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast v3, Lcom/google/protobuf/z;

    .line 127
    .line 128
    check-cast v2, Lcom/google/protobuf/r;

    .line 129
    .line 130
    invoke-virtual {v3, v1, v2}, Lcom/google/protobuf/z;->L0(ILcom/google/protobuf/r;)V

    .line 131
    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_3
    iget-object v3, p2, LZ3/o;->H:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast v3, Lcom/google/protobuf/z;

    .line 137
    .line 138
    check-cast v2, Lcom/google/protobuf/Q1;

    .line 139
    .line 140
    invoke-virtual {v3, v1, v2}, Lcom/google/protobuf/z;->K0(ILcom/google/protobuf/Q1;)V

    .line 141
    .line 142
    .line 143
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_4
    return-void
.end method

.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/U1;->b:Lcom/google/protobuf/B2;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-object v1, p1

    .line 7
    check-cast v1, Lcom/google/protobuf/i1;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/google/protobuf/i1;->unknownFields:Lcom/google/protobuf/A2;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-object v0, p2

    .line 15
    check-cast v0, Lcom/google/protobuf/i1;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/google/protobuf/i1;->unknownFields:Lcom/google/protobuf/A2;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Lcom/google/protobuf/A2;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    return p1

    .line 27
    :cond_0
    iget-boolean v0, p0, Lcom/google/protobuf/U1;->c:Z

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lcom/google/protobuf/U1;->d:Lcom/google/protobuf/P0;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    .line 37
    .line 38
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/W0;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    .line 44
    .line 45
    iget-object p2, p2, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/W0;

    .line 46
    .line 47
    invoke-virtual {p1, p2}, Lcom/google/protobuf/W0;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    return p1

    .line 52
    :cond_1
    const/4 p1, 0x1

    .line 53
    return p1
.end method

.method public final h(Ljava/lang/Object;)I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/U1;->b:Lcom/google/protobuf/B2;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-object v0, p1

    .line 7
    check-cast v0, Lcom/google/protobuf/i1;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/google/protobuf/i1;->unknownFields:Lcom/google/protobuf/A2;

    .line 10
    .line 11
    iget v1, v0, Lcom/google/protobuf/A2;->d:I

    .line 12
    .line 13
    const/4 v2, -0x1

    .line 14
    if-eq v1, v2, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    const/4 v2, 0x0

    .line 19
    :goto_0
    iget v3, v0, Lcom/google/protobuf/A2;->a:I

    .line 20
    .line 21
    if-ge v1, v3, :cond_1

    .line 22
    .line 23
    iget-object v3, v0, Lcom/google/protobuf/A2;->b:[I

    .line 24
    .line 25
    aget v3, v3, v1

    .line 26
    .line 27
    const/4 v4, 0x3

    .line 28
    ushr-int/2addr v3, v4

    .line 29
    iget-object v5, v0, Lcom/google/protobuf/A2;->c:[Ljava/lang/Object;

    .line 30
    .line 31
    aget-object v5, v5, v1

    .line 32
    .line 33
    check-cast v5, Lcom/google/protobuf/r;

    .line 34
    .line 35
    const/4 v6, 0x1

    .line 36
    invoke-static {v6}, Lcom/google/protobuf/z;->q0(I)I

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    const/4 v7, 0x2

    .line 41
    mul-int/lit8 v6, v6, 0x2

    .line 42
    .line 43
    invoke-static {v7, v3}, Lcom/google/protobuf/z;->r0(II)I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    add-int/2addr v3, v6

    .line 48
    invoke-static {v4, v5}, Lcom/google/protobuf/z;->Z(ILcom/google/protobuf/r;)I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    add-int/2addr v4, v3

    .line 53
    add-int/2addr v2, v4

    .line 54
    add-int/lit8 v1, v1, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    iput v2, v0, Lcom/google/protobuf/A2;->d:I

    .line 58
    .line 59
    move v1, v2

    .line 60
    :goto_1
    iget-boolean v0, p0, Lcom/google/protobuf/U1;->c:Z

    .line 61
    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    iget-object v0, p0, Lcom/google/protobuf/U1;->d:Lcom/google/protobuf/P0;

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    .line 70
    .line 71
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/W0;

    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/google/protobuf/W0;->f()I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    add-int/2addr v1, p1

    .line 78
    :cond_2
    return v1
.end method

.method public final i()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/U1;->a:Lcom/google/protobuf/Q1;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/google/protobuf/i1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/google/protobuf/i1;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/protobuf/i1;->newMutableInstance()Lcom/google/protobuf/i1;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    invoke-interface {v0}, Lcom/google/protobuf/Q1;->newBuilderForType()Lcom/google/protobuf/P1;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Lcom/google/protobuf/P1;->k()Lcom/google/protobuf/Q1;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method

.method public final j(Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/U1;->b:Lcom/google/protobuf/B2;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-object v0, p1

    .line 7
    check-cast v0, Lcom/google/protobuf/i1;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/google/protobuf/i1;->unknownFields:Lcom/google/protobuf/A2;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/protobuf/A2;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-boolean v1, p0, Lcom/google/protobuf/U1;->c:Z

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/google/protobuf/U1;->d:Lcom/google/protobuf/P0;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/W0;

    .line 27
    .line 28
    mul-int/lit8 v0, v0, 0x35

    .line 29
    .line 30
    iget-object p1, p1, Lcom/google/protobuf/W0;->a:Lcom/google/protobuf/l2;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/google/protobuf/l2;->k()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    add-int/2addr v0, p1

    .line 37
    :cond_0
    return v0
.end method

.method public final k(Lcom/google/android/gms/internal/ads/CO;Lcom/google/protobuf/O0;Lcom/google/protobuf/P0;Lcom/google/protobuf/W0;Lcom/google/protobuf/A2;)Z
    .locals 8

    .line 1
    iget p3, p1, Lcom/google/android/gms/internal/ads/CO;->a:I

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    const/16 v1, 0xb

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    iget-object v3, p0, Lcom/google/protobuf/U1;->a:Lcom/google/protobuf/Q1;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    if-eq p3, v1, :cond_2

    .line 11
    .line 12
    and-int/lit8 v1, p3, 0x7

    .line 13
    .line 14
    if-ne v1, v0, :cond_1

    .line 15
    .line 16
    ushr-int/lit8 p3, p3, 0x3

    .line 17
    .line 18
    invoke-virtual {p2, p3, v3}, Lcom/google/protobuf/O0;->a(ILcom/google/protobuf/Q1;)Lcom/google/protobuf/g1;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    if-eqz p3, :cond_0

    .line 23
    .line 24
    iget-object p5, p3, Lcom/google/protobuf/g1;->c:Lcom/google/protobuf/Q1;

    .line 25
    .line 26
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    move-result-object p5

    .line 30
    invoke-virtual {p1, p5, p2}, Lcom/google/android/gms/internal/ads/CO;->u(Ljava/lang/Class;Lcom/google/protobuf/O0;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object p2, p3, Lcom/google/protobuf/g1;->d:Lcom/google/protobuf/f1;

    .line 35
    .line 36
    invoke-virtual {p4, p2, p1}, Lcom/google/protobuf/W0;->p(Lcom/google/protobuf/f1;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return v2

    .line 40
    :cond_0
    invoke-static {v4, p1, p5}, Lcom/google/protobuf/B2;->c(ILcom/google/android/gms/internal/ads/CO;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    return p1

    .line 45
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/CO;->I()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    return p1

    .line 50
    :cond_2
    const/4 p3, 0x0

    .line 51
    move-object v1, p3

    .line 52
    const/4 v5, 0x0

    .line 53
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/CO;->b()I

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    const v7, 0x7fffffff

    .line 58
    .line 59
    .line 60
    if-ne v6, v7, :cond_4

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_4
    iget v6, p1, Lcom/google/android/gms/internal/ads/CO;->a:I

    .line 64
    .line 65
    const/16 v7, 0x10

    .line 66
    .line 67
    if-ne v6, v7, :cond_5

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/CO;->A()I

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    invoke-virtual {p2, v5, v3}, Lcom/google/protobuf/O0;->a(ILcom/google/protobuf/Q1;)Lcom/google/protobuf/g1;

    .line 74
    .line 75
    .line 76
    move-result-object p3

    .line 77
    goto :goto_0

    .line 78
    :cond_5
    const/16 v7, 0x1a

    .line 79
    .line 80
    if-ne v6, v7, :cond_7

    .line 81
    .line 82
    if-eqz p3, :cond_6

    .line 83
    .line 84
    iget-object v6, p3, Lcom/google/protobuf/g1;->c:Lcom/google/protobuf/Q1;

    .line 85
    .line 86
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    invoke-virtual {p1, v6, p2}, Lcom/google/android/gms/internal/ads/CO;->u(Ljava/lang/Class;Lcom/google/protobuf/O0;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    iget-object v7, p3, Lcom/google/protobuf/g1;->d:Lcom/google/protobuf/f1;

    .line 95
    .line 96
    invoke-virtual {p4, v7, v6}, Lcom/google/protobuf/W0;->p(Lcom/google/protobuf/f1;Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/CO;->g()Lcom/google/protobuf/r;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    goto :goto_0

    .line 105
    :cond_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/CO;->I()Z

    .line 106
    .line 107
    .line 108
    move-result v6

    .line 109
    if-nez v6, :cond_3

    .line 110
    .line 111
    :goto_1
    iget p1, p1, Lcom/google/android/gms/internal/ads/CO;->a:I

    .line 112
    .line 113
    const/16 v3, 0xc

    .line 114
    .line 115
    if-ne p1, v3, :cond_a

    .line 116
    .line 117
    if-eqz v1, :cond_9

    .line 118
    .line 119
    if-eqz p3, :cond_8

    .line 120
    .line 121
    iget-object p1, p3, Lcom/google/protobuf/g1;->c:Lcom/google/protobuf/Q1;

    .line 122
    .line 123
    invoke-interface {p1}, Lcom/google/protobuf/Q1;->newBuilderForType()Lcom/google/protobuf/P1;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {v1}, Lcom/google/protobuf/r;->p()Lcom/google/protobuf/w;

    .line 128
    .line 129
    .line 130
    move-result-object p5

    .line 131
    move-object v0, p1

    .line 132
    check-cast v0, Lcom/google/protobuf/b1;

    .line 133
    .line 134
    invoke-virtual {v0, p5, p2}, Lcom/google/protobuf/b1;->f(Lcom/google/protobuf/w;Lcom/google/protobuf/O0;)V

    .line 135
    .line 136
    .line 137
    invoke-interface {p1}, Lcom/google/protobuf/P1;->k()Lcom/google/protobuf/Q1;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    iget-object p2, p3, Lcom/google/protobuf/g1;->d:Lcom/google/protobuf/f1;

    .line 142
    .line 143
    invoke-virtual {p4, p2, p1}, Lcom/google/protobuf/W0;->p(Lcom/google/protobuf/f1;Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p5, v4}, Lcom/google/protobuf/w;->a(I)V

    .line 147
    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_8
    shl-int/lit8 p1, v5, 0x3

    .line 151
    .line 152
    or-int/2addr p1, v0

    .line 153
    invoke-virtual {p5, p1, v1}, Lcom/google/protobuf/A2;->f(ILjava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    :cond_9
    :goto_2
    return v2

    .line 157
    :cond_a
    new-instance p1, Lcom/google/protobuf/x1;

    .line 158
    .line 159
    const-string p2, "Protocol message end-group tag did not match expected tag."

    .line 160
    .line 161
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw p1
.end method
