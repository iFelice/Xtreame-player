.class public final LH0/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LO0/U;


# instance fields
.field public final G:I

.field public final H:LH0/t;

.field public I:I


# direct methods
.method public constructor <init>(LH0/t;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LH0/p;->H:LH0/t;

    .line 5
    .line 6
    iput p2, p0, LH0/p;->G:I

    .line 7
    .line 8
    const/4 p1, -0x1

    .line 9
    iput p1, p0, LH0/p;->I:I

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    iget v0, p0, LH0/p;->I:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, -0x1

    .line 5
    if-ne v0, v2, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, LH0/p;->H:LH0/t;

    .line 14
    .line 15
    invoke-virtual {v0}, LH0/t;->f()V

    .line 16
    .line 17
    .line 18
    iget-object v3, v0, LH0/t;->q0:[I

    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    iget-object v3, v0, LH0/t;->q0:[I

    .line 24
    .line 25
    iget v4, p0, LH0/p;->G:I

    .line 26
    .line 27
    aget v3, v3, v4

    .line 28
    .line 29
    const/4 v5, -0x2

    .line 30
    if-ne v3, v2, :cond_1

    .line 31
    .line 32
    iget-object v1, v0, LH0/t;->p0:Ljava/util/Set;

    .line 33
    .line 34
    iget-object v0, v0, LH0/t;->o0:LO0/Z;

    .line 35
    .line 36
    invoke-virtual {v0, v4}, LO0/Z;->a(I)Lm0/g0;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    const/4 v0, -0x3

    .line 47
    const/4 v3, -0x3

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    iget-object v0, v0, LH0/t;->t0:[Z

    .line 50
    .line 51
    aget-boolean v2, v0, v3

    .line 52
    .line 53
    if-eqz v2, :cond_3

    .line 54
    .line 55
    :cond_2
    const/4 v3, -0x2

    .line 56
    goto :goto_1

    .line 57
    :cond_3
    aput-boolean v1, v0, v3

    .line 58
    .line 59
    :goto_1
    iput v3, p0, LH0/p;->I:I

    .line 60
    .line 61
    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    iget v0, p0, LH0/p;->I:I

    .line 2
    .line 3
    const/4 v1, -0x2

    .line 4
    iget-object v2, p0, LH0/p;->H:LH0/t;

    .line 5
    .line 6
    if-eq v0, v1, :cond_2

    .line 7
    .line 8
    const/4 v1, -0x1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v2}, LH0/t;->G()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, -0x3

    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {v2}, LH0/t;->G()V

    .line 19
    .line 20
    .line 21
    iget-object v1, v2, LH0/t;->b0:[LH0/s;

    .line 22
    .line 23
    aget-object v0, v1, v0

    .line 24
    .line 25
    invoke-virtual {v0}, LO0/T;->A()V

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    return-void

    .line 29
    :cond_2
    new-instance v0, LI0/u;

    .line 30
    .line 31
    invoke-virtual {v2}, LH0/t;->f()V

    .line 32
    .line 33
    .line 34
    iget-object v1, v2, LH0/t;->o0:LO0/Z;

    .line 35
    .line 36
    iget v2, p0, LH0/p;->G:I

    .line 37
    .line 38
    invoke-virtual {v1, v2}, LO0/Z;->a(I)Lm0/g0;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iget-object v1, v1, Lm0/g0;->d:[Lm0/t;

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    aget-object v1, v1, v2

    .line 46
    .line 47
    iget-object v1, v1, Lm0/t;->o:Ljava/lang/String;

    .line 48
    .line 49
    const/4 v2, 0x3

    .line 50
    invoke-direct {v0, v1, v2}, LI0/u;-><init>(Ljava/lang/String;I)V

    .line 51
    .line 52
    .line 53
    throw v0
.end method

.method public final c()Z
    .locals 2

    .line 1
    iget v0, p0, LH0/p;->I:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v1, -0x3

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v1, -0x2

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return v0
.end method

.method public final f()Z
    .locals 3

    .line 1
    iget v0, p0, LH0/p;->I:I

    .line 2
    .line 3
    const/4 v1, -0x3

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    invoke-virtual {p0}, LH0/p;->c()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget v0, p0, LH0/p;->I:I

    .line 13
    .line 14
    iget-object v1, p0, LH0/p;->H:LH0/t;

    .line 15
    .line 16
    invoke-virtual {v1}, LH0/t;->E()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    iget-object v2, v1, LH0/t;->b0:[LH0/s;

    .line 23
    .line 24
    aget-object v0, v2, v0

    .line 25
    .line 26
    iget-boolean v1, v1, LH0/t;->z0:Z

    .line 27
    .line 28
    invoke-virtual {v0, v1}, LO0/T;->y(Z)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v0, 0x0

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 38
    :goto_1
    return v0
.end method

.method public final j(J)I
    .locals 4

    .line 1
    invoke-virtual {p0}, LH0/p;->c()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_6

    .line 7
    .line 8
    iget v0, p0, LH0/p;->I:I

    .line 9
    .line 10
    iget-object v2, p0, LH0/p;->H:LH0/t;

    .line 11
    .line 12
    invoke-virtual {v2}, LH0/t;->E()Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    iget-object v1, v2, LH0/t;->b0:[LH0/s;

    .line 20
    .line 21
    aget-object v1, v1, v0

    .line 22
    .line 23
    iget-boolean v3, v2, LH0/t;->z0:Z

    .line 24
    .line 25
    invoke-virtual {v1, p1, p2, v3}, LO0/T;->v(JZ)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iget-object p2, v2, LH0/t;->T:Ljava/util/ArrayList;

    .line 30
    .line 31
    instance-of v2, p2, Ljava/util/Collection;

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 v2, 0x1

    .line 44
    invoke-static {p2, v2}, Lcom/google/protobuf/U2;->g(Ljava/util/ArrayList;I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_4

    .line 58
    .line 59
    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-nez v2, :cond_3

    .line 68
    .line 69
    :cond_4
    :goto_0
    check-cast v3, LH0/l;

    .line 70
    .line 71
    if-eqz v3, :cond_5

    .line 72
    .line 73
    invoke-virtual {v3}, LH0/l;->f()Z

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    if-nez p2, :cond_5

    .line 78
    .line 79
    invoke-virtual {v1}, LO0/T;->t()I

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    invoke-virtual {v3, v0}, LH0/l;->e(I)I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    sub-int/2addr v0, p2

    .line 88
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    :cond_5
    invoke-virtual {v1, p1}, LO0/T;->I(I)V

    .line 93
    .line 94
    .line 95
    move v1, p1

    .line 96
    :cond_6
    :goto_1
    return v1
.end method

.method public final r(LB0/Z;Lw0/g;I)I
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget v3, v0, LH0/p;->I:I

    .line 8
    .line 9
    const/4 v4, -0x3

    .line 10
    if-ne v3, v4, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x4

    .line 13
    invoke-virtual {v2, v1}, Lw0/a;->addFlag(I)V

    .line 14
    .line 15
    .line 16
    const/4 v1, -0x4

    .line 17
    return v1

    .line 18
    :cond_0
    invoke-virtual/range {p0 .. p0}, LH0/p;->c()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_b

    .line 23
    .line 24
    iget v3, v0, LH0/p;->I:I

    .line 25
    .line 26
    iget-object v5, v0, LH0/p;->H:LH0/t;

    .line 27
    .line 28
    invoke-virtual {v5}, LH0/t;->E()Z

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    if-eqz v6, :cond_1

    .line 33
    .line 34
    goto/16 :goto_6

    .line 35
    .line 36
    :cond_1
    iget-object v6, v5, LH0/t;->T:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    const/4 v8, 0x0

    .line 43
    if-nez v7, :cond_6

    .line 44
    .line 45
    const/4 v7, 0x0

    .line 46
    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 47
    .line 48
    .line 49
    move-result v9

    .line 50
    add-int/lit8 v9, v9, -0x1

    .line 51
    .line 52
    if-ge v7, v9, :cond_4

    .line 53
    .line 54
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v9

    .line 58
    check-cast v9, LH0/l;

    .line 59
    .line 60
    iget v9, v9, LH0/l;->Q:I

    .line 61
    .line 62
    iget-object v10, v5, LH0/t;->b0:[LH0/s;

    .line 63
    .line 64
    array-length v10, v10

    .line 65
    const/4 v11, 0x0

    .line 66
    :goto_1
    if-ge v11, v10, :cond_3

    .line 67
    .line 68
    iget-object v12, v5, LH0/t;->t0:[Z

    .line 69
    .line 70
    aget-boolean v12, v12, v11

    .line 71
    .line 72
    if-eqz v12, :cond_2

    .line 73
    .line 74
    iget-object v12, v5, LH0/t;->b0:[LH0/s;

    .line 75
    .line 76
    aget-object v12, v12, v11

    .line 77
    .line 78
    invoke-virtual {v12}, LO0/T;->C()J

    .line 79
    .line 80
    .line 81
    move-result-wide v12

    .line 82
    int-to-long v14, v9

    .line 83
    cmp-long v16, v12, v14

    .line 84
    .line 85
    if-nez v16, :cond_2

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_2
    add-int/lit8 v11, v11, 0x1

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_3
    add-int/lit8 v7, v7, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_4
    :goto_2
    invoke-static {v8, v7, v6}, Lp0/M;->W(IILjava/util/ArrayList;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    check-cast v7, LH0/l;

    .line 102
    .line 103
    iget-object v14, v7, LP0/f;->J:Lm0/t;

    .line 104
    .line 105
    iget-object v9, v5, LH0/t;->m0:Lm0/t;

    .line 106
    .line 107
    invoke-virtual {v14, v9}, Lm0/t;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v9

    .line 111
    if-nez v9, :cond_5

    .line 112
    .line 113
    iget-object v13, v7, LP0/f;->L:Ljava/lang/Object;

    .line 114
    .line 115
    iget-wide v11, v7, LP0/f;->M:J

    .line 116
    .line 117
    iget-object v9, v5, LH0/t;->Q:LO0/D;

    .line 118
    .line 119
    iget v10, v5, LH0/t;->H:I

    .line 120
    .line 121
    iget v7, v7, LP0/f;->K:I

    .line 122
    .line 123
    move-wide v15, v11

    .line 124
    move-object v11, v14

    .line 125
    move v12, v7

    .line 126
    move-object v7, v14

    .line 127
    move-wide v14, v15

    .line 128
    invoke-virtual/range {v9 .. v15}, LO0/D;->b(ILm0/t;ILjava/lang/Object;J)V

    .line 129
    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_5
    move-object v7, v14

    .line 133
    :goto_3
    iput-object v7, v5, LH0/t;->m0:Lm0/t;

    .line 134
    .line 135
    :cond_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 136
    .line 137
    .line 138
    move-result v7

    .line 139
    if-nez v7, :cond_7

    .line 140
    .line 141
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v7

    .line 145
    check-cast v7, LH0/l;

    .line 146
    .line 147
    invoke-virtual {v7}, LH0/l;->f()Z

    .line 148
    .line 149
    .line 150
    move-result v7

    .line 151
    if-nez v7, :cond_7

    .line 152
    .line 153
    goto :goto_6

    .line 154
    :cond_7
    iget-object v4, v5, LH0/t;->b0:[LH0/s;

    .line 155
    .line 156
    aget-object v4, v4, v3

    .line 157
    .line 158
    iget-boolean v7, v5, LH0/t;->z0:Z

    .line 159
    .line 160
    move/from16 v9, p3

    .line 161
    .line 162
    invoke-virtual {v4, v1, v2, v9, v7}, LO0/T;->D(LB0/Z;Lw0/g;IZ)I

    .line 163
    .line 164
    .line 165
    move-result v4

    .line 166
    const/4 v2, -0x5

    .line 167
    if-ne v4, v2, :cond_b

    .line 168
    .line 169
    iget-object v2, v1, LB0/Z;->b:Lm0/t;

    .line 170
    .line 171
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    .line 173
    .line 174
    iget v7, v5, LH0/t;->h0:I

    .line 175
    .line 176
    if-ne v3, v7, :cond_a

    .line 177
    .line 178
    iget-object v7, v5, LH0/t;->b0:[LH0/s;

    .line 179
    .line 180
    aget-object v3, v7, v3

    .line 181
    .line 182
    invoke-virtual {v3}, LO0/T;->C()J

    .line 183
    .line 184
    .line 185
    move-result-wide v9

    .line 186
    invoke-static {v9, v10}, Ly4/k;->y(J)I

    .line 187
    .line 188
    .line 189
    move-result v3

    .line 190
    :goto_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 191
    .line 192
    .line 193
    move-result v7

    .line 194
    if-ge v8, v7, :cond_8

    .line 195
    .line 196
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v7

    .line 200
    check-cast v7, LH0/l;

    .line 201
    .line 202
    iget v7, v7, LH0/l;->Q:I

    .line 203
    .line 204
    if-eq v7, v3, :cond_8

    .line 205
    .line 206
    add-int/lit8 v8, v8, 0x1

    .line 207
    .line 208
    goto :goto_4

    .line 209
    :cond_8
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 210
    .line 211
    .line 212
    move-result v3

    .line 213
    if-ge v8, v3, :cond_9

    .line 214
    .line 215
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v3

    .line 219
    check-cast v3, LH0/l;

    .line 220
    .line 221
    iget-object v3, v3, LP0/f;->J:Lm0/t;

    .line 222
    .line 223
    goto :goto_5

    .line 224
    :cond_9
    iget-object v3, v5, LH0/t;->l0:Lm0/t;

    .line 225
    .line 226
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 227
    .line 228
    .line 229
    :goto_5
    invoke-virtual {v2, v3}, Lm0/t;->e(Lm0/t;)Lm0/t;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    :cond_a
    iput-object v2, v1, LB0/Z;->b:Lm0/t;

    .line 234
    .line 235
    :cond_b
    :goto_6
    return v4
.end method
