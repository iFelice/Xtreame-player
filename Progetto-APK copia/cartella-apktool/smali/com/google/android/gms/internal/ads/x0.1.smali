.class public final Lcom/google/android/gms/internal/ads/x0;
.super Lcom/google/android/gms/internal/ads/mI;
.source "SourceFile"


# instance fields
.field public final H:Lcom/google/android/gms/internal/ads/jr;

.field public final I:Lcom/google/android/gms/internal/ads/jr;

.field public J:I

.field public K:Z

.field public L:Z

.field public M:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/e0;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/mI;-><init>(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/google/android/gms/internal/ads/jr;

    .line 5
    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/sy;->a:[B

    .line 7
    .line 8
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/jr;-><init>([B)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/x0;->H:Lcom/google/android/gms/internal/ads/jr;

    .line 12
    .line 13
    new-instance p1, Lcom/google/android/gms/internal/ads/jr;

    .line 14
    .line 15
    const/4 v0, 0x4

    .line 16
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/jr;-><init>(I)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/x0;->I:Lcom/google/android/gms/internal/ads/jr;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final a1(Lcom/google/android/gms/internal/ads/jr;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/jr;->w()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    shr-int/lit8 v0, p1, 0x4

    .line 6
    .line 7
    and-int/lit8 p1, p1, 0xf

    .line 8
    .line 9
    const/4 v1, 0x7

    .line 10
    if-ne p1, v1, :cond_1

    .line 11
    .line 12
    iput v0, p0, Lcom/google/android/gms/internal/ads/x0;->M:I

    .line 13
    .line 14
    const/4 p1, 0x5

    .line 15
    if-eq v0, p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    return p1

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    return p1

    .line 21
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/w0;

    .line 22
    .line 23
    const-string v1, "Video format not supported: "

    .line 24
    .line 25
    invoke-static {v1, p1}, La/r;->f(Ljava/lang/String;I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/w0;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0
.end method

.method public final b1(JLcom/google/android/gms/internal/ads/jr;)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/jr;->w()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 10
    .line 11
    iget v4, v1, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 12
    .line 13
    add-int/lit8 v5, v4, 0x1

    .line 14
    .line 15
    aget-byte v6, v3, v4

    .line 16
    .line 17
    and-int/lit16 v6, v6, 0xff

    .line 18
    .line 19
    add-int/lit8 v7, v4, 0x2

    .line 20
    .line 21
    aget-byte v5, v3, v5

    .line 22
    .line 23
    and-int/lit16 v5, v5, 0xff

    .line 24
    .line 25
    add-int/lit8 v4, v4, 0x3

    .line 26
    .line 27
    iput v4, v1, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 28
    .line 29
    aget-byte v3, v3, v7

    .line 30
    .line 31
    and-int/lit16 v3, v3, 0xff

    .line 32
    .line 33
    shl-int/lit8 v4, v6, 0x18

    .line 34
    .line 35
    shr-int/lit8 v4, v4, 0x8

    .line 36
    .line 37
    shl-int/lit8 v5, v5, 0x8

    .line 38
    .line 39
    or-int/2addr v4, v5

    .line 40
    or-int/2addr v3, v4

    .line 41
    int-to-long v3, v3

    .line 42
    const/4 v5, 0x1

    .line 43
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/mI;->G:Ljava/lang/Object;

    .line 44
    .line 45
    const/4 v7, 0x0

    .line 46
    if-nez v2, :cond_0

    .line 47
    .line 48
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/x0;->K:Z

    .line 49
    .line 50
    if-nez v2, :cond_4

    .line 51
    .line 52
    new-instance v2, Lcom/google/android/gms/internal/ads/jr;

    .line 53
    .line 54
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    new-array v3, v3, [B

    .line 59
    .line 60
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/jr;-><init>([B)V

    .line 61
    .line 62
    .line 63
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    invoke-virtual {v1, v7, v3, v4}, Lcom/google/android/gms/internal/ads/jr;->f(I[BI)V

    .line 68
    .line 69
    .line 70
    invoke-static {v2}, LW0/e;->b(Lcom/google/android/gms/internal/ads/jr;)LW0/e;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    iget v2, v1, LW0/e;->b:I

    .line 75
    .line 76
    iput v2, v0, Lcom/google/android/gms/internal/ads/x0;->J:I

    .line 77
    .line 78
    new-instance v2, Lcom/google/android/gms/internal/ads/K;

    .line 79
    .line 80
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/K;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string v3, "video/avc"

    .line 84
    .line 85
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/K;->f(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-object v3, v1, LW0/e;->l:Ljava/lang/String;

    .line 89
    .line 90
    iput-object v3, v2, Lcom/google/android/gms/internal/ads/K;->i:Ljava/lang/String;

    .line 91
    .line 92
    iget v3, v1, LW0/e;->c:I

    .line 93
    .line 94
    iput v3, v2, Lcom/google/android/gms/internal/ads/K;->r:I

    .line 95
    .line 96
    iget v3, v1, LW0/e;->d:I

    .line 97
    .line 98
    iput v3, v2, Lcom/google/android/gms/internal/ads/K;->s:I

    .line 99
    .line 100
    iget v3, v1, LW0/e;->k:F

    .line 101
    .line 102
    iput v3, v2, Lcom/google/android/gms/internal/ads/K;->v:F

    .line 103
    .line 104
    iget-object v1, v1, LW0/e;->a:Ljava/util/List;

    .line 105
    .line 106
    iput-object v1, v2, Lcom/google/android/gms/internal/ads/K;->o:Ljava/util/List;

    .line 107
    .line 108
    new-instance v1, Lcom/google/android/gms/internal/ads/p0;

    .line 109
    .line 110
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/p0;-><init>(Lcom/google/android/gms/internal/ads/K;)V

    .line 111
    .line 112
    .line 113
    check-cast v6, Lcom/google/android/gms/internal/ads/e0;

    .line 114
    .line 115
    invoke-interface {v6, v1}, Lcom/google/android/gms/internal/ads/e0;->d(Lcom/google/android/gms/internal/ads/p0;)V

    .line 116
    .line 117
    .line 118
    iput-boolean v5, v0, Lcom/google/android/gms/internal/ads/x0;->K:Z

    .line 119
    .line 120
    return v7

    .line 121
    :cond_0
    if-ne v2, v5, :cond_4

    .line 122
    .line 123
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/x0;->K:Z

    .line 124
    .line 125
    if-eqz v2, :cond_4

    .line 126
    .line 127
    iget v2, v0, Lcom/google/android/gms/internal/ads/x0;->M:I

    .line 128
    .line 129
    if-ne v2, v5, :cond_1

    .line 130
    .line 131
    const/4 v2, 0x1

    .line 132
    goto :goto_0

    .line 133
    :cond_1
    const/4 v2, 0x0

    .line 134
    :goto_0
    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/x0;->L:Z

    .line 135
    .line 136
    if-nez v8, :cond_2

    .line 137
    .line 138
    if-eqz v2, :cond_4

    .line 139
    .line 140
    const/4 v12, 0x1

    .line 141
    goto :goto_1

    .line 142
    :cond_2
    move v12, v2

    .line 143
    :goto_1
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/x0;->I:Lcom/google/android/gms/internal/ads/jr;

    .line 144
    .line 145
    iget-object v8, v2, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 146
    .line 147
    aput-byte v7, v8, v7

    .line 148
    .line 149
    aput-byte v7, v8, v5

    .line 150
    .line 151
    const/4 v9, 0x2

    .line 152
    aput-byte v7, v8, v9

    .line 153
    .line 154
    iget v8, v0, Lcom/google/android/gms/internal/ads/x0;->J:I

    .line 155
    .line 156
    const/4 v9, 0x4

    .line 157
    rsub-int/lit8 v8, v8, 0x4

    .line 158
    .line 159
    const/4 v13, 0x0

    .line 160
    :goto_2
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 161
    .line 162
    .line 163
    move-result v10

    .line 164
    if-lez v10, :cond_3

    .line 165
    .line 166
    iget-object v10, v2, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 167
    .line 168
    iget v11, v0, Lcom/google/android/gms/internal/ads/x0;->J:I

    .line 169
    .line 170
    invoke-virtual {v1, v8, v10, v11}, Lcom/google/android/gms/internal/ads/jr;->f(I[BI)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/jr;->z()I

    .line 177
    .line 178
    .line 179
    move-result v10

    .line 180
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/x0;->H:Lcom/google/android/gms/internal/ads/jr;

    .line 181
    .line 182
    invoke-virtual {v11, v7}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 183
    .line 184
    .line 185
    move-object v14, v6

    .line 186
    check-cast v14, Lcom/google/android/gms/internal/ads/e0;

    .line 187
    .line 188
    invoke-interface {v14, v9, v11}, Lcom/google/android/gms/internal/ads/e0;->f(ILcom/google/android/gms/internal/ads/jr;)V

    .line 189
    .line 190
    .line 191
    add-int/lit8 v13, v13, 0x4

    .line 192
    .line 193
    invoke-interface {v14, v10, v1}, Lcom/google/android/gms/internal/ads/e0;->f(ILcom/google/android/gms/internal/ads/jr;)V

    .line 194
    .line 195
    .line 196
    add-int/2addr v13, v10

    .line 197
    goto :goto_2

    .line 198
    :cond_3
    const-wide/16 v1, 0x3e8

    .line 199
    .line 200
    mul-long v3, v3, v1

    .line 201
    .line 202
    add-long v10, v3, p1

    .line 203
    .line 204
    move-object v9, v6

    .line 205
    check-cast v9, Lcom/google/android/gms/internal/ads/e0;

    .line 206
    .line 207
    const/4 v14, 0x0

    .line 208
    const/4 v15, 0x0

    .line 209
    invoke-interface/range {v9 .. v15}, Lcom/google/android/gms/internal/ads/e0;->b(JIIILcom/google/android/gms/internal/ads/d0;)V

    .line 210
    .line 211
    .line 212
    iput-boolean v5, v0, Lcom/google/android/gms/internal/ads/x0;->L:Z

    .line 213
    .line 214
    return v5

    .line 215
    :cond_4
    return v7
.end method
