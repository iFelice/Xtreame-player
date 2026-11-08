.class public final Lcom/google/android/gms/internal/ads/TN;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/e0;


# instance fields
.field public A:Lcom/google/android/gms/internal/ads/yM;

.field public final a:Lcom/google/android/gms/internal/ads/QN;

.field public final b:Lt0/d;

.field public final c:Lcom/google/android/gms/internal/ads/YN;

.field public final d:Lcom/google/android/gms/internal/ads/xM;

.field public e:Lcom/google/android/gms/internal/ads/SN;

.field public f:Lcom/google/android/gms/internal/ads/p0;

.field public g:I

.field public h:[J

.field public i:[J

.field public j:[I

.field public k:[I

.field public l:[J

.field public m:[Lcom/google/android/gms/internal/ads/d0;

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:J

.field public s:J

.field public t:J

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Lcom/google/android/gms/internal/ads/p0;

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/CO;Lcom/google/android/gms/internal/ads/xM;Lcom/google/android/gms/internal/ads/vM;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/TN;->d:Lcom/google/android/gms/internal/ads/xM;

    .line 5
    .line 6
    new-instance p2, Lcom/google/android/gms/internal/ads/QN;

    .line 7
    .line 8
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/QN;-><init>(Lcom/google/android/gms/internal/ads/CO;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/TN;->a:Lcom/google/android/gms/internal/ads/QN;

    .line 12
    .line 13
    new-instance p1, Lt0/d;

    .line 14
    .line 15
    const/4 p2, 0x5

    .line 16
    invoke-direct {p1, p2}, Lt0/d;-><init>(I)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/TN;->b:Lt0/d;

    .line 20
    .line 21
    const/16 p1, 0x3e8

    .line 22
    .line 23
    iput p1, p0, Lcom/google/android/gms/internal/ads/TN;->g:I

    .line 24
    .line 25
    new-array p2, p1, [J

    .line 26
    .line 27
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/TN;->h:[J

    .line 28
    .line 29
    new-array p2, p1, [J

    .line 30
    .line 31
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/TN;->i:[J

    .line 32
    .line 33
    new-array p2, p1, [J

    .line 34
    .line 35
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/TN;->l:[J

    .line 36
    .line 37
    new-array p2, p1, [I

    .line 38
    .line 39
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/TN;->k:[I

    .line 40
    .line 41
    new-array p2, p1, [I

    .line 42
    .line 43
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/TN;->j:[I

    .line 44
    .line 45
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/d0;

    .line 46
    .line 47
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/TN;->m:[Lcom/google/android/gms/internal/ads/d0;

    .line 48
    .line 49
    new-instance p1, Lcom/google/android/gms/internal/ads/YN;

    .line 50
    .line 51
    new-instance p2, Lcom/google/android/gms/internal/ads/GH;

    .line 52
    .line 53
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/YN;-><init>(Lcom/google/android/gms/internal/ads/GH;)V

    .line 57
    .line 58
    .line 59
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/TN;->c:Lcom/google/android/gms/internal/ads/YN;

    .line 60
    .line 61
    const-wide/high16 p1, -0x8000000000000000L

    .line 62
    .line 63
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/TN;->r:J

    .line 64
    .line 65
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/TN;->s:J

    .line 66
    .line 67
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/TN;->t:J

    .line 68
    .line 69
    const/4 p1, 0x1

    .line 70
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/TN;->w:Z

    .line 71
    .line 72
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/TN;->v:Z

    .line 73
    .line 74
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/TN;->y:Z

    .line 75
    .line 76
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/jr;II)V
    .locals 6

    .line 1
    :cond_0
    :goto_0
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/TN;->a:Lcom/google/android/gms/internal/ads/QN;

    .line 2
    .line 3
    if-lez p2, :cond_1

    .line 4
    .line 5
    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/QN;->b(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p3, Lcom/google/android/gms/internal/ads/QN;->d:Lcom/google/android/gms/internal/ads/PN;

    .line 10
    .line 11
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/PN;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v2, Lcom/google/android/gms/internal/ads/zO;

    .line 14
    .line 15
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zO;->a:[B

    .line 16
    .line 17
    iget-wide v3, p3, Lcom/google/android/gms/internal/ads/QN;->e:J

    .line 18
    .line 19
    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/ads/PN;->a(J)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {p1, v1, v2, v0}, Lcom/google/android/gms/internal/ads/jr;->f(I[BI)V

    .line 24
    .line 25
    .line 26
    sub-int/2addr p2, v0

    .line 27
    iget-wide v1, p3, Lcom/google/android/gms/internal/ads/QN;->e:J

    .line 28
    .line 29
    int-to-long v3, v0

    .line 30
    add-long/2addr v1, v3

    .line 31
    iput-wide v1, p3, Lcom/google/android/gms/internal/ads/QN;->e:J

    .line 32
    .line 33
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/QN;->d:Lcom/google/android/gms/internal/ads/PN;

    .line 34
    .line 35
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/PN;->b:J

    .line 36
    .line 37
    cmp-long v5, v1, v3

    .line 38
    .line 39
    if-nez v5, :cond_0

    .line 40
    .line 41
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/PN;->d:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v0, Lcom/google/android/gms/internal/ads/PN;

    .line 44
    .line 45
    iput-object v0, p3, Lcom/google/android/gms/internal/ads/QN;->d:Lcom/google/android/gms/internal/ads/PN;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final b(JIIILcom/google/android/gms/internal/ads/d0;)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/TN;->v:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    and-int/lit8 v0, p3, 0x1

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/TN;->v:Z

    .line 12
    .line 13
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/TN;->y:Z

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    if-eqz v0, :cond_4

    .line 17
    .line 18
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/TN;->r:J

    .line 19
    .line 20
    cmp-long v0, p1, v3

    .line 21
    .line 22
    if-ltz v0, :cond_3

    .line 23
    .line 24
    and-int/lit8 v0, p3, 0x1

    .line 25
    .line 26
    if-nez v0, :cond_4

    .line 27
    .line 28
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/TN;->z:Z

    .line 29
    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/TN;->x:Lcom/google/android/gms/internal/ads/p0;

    .line 33
    .line 34
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v3, "Overriding unexpected non-sync sample for format: "

    .line 39
    .line 40
    const-string v4, "SampleQueue"

    .line 41
    .line 42
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/TN;->z:Z

    .line 50
    .line 51
    :cond_2
    or-int/lit8 p3, p3, 0x1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_3
    :goto_0
    return-void

    .line 55
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/TN;->a:Lcom/google/android/gms/internal/ads/QN;

    .line 56
    .line 57
    int-to-long v3, p4

    .line 58
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/QN;->e:J

    .line 59
    .line 60
    sub-long/2addr v5, v3

    .line 61
    int-to-long v3, p5

    .line 62
    sub-long/2addr v5, v3

    .line 63
    monitor-enter p0

    .line 64
    :try_start_0
    iget p5, p0, Lcom/google/android/gms/internal/ads/TN;->n:I

    .line 65
    .line 66
    const/4 v0, -0x1

    .line 67
    if-lez p5, :cond_6

    .line 68
    .line 69
    add-int/2addr p5, v0

    .line 70
    invoke-virtual {p0, p5}, Lcom/google/android/gms/internal/ads/TN;->h(I)I

    .line 71
    .line 72
    .line 73
    move-result p5

    .line 74
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/TN;->i:[J

    .line 75
    .line 76
    aget-wide v7, v3, p5

    .line 77
    .line 78
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/TN;->j:[I

    .line 79
    .line 80
    aget p5, v3, p5

    .line 81
    .line 82
    int-to-long v3, p5

    .line 83
    add-long/2addr v7, v3

    .line 84
    cmp-long p5, v7, v5

    .line 85
    .line 86
    if-gtz p5, :cond_5

    .line 87
    .line 88
    const/4 p5, 0x1

    .line 89
    goto :goto_2

    .line 90
    :cond_5
    const/4 p5, 0x0

    .line 91
    :goto_2
    invoke-static {p5}, Lo3/r;->J(Z)V

    .line 92
    .line 93
    .line 94
    goto :goto_3

    .line 95
    :catchall_0
    move-exception p1

    .line 96
    goto/16 :goto_8

    .line 97
    .line 98
    :cond_6
    :goto_3
    const/high16 p5, 0x20000000

    .line 99
    .line 100
    and-int/2addr p5, p3

    .line 101
    if-eqz p5, :cond_7

    .line 102
    .line 103
    const/4 p5, 0x1

    .line 104
    goto :goto_4

    .line 105
    :cond_7
    const/4 p5, 0x0

    .line 106
    :goto_4
    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/TN;->u:Z

    .line 107
    .line 108
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/TN;->t:J

    .line 109
    .line 110
    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    .line 111
    .line 112
    .line 113
    move-result-wide v3

    .line 114
    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/TN;->t:J

    .line 115
    .line 116
    iget p5, p0, Lcom/google/android/gms/internal/ads/TN;->n:I

    .line 117
    .line 118
    invoke-virtual {p0, p5}, Lcom/google/android/gms/internal/ads/TN;->h(I)I

    .line 119
    .line 120
    .line 121
    move-result p5

    .line 122
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/TN;->l:[J

    .line 123
    .line 124
    aput-wide p1, v3, p5

    .line 125
    .line 126
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/TN;->i:[J

    .line 127
    .line 128
    aput-wide v5, p1, p5

    .line 129
    .line 130
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/TN;->j:[I

    .line 131
    .line 132
    aput p4, p1, p5

    .line 133
    .line 134
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/TN;->k:[I

    .line 135
    .line 136
    aput p3, p1, p5

    .line 137
    .line 138
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/TN;->m:[Lcom/google/android/gms/internal/ads/d0;

    .line 139
    .line 140
    aput-object p6, p1, p5

    .line 141
    .line 142
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/TN;->h:[J

    .line 143
    .line 144
    const-wide/16 p2, 0x0

    .line 145
    .line 146
    aput-wide p2, p1, p5

    .line 147
    .line 148
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/TN;->c:Lcom/google/android/gms/internal/ads/YN;

    .line 149
    .line 150
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/YN;->b:Landroid/util/SparseArray;

    .line 151
    .line 152
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    if-nez p1, :cond_8

    .line 157
    .line 158
    goto :goto_5

    .line 159
    :cond_8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/TN;->c:Lcom/google/android/gms/internal/ads/YN;

    .line 160
    .line 161
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/YN;->b:Landroid/util/SparseArray;

    .line 162
    .line 163
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 164
    .line 165
    .line 166
    move-result p2

    .line 167
    add-int/2addr p2, v0

    .line 168
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    check-cast p1, Lcom/google/android/gms/internal/ads/RN;

    .line 173
    .line 174
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/RN;->a:Lcom/google/android/gms/internal/ads/p0;

    .line 175
    .line 176
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/TN;->x:Lcom/google/android/gms/internal/ads/p0;

    .line 177
    .line 178
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/p0;->equals(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result p1

    .line 182
    if-nez p1, :cond_d

    .line 183
    .line 184
    :goto_5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/TN;->x:Lcom/google/android/gms/internal/ads/p0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    .line 186
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    .line 188
    .line 189
    :try_start_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/TN;->d:Lcom/google/android/gms/internal/ads/xM;

    .line 190
    .line 191
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 192
    .line 193
    .line 194
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/TN;->c:Lcom/google/android/gms/internal/ads/YN;

    .line 195
    .line 196
    iget p3, p0, Lcom/google/android/gms/internal/ads/TN;->o:I

    .line 197
    .line 198
    iget p4, p0, Lcom/google/android/gms/internal/ads/TN;->n:I

    .line 199
    .line 200
    add-int/2addr p3, p4

    .line 201
    new-instance p4, Lcom/google/android/gms/internal/ads/RN;

    .line 202
    .line 203
    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/RN;-><init>(Lcom/google/android/gms/internal/ads/p0;)V

    .line 204
    .line 205
    .line 206
    iget p1, p2, Lcom/google/android/gms/internal/ads/YN;->a:I

    .line 207
    .line 208
    iget-object p5, p2, Lcom/google/android/gms/internal/ads/YN;->b:Landroid/util/SparseArray;

    .line 209
    .line 210
    if-ne p1, v0, :cond_a

    .line 211
    .line 212
    invoke-virtual {p5}, Landroid/util/SparseArray;->size()I

    .line 213
    .line 214
    .line 215
    move-result p1

    .line 216
    if-nez p1, :cond_9

    .line 217
    .line 218
    const/4 p1, 0x1

    .line 219
    goto :goto_6

    .line 220
    :cond_9
    const/4 p1, 0x0

    .line 221
    :goto_6
    invoke-static {p1}, Lo3/r;->M(Z)V

    .line 222
    .line 223
    .line 224
    iput v1, p2, Lcom/google/android/gms/internal/ads/YN;->a:I

    .line 225
    .line 226
    :cond_a
    invoke-virtual {p5}, Landroid/util/SparseArray;->size()I

    .line 227
    .line 228
    .line 229
    move-result p1

    .line 230
    if-lez p1, :cond_c

    .line 231
    .line 232
    invoke-virtual {p5}, Landroid/util/SparseArray;->size()I

    .line 233
    .line 234
    .line 235
    move-result p1

    .line 236
    add-int/2addr p1, v0

    .line 237
    invoke-virtual {p5, p1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 238
    .line 239
    .line 240
    move-result p1

    .line 241
    if-lt p3, p1, :cond_b

    .line 242
    .line 243
    const/4 p6, 0x1

    .line 244
    goto :goto_7

    .line 245
    :cond_b
    const/4 p6, 0x0

    .line 246
    :goto_7
    invoke-static {p6}, Lo3/r;->J(Z)V

    .line 247
    .line 248
    .line 249
    if-ne p1, p3, :cond_c

    .line 250
    .line 251
    invoke-virtual {p5}, Landroid/util/SparseArray;->size()I

    .line 252
    .line 253
    .line 254
    move-result p1

    .line 255
    add-int/2addr p1, v0

    .line 256
    invoke-virtual {p5, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/YN;->c:Lcom/google/android/gms/internal/ads/km;

    .line 261
    .line 262
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/km;->zza(Ljava/lang/Object;)V

    .line 263
    .line 264
    .line 265
    :cond_c
    invoke-virtual {p5, p3, p4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    :cond_d
    iget p1, p0, Lcom/google/android/gms/internal/ads/TN;->n:I

    .line 269
    .line 270
    add-int/2addr p1, v2

    .line 271
    iput p1, p0, Lcom/google/android/gms/internal/ads/TN;->n:I

    .line 272
    .line 273
    iget p2, p0, Lcom/google/android/gms/internal/ads/TN;->g:I

    .line 274
    .line 275
    if-ne p1, p2, :cond_e

    .line 276
    .line 277
    add-int/lit16 p1, p2, 0x3e8

    .line 278
    .line 279
    new-array p3, p1, [J

    .line 280
    .line 281
    new-array p4, p1, [J

    .line 282
    .line 283
    new-array p5, p1, [J

    .line 284
    .line 285
    new-array p6, p1, [I

    .line 286
    .line 287
    new-array v0, p1, [I

    .line 288
    .line 289
    new-array v2, p1, [Lcom/google/android/gms/internal/ads/d0;

    .line 290
    .line 291
    iget v3, p0, Lcom/google/android/gms/internal/ads/TN;->p:I

    .line 292
    .line 293
    sub-int/2addr p2, v3

    .line 294
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/TN;->i:[J

    .line 295
    .line 296
    invoke-static {v4, v3, p4, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 297
    .line 298
    .line 299
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/TN;->l:[J

    .line 300
    .line 301
    iget v4, p0, Lcom/google/android/gms/internal/ads/TN;->p:I

    .line 302
    .line 303
    invoke-static {v3, v4, p5, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 304
    .line 305
    .line 306
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/TN;->k:[I

    .line 307
    .line 308
    iget v4, p0, Lcom/google/android/gms/internal/ads/TN;->p:I

    .line 309
    .line 310
    invoke-static {v3, v4, p6, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 311
    .line 312
    .line 313
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/TN;->j:[I

    .line 314
    .line 315
    iget v4, p0, Lcom/google/android/gms/internal/ads/TN;->p:I

    .line 316
    .line 317
    invoke-static {v3, v4, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 318
    .line 319
    .line 320
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/TN;->m:[Lcom/google/android/gms/internal/ads/d0;

    .line 321
    .line 322
    iget v4, p0, Lcom/google/android/gms/internal/ads/TN;->p:I

    .line 323
    .line 324
    invoke-static {v3, v4, v2, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 325
    .line 326
    .line 327
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/TN;->h:[J

    .line 328
    .line 329
    iget v4, p0, Lcom/google/android/gms/internal/ads/TN;->p:I

    .line 330
    .line 331
    invoke-static {v3, v4, p3, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 332
    .line 333
    .line 334
    iget v3, p0, Lcom/google/android/gms/internal/ads/TN;->p:I

    .line 335
    .line 336
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/TN;->i:[J

    .line 337
    .line 338
    invoke-static {v4, v1, p4, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 339
    .line 340
    .line 341
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/TN;->l:[J

    .line 342
    .line 343
    invoke-static {v4, v1, p5, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 344
    .line 345
    .line 346
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/TN;->k:[I

    .line 347
    .line 348
    invoke-static {v4, v1, p6, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 349
    .line 350
    .line 351
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/TN;->j:[I

    .line 352
    .line 353
    invoke-static {v4, v1, v0, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 354
    .line 355
    .line 356
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/TN;->m:[Lcom/google/android/gms/internal/ads/d0;

    .line 357
    .line 358
    invoke-static {v4, v1, v2, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 359
    .line 360
    .line 361
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/TN;->h:[J

    .line 362
    .line 363
    invoke-static {v4, v1, p3, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 364
    .line 365
    .line 366
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/TN;->i:[J

    .line 367
    .line 368
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/TN;->l:[J

    .line 369
    .line 370
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/TN;->k:[I

    .line 371
    .line 372
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/TN;->j:[I

    .line 373
    .line 374
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/TN;->m:[Lcom/google/android/gms/internal/ads/d0;

    .line 375
    .line 376
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/TN;->h:[J

    .line 377
    .line 378
    iput v1, p0, Lcom/google/android/gms/internal/ads/TN;->p:I

    .line 379
    .line 380
    iput p1, p0, Lcom/google/android/gms/internal/ads/TN;->g:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 381
    .line 382
    :cond_e
    monitor-exit p0

    .line 383
    return-void

    .line 384
    :goto_8
    monitor-exit p0

    .line 385
    throw p1
.end method

.method public final c(Lcom/google/android/gms/internal/ads/HL;IZ)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/TN;->a:Lcom/google/android/gms/internal/ads/QN;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/QN;->b(I)I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/QN;->d:Lcom/google/android/gms/internal/ads/PN;

    .line 8
    .line 9
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/PN;->c:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Lcom/google/android/gms/internal/ads/zO;

    .line 12
    .line 13
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zO;->a:[B

    .line 14
    .line 15
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/QN;->e:J

    .line 16
    .line 17
    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/ads/PN;->a(J)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-interface {p1, v2, v1, p2}, Lcom/google/android/gms/internal/ads/HL;->e([BII)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    const/4 p2, -0x1

    .line 26
    if-ne p1, p2, :cond_1

    .line 27
    .line 28
    if-eqz p3, :cond_0

    .line 29
    .line 30
    const/4 p1, -0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    .line 33
    .line 34
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 35
    .line 36
    .line 37
    throw p1

    .line 38
    :cond_1
    iget-wide p2, v0, Lcom/google/android/gms/internal/ads/QN;->e:J

    .line 39
    .line 40
    int-to-long v1, p1

    .line 41
    add-long/2addr p2, v1

    .line 42
    iput-wide p2, v0, Lcom/google/android/gms/internal/ads/QN;->e:J

    .line 43
    .line 44
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/QN;->d:Lcom/google/android/gms/internal/ads/PN;

    .line 45
    .line 46
    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/PN;->b:J

    .line 47
    .line 48
    cmp-long v4, p2, v2

    .line 49
    .line 50
    if-nez v4, :cond_2

    .line 51
    .line 52
    iget-object p2, v1, Lcom/google/android/gms/internal/ads/PN;->d:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast p2, Lcom/google/android/gms/internal/ads/PN;

    .line 55
    .line 56
    iput-object p2, v0, Lcom/google/android/gms/internal/ads/QN;->d:Lcom/google/android/gms/internal/ads/PN;

    .line 57
    .line 58
    :cond_2
    :goto_0
    return p1
.end method

.method public final d(Lcom/google/android/gms/internal/ads/p0;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/TN;->w:Z

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/TN;->x:Lcom/google/android/gms/internal/ads/p0;

    .line 6
    .line 7
    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    monitor-exit p0

    .line 14
    goto :goto_2

    .line 15
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/TN;->c:Lcom/google/android/gms/internal/ads/YN;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/YN;->b:Landroid/util/SparseArray;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/TN;->c:Lcom/google/android/gms/internal/ads/YN;

    .line 27
    .line 28
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/YN;->b:Landroid/util/SparseArray;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    add-int/lit8 v2, v2, -0x1

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Lcom/google/android/gms/internal/ads/RN;

    .line 41
    .line 42
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/RN;->a:Lcom/google/android/gms/internal/ads/p0;

    .line 43
    .line 44
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/p0;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/TN;->c:Lcom/google/android/gms/internal/ads/YN;

    .line 51
    .line 52
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/YN;->b:Landroid/util/SparseArray;

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    add-int/lit8 v1, v1, -0x1

    .line 59
    .line 60
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Lcom/google/android/gms/internal/ads/RN;

    .line 65
    .line 66
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/RN;->a:Lcom/google/android/gms/internal/ads/p0;

    .line 67
    .line 68
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/TN;->x:Lcom/google/android/gms/internal/ads/p0;

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :catchall_0
    move-exception p1

    .line 72
    goto :goto_3

    .line 73
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/TN;->x:Lcom/google/android/gms/internal/ads/p0;

    .line 74
    .line 75
    :goto_1
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/TN;->y:Z

    .line 76
    .line 77
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/TN;->x:Lcom/google/android/gms/internal/ads/p0;

    .line 78
    .line 79
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/p0;->m:Ljava/lang/String;

    .line 80
    .line 81
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/p0;->j:Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/va;->f(Ljava/lang/String;Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    and-int/2addr p1, v1

    .line 88
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/TN;->y:Z

    .line 89
    .line 90
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/TN;->z:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    .line 92
    monitor-exit p0

    .line 93
    const/4 v0, 0x1

    .line 94
    :goto_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/TN;->e:Lcom/google/android/gms/internal/ads/SN;

    .line 95
    .line 96
    if-eqz p1, :cond_3

    .line 97
    .line 98
    if-eqz v0, :cond_3

    .line 99
    .line 100
    check-cast p1, Lcom/google/android/gms/internal/ads/KN;

    .line 101
    .line 102
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/KN;->T:Landroid/os/Handler;

    .line 103
    .line 104
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/KN;->R:Lcom/google/android/gms/internal/ads/EN;

    .line 105
    .line 106
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 107
    .line 108
    .line 109
    :cond_3
    return-void

    .line 110
    :goto_3
    monitor-exit p0

    .line 111
    throw p1
.end method

.method public final e(Lcom/google/android/gms/internal/ads/HL;IZ)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/TN;->c(Lcom/google/android/gms/internal/ads/HL;IZ)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final f(ILcom/google/android/gms/internal/ads/jr;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p2, p1, v0}, Lcom/google/android/gms/internal/ads/TN;->a(Lcom/google/android/gms/internal/ads/jr;II)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final g(IIJZ)I
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, -0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    if-ge v2, p2, :cond_3

    .line 5
    .line 6
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/TN;->l:[J

    .line 7
    .line 8
    aget-wide v4, v3, p1

    .line 9
    .line 10
    cmp-long v3, v4, p3

    .line 11
    .line 12
    if-gtz v3, :cond_3

    .line 13
    .line 14
    if-eqz p5, :cond_0

    .line 15
    .line 16
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/TN;->k:[I

    .line 17
    .line 18
    aget v4, v4, p1

    .line 19
    .line 20
    and-int/lit8 v4, v4, 0x1

    .line 21
    .line 22
    if-eqz v4, :cond_1

    .line 23
    .line 24
    :cond_0
    move v1, v2

    .line 25
    if-nez v3, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 29
    .line 30
    iget v3, p0, Lcom/google/android/gms/internal/ads/TN;->g:I

    .line 31
    .line 32
    if-ne p1, v3, :cond_2

    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_3
    :goto_1
    return v1
.end method

.method public final h(I)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/TN;->p:I

    add-int/2addr v0, p1

    iget p1, p0, Lcom/google/android/gms/internal/ads/TN;->g:I

    if-ge v0, p1, :cond_0

    return v0

    :cond_0
    sub-int/2addr v0, p1

    return v0
.end method

.method public final i(I)J
    .locals 11

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/TN;->s:J

    .line 2
    .line 3
    const-wide/high16 v2, -0x8000000000000000L

    .line 4
    .line 5
    const/4 v4, 0x0

    .line 6
    const/4 v5, -0x1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    add-int/lit8 v6, p1, -0x1

    .line 11
    .line 12
    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/ads/TN;->h(I)I

    .line 13
    .line 14
    .line 15
    move-result v6

    .line 16
    const/4 v7, 0x0

    .line 17
    :goto_0
    if-ge v7, p1, :cond_3

    .line 18
    .line 19
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/TN;->l:[J

    .line 20
    .line 21
    aget-wide v9, v8, v6

    .line 22
    .line 23
    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->max(JJ)J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/TN;->k:[I

    .line 28
    .line 29
    aget v8, v8, v6

    .line 30
    .line 31
    and-int/lit8 v8, v8, 0x1

    .line 32
    .line 33
    if-eqz v8, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    add-int/lit8 v6, v6, -0x1

    .line 37
    .line 38
    if-ne v6, v5, :cond_2

    .line 39
    .line 40
    iget v6, p0, Lcom/google/android/gms/internal/ads/TN;->g:I

    .line 41
    .line 42
    add-int/2addr v6, v5

    .line 43
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    :goto_1
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 47
    .line 48
    .line 49
    move-result-wide v0

    .line 50
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/TN;->s:J

    .line 51
    .line 52
    iget v0, p0, Lcom/google/android/gms/internal/ads/TN;->n:I

    .line 53
    .line 54
    sub-int/2addr v0, p1

    .line 55
    iput v0, p0, Lcom/google/android/gms/internal/ads/TN;->n:I

    .line 56
    .line 57
    iget v0, p0, Lcom/google/android/gms/internal/ads/TN;->o:I

    .line 58
    .line 59
    add-int/2addr v0, p1

    .line 60
    iput v0, p0, Lcom/google/android/gms/internal/ads/TN;->o:I

    .line 61
    .line 62
    iget v1, p0, Lcom/google/android/gms/internal/ads/TN;->p:I

    .line 63
    .line 64
    add-int/2addr v1, p1

    .line 65
    iput v1, p0, Lcom/google/android/gms/internal/ads/TN;->p:I

    .line 66
    .line 67
    iget v2, p0, Lcom/google/android/gms/internal/ads/TN;->g:I

    .line 68
    .line 69
    if-lt v1, v2, :cond_4

    .line 70
    .line 71
    sub-int/2addr v1, v2

    .line 72
    iput v1, p0, Lcom/google/android/gms/internal/ads/TN;->p:I

    .line 73
    .line 74
    :cond_4
    iget v1, p0, Lcom/google/android/gms/internal/ads/TN;->q:I

    .line 75
    .line 76
    sub-int/2addr v1, p1

    .line 77
    iput v1, p0, Lcom/google/android/gms/internal/ads/TN;->q:I

    .line 78
    .line 79
    if-gez v1, :cond_5

    .line 80
    .line 81
    iput v4, p0, Lcom/google/android/gms/internal/ads/TN;->q:I

    .line 82
    .line 83
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/TN;->c:Lcom/google/android/gms/internal/ads/YN;

    .line 84
    .line 85
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/YN;->b:Landroid/util/SparseArray;

    .line 86
    .line 87
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    add-int/2addr v2, v5

    .line 92
    if-ge v4, v2, :cond_7

    .line 93
    .line 94
    add-int/lit8 v2, v4, 0x1

    .line 95
    .line 96
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-lt v0, v3, :cond_7

    .line 101
    .line 102
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    iget-object v6, p1, Lcom/google/android/gms/internal/ads/YN;->c:Lcom/google/android/gms/internal/ads/km;

    .line 107
    .line 108
    invoke-interface {v6, v3}, Lcom/google/android/gms/internal/ads/km;->zza(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->removeAt(I)V

    .line 112
    .line 113
    .line 114
    iget v1, p1, Lcom/google/android/gms/internal/ads/YN;->a:I

    .line 115
    .line 116
    if-lez v1, :cond_6

    .line 117
    .line 118
    add-int/lit8 v1, v1, -0x1

    .line 119
    .line 120
    iput v1, p1, Lcom/google/android/gms/internal/ads/YN;->a:I

    .line 121
    .line 122
    :cond_6
    move v4, v2

    .line 123
    goto :goto_2

    .line 124
    :cond_7
    iget p1, p0, Lcom/google/android/gms/internal/ads/TN;->n:I

    .line 125
    .line 126
    if-nez p1, :cond_9

    .line 127
    .line 128
    iget p1, p0, Lcom/google/android/gms/internal/ads/TN;->p:I

    .line 129
    .line 130
    if-nez p1, :cond_8

    .line 131
    .line 132
    iget p1, p0, Lcom/google/android/gms/internal/ads/TN;->g:I

    .line 133
    .line 134
    :cond_8
    add-int/2addr p1, v5

    .line 135
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/TN;->i:[J

    .line 136
    .line 137
    aget-wide v1, v0, p1

    .line 138
    .line 139
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/TN;->j:[I

    .line 140
    .line 141
    aget p1, v0, p1

    .line 142
    .line 143
    int-to-long v3, p1

    .line 144
    add-long/2addr v1, v3

    .line 145
    return-wide v1

    .line 146
    :cond_9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/TN;->i:[J

    .line 147
    .line 148
    iget v0, p0, Lcom/google/android/gms/internal/ads/TN;->p:I

    .line 149
    .line 150
    aget-wide v0, p1, v0

    .line 151
    .line 152
    return-wide v0
.end method

.method public final j(Lcom/google/android/gms/internal/ads/p0;Lcom/google/android/gms/internal/ads/Om;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/TN;->f:Lcom/google/android/gms/internal/ads/p0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move-object v2, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/p0;->q:Lcom/google/android/gms/internal/ads/mO;

    .line 9
    .line 10
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/TN;->f:Lcom/google/android/gms/internal/ads/p0;

    .line 11
    .line 12
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/p0;->q:Lcom/google/android/gms/internal/ads/mO;

    .line 13
    .line 14
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/TN;->d:Lcom/google/android/gms/internal/ads/xM;

    .line 15
    .line 16
    check-cast v4, Lcom/google/android/gms/internal/ads/y1;

    .line 17
    .line 18
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    iget-object v5, p1, Lcom/google/android/gms/internal/ads/p0;->q:Lcom/google/android/gms/internal/ads/mO;

    .line 22
    .line 23
    if-eqz v5, :cond_1

    .line 24
    .line 25
    const/4 v6, 0x1

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    const/4 v6, 0x0

    .line 28
    :goto_1
    new-instance v7, Lcom/google/android/gms/internal/ads/K;

    .line 29
    .line 30
    invoke-direct {v7, p1}, Lcom/google/android/gms/internal/ads/K;-><init>(Lcom/google/android/gms/internal/ads/p0;)V

    .line 31
    .line 32
    .line 33
    iput v6, v7, Lcom/google/android/gms/internal/ads/K;->G:I

    .line 34
    .line 35
    new-instance p1, Lcom/google/android/gms/internal/ads/p0;

    .line 36
    .line 37
    invoke-direct {p1, v7}, Lcom/google/android/gms/internal/ads/p0;-><init>(Lcom/google/android/gms/internal/ads/K;)V

    .line 38
    .line 39
    .line 40
    iput-object p1, p2, Lcom/google/android/gms/internal/ads/Om;->H:Ljava/lang/Object;

    .line 41
    .line 42
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/TN;->A:Lcom/google/android/gms/internal/ads/yM;

    .line 43
    .line 44
    iput-object p1, p2, Lcom/google/android/gms/internal/ads/Om;->I:Ljava/lang/Object;

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    return-void

    .line 55
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    if-nez v5, :cond_3

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/ads/yM;

    .line 62
    .line 63
    new-instance p1, Lcom/google/android/gms/internal/ads/tM;

    .line 64
    .line 65
    new-instance v0, Lcom/google/android/gms/internal/ads/AM;

    .line 66
    .line 67
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/tM;-><init>(Lcom/google/android/gms/internal/ads/AM;)V

    .line 71
    .line 72
    .line 73
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/yM;-><init>(Lcom/google/android/gms/internal/ads/tM;)V

    .line 74
    .line 75
    .line 76
    :goto_2
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/TN;->A:Lcom/google/android/gms/internal/ads/yM;

    .line 77
    .line 78
    iput-object v1, p2, Lcom/google/android/gms/internal/ads/Om;->I:Ljava/lang/Object;

    .line 79
    .line 80
    return-void
.end method

.method public final declared-synchronized k()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput v0, p0, Lcom/google/android/gms/internal/ads/TN;->q:I

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/TN;->a:Lcom/google/android/gms/internal/ads/QN;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/QN;->b:Lcom/google/android/gms/internal/ads/PN;

    .line 8
    .line 9
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/QN;->c:Lcom/google/android/gms/internal/ads/PN;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    monitor-exit p0

    .line 15
    throw v0
.end method

.method public final declared-synchronized l()J
    .locals 2

    .line 1
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/TN;->t:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized m()Lcom/google/android/gms/internal/ads/p0;
    .locals 1

    .line 1
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/TN;->w:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/TN;->x:Lcom/google/android/gms/internal/ads/p0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final n()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/TN;->a:Lcom/google/android/gms/internal/ads/QN;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/TN;->n:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    const-wide/16 v1, -0x1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/TN;->i(I)J

    .line 13
    .line 14
    .line 15
    move-result-wide v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    monitor-exit p0

    .line 17
    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/QN;->a(J)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    monitor-exit p0

    .line 23
    throw v0
.end method

.method public final o(Z)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/TN;->a:Lcom/google/android/gms/internal/ads/QN;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/QN;->b:Lcom/google/android/gms/internal/ads/PN;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/PN;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Lcom/google/android/gms/internal/ads/zO;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, -0x1

    .line 11
    if-eqz v2, :cond_3

    .line 12
    .line 13
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/QN;->f:Lcom/google/android/gms/internal/ads/CO;

    .line 14
    .line 15
    monitor-enter v2

    .line 16
    move-object v5, v1

    .line 17
    :cond_0
    :goto_0
    if-eqz v5, :cond_2

    .line 18
    .line 19
    :try_start_0
    iget-object v6, v2, Lcom/google/android/gms/internal/ads/CO;->d:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v6, [Lcom/google/android/gms/internal/ads/zO;

    .line 22
    .line 23
    iget v7, v2, Lcom/google/android/gms/internal/ads/CO;->c:I

    .line 24
    .line 25
    add-int/lit8 v8, v7, 0x1

    .line 26
    .line 27
    iput v8, v2, Lcom/google/android/gms/internal/ads/CO;->c:I

    .line 28
    .line 29
    iget-object v8, v5, Lcom/google/android/gms/internal/ads/PN;->c:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v8, Lcom/google/android/gms/internal/ads/zO;

    .line 32
    .line 33
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    aput-object v8, v6, v7

    .line 37
    .line 38
    iget v6, v2, Lcom/google/android/gms/internal/ads/CO;->b:I

    .line 39
    .line 40
    add-int/2addr v6, v4

    .line 41
    iput v6, v2, Lcom/google/android/gms/internal/ads/CO;->b:I

    .line 42
    .line 43
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/PN;->d:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v5, Lcom/google/android/gms/internal/ads/PN;

    .line 46
    .line 47
    if-eqz v5, :cond_1

    .line 48
    .line 49
    iget-object v6, v5, Lcom/google/android/gms/internal/ads/PN;->c:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v6, Lcom/google/android/gms/internal/ads/zO;

    .line 52
    .line 53
    if-nez v6, :cond_0

    .line 54
    .line 55
    :cond_1
    move-object v5, v3

    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception p1

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    monitor-exit v2

    .line 63
    iput-object v3, v1, Lcom/google/android/gms/internal/ads/PN;->c:Ljava/lang/Object;

    .line 64
    .line 65
    iput-object v3, v1, Lcom/google/android/gms/internal/ads/PN;->d:Ljava/lang/Object;

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :goto_1
    monitor-exit v2

    .line 69
    throw p1

    .line 70
    :cond_3
    :goto_2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/QN;->b:Lcom/google/android/gms/internal/ads/PN;

    .line 71
    .line 72
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/PN;->c:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v2, Lcom/google/android/gms/internal/ads/zO;

    .line 75
    .line 76
    const/4 v5, 0x0

    .line 77
    const/4 v6, 0x1

    .line 78
    if-nez v2, :cond_4

    .line 79
    .line 80
    const/4 v2, 0x1

    .line 81
    goto :goto_3

    .line 82
    :cond_4
    const/4 v2, 0x0

    .line 83
    :goto_3
    invoke-static {v2}, Lo3/r;->M(Z)V

    .line 84
    .line 85
    .line 86
    const-wide/16 v7, 0x0

    .line 87
    .line 88
    iput-wide v7, v1, Lcom/google/android/gms/internal/ads/PN;->a:J

    .line 89
    .line 90
    const-wide/32 v9, 0x10000

    .line 91
    .line 92
    .line 93
    iput-wide v9, v1, Lcom/google/android/gms/internal/ads/PN;->b:J

    .line 94
    .line 95
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/QN;->b:Lcom/google/android/gms/internal/ads/PN;

    .line 96
    .line 97
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/QN;->c:Lcom/google/android/gms/internal/ads/PN;

    .line 98
    .line 99
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/QN;->d:Lcom/google/android/gms/internal/ads/PN;

    .line 100
    .line 101
    iput-wide v7, v0, Lcom/google/android/gms/internal/ads/QN;->e:J

    .line 102
    .line 103
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/QN;->f:Lcom/google/android/gms/internal/ads/CO;

    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/CO;->N()V

    .line 106
    .line 107
    .line 108
    iput v5, p0, Lcom/google/android/gms/internal/ads/TN;->n:I

    .line 109
    .line 110
    iput v5, p0, Lcom/google/android/gms/internal/ads/TN;->o:I

    .line 111
    .line 112
    iput v5, p0, Lcom/google/android/gms/internal/ads/TN;->p:I

    .line 113
    .line 114
    iput v5, p0, Lcom/google/android/gms/internal/ads/TN;->q:I

    .line 115
    .line 116
    iput-boolean v6, p0, Lcom/google/android/gms/internal/ads/TN;->v:Z

    .line 117
    .line 118
    const-wide/high16 v0, -0x8000000000000000L

    .line 119
    .line 120
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/TN;->r:J

    .line 121
    .line 122
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/TN;->s:J

    .line 123
    .line 124
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/TN;->t:J

    .line 125
    .line 126
    iput-boolean v5, p0, Lcom/google/android/gms/internal/ads/TN;->u:Z

    .line 127
    .line 128
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/TN;->c:Lcom/google/android/gms/internal/ads/YN;

    .line 129
    .line 130
    :goto_4
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/YN;->b:Landroid/util/SparseArray;

    .line 131
    .line 132
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    if-ge v5, v2, :cond_5

    .line 137
    .line 138
    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/YN;->c:Lcom/google/android/gms/internal/ads/km;

    .line 143
    .line 144
    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/km;->zza(Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    add-int/lit8 v5, v5, 0x1

    .line 148
    .line 149
    goto :goto_4

    .line 150
    :cond_5
    iput v4, v0, Lcom/google/android/gms/internal/ads/YN;->a:I

    .line 151
    .line 152
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 153
    .line 154
    .line 155
    if-eqz p1, :cond_6

    .line 156
    .line 157
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/TN;->x:Lcom/google/android/gms/internal/ads/p0;

    .line 158
    .line 159
    iput-boolean v6, p0, Lcom/google/android/gms/internal/ads/TN;->w:Z

    .line 160
    .line 161
    iput-boolean v6, p0, Lcom/google/android/gms/internal/ads/TN;->y:Z

    .line 162
    .line 163
    :cond_6
    return-void
.end method

.method public final declared-synchronized p(I)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    if-ltz p1, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/TN;->q:I

    .line 6
    .line 7
    add-int/2addr v1, p1

    .line 8
    iget v2, p0, Lcom/google/android/gms/internal/ads/TN;->n:I

    .line 9
    .line 10
    if-gt v1, v2, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    invoke-static {v0}, Lo3/r;->J(Z)V

    .line 17
    .line 18
    .line 19
    iget v0, p0, Lcom/google/android/gms/internal/ads/TN;->q:I

    .line 20
    .line 21
    add-int/2addr v0, p1

    .line 22
    iput v0, p0, Lcom/google/android/gms/internal/ads/TN;->q:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :goto_1
    monitor-exit p0

    .line 27
    throw p1
.end method

.method public final declared-synchronized q(Z)Z
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/TN;->q:I

    .line 3
    .line 4
    iget v1, p0, Lcom/google/android/gms/internal/ads/TN;->n:I

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-nez v1, :cond_4

    .line 14
    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/TN;->u:Z

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/TN;->x:Lcom/google/android/gms/internal/ads/p0;

    .line 22
    .line 23
    if-eqz p1, :cond_3

    .line 24
    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/TN;->f:Lcom/google/android/gms/internal/ads/p0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    if-eq p1, v0, :cond_2

    .line 28
    .line 29
    :cond_1
    const/4 v2, 0x1

    .line 30
    goto :goto_1

    .line 31
    :cond_2
    monitor-exit p0

    .line 32
    return v2

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto :goto_3

    .line 35
    :cond_3
    :goto_1
    monitor-exit p0

    .line 36
    return v2

    .line 37
    :cond_4
    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/TN;->c:Lcom/google/android/gms/internal/ads/YN;

    .line 38
    .line 39
    iget v1, p0, Lcom/google/android/gms/internal/ads/TN;->o:I

    .line 40
    .line 41
    add-int/2addr v1, v0

    .line 42
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/YN;->a(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Lcom/google/android/gms/internal/ads/RN;

    .line 47
    .line 48
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/RN;->a:Lcom/google/android/gms/internal/ads/p0;

    .line 49
    .line 50
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/TN;->f:Lcom/google/android/gms/internal/ads/p0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    .line 52
    if-eq p1, v0, :cond_5

    .line 53
    .line 54
    monitor-exit p0

    .line 55
    return v3

    .line 56
    :cond_5
    :try_start_2
    iget p1, p0, Lcom/google/android/gms/internal/ads/TN;->q:I

    .line 57
    .line 58
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/TN;->h(I)I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/TN;->A:Lcom/google/android/gms/internal/ads/yM;

    .line 63
    .line 64
    if-eqz v0, :cond_6

    .line 65
    .line 66
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/TN;->k:[I

    .line 67
    .line 68
    aget p1, v0, p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    .line 70
    const/high16 v0, 0x40000000    # 2.0f

    .line 71
    .line 72
    and-int/2addr p1, v0

    .line 73
    goto :goto_2

    .line 74
    :cond_6
    const/4 v2, 0x1

    .line 75
    :goto_2
    monitor-exit p0

    .line 76
    return v2

    .line 77
    :goto_3
    monitor-exit p0

    .line 78
    throw p1
.end method

.method public final declared-synchronized r(JZ)Z
    .locals 10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/TN;->k()V

    .line 3
    .line 4
    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/ads/TN;->q:I

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/TN;->h(I)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iget v1, p0, Lcom/google/android/gms/internal/ads/TN;->q:I

    .line 12
    .line 13
    iget v3, p0, Lcom/google/android/gms/internal/ads/TN;->n:I

    .line 14
    .line 15
    const/4 v7, 0x0

    .line 16
    const/4 v8, 0x1

    .line 17
    if-eq v1, v3, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    :goto_0
    if-eqz v1, :cond_8

    .line 23
    .line 24
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/TN;->l:[J

    .line 25
    .line 26
    aget-wide v4, v1, v2

    .line 27
    .line 28
    cmp-long v1, p1, v4

    .line 29
    .line 30
    if-ltz v1, :cond_8

    .line 31
    .line 32
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/TN;->t:J

    .line 33
    .line 34
    cmp-long v1, p1, v4

    .line 35
    .line 36
    if-lez v1, :cond_1

    .line 37
    .line 38
    if-eqz p3, :cond_8

    .line 39
    .line 40
    const/4 p3, 0x1

    .line 41
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/TN;->y:Z

    .line 42
    .line 43
    const/4 v9, -0x1

    .line 44
    if-eqz v1, :cond_6

    .line 45
    .line 46
    sub-int/2addr v3, v0

    .line 47
    const/4 v0, 0x0

    .line 48
    :goto_1
    if-ge v0, v3, :cond_4

    .line 49
    .line 50
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/TN;->l:[J

    .line 51
    .line 52
    aget-wide v4, v1, v2

    .line 53
    .line 54
    cmp-long v1, v4, p1

    .line 55
    .line 56
    if-gez v1, :cond_3

    .line 57
    .line 58
    add-int/lit8 v2, v2, 0x1

    .line 59
    .line 60
    iget v1, p0, Lcom/google/android/gms/internal/ads/TN;->g:I

    .line 61
    .line 62
    if-ne v2, v1, :cond_2

    .line 63
    .line 64
    const/4 v2, 0x0

    .line 65
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :catchall_0
    move-exception p1

    .line 69
    goto :goto_4

    .line 70
    :cond_3
    move v3, v0

    .line 71
    goto :goto_2

    .line 72
    :cond_4
    if-eqz p3, :cond_5

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_5
    const/4 v3, -0x1

    .line 76
    goto :goto_2

    .line 77
    :cond_6
    sub-int/2addr v3, v0

    .line 78
    const/4 v6, 0x1

    .line 79
    move-object v1, p0

    .line 80
    move-wide v4, p1

    .line 81
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/TN;->g(IIJZ)I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    :goto_2
    if-ne v3, v9, :cond_7

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_7
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/TN;->r:J

    .line 89
    .line 90
    iget p1, p0, Lcom/google/android/gms/internal/ads/TN;->q:I

    .line 91
    .line 92
    add-int/2addr p1, v3

    .line 93
    iput p1, p0, Lcom/google/android/gms/internal/ads/TN;->q:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .line 95
    monitor-exit p0

    .line 96
    return v8

    .line 97
    :cond_8
    :goto_3
    monitor-exit p0

    .line 98
    return v7

    .line 99
    :goto_4
    monitor-exit p0

    .line 100
    throw p1
.end method
