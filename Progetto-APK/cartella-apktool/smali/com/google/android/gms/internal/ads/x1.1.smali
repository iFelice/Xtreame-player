.class public final Lcom/google/android/gms/internal/ads/x1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/L;


# static fields
.field public static final J:[B

.field public static final K:Lcom/google/android/gms/internal/ads/p0;


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:Z

.field public E:Z

.field public F:Lcom/google/android/gms/internal/ads/N;

.field public G:[Lcom/google/android/gms/internal/ads/e0;

.field public H:[Lcom/google/android/gms/internal/ads/e0;

.field public I:Z

.field public final a:Lcom/google/android/gms/internal/ads/V1;

.field public final b:I

.field public final c:Ljava/util/List;

.field public final d:Landroid/util/SparseArray;

.field public final e:Lcom/google/android/gms/internal/ads/jr;

.field public final f:Lcom/google/android/gms/internal/ads/jr;

.field public final g:Lcom/google/android/gms/internal/ads/jr;

.field public final h:[B

.field public final i:Lcom/google/android/gms/internal/ads/jr;

.field public final j:Lcom/google/android/gms/internal/ads/x;

.field public final k:Lcom/google/android/gms/internal/ads/jr;

.field public final l:Ljava/util/ArrayDeque;

.field public final m:Ljava/util/ArrayDeque;

.field public final n:Lcom/google/android/gms/internal/ads/W2;

.field public o:Lcom/google/android/gms/internal/ads/PA;

.field public p:I

.field public q:I

.field public r:J

.field public s:I

.field public t:Lcom/google/android/gms/internal/ads/jr;

.field public u:J

.field public v:I

.field public w:J

.field public x:J

.field public y:J

.field public z:Lcom/google/android/gms/internal/ads/w1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/google/android/gms/internal/ads/x1;->J:[B

    .line 9
    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/K;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/K;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v1, "application/x-emsg"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/K;->f(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Lcom/google/android/gms/internal/ads/p0;

    .line 21
    .line 22
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/p0;-><init>(Lcom/google/android/gms/internal/ads/K;)V

    .line 23
    .line 24
    .line 25
    sput-object v1, Lcom/google/android/gms/internal/ads/x1;->K:Lcom/google/android/gms/internal/ads/p0;

    .line 26
    .line 27
    return-void

    .line 28
    nop

    .line 29
    :array_0
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/kH;ILcom/google/android/gms/internal/ads/PA;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/x1;->a:Lcom/google/android/gms/internal/ads/V1;

    .line 5
    .line 6
    iput p2, p0, Lcom/google/android/gms/internal/ads/x1;->b:I

    .line 7
    .line 8
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/x1;->c:Ljava/util/List;

    .line 13
    .line 14
    new-instance p1, Lcom/google/android/gms/internal/ads/x;

    .line 15
    .line 16
    const/4 p2, 0x3

    .line 17
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/x;-><init>(I)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/x1;->j:Lcom/google/android/gms/internal/ads/x;

    .line 21
    .line 22
    new-instance p1, Lcom/google/android/gms/internal/ads/jr;

    .line 23
    .line 24
    const/16 p2, 0x10

    .line 25
    .line 26
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/jr;-><init>(I)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/x1;->k:Lcom/google/android/gms/internal/ads/jr;

    .line 30
    .line 31
    new-instance p1, Lcom/google/android/gms/internal/ads/jr;

    .line 32
    .line 33
    sget-object p3, Lcom/google/android/gms/internal/ads/sy;->a:[B

    .line 34
    .line 35
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/jr;-><init>([B)V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/x1;->e:Lcom/google/android/gms/internal/ads/jr;

    .line 39
    .line 40
    new-instance p1, Lcom/google/android/gms/internal/ads/jr;

    .line 41
    .line 42
    const/4 p3, 0x5

    .line 43
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/jr;-><init>(I)V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/x1;->f:Lcom/google/android/gms/internal/ads/jr;

    .line 47
    .line 48
    new-instance p1, Lcom/google/android/gms/internal/ads/jr;

    .line 49
    .line 50
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/jr;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/x1;->g:Lcom/google/android/gms/internal/ads/jr;

    .line 54
    .line 55
    new-array p1, p2, [B

    .line 56
    .line 57
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/x1;->h:[B

    .line 58
    .line 59
    new-instance p2, Lcom/google/android/gms/internal/ads/jr;

    .line 60
    .line 61
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/jr;-><init>([B)V

    .line 62
    .line 63
    .line 64
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/x1;->i:Lcom/google/android/gms/internal/ads/jr;

    .line 65
    .line 66
    new-instance p1, Ljava/util/ArrayDeque;

    .line 67
    .line 68
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/x1;->l:Ljava/util/ArrayDeque;

    .line 72
    .line 73
    new-instance p1, Ljava/util/ArrayDeque;

    .line 74
    .line 75
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    .line 76
    .line 77
    .line 78
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/x1;->m:Ljava/util/ArrayDeque;

    .line 79
    .line 80
    new-instance p1, Landroid/util/SparseArray;

    .line 81
    .line 82
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 83
    .line 84
    .line 85
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/x1;->d:Landroid/util/SparseArray;

    .line 86
    .line 87
    sget-object p1, Lcom/google/android/gms/internal/ads/uA;->H:Lcom/google/android/gms/internal/ads/sA;

    .line 88
    .line 89
    sget-object p1, Lcom/google/android/gms/internal/ads/PA;->K:Lcom/google/android/gms/internal/ads/PA;

    .line 90
    .line 91
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/x1;->o:Lcom/google/android/gms/internal/ads/PA;

    .line 92
    .line 93
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/x1;->x:J

    .line 99
    .line 100
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/x1;->w:J

    .line 101
    .line 102
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/x1;->y:J

    .line 103
    .line 104
    sget-object p1, Lcom/google/android/gms/internal/ads/N;->n:LF2/G;

    .line 105
    .line 106
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/x1;->F:Lcom/google/android/gms/internal/ads/N;

    .line 107
    .line 108
    const/4 p1, 0x0

    .line 109
    new-array p2, p1, [Lcom/google/android/gms/internal/ads/e0;

    .line 110
    .line 111
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/x1;->G:[Lcom/google/android/gms/internal/ads/e0;

    .line 112
    .line 113
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/e0;

    .line 114
    .line 115
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/x1;->H:[Lcom/google/android/gms/internal/ads/e0;

    .line 116
    .line 117
    new-instance p1, Lcom/google/android/gms/internal/ads/W2;

    .line 118
    .line 119
    new-instance p2, Lcom/google/android/gms/internal/ads/K4;

    .line 120
    .line 121
    const/4 p3, 0x6

    .line 122
    invoke-direct {p2, p0, p3}, Lcom/google/android/gms/internal/ads/K4;-><init>(Ljava/lang/Object;I)V

    .line 123
    .line 124
    .line 125
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/W2;-><init>(Lcom/google/android/gms/internal/ads/K4;)V

    .line 126
    .line 127
    .line 128
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/x1;->n:Lcom/google/android/gms/internal/ads/W2;

    .line 129
    .line 130
    return-void
.end method

.method public static a(Ljava/util/ArrayList;)Lcom/google/android/gms/internal/ads/mO;
    .locals 17

    .line 1
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    :goto_0
    if-ge v3, v0, :cond_a

    .line 9
    .line 10
    move-object/from16 v5, p0

    .line 11
    .line 12
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v6

    .line 16
    check-cast v6, Lcom/google/android/gms/internal/ads/p1;

    .line 17
    .line 18
    iget v7, v6, Lq0/e;->b:I

    .line 19
    .line 20
    const v8, 0x70737368    # 3.013775E29f

    .line 21
    .line 22
    .line 23
    if-ne v7, v8, :cond_9

    .line 24
    .line 25
    if-nez v4, :cond_0

    .line 26
    .line 27
    new-instance v4, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/p1;->c:Lcom/google/android/gms/internal/ads/jr;

    .line 33
    .line 34
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 35
    .line 36
    new-instance v7, Lcom/google/android/gms/internal/ads/jr;

    .line 37
    .line 38
    invoke-direct {v7, v6}, Lcom/google/android/gms/internal/ads/jr;-><init>([B)V

    .line 39
    .line 40
    .line 41
    iget v9, v7, Lcom/google/android/gms/internal/ads/jr;->c:I

    .line 42
    .line 43
    const/16 v10, 0x20

    .line 44
    .line 45
    if-ge v9, v10, :cond_1

    .line 46
    .line 47
    :goto_1
    move/from16 v16, v3

    .line 48
    .line 49
    :goto_2
    const/4 v2, 0x0

    .line 50
    goto/16 :goto_4

    .line 51
    .line 52
    :cond_1
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 56
    .line 57
    .line 58
    move-result v9

    .line 59
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 60
    .line 61
    .line 62
    move-result v10

    .line 63
    const-string v11, "PsshAtomUtil"

    .line 64
    .line 65
    if-eq v10, v9, :cond_2

    .line 66
    .line 67
    new-instance v7, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v8, "Advertised atom size ("

    .line 70
    .line 71
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v8, ") does not match buffer size: "

    .line 78
    .line 79
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    invoke-static {v11, v7}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_2
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 94
    .line 95
    .line 96
    move-result v9

    .line 97
    if-eq v9, v8, :cond_3

    .line 98
    .line 99
    const-string v7, "Atom type is not pssh: "

    .line 100
    .line 101
    invoke-static {v7, v9, v11}, La/r;->p(Ljava/lang/String;ILjava/lang/String;)V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_3
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 106
    .line 107
    .line 108
    move-result v8

    .line 109
    invoke-static {v8}, Lq0/e;->c(I)I

    .line 110
    .line 111
    .line 112
    move-result v8

    .line 113
    const/4 v9, 0x1

    .line 114
    if-le v8, v9, :cond_4

    .line 115
    .line 116
    const-string v7, "Unsupported pssh version: "

    .line 117
    .line 118
    invoke-static {v7, v8, v11}, La/r;->p(Ljava/lang/String;ILjava/lang/String;)V

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_4
    new-instance v10, Ljava/util/UUID;

    .line 123
    .line 124
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/jr;->D()J

    .line 125
    .line 126
    .line 127
    move-result-wide v12

    .line 128
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/jr;->D()J

    .line 129
    .line 130
    .line 131
    move-result-wide v14

    .line 132
    invoke-direct {v10, v12, v13, v14, v15}, Ljava/util/UUID;-><init>(JJ)V

    .line 133
    .line 134
    .line 135
    if-ne v8, v9, :cond_5

    .line 136
    .line 137
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/jr;->z()I

    .line 138
    .line 139
    .line 140
    move-result v8

    .line 141
    new-array v9, v8, [Ljava/util/UUID;

    .line 142
    .line 143
    const/4 v12, 0x0

    .line 144
    :goto_3
    if-ge v12, v8, :cond_5

    .line 145
    .line 146
    new-instance v13, Ljava/util/UUID;

    .line 147
    .line 148
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/jr;->D()J

    .line 149
    .line 150
    .line 151
    move-result-wide v14

    .line 152
    move/from16 v16, v3

    .line 153
    .line 154
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/jr;->D()J

    .line 155
    .line 156
    .line 157
    move-result-wide v2

    .line 158
    invoke-direct {v13, v14, v15, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    .line 159
    .line 160
    .line 161
    aput-object v13, v9, v12

    .line 162
    .line 163
    add-int/lit8 v12, v12, 0x1

    .line 164
    .line 165
    move/from16 v3, v16

    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_5
    move/from16 v16, v3

    .line 169
    .line 170
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/jr;->z()I

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 175
    .line 176
    .line 177
    move-result v3

    .line 178
    if-eq v2, v3, :cond_6

    .line 179
    .line 180
    new-instance v7, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    const-string v8, "Atom data size ("

    .line 183
    .line 184
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    const-string v2, ") does not match the bytes left: "

    .line 191
    .line 192
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    invoke-static {v11, v2}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    goto/16 :goto_2

    .line 206
    .line 207
    :cond_6
    new-array v3, v2, [B

    .line 208
    .line 209
    invoke-virtual {v7, v1, v3, v2}, Lcom/google/android/gms/internal/ads/jr;->f(I[BI)V

    .line 210
    .line 211
    .line 212
    new-instance v2, Lcom/google/android/gms/internal/ads/K4;

    .line 213
    .line 214
    invoke-direct {v2, v10}, Lcom/google/android/gms/internal/ads/K4;-><init>(Ljava/util/UUID;)V

    .line 215
    .line 216
    .line 217
    :goto_4
    if-nez v2, :cond_7

    .line 218
    .line 219
    const/4 v2, 0x0

    .line 220
    goto :goto_5

    .line 221
    :cond_7
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/K4;->H:Ljava/lang/Object;

    .line 222
    .line 223
    check-cast v2, Ljava/util/UUID;

    .line 224
    .line 225
    :goto_5
    if-nez v2, :cond_8

    .line 226
    .line 227
    const-string v2, "FragmentedMp4Extractor"

    .line 228
    .line 229
    const-string v3, "Skipped pssh atom (failed to extract uuid)"

    .line 230
    .line 231
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    goto :goto_6

    .line 235
    :cond_8
    new-instance v3, Lcom/google/android/gms/internal/ads/cO;

    .line 236
    .line 237
    const-string v7, "video/mp4"

    .line 238
    .line 239
    invoke-direct {v3, v2, v7, v6}, Lcom/google/android/gms/internal/ads/cO;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    goto :goto_6

    .line 246
    :cond_9
    move/from16 v16, v3

    .line 247
    .line 248
    :goto_6
    add-int/lit8 v3, v16, 0x1

    .line 249
    .line 250
    goto/16 :goto_0

    .line 251
    .line 252
    :cond_a
    const/4 v0, 0x0

    .line 253
    if-nez v4, :cond_b

    .line 254
    .line 255
    return-object v0

    .line 256
    :cond_b
    new-instance v2, Lcom/google/android/gms/internal/ads/mO;

    .line 257
    .line 258
    new-array v3, v1, [Lcom/google/android/gms/internal/ads/cO;

    .line 259
    .line 260
    invoke-interface {v4, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v3

    .line 264
    check-cast v3, [Lcom/google/android/gms/internal/ads/cO;

    .line 265
    .line 266
    invoke-direct {v2, v0, v1, v3}, Lcom/google/android/gms/internal/ads/mO;-><init>(Ljava/lang/String;Z[Lcom/google/android/gms/internal/ads/cO;)V

    .line 267
    .line 268
    .line 269
    return-object v2
.end method

.method public static g(Lcom/google/android/gms/internal/ads/jr;ILcom/google/android/gms/internal/ads/F1;)V
    .locals 4

    .line 1
    add-int/lit8 p1, p1, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    and-int/lit8 v0, p1, 0x1

    .line 11
    .line 12
    if-nez v0, :cond_3

    .line 13
    .line 14
    and-int/lit8 p1, p1, 0x2

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/jr;->z()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    iget-object p0, p2, Lcom/google/android/gms/internal/ads/F1;->l:[Z

    .line 30
    .line 31
    iget p1, p2, Lcom/google/android/gms/internal/ads/F1;->e:I

    .line 32
    .line 33
    invoke-static {p0, v1, p1, v1}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    iget v3, p2, Lcom/google/android/gms/internal/ads/F1;->e:I

    .line 38
    .line 39
    if-ne v2, v3, :cond_2

    .line 40
    .line 41
    iget-object v3, p2, Lcom/google/android/gms/internal/ads/F1;->l:[Z

    .line 42
    .line 43
    invoke-static {v3, v1, v2, p1}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/F1;->n:Lcom/google/android/gms/internal/ads/jr;

    .line 51
    .line 52
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/jr;->g(I)V

    .line 53
    .line 54
    .line 55
    iput-boolean v0, p2, Lcom/google/android/gms/internal/ads/F1;->k:Z

    .line 56
    .line 57
    iput-boolean v0, p2, Lcom/google/android/gms/internal/ads/F1;->o:Z

    .line 58
    .line 59
    iget-object p1, v2, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 60
    .line 61
    iget v0, v2, Lcom/google/android/gms/internal/ads/jr;->c:I

    .line 62
    .line 63
    invoke-virtual {p0, v1, p1, v0}, Lcom/google/android/gms/internal/ads/jr;->f(I[BI)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 67
    .line 68
    .line 69
    iput-boolean v1, p2, Lcom/google/android/gms/internal/ads/F1;->o:Z

    .line 70
    .line 71
    return-void

    .line 72
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string p1, "Senc sample count "

    .line 75
    .line 76
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string p1, " is different from fragment sample count"

    .line 83
    .line 84
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    const/4 p1, 0x0

    .line 95
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    throw p0

    .line 100
    :cond_3
    const-string p0, "Overriding TrackEncryptionBox parameters is unsupported."

    .line 101
    .line 102
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/Ka;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/Ka;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    throw p0
.end method


# virtual methods
.method public final b()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/x1;->p:I

    .line 3
    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/x1;->s:I

    .line 5
    .line 6
    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/ads/M;LW0/w;)I
    .locals 35

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    :goto_0
    iget v2, v1, Lcom/google/android/gms/internal/ads/x1;->p:I

    .line 6
    .line 7
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/x1;->l:Ljava/util/ArrayDeque;

    .line 8
    .line 9
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/x1;->d:Landroid/util/SparseArray;

    .line 10
    .line 11
    const v6, 0x73696478

    .line 12
    .line 13
    .line 14
    const/4 v9, 0x1

    .line 15
    iget-object v10, v1, Lcom/google/android/gms/internal/ads/x1;->n:Lcom/google/android/gms/internal/ads/W2;

    .line 16
    .line 17
    const/4 v11, 0x2

    .line 18
    const/4 v13, 0x0

    .line 19
    if-eqz v2, :cond_38

    .line 20
    .line 21
    iget-object v14, v1, Lcom/google/android/gms/internal/ads/x1;->m:Ljava/util/ArrayDeque;

    .line 22
    .line 23
    const-string v15, "FragmentedMp4Extractor"

    .line 24
    .line 25
    if-eq v2, v9, :cond_2a

    .line 26
    .line 27
    const-wide v16, 0x7fffffffffffffffL

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    const/4 v3, 0x3

    .line 33
    if-eq v2, v11, :cond_25

    .line 34
    .line 35
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/x1;->z:Lcom/google/android/gms/internal/ads/w1;

    .line 36
    .line 37
    if-nez v2, :cond_9

    .line 38
    .line 39
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    move-object v6, v13

    .line 44
    const/4 v7, 0x0

    .line 45
    :goto_1
    if-ge v7, v2, :cond_4

    .line 46
    .line 47
    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v19

    .line 51
    move-object/from16 v11, v19

    .line 52
    .line 53
    check-cast v11, Lcom/google/android/gms/internal/ads/w1;

    .line 54
    .line 55
    iget-boolean v5, v11, Lcom/google/android/gms/internal/ads/w1;->l:Z

    .line 56
    .line 57
    if-nez v5, :cond_0

    .line 58
    .line 59
    iget v8, v11, Lcom/google/android/gms/internal/ads/w1;->f:I

    .line 60
    .line 61
    iget-object v12, v11, Lcom/google/android/gms/internal/ads/w1;->d:Lcom/google/android/gms/internal/ads/G1;

    .line 62
    .line 63
    iget v12, v12, Lcom/google/android/gms/internal/ads/G1;->b:I

    .line 64
    .line 65
    if-eq v8, v12, :cond_3

    .line 66
    .line 67
    :cond_0
    iget-object v8, v11, Lcom/google/android/gms/internal/ads/w1;->b:Lcom/google/android/gms/internal/ads/F1;

    .line 68
    .line 69
    if-eqz v5, :cond_1

    .line 70
    .line 71
    iget v12, v11, Lcom/google/android/gms/internal/ads/w1;->h:I

    .line 72
    .line 73
    iget v9, v8, Lcom/google/android/gms/internal/ads/F1;->d:I

    .line 74
    .line 75
    if-ne v12, v9, :cond_1

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_1
    if-nez v5, :cond_2

    .line 79
    .line 80
    iget-object v5, v11, Lcom/google/android/gms/internal/ads/w1;->d:Lcom/google/android/gms/internal/ads/G1;

    .line 81
    .line 82
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/G1;->c:[J

    .line 83
    .line 84
    iget v8, v11, Lcom/google/android/gms/internal/ads/w1;->f:I

    .line 85
    .line 86
    aget-wide v8, v5, v8

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_2
    iget-object v5, v8, Lcom/google/android/gms/internal/ads/F1;->f:[J

    .line 90
    .line 91
    iget v8, v11, Lcom/google/android/gms/internal/ads/w1;->h:I

    .line 92
    .line 93
    aget-wide v8, v5, v8

    .line 94
    .line 95
    :goto_2
    cmp-long v5, v8, v16

    .line 96
    .line 97
    if-gez v5, :cond_3

    .line 98
    .line 99
    move-wide/from16 v16, v8

    .line 100
    .line 101
    move-object v6, v11

    .line 102
    :cond_3
    :goto_3
    add-int/lit8 v7, v7, 0x1

    .line 103
    .line 104
    const/4 v9, 0x1

    .line 105
    const/4 v11, 0x2

    .line 106
    goto :goto_1

    .line 107
    :cond_4
    if-nez v6, :cond_6

    .line 108
    .line 109
    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/x1;->u:J

    .line 110
    .line 111
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzf()J

    .line 112
    .line 113
    .line 114
    move-result-wide v4

    .line 115
    sub-long/2addr v2, v4

    .line 116
    long-to-int v3, v2

    .line 117
    if-ltz v3, :cond_5

    .line 118
    .line 119
    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/M;->q(I)V

    .line 120
    .line 121
    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/x1;->b()V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_5
    const-string v0, "Offset to end of mdat was negative."

    .line 127
    .line 128
    invoke-static {v0, v13}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    throw v0

    .line 133
    :cond_6
    iget-boolean v2, v6, Lcom/google/android/gms/internal/ads/w1;->l:Z

    .line 134
    .line 135
    if-nez v2, :cond_7

    .line 136
    .line 137
    iget-object v2, v6, Lcom/google/android/gms/internal/ads/w1;->d:Lcom/google/android/gms/internal/ads/G1;

    .line 138
    .line 139
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/G1;->c:[J

    .line 140
    .line 141
    iget v4, v6, Lcom/google/android/gms/internal/ads/w1;->f:I

    .line 142
    .line 143
    aget-wide v4, v2, v4

    .line 144
    .line 145
    goto :goto_4

    .line 146
    :cond_7
    iget-object v2, v6, Lcom/google/android/gms/internal/ads/w1;->b:Lcom/google/android/gms/internal/ads/F1;

    .line 147
    .line 148
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/F1;->f:[J

    .line 149
    .line 150
    iget v4, v6, Lcom/google/android/gms/internal/ads/w1;->h:I

    .line 151
    .line 152
    aget-wide v4, v2, v4

    .line 153
    .line 154
    :goto_4
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzf()J

    .line 155
    .line 156
    .line 157
    move-result-wide v7

    .line 158
    sub-long/2addr v4, v7

    .line 159
    long-to-int v2, v4

    .line 160
    if-gez v2, :cond_8

    .line 161
    .line 162
    const-string v2, "Ignoring negative offset to sample data."

    .line 163
    .line 164
    invoke-static {v15, v2}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    const/4 v2, 0x0

    .line 168
    :cond_8
    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/M;->q(I)V

    .line 169
    .line 170
    .line 171
    iput-object v6, v1, Lcom/google/android/gms/internal/ads/x1;->z:Lcom/google/android/gms/internal/ads/w1;

    .line 172
    .line 173
    move-object v2, v6

    .line 174
    :cond_9
    iget v4, v1, Lcom/google/android/gms/internal/ads/x1;->p:I

    .line 175
    .line 176
    const/4 v5, 0x6

    .line 177
    iget-object v6, v2, Lcom/google/android/gms/internal/ads/w1;->b:Lcom/google/android/gms/internal/ads/F1;

    .line 178
    .line 179
    if-ne v4, v3, :cond_12

    .line 180
    .line 181
    iget-boolean v4, v2, Lcom/google/android/gms/internal/ads/w1;->l:Z

    .line 182
    .line 183
    if-nez v4, :cond_a

    .line 184
    .line 185
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/w1;->d:Lcom/google/android/gms/internal/ads/G1;

    .line 186
    .line 187
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/G1;->d:[I

    .line 188
    .line 189
    iget v7, v2, Lcom/google/android/gms/internal/ads/w1;->f:I

    .line 190
    .line 191
    aget v4, v4, v7

    .line 192
    .line 193
    goto :goto_5

    .line 194
    :cond_a
    iget-object v4, v6, Lcom/google/android/gms/internal/ads/F1;->h:[I

    .line 195
    .line 196
    iget v7, v2, Lcom/google/android/gms/internal/ads/w1;->f:I

    .line 197
    .line 198
    aget v4, v4, v7

    .line 199
    .line 200
    :goto_5
    iput v4, v1, Lcom/google/android/gms/internal/ads/x1;->A:I

    .line 201
    .line 202
    const/4 v7, 0x1

    .line 203
    iput-boolean v7, v1, Lcom/google/android/gms/internal/ads/x1;->D:Z

    .line 204
    .line 205
    iget v7, v2, Lcom/google/android/gms/internal/ads/w1;->f:I

    .line 206
    .line 207
    iget v8, v2, Lcom/google/android/gms/internal/ads/w1;->i:I

    .line 208
    .line 209
    if-ge v7, v8, :cond_f

    .line 210
    .line 211
    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/ads/M;->q(I)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/w1;->c()Lcom/google/android/gms/internal/ads/E1;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    if-nez v0, :cond_b

    .line 219
    .line 220
    goto :goto_6

    .line 221
    :cond_b
    iget-object v4, v6, Lcom/google/android/gms/internal/ads/F1;->n:Lcom/google/android/gms/internal/ads/jr;

    .line 222
    .line 223
    iget v0, v0, Lcom/google/android/gms/internal/ads/E1;->d:I

    .line 224
    .line 225
    if-eqz v0, :cond_c

    .line 226
    .line 227
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 228
    .line 229
    .line 230
    :cond_c
    iget v0, v2, Lcom/google/android/gms/internal/ads/w1;->f:I

    .line 231
    .line 232
    iget-boolean v7, v6, Lcom/google/android/gms/internal/ads/F1;->k:Z

    .line 233
    .line 234
    if-eqz v7, :cond_d

    .line 235
    .line 236
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/F1;->l:[Z

    .line 237
    .line 238
    aget-boolean v0, v6, v0

    .line 239
    .line 240
    if-eqz v0, :cond_d

    .line 241
    .line 242
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/jr;->A()I

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    mul-int/lit8 v0, v0, 0x6

    .line 247
    .line 248
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 249
    .line 250
    .line 251
    :cond_d
    :goto_6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/w1;->e()Z

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    if-nez v0, :cond_e

    .line 256
    .line 257
    iput-object v13, v1, Lcom/google/android/gms/internal/ads/x1;->z:Lcom/google/android/gms/internal/ads/w1;

    .line 258
    .line 259
    :cond_e
    :goto_7
    const/4 v0, 0x3

    .line 260
    goto/16 :goto_15

    .line 261
    .line 262
    :cond_f
    iget-object v7, v2, Lcom/google/android/gms/internal/ads/w1;->d:Lcom/google/android/gms/internal/ads/G1;

    .line 263
    .line 264
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/G1;->a:Lcom/google/android/gms/internal/ads/D1;

    .line 265
    .line 266
    iget v7, v7, Lcom/google/android/gms/internal/ads/D1;->g:I

    .line 267
    .line 268
    const/4 v8, 0x1

    .line 269
    if-ne v7, v8, :cond_10

    .line 270
    .line 271
    add-int/lit8 v4, v4, -0x8

    .line 272
    .line 273
    iput v4, v1, Lcom/google/android/gms/internal/ads/x1;->A:I

    .line 274
    .line 275
    const/16 v4, 0x8

    .line 276
    .line 277
    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/ads/M;->q(I)V

    .line 278
    .line 279
    .line 280
    :cond_10
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/w1;->d:Lcom/google/android/gms/internal/ads/G1;

    .line 281
    .line 282
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/G1;->a:Lcom/google/android/gms/internal/ads/D1;

    .line 283
    .line 284
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/D1;->f:Lcom/google/android/gms/internal/ads/p0;

    .line 285
    .line 286
    const-string v7, "audio/ac4"

    .line 287
    .line 288
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/p0;->m:Ljava/lang/String;

    .line 289
    .line 290
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    move-result v4

    .line 294
    if-eqz v4, :cond_11

    .line 295
    .line 296
    iget v4, v1, Lcom/google/android/gms/internal/ads/x1;->A:I

    .line 297
    .line 298
    const/4 v7, 0x7

    .line 299
    invoke-virtual {v2, v4, v7}, Lcom/google/android/gms/internal/ads/w1;->b(II)I

    .line 300
    .line 301
    .line 302
    move-result v4

    .line 303
    iput v4, v1, Lcom/google/android/gms/internal/ads/x1;->B:I

    .line 304
    .line 305
    iget v4, v1, Lcom/google/android/gms/internal/ads/x1;->A:I

    .line 306
    .line 307
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/x1;->i:Lcom/google/android/gms/internal/ads/jr;

    .line 308
    .line 309
    invoke-static {v4, v8}, Lcom/google/android/gms/internal/ads/nH;->f(ILcom/google/android/gms/internal/ads/jr;)V

    .line 310
    .line 311
    .line 312
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/w1;->a:Lcom/google/android/gms/internal/ads/e0;

    .line 313
    .line 314
    invoke-interface {v4, v7, v8}, Lcom/google/android/gms/internal/ads/e0;->f(ILcom/google/android/gms/internal/ads/jr;)V

    .line 315
    .line 316
    .line 317
    iget v4, v1, Lcom/google/android/gms/internal/ads/x1;->B:I

    .line 318
    .line 319
    add-int/2addr v4, v7

    .line 320
    iput v4, v1, Lcom/google/android/gms/internal/ads/x1;->B:I

    .line 321
    .line 322
    const/4 v7, 0x0

    .line 323
    goto :goto_8

    .line 324
    :cond_11
    iget v4, v1, Lcom/google/android/gms/internal/ads/x1;->A:I

    .line 325
    .line 326
    const/4 v7, 0x0

    .line 327
    invoke-virtual {v2, v4, v7}, Lcom/google/android/gms/internal/ads/w1;->b(II)I

    .line 328
    .line 329
    .line 330
    move-result v4

    .line 331
    iput v4, v1, Lcom/google/android/gms/internal/ads/x1;->B:I

    .line 332
    .line 333
    :goto_8
    iget v8, v1, Lcom/google/android/gms/internal/ads/x1;->A:I

    .line 334
    .line 335
    add-int/2addr v8, v4

    .line 336
    iput v8, v1, Lcom/google/android/gms/internal/ads/x1;->A:I

    .line 337
    .line 338
    const/4 v4, 0x4

    .line 339
    iput v4, v1, Lcom/google/android/gms/internal/ads/x1;->p:I

    .line 340
    .line 341
    iput v7, v1, Lcom/google/android/gms/internal/ads/x1;->C:I

    .line 342
    .line 343
    :cond_12
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/w1;->d:Lcom/google/android/gms/internal/ads/G1;

    .line 344
    .line 345
    iget-object v7, v4, Lcom/google/android/gms/internal/ads/G1;->a:Lcom/google/android/gms/internal/ads/D1;

    .line 346
    .line 347
    iget-boolean v8, v2, Lcom/google/android/gms/internal/ads/w1;->l:Z

    .line 348
    .line 349
    if-nez v8, :cond_13

    .line 350
    .line 351
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/G1;->f:[J

    .line 352
    .line 353
    iget v6, v2, Lcom/google/android/gms/internal/ads/w1;->f:I

    .line 354
    .line 355
    aget-wide v8, v4, v6

    .line 356
    .line 357
    goto :goto_9

    .line 358
    :cond_13
    iget v4, v2, Lcom/google/android/gms/internal/ads/w1;->f:I

    .line 359
    .line 360
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/F1;->i:[J

    .line 361
    .line 362
    aget-wide v8, v6, v4

    .line 363
    .line 364
    :goto_9
    iget v4, v7, Lcom/google/android/gms/internal/ads/D1;->j:I

    .line 365
    .line 366
    iget-object v6, v2, Lcom/google/android/gms/internal/ads/w1;->a:Lcom/google/android/gms/internal/ads/e0;

    .line 367
    .line 368
    if-nez v4, :cond_14

    .line 369
    .line 370
    :goto_a
    iget v4, v1, Lcom/google/android/gms/internal/ads/x1;->B:I

    .line 371
    .line 372
    iget v5, v1, Lcom/google/android/gms/internal/ads/x1;->A:I

    .line 373
    .line 374
    if-ge v4, v5, :cond_20

    .line 375
    .line 376
    sub-int/2addr v5, v4

    .line 377
    const/4 v11, 0x0

    .line 378
    invoke-interface {v6, v0, v5, v11}, Lcom/google/android/gms/internal/ads/e0;->e(Lcom/google/android/gms/internal/ads/HL;IZ)I

    .line 379
    .line 380
    .line 381
    move-result v4

    .line 382
    iget v5, v1, Lcom/google/android/gms/internal/ads/x1;->B:I

    .line 383
    .line 384
    add-int/2addr v5, v4

    .line 385
    iput v5, v1, Lcom/google/android/gms/internal/ads/x1;->B:I

    .line 386
    .line 387
    goto :goto_a

    .line 388
    :cond_14
    const/4 v11, 0x0

    .line 389
    iget-object v12, v1, Lcom/google/android/gms/internal/ads/x1;->f:Lcom/google/android/gms/internal/ads/jr;

    .line 390
    .line 391
    iget-object v15, v12, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 392
    .line 393
    aput-byte v11, v15, v11

    .line 394
    .line 395
    const/16 v16, 0x1

    .line 396
    .line 397
    aput-byte v11, v15, v16

    .line 398
    .line 399
    const/16 v16, 0x2

    .line 400
    .line 401
    aput-byte v11, v15, v16

    .line 402
    .line 403
    add-int/lit8 v11, v4, 0x1

    .line 404
    .line 405
    const/16 v16, 0x4

    .line 406
    .line 407
    rsub-int/lit8 v4, v4, 0x4

    .line 408
    .line 409
    :goto_b
    iget v3, v1, Lcom/google/android/gms/internal/ads/x1;->B:I

    .line 410
    .line 411
    iget v13, v1, Lcom/google/android/gms/internal/ads/x1;->A:I

    .line 412
    .line 413
    if-ge v3, v13, :cond_20

    .line 414
    .line 415
    iget v3, v1, Lcom/google/android/gms/internal/ads/x1;->C:I

    .line 416
    .line 417
    const-string v13, "video/hevc"

    .line 418
    .line 419
    iget-object v5, v7, Lcom/google/android/gms/internal/ads/D1;->f:Lcom/google/android/gms/internal/ads/p0;

    .line 420
    .line 421
    if-nez v3, :cond_1b

    .line 422
    .line 423
    invoke-interface {v0, v4, v15, v11}, Lcom/google/android/gms/internal/ads/M;->h(I[BI)V

    .line 424
    .line 425
    .line 426
    const/4 v3, 0x0

    .line 427
    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 431
    .line 432
    .line 433
    move-result v17

    .line 434
    if-lez v17, :cond_1a

    .line 435
    .line 436
    add-int/lit8 v3, v17, -0x1

    .line 437
    .line 438
    iput v3, v1, Lcom/google/android/gms/internal/ads/x1;->C:I

    .line 439
    .line 440
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/x1;->e:Lcom/google/android/gms/internal/ads/jr;

    .line 441
    .line 442
    move-object/from16 v17, v7

    .line 443
    .line 444
    const/4 v7, 0x0

    .line 445
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 446
    .line 447
    .line 448
    const/4 v7, 0x4

    .line 449
    invoke-interface {v6, v7, v3}, Lcom/google/android/gms/internal/ads/e0;->f(ILcom/google/android/gms/internal/ads/jr;)V

    .line 450
    .line 451
    .line 452
    const/4 v3, 0x1

    .line 453
    invoke-interface {v6, v3, v12}, Lcom/google/android/gms/internal/ads/e0;->f(ILcom/google/android/gms/internal/ads/jr;)V

    .line 454
    .line 455
    .line 456
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/x1;->H:[Lcom/google/android/gms/internal/ads/e0;

    .line 457
    .line 458
    array-length v3, v3

    .line 459
    const-string v7, "video/avc"

    .line 460
    .line 461
    if-lez v3, :cond_18

    .line 462
    .line 463
    iget-object v3, v5, Lcom/google/android/gms/internal/ads/p0;->m:Ljava/lang/String;

    .line 464
    .line 465
    const/4 v5, 0x4

    .line 466
    aget-byte v20, v15, v5

    .line 467
    .line 468
    sget-object v5, Lcom/google/android/gms/internal/ads/sy;->a:[B

    .line 469
    .line 470
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 471
    .line 472
    .line 473
    move-result v5

    .line 474
    if-eqz v5, :cond_16

    .line 475
    .line 476
    and-int/lit8 v5, v20, 0x1f

    .line 477
    .line 478
    move/from16 v22, v11

    .line 479
    .line 480
    const/4 v11, 0x6

    .line 481
    if-eq v5, v11, :cond_15

    .line 482
    .line 483
    goto :goto_d

    .line 484
    :cond_15
    :goto_c
    const/4 v3, 0x1

    .line 485
    goto :goto_f

    .line 486
    :cond_16
    move/from16 v22, v11

    .line 487
    .line 488
    const/4 v11, 0x6

    .line 489
    :goto_d
    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 490
    .line 491
    .line 492
    move-result v3

    .line 493
    if-eqz v3, :cond_17

    .line 494
    .line 495
    and-int/lit8 v3, v20, 0x7e

    .line 496
    .line 497
    const/4 v5, 0x1

    .line 498
    shr-int/2addr v3, v5

    .line 499
    const/16 v5, 0x27

    .line 500
    .line 501
    if-ne v3, v5, :cond_17

    .line 502
    .line 503
    goto :goto_c

    .line 504
    :cond_17
    :goto_e
    const/4 v3, 0x0

    .line 505
    goto :goto_f

    .line 506
    :cond_18
    move/from16 v22, v11

    .line 507
    .line 508
    const/4 v11, 0x6

    .line 509
    goto :goto_e

    .line 510
    :goto_f
    iput-boolean v3, v1, Lcom/google/android/gms/internal/ads/x1;->E:Z

    .line 511
    .line 512
    iget v3, v1, Lcom/google/android/gms/internal/ads/x1;->B:I

    .line 513
    .line 514
    add-int/lit8 v3, v3, 0x5

    .line 515
    .line 516
    iput v3, v1, Lcom/google/android/gms/internal/ads/x1;->B:I

    .line 517
    .line 518
    iget v3, v1, Lcom/google/android/gms/internal/ads/x1;->A:I

    .line 519
    .line 520
    add-int/2addr v3, v4

    .line 521
    iput v3, v1, Lcom/google/android/gms/internal/ads/x1;->A:I

    .line 522
    .line 523
    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/x1;->D:Z

    .line 524
    .line 525
    if-nez v3, :cond_19

    .line 526
    .line 527
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/w1;->d:Lcom/google/android/gms/internal/ads/G1;

    .line 528
    .line 529
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/G1;->a:Lcom/google/android/gms/internal/ads/D1;

    .line 530
    .line 531
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/D1;->f:Lcom/google/android/gms/internal/ads/p0;

    .line 532
    .line 533
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/p0;->m:Ljava/lang/String;

    .line 534
    .line 535
    invoke-static {v3, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 536
    .line 537
    .line 538
    move-result v3

    .line 539
    if-eqz v3, :cond_19

    .line 540
    .line 541
    const/4 v3, 0x4

    .line 542
    aget-byte v5, v15, v3

    .line 543
    .line 544
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/sy;->h(B)Z

    .line 545
    .line 546
    .line 547
    move-result v3

    .line 548
    if-eqz v3, :cond_19

    .line 549
    .line 550
    const/4 v3, 0x1

    .line 551
    iput-boolean v3, v1, Lcom/google/android/gms/internal/ads/x1;->D:Z

    .line 552
    .line 553
    :cond_19
    move-object/from16 v7, v17

    .line 554
    .line 555
    :goto_10
    move/from16 v11, v22

    .line 556
    .line 557
    const/4 v5, 0x6

    .line 558
    const/4 v13, 0x0

    .line 559
    goto/16 :goto_b

    .line 560
    .line 561
    :cond_1a
    const-string v0, "Invalid NAL length"

    .line 562
    .line 563
    const/4 v2, 0x0

    .line 564
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 565
    .line 566
    .line 567
    move-result-object v0

    .line 568
    throw v0

    .line 569
    :cond_1b
    move-object/from16 v17, v7

    .line 570
    .line 571
    move/from16 v22, v11

    .line 572
    .line 573
    const/4 v11, 0x6

    .line 574
    iget-boolean v7, v1, Lcom/google/android/gms/internal/ads/x1;->E:Z

    .line 575
    .line 576
    if-eqz v7, :cond_1f

    .line 577
    .line 578
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/x1;->g:Lcom/google/android/gms/internal/ads/jr;

    .line 579
    .line 580
    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/ads/jr;->g(I)V

    .line 581
    .line 582
    .line 583
    iget-object v3, v7, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 584
    .line 585
    iget v11, v1, Lcom/google/android/gms/internal/ads/x1;->C:I

    .line 586
    .line 587
    move/from16 v20, v4

    .line 588
    .line 589
    const/4 v4, 0x0

    .line 590
    invoke-interface {v0, v4, v3, v11}, Lcom/google/android/gms/internal/ads/M;->h(I[BI)V

    .line 591
    .line 592
    .line 593
    iget v3, v1, Lcom/google/android/gms/internal/ads/x1;->C:I

    .line 594
    .line 595
    invoke-interface {v6, v3, v7}, Lcom/google/android/gms/internal/ads/e0;->f(ILcom/google/android/gms/internal/ads/jr;)V

    .line 596
    .line 597
    .line 598
    iget v3, v1, Lcom/google/android/gms/internal/ads/x1;->C:I

    .line 599
    .line 600
    iget-object v4, v7, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 601
    .line 602
    iget v11, v7, Lcom/google/android/gms/internal/ads/jr;->c:I

    .line 603
    .line 604
    invoke-static {v4, v11}, Lcom/google/android/gms/internal/ads/sy;->b([BI)I

    .line 605
    .line 606
    .line 607
    move-result v4

    .line 608
    iget-object v11, v5, Lcom/google/android/gms/internal/ads/p0;->m:Ljava/lang/String;

    .line 609
    .line 610
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 611
    .line 612
    .line 613
    move-result v11

    .line 614
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 615
    .line 616
    .line 617
    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/jr;->i(I)V

    .line 618
    .line 619
    .line 620
    iget v4, v5, Lcom/google/android/gms/internal/ads/p0;->o:I

    .line 621
    .line 622
    const/4 v5, -0x1

    .line 623
    if-eq v4, v5, :cond_1d

    .line 624
    .line 625
    iget v5, v10, Lcom/google/android/gms/internal/ads/W2;->G:I

    .line 626
    .line 627
    if-eq v4, v5, :cond_1d

    .line 628
    .line 629
    if-ltz v4, :cond_1c

    .line 630
    .line 631
    const/4 v5, 0x1

    .line 632
    goto :goto_11

    .line 633
    :cond_1c
    const/4 v5, 0x0

    .line 634
    :goto_11
    invoke-static {v5}, Lo3/r;->M(Z)V

    .line 635
    .line 636
    .line 637
    iput v4, v10, Lcom/google/android/gms/internal/ads/W2;->G:I

    .line 638
    .line 639
    invoke-virtual {v10, v4}, Lcom/google/android/gms/internal/ads/W2;->d(I)V

    .line 640
    .line 641
    .line 642
    :cond_1d
    invoke-virtual {v10, v8, v9, v7}, Lcom/google/android/gms/internal/ads/W2;->c(JLcom/google/android/gms/internal/ads/jr;)V

    .line 643
    .line 644
    .line 645
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/w1;->a()I

    .line 646
    .line 647
    .line 648
    move-result v4

    .line 649
    and-int/lit8 v4, v4, 0x5

    .line 650
    .line 651
    if-eqz v4, :cond_1e

    .line 652
    .line 653
    const/4 v4, 0x0

    .line 654
    invoke-virtual {v10, v4}, Lcom/google/android/gms/internal/ads/W2;->d(I)V

    .line 655
    .line 656
    .line 657
    goto :goto_12

    .line 658
    :cond_1e
    const/4 v4, 0x0

    .line 659
    goto :goto_12

    .line 660
    :cond_1f
    move/from16 v20, v4

    .line 661
    .line 662
    const/4 v4, 0x0

    .line 663
    invoke-interface {v6, v0, v3, v4}, Lcom/google/android/gms/internal/ads/e0;->e(Lcom/google/android/gms/internal/ads/HL;IZ)I

    .line 664
    .line 665
    .line 666
    move-result v3

    .line 667
    :goto_12
    iget v4, v1, Lcom/google/android/gms/internal/ads/x1;->B:I

    .line 668
    .line 669
    add-int/2addr v4, v3

    .line 670
    iput v4, v1, Lcom/google/android/gms/internal/ads/x1;->B:I

    .line 671
    .line 672
    iget v4, v1, Lcom/google/android/gms/internal/ads/x1;->C:I

    .line 673
    .line 674
    sub-int/2addr v4, v3

    .line 675
    iput v4, v1, Lcom/google/android/gms/internal/ads/x1;->C:I

    .line 676
    .line 677
    move-object/from16 v7, v17

    .line 678
    .line 679
    move/from16 v4, v20

    .line 680
    .line 681
    goto :goto_10

    .line 682
    :cond_20
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/w1;->a()I

    .line 683
    .line 684
    .line 685
    move-result v27

    .line 686
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/w1;->c()Lcom/google/android/gms/internal/ads/E1;

    .line 687
    .line 688
    .line 689
    move-result-object v0

    .line 690
    if-eqz v0, :cond_21

    .line 691
    .line 692
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/E1;->c:Lcom/google/android/gms/internal/ads/d0;

    .line 693
    .line 694
    move-object/from16 v30, v0

    .line 695
    .line 696
    goto :goto_13

    .line 697
    :cond_21
    const/16 v30, 0x0

    .line 698
    .line 699
    :goto_13
    iget v0, v1, Lcom/google/android/gms/internal/ads/x1;->A:I

    .line 700
    .line 701
    const/16 v29, 0x0

    .line 702
    .line 703
    move-object/from16 v24, v6

    .line 704
    .line 705
    move-wide/from16 v25, v8

    .line 706
    .line 707
    move/from16 v28, v0

    .line 708
    .line 709
    invoke-interface/range {v24 .. v30}, Lcom/google/android/gms/internal/ads/e0;->b(JIIILcom/google/android/gms/internal/ads/d0;)V

    .line 710
    .line 711
    .line 712
    :cond_22
    invoke-virtual {v14}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 713
    .line 714
    .line 715
    move-result v0

    .line 716
    if-nez v0, :cond_24

    .line 717
    .line 718
    invoke-virtual {v14}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 719
    .line 720
    .line 721
    move-result-object v0

    .line 722
    check-cast v0, Lcom/google/android/gms/internal/ads/v1;

    .line 723
    .line 724
    iget v3, v1, Lcom/google/android/gms/internal/ads/x1;->v:I

    .line 725
    .line 726
    iget v4, v0, Lcom/google/android/gms/internal/ads/v1;->c:I

    .line 727
    .line 728
    sub-int/2addr v3, v4

    .line 729
    iput v3, v1, Lcom/google/android/gms/internal/ads/x1;->v:I

    .line 730
    .line 731
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/v1;->b:Z

    .line 732
    .line 733
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/v1;->a:J

    .line 734
    .line 735
    if-eqz v3, :cond_23

    .line 736
    .line 737
    add-long/2addr v4, v8

    .line 738
    :cond_23
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/x1;->G:[Lcom/google/android/gms/internal/ads/e0;

    .line 739
    .line 740
    array-length v6, v3

    .line 741
    const/4 v7, 0x0

    .line 742
    :goto_14
    if-ge v7, v6, :cond_22

    .line 743
    .line 744
    aget-object v22, v3, v7

    .line 745
    .line 746
    iget v10, v1, Lcom/google/android/gms/internal/ads/x1;->v:I

    .line 747
    .line 748
    const/16 v25, 0x1

    .line 749
    .line 750
    iget v11, v0, Lcom/google/android/gms/internal/ads/v1;->c:I

    .line 751
    .line 752
    const/16 v28, 0x0

    .line 753
    .line 754
    move-wide/from16 v23, v4

    .line 755
    .line 756
    move/from16 v26, v11

    .line 757
    .line 758
    move/from16 v27, v10

    .line 759
    .line 760
    invoke-interface/range {v22 .. v28}, Lcom/google/android/gms/internal/ads/e0;->b(JIIILcom/google/android/gms/internal/ads/d0;)V

    .line 761
    .line 762
    .line 763
    add-int/lit8 v7, v7, 0x1

    .line 764
    .line 765
    goto :goto_14

    .line 766
    :cond_24
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/w1;->e()Z

    .line 767
    .line 768
    .line 769
    move-result v0

    .line 770
    if-nez v0, :cond_e

    .line 771
    .line 772
    const/4 v0, 0x0

    .line 773
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/x1;->z:Lcom/google/android/gms/internal/ads/w1;

    .line 774
    .line 775
    goto/16 :goto_7

    .line 776
    .line 777
    :goto_15
    iput v0, v1, Lcom/google/android/gms/internal/ads/x1;->p:I

    .line 778
    .line 779
    const/4 v0, 0x0

    .line 780
    return v0

    .line 781
    :cond_25
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 782
    .line 783
    .line 784
    move-result v2

    .line 785
    const/4 v3, 0x0

    .line 786
    const/4 v5, 0x0

    .line 787
    :goto_16
    if-ge v3, v2, :cond_27

    .line 788
    .line 789
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 790
    .line 791
    .line 792
    move-result-object v6

    .line 793
    check-cast v6, Lcom/google/android/gms/internal/ads/w1;

    .line 794
    .line 795
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/w1;->b:Lcom/google/android/gms/internal/ads/F1;

    .line 796
    .line 797
    iget-boolean v7, v6, Lcom/google/android/gms/internal/ads/F1;->o:Z

    .line 798
    .line 799
    if-eqz v7, :cond_26

    .line 800
    .line 801
    iget-wide v6, v6, Lcom/google/android/gms/internal/ads/F1;->c:J

    .line 802
    .line 803
    cmp-long v8, v6, v16

    .line 804
    .line 805
    if-gez v8, :cond_26

    .line 806
    .line 807
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 808
    .line 809
    .line 810
    move-result-object v5

    .line 811
    check-cast v5, Lcom/google/android/gms/internal/ads/w1;

    .line 812
    .line 813
    move-wide/from16 v16, v6

    .line 814
    .line 815
    :cond_26
    add-int/lit8 v3, v3, 0x1

    .line 816
    .line 817
    goto :goto_16

    .line 818
    :cond_27
    if-nez v5, :cond_28

    .line 819
    .line 820
    const/4 v2, 0x3

    .line 821
    iput v2, v1, Lcom/google/android/gms/internal/ads/x1;->p:I

    .line 822
    .line 823
    goto/16 :goto_0

    .line 824
    .line 825
    :cond_28
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzf()J

    .line 826
    .line 827
    .line 828
    move-result-wide v2

    .line 829
    sub-long v2, v16, v2

    .line 830
    .line 831
    long-to-int v3, v2

    .line 832
    if-ltz v3, :cond_29

    .line 833
    .line 834
    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/M;->q(I)V

    .line 835
    .line 836
    .line 837
    iget-object v2, v5, Lcom/google/android/gms/internal/ads/w1;->b:Lcom/google/android/gms/internal/ads/F1;

    .line 838
    .line 839
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/F1;->n:Lcom/google/android/gms/internal/ads/jr;

    .line 840
    .line 841
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 842
    .line 843
    iget v3, v3, Lcom/google/android/gms/internal/ads/jr;->c:I

    .line 844
    .line 845
    const/4 v5, 0x0

    .line 846
    invoke-interface {v0, v5, v4, v3}, Lcom/google/android/gms/internal/ads/M;->h(I[BI)V

    .line 847
    .line 848
    .line 849
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/F1;->n:Lcom/google/android/gms/internal/ads/jr;

    .line 850
    .line 851
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 852
    .line 853
    .line 854
    iput-boolean v5, v2, Lcom/google/android/gms/internal/ads/F1;->o:Z

    .line 855
    .line 856
    goto/16 :goto_0

    .line 857
    .line 858
    :cond_29
    const-string v0, "Offset to encryption data was negative."

    .line 859
    .line 860
    const/4 v2, 0x0

    .line 861
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 862
    .line 863
    .line 864
    move-result-object v0

    .line 865
    throw v0

    .line 866
    :cond_2a
    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/x1;->r:J

    .line 867
    .line 868
    long-to-int v2, v4

    .line 869
    iget v4, v1, Lcom/google/android/gms/internal/ads/x1;->s:I

    .line 870
    .line 871
    sub-int/2addr v2, v4

    .line 872
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/x1;->t:Lcom/google/android/gms/internal/ads/jr;

    .line 873
    .line 874
    if-eqz v4, :cond_36

    .line 875
    .line 876
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 877
    .line 878
    const/16 v7, 0x8

    .line 879
    .line 880
    invoke-interface {v0, v7, v5, v2}, Lcom/google/android/gms/internal/ads/M;->h(I[BI)V

    .line 881
    .line 882
    .line 883
    new-instance v2, Lcom/google/android/gms/internal/ads/p1;

    .line 884
    .line 885
    iget v5, v1, Lcom/google/android/gms/internal/ads/x1;->q:I

    .line 886
    .line 887
    invoke-direct {v2, v5, v4}, Lcom/google/android/gms/internal/ads/p1;-><init>(ILcom/google/android/gms/internal/ads/jr;)V

    .line 888
    .line 889
    .line 890
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzf()J

    .line 891
    .line 892
    .line 893
    move-result-wide v7

    .line 894
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 895
    .line 896
    .line 897
    move-result v5

    .line 898
    if-nez v5, :cond_2b

    .line 899
    .line 900
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 901
    .line 902
    .line 903
    move-result-object v3

    .line 904
    check-cast v3, Lcom/google/android/gms/internal/ads/o1;

    .line 905
    .line 906
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/o1;->d:Ljava/util/ArrayList;

    .line 907
    .line 908
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 909
    .line 910
    .line 911
    goto/16 :goto_1f

    .line 912
    .line 913
    :cond_2b
    iget v2, v2, Lq0/e;->b:I

    .line 914
    .line 915
    if-ne v2, v6, :cond_2f

    .line 916
    .line 917
    const/16 v3, 0x8

    .line 918
    .line 919
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 920
    .line 921
    .line 922
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 923
    .line 924
    .line 925
    move-result v2

    .line 926
    invoke-static {v2}, Lq0/e;->c(I)I

    .line 927
    .line 928
    .line 929
    move-result v2

    .line 930
    const/4 v3, 0x4

    .line 931
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 932
    .line 933
    .line 934
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/jr;->E()J

    .line 935
    .line 936
    .line 937
    move-result-wide v5

    .line 938
    if-nez v2, :cond_2c

    .line 939
    .line 940
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/jr;->E()J

    .line 941
    .line 942
    .line 943
    move-result-wide v2

    .line 944
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/jr;->E()J

    .line 945
    .line 946
    .line 947
    move-result-wide v9

    .line 948
    :goto_17
    add-long/2addr v9, v7

    .line 949
    move-wide v7, v9

    .line 950
    goto :goto_18

    .line 951
    :cond_2c
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/jr;->F()J

    .line 952
    .line 953
    .line 954
    move-result-wide v2

    .line 955
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/jr;->F()J

    .line 956
    .line 957
    .line 958
    move-result-wide v9

    .line 959
    goto :goto_17

    .line 960
    :goto_18
    const-wide/32 v11, 0xf4240

    .line 961
    .line 962
    .line 963
    sget-object v15, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    .line 964
    .line 965
    move-wide v9, v2

    .line 966
    move-wide v13, v5

    .line 967
    invoke-static/range {v9 .. v15}, Lcom/google/android/gms/internal/ads/Et;->v(JJJLjava/math/RoundingMode;)J

    .line 968
    .line 969
    .line 970
    move-result-wide v16

    .line 971
    const/4 v9, 0x2

    .line 972
    invoke-virtual {v4, v9}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 973
    .line 974
    .line 975
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/jr;->A()I

    .line 976
    .line 977
    .line 978
    move-result v15

    .line 979
    new-array v13, v15, [I

    .line 980
    .line 981
    new-array v14, v15, [J

    .line 982
    .line 983
    new-array v11, v15, [J

    .line 984
    .line 985
    new-array v12, v15, [J

    .line 986
    .line 987
    move-wide/from16 v20, v16

    .line 988
    .line 989
    const/4 v9, 0x0

    .line 990
    :goto_19
    if-ge v9, v15, :cond_2e

    .line 991
    .line 992
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 993
    .line 994
    .line 995
    move-result v10

    .line 996
    const/high16 v18, -0x80000000

    .line 997
    .line 998
    and-int v18, v10, v18

    .line 999
    .line 1000
    if-nez v18, :cond_2d

    .line 1001
    .line 1002
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/jr;->E()J

    .line 1003
    .line 1004
    .line 1005
    move-result-wide v24

    .line 1006
    const v18, 0x7fffffff

    .line 1007
    .line 1008
    .line 1009
    and-int v10, v10, v18

    .line 1010
    .line 1011
    aput v10, v13, v9

    .line 1012
    .line 1013
    aput-wide v7, v14, v9

    .line 1014
    .line 1015
    aput-wide v20, v12, v9

    .line 1016
    .line 1017
    add-long v2, v2, v24

    .line 1018
    .line 1019
    const-wide/32 v20, 0xf4240

    .line 1020
    .line 1021
    .line 1022
    sget-object v18, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    .line 1023
    .line 1024
    move/from16 v22, v9

    .line 1025
    .line 1026
    move-wide v9, v2

    .line 1027
    move-wide/from16 v24, v2

    .line 1028
    .line 1029
    move-object v2, v11

    .line 1030
    move-object v3, v12

    .line 1031
    move-wide/from16 v11, v20

    .line 1032
    .line 1033
    move-object/from16 v31, v13

    .line 1034
    .line 1035
    move-object/from16 v32, v14

    .line 1036
    .line 1037
    move-wide v13, v5

    .line 1038
    move/from16 v20, v15

    .line 1039
    .line 1040
    move-object/from16 v15, v18

    .line 1041
    .line 1042
    invoke-static/range {v9 .. v15}, Lcom/google/android/gms/internal/ads/Et;->v(JJJLjava/math/RoundingMode;)J

    .line 1043
    .line 1044
    .line 1045
    move-result-wide v9

    .line 1046
    aget-wide v11, v3, v22

    .line 1047
    .line 1048
    sub-long v11, v9, v11

    .line 1049
    .line 1050
    aput-wide v11, v2, v22

    .line 1051
    .line 1052
    const/4 v11, 0x4

    .line 1053
    invoke-virtual {v4, v11}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 1054
    .line 1055
    .line 1056
    move-object/from16 v12, v31

    .line 1057
    .line 1058
    aget v13, v12, v22

    .line 1059
    .line 1060
    int-to-long v13, v13

    .line 1061
    add-long/2addr v7, v13

    .line 1062
    add-int/lit8 v13, v22, 0x1

    .line 1063
    .line 1064
    move-object v11, v2

    .line 1065
    move/from16 v15, v20

    .line 1066
    .line 1067
    move-object/from16 v14, v32

    .line 1068
    .line 1069
    move-wide/from16 v20, v9

    .line 1070
    .line 1071
    move v9, v13

    .line 1072
    move-object v13, v12

    .line 1073
    move-object v12, v3

    .line 1074
    move-wide/from16 v2, v24

    .line 1075
    .line 1076
    goto :goto_19

    .line 1077
    :cond_2d
    const-string v0, "Unhandled indirect reference"

    .line 1078
    .line 1079
    const/4 v2, 0x0

    .line 1080
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 1081
    .line 1082
    .line 1083
    move-result-object v0

    .line 1084
    throw v0

    .line 1085
    :cond_2e
    move-object v2, v11

    .line 1086
    move-object v3, v12

    .line 1087
    move-object v12, v13

    .line 1088
    move-object/from16 v32, v14

    .line 1089
    .line 1090
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1091
    .line 1092
    .line 1093
    move-result-object v4

    .line 1094
    new-instance v5, Lcom/google/android/gms/internal/ads/E;

    .line 1095
    .line 1096
    move-object/from16 v6, v32

    .line 1097
    .line 1098
    invoke-direct {v5, v12, v6, v2, v3}, Lcom/google/android/gms/internal/ads/E;-><init>([I[J[J[J)V

    .line 1099
    .line 1100
    .line 1101
    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 1102
    .line 1103
    .line 1104
    move-result-object v2

    .line 1105
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1106
    .line 1107
    check-cast v3, Ljava/lang/Long;

    .line 1108
    .line 1109
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 1110
    .line 1111
    .line 1112
    move-result-wide v3

    .line 1113
    iput-wide v3, v1, Lcom/google/android/gms/internal/ads/x1;->y:J

    .line 1114
    .line 1115
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/x1;->F:Lcom/google/android/gms/internal/ads/N;

    .line 1116
    .line 1117
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 1118
    .line 1119
    check-cast v2, Lcom/google/android/gms/internal/ads/Y;

    .line 1120
    .line 1121
    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/N;->g(Lcom/google/android/gms/internal/ads/Y;)V

    .line 1122
    .line 1123
    .line 1124
    const/4 v2, 0x1

    .line 1125
    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/x1;->I:Z

    .line 1126
    .line 1127
    goto/16 :goto_1f

    .line 1128
    .line 1129
    :cond_2f
    const v3, 0x656d7367

    .line 1130
    .line 1131
    .line 1132
    if-ne v2, v3, :cond_37

    .line 1133
    .line 1134
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/x1;->G:[Lcom/google/android/gms/internal/ads/e0;

    .line 1135
    .line 1136
    array-length v2, v2

    .line 1137
    if-eqz v2, :cond_37

    .line 1138
    .line 1139
    const/16 v2, 0x8

    .line 1140
    .line 1141
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 1142
    .line 1143
    .line 1144
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 1145
    .line 1146
    .line 1147
    move-result v2

    .line 1148
    invoke-static {v2}, Lq0/e;->c(I)I

    .line 1149
    .line 1150
    .line 1151
    move-result v2

    .line 1152
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 1153
    .line 1154
    .line 1155
    .line 1156
    .line 1157
    if-eqz v2, :cond_31

    .line 1158
    .line 1159
    const/4 v3, 0x1

    .line 1160
    if-eq v2, v3, :cond_30

    .line 1161
    .line 1162
    const-string v3, "Skipping unsupported emsg version: "

    .line 1163
    .line 1164
    invoke-static {v3, v2, v15}, La/r;->p(Ljava/lang/String;ILjava/lang/String;)V

    .line 1165
    .line 1166
    .line 1167
    goto/16 :goto_1f

    .line 1168
    .line 1169
    :cond_30
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/jr;->E()J

    .line 1170
    .line 1171
    .line 1172
    move-result-wide v2

    .line 1173
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/jr;->F()J

    .line 1174
    .line 1175
    .line 1176
    move-result-wide v7

    .line 1177
    sget-object v15, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    .line 1178
    .line 1179
    const-wide/32 v9, 0xf4240

    .line 1180
    .line 1181
    .line 1182
    move-wide v11, v2

    .line 1183
    move-object v13, v15

    .line 1184
    invoke-static/range {v7 .. v13}, Lcom/google/android/gms/internal/ads/Et;->v(JJJLjava/math/RoundingMode;)J

    .line 1185
    .line 1186
    .line 1187
    move-result-wide v16

    .line 1188
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/jr;->E()J

    .line 1189
    .line 1190
    .line 1191
    move-result-wide v7

    .line 1192
    const-wide/16 v9, 0x3e8

    .line 1193
    .line 1194
    invoke-static/range {v7 .. v13}, Lcom/google/android/gms/internal/ads/Et;->v(JJJLjava/math/RoundingMode;)J

    .line 1195
    .line 1196
    .line 1197
    move-result-wide v2

    .line 1198
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/jr;->E()J

    .line 1199
    .line 1200
    .line 1201
    move-result-wide v7

    .line 1202
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/jr;->H()Ljava/lang/String;

    .line 1203
    .line 1204
    .line 1205
    move-result-object v9

    .line 1206
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1207
    .line 1208
    .line 1209
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/jr;->H()Ljava/lang/String;

    .line 1210
    .line 1211
    .line 1212
    move-result-object v10

    .line 1213
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1214
    .line 1215
    .line 1216
    move-wide v11, v5

    .line 1217
    :goto_1a
    move-wide/from16 v33, v16

    .line 1218
    .line 1219
    goto :goto_1c

    .line 1220
    :cond_31
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/jr;->H()Ljava/lang/String;

    .line 1221
    .line 1222
    .line 1223
    move-result-object v9

    .line 1224
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1225
    .line 1226
    .line 1227
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/jr;->H()Ljava/lang/String;

    .line 1228
    .line 1229
    .line 1230
    move-result-object v10

    .line 1231
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1232
    .line 1233
    .line 1234
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/jr;->E()J

    .line 1235
    .line 1236
    .line 1237
    move-result-wide v2

    .line 1238
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/jr;->E()J

    .line 1239
    .line 1240
    .line 1241
    move-result-wide v24

    .line 1242
    sget-object v7, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    .line 1243
    .line 1244
    const-wide/32 v26, 0xf4240

    .line 1245
    .line 1246
    .line 1247
    move-wide/from16 v28, v2

    .line 1248
    .line 1249
    move-object/from16 v30, v7

    .line 1250
    .line 1251
    invoke-static/range {v24 .. v30}, Lcom/google/android/gms/internal/ads/Et;->v(JJJLjava/math/RoundingMode;)J

    .line 1252
    .line 1253
    .line 1254
    move-result-wide v11

    .line 1255
    move-object/from16 p2, v9

    .line 1256
    .line 1257
    iget-wide v8, v1, Lcom/google/android/gms/internal/ads/x1;->y:J

    .line 1258
    .line 1259
    cmp-long v13, v8, v5

    .line 1260
    .line 1261
    if-eqz v13, :cond_32

    .line 1262
    .line 1263
    add-long/2addr v8, v11

    .line 1264
    move-wide/from16 v16, v8

    .line 1265
    .line 1266
    goto :goto_1b

    .line 1267
    :cond_32
    move-wide/from16 v16, v5

    .line 1268
    .line 1269
    :goto_1b
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/jr;->E()J

    .line 1270
    .line 1271
    .line 1272
    move-result-wide v24

    .line 1273
    const-wide/16 v26, 0x3e8

    .line 1274
    .line 1275
    move-wide/from16 v28, v2

    .line 1276
    .line 1277
    move-object/from16 v30, v7

    .line 1278
    .line 1279
    invoke-static/range {v24 .. v30}, Lcom/google/android/gms/internal/ads/Et;->v(JJJLjava/math/RoundingMode;)J

    .line 1280
    .line 1281
    .line 1282
    move-result-wide v2

    .line 1283
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/jr;->E()J

    .line 1284
    .line 1285
    .line 1286
    move-result-wide v7

    .line 1287
    move-object/from16 v9, p2

    .line 1288
    .line 1289
    goto :goto_1a

    .line 1290
    :goto_1c
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 1291
    .line 1292
    .line 1293
    move-result v13

    .line 1294
    new-array v13, v13, [B

    .line 1295
    .line 1296
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 1297
    .line 1298
    .line 1299
    move-result v15

    .line 1300
    const/4 v5, 0x0

    .line 1301
    invoke-virtual {v4, v5, v13, v15}, Lcom/google/android/gms/internal/ads/jr;->f(I[BI)V

    .line 1302
    .line 1303
    .line 1304
    new-instance v4, Lcom/google/android/gms/internal/ads/F0;

    .line 1305
    .line 1306
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/x1;->j:Lcom/google/android/gms/internal/ads/x;

    .line 1307
    .line 1308
    new-instance v5, Lcom/google/android/gms/internal/ads/jr;

    .line 1309
    .line 1310
    iget-object v6, v4, Lcom/google/android/gms/internal/ads/x;->H:Ljava/lang/Object;

    .line 1311
    .line 1312
    check-cast v6, Ljava/io/ByteArrayOutputStream;

    .line 1313
    .line 1314
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1315
    .line 1316
    .line 1317
    :try_start_0
    iget-object v6, v4, Lcom/google/android/gms/internal/ads/x;->I:Ljava/lang/Object;

    .line 1318
    .line 1319
    check-cast v6, Ljava/io/DataOutputStream;

    .line 1320
    .line 1321
    invoke-virtual {v6, v9}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 1322
    .line 1323
    .line 1324
    const/4 v9, 0x0

    .line 1325
    invoke-virtual {v6, v9}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1326
    .line 1327
    .line 1328
    iget-object v6, v4, Lcom/google/android/gms/internal/ads/x;->I:Ljava/lang/Object;

    .line 1329
    .line 1330
    check-cast v6, Ljava/io/DataOutputStream;

    .line 1331
    .line 1332
    invoke-virtual {v6, v10}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 1333
    .line 1334
    .line 1335
    invoke-virtual {v6, v9}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1336
    .line 1337
    .line 1338
    iget-object v6, v4, Lcom/google/android/gms/internal/ads/x;->I:Ljava/lang/Object;

    .line 1339
    .line 1340
    check-cast v6, Ljava/io/DataOutputStream;

    .line 1341
    .line 1342
    invoke-virtual {v6, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1343
    .line 1344
    .line 1345
    iget-object v2, v4, Lcom/google/android/gms/internal/ads/x;->I:Ljava/lang/Object;

    .line 1346
    .line 1347
    check-cast v2, Ljava/io/DataOutputStream;

    .line 1348
    .line 1349
    invoke-virtual {v2, v7, v8}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1350
    .line 1351
    .line 1352
    iget-object v2, v4, Lcom/google/android/gms/internal/ads/x;->I:Ljava/lang/Object;

    .line 1353
    .line 1354
    check-cast v2, Ljava/io/DataOutputStream;

    .line 1355
    .line 1356
    invoke-virtual {v2, v13}, Ljava/io/OutputStream;->write([B)V

    .line 1357
    .line 1358
    .line 1359
    iget-object v2, v4, Lcom/google/android/gms/internal/ads/x;->I:Ljava/lang/Object;

    .line 1360
    .line 1361
    check-cast v2, Ljava/io/DataOutputStream;

    .line 1362
    .line 1363
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 1364
    .line 1365
    .line 1366
    iget-object v2, v4, Lcom/google/android/gms/internal/ads/x;->H:Ljava/lang/Object;

    .line 1367
    .line 1368
    check-cast v2, Ljava/io/ByteArrayOutputStream;

    .line 1369
    .line 1370
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 1371
    .line 1372
    .line 1373
    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1374
    invoke-direct {v5, v2}, Lcom/google/android/gms/internal/ads/jr;-><init>([B)V

    .line 1375
    .line 1376
    .line 1377
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 1378
    .line 1379
    .line 1380
    move-result v2

    .line 1381
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/x1;->G:[Lcom/google/android/gms/internal/ads/e0;

    .line 1382
    .line 1383
    array-length v4, v3

    .line 1384
    const/4 v6, 0x0

    .line 1385
    :goto_1d
    if-ge v6, v4, :cond_33

    .line 1386
    .line 1387
    aget-object v7, v3, v6

    .line 1388
    .line 1389
    const/4 v8, 0x0

    .line 1390
    invoke-virtual {v5, v8}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 1391
    .line 1392
    .line 1393
    invoke-interface {v7, v2, v5}, Lcom/google/android/gms/internal/ads/e0;->f(ILcom/google/android/gms/internal/ads/jr;)V

    .line 1394
    .line 1395
    .line 1396
    add-int/lit8 v6, v6, 0x1

    .line 1397
    .line 1398
    goto :goto_1d

    .line 1399
    :cond_33
    move-wide/from16 v8, v33

    .line 1400
    .line 1401
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 1402
    .line 1403
    .line 1404
    .line 1405
    .line 1406
    cmp-long v3, v8, v6

    .line 1407
    .line 1408
    if-nez v3, :cond_34

    .line 1409
    .line 1410
    new-instance v3, Lcom/google/android/gms/internal/ads/v1;

    .line 1411
    .line 1412
    const/4 v4, 0x1

    .line 1413
    invoke-direct {v3, v2, v11, v12, v4}, Lcom/google/android/gms/internal/ads/v1;-><init>(IJZ)V

    .line 1414
    .line 1415
    .line 1416
    invoke-virtual {v14, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 1417
    .line 1418
    .line 1419
    iget v3, v1, Lcom/google/android/gms/internal/ads/x1;->v:I

    .line 1420
    .line 1421
    add-int/2addr v3, v2

    .line 1422
    iput v3, v1, Lcom/google/android/gms/internal/ads/x1;->v:I

    .line 1423
    .line 1424
    goto :goto_1f

    .line 1425
    :cond_34
    invoke-virtual {v14}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 1426
    .line 1427
    .line 1428
    move-result v3

    .line 1429
    if-nez v3, :cond_35

    .line 1430
    .line 1431
    new-instance v3, Lcom/google/android/gms/internal/ads/v1;

    .line 1432
    .line 1433
    const/4 v4, 0x0

    .line 1434
    invoke-direct {v3, v2, v8, v9, v4}, Lcom/google/android/gms/internal/ads/v1;-><init>(IJZ)V

    .line 1435
    .line 1436
    .line 1437
    invoke-virtual {v14, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 1438
    .line 1439
    .line 1440
    iget v3, v1, Lcom/google/android/gms/internal/ads/x1;->v:I

    .line 1441
    .line 1442
    add-int/2addr v3, v2

    .line 1443
    iput v3, v1, Lcom/google/android/gms/internal/ads/x1;->v:I

    .line 1444
    .line 1445
    goto :goto_1f

    .line 1446
    :cond_35
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/x1;->G:[Lcom/google/android/gms/internal/ads/e0;

    .line 1447
    .line 1448
    array-length v4, v3

    .line 1449
    const/4 v5, 0x0

    .line 1450
    :goto_1e
    if-ge v5, v4, :cond_37

    .line 1451
    .line 1452
    aget-object v24, v3, v5

    .line 1453
    .line 1454
    const/16 v30, 0x0

    .line 1455
    .line 1456
    const/16 v27, 0x1

    .line 1457
    .line 1458
    const/16 v29, 0x0

    .line 1459
    .line 1460
    move-wide/from16 v25, v8

    .line 1461
    .line 1462
    move/from16 v28, v2

    .line 1463
    .line 1464
    invoke-interface/range {v24 .. v30}, Lcom/google/android/gms/internal/ads/e0;->b(JIIILcom/google/android/gms/internal/ads/d0;)V

    .line 1465
    .line 1466
    .line 1467
    add-int/lit8 v5, v5, 0x1

    .line 1468
    .line 1469
    goto :goto_1e

    .line 1470
    :catch_0
    move-exception v0

    .line 1471
    new-instance v2, Ljava/lang/RuntimeException;

    .line 1472
    .line 1473
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 1474
    .line 1475
    .line 1476
    throw v2

    .line 1477
    :cond_36
    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/M;->q(I)V

    .line 1478
    .line 1479
    .line 1480
    :cond_37
    :goto_1f
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzf()J

    .line 1481
    .line 1482
    .line 1483
    move-result-wide v2

    .line 1484
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/x1;->h(J)V

    .line 1485
    .line 1486
    .line 1487
    goto/16 :goto_0

    .line 1488
    .line 1489
    :cond_38
    iget v2, v1, Lcom/google/android/gms/internal/ads/x1;->s:I

    .line 1490
    .line 1491
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/x1;->k:Lcom/google/android/gms/internal/ads/jr;

    .line 1492
    .line 1493
    if-nez v2, :cond_3a

    .line 1494
    .line 1495
    iget-object v2, v5, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 1496
    .line 1497
    const/4 v7, 0x0

    .line 1498
    const/4 v8, 0x1

    .line 1499
    const/16 v9, 0x8

    .line 1500
    .line 1501
    invoke-interface {v0, v2, v7, v9, v8}, Lcom/google/android/gms/internal/ads/M;->b([BIIZ)Z

    .line 1502
    .line 1503
    .line 1504
    move-result v2

    .line 1505
    if-nez v2, :cond_39

    .line 1506
    .line 1507
    invoke-virtual {v10, v7}, Lcom/google/android/gms/internal/ads/W2;->d(I)V

    .line 1508
    .line 1509
    .line 1510
    const/4 v0, -0x1

    .line 1511
    return v0

    .line 1512
    :cond_39
    iput v9, v1, Lcom/google/android/gms/internal/ads/x1;->s:I

    .line 1513
    .line 1514
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 1515
    .line 1516
    .line 1517
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/jr;->E()J

    .line 1518
    .line 1519
    .line 1520
    move-result-wide v7

    .line 1521
    iput-wide v7, v1, Lcom/google/android/gms/internal/ads/x1;->r:J

    .line 1522
    .line 1523
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 1524
    .line 1525
    .line 1526
    move-result v2

    .line 1527
    iput v2, v1, Lcom/google/android/gms/internal/ads/x1;->q:I

    .line 1528
    .line 1529
    :cond_3a
    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/x1;->r:J

    .line 1530
    .line 1531
    const-wide/16 v9, 0x1

    .line 1532
    .line 1533
    cmp-long v2, v7, v9

    .line 1534
    .line 1535
    if-nez v2, :cond_3b

    .line 1536
    .line 1537
    iget-object v2, v5, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 1538
    .line 1539
    const/16 v7, 0x8

    .line 1540
    .line 1541
    invoke-interface {v0, v7, v2, v7}, Lcom/google/android/gms/internal/ads/M;->h(I[BI)V

    .line 1542
    .line 1543
    .line 1544
    iget v2, v1, Lcom/google/android/gms/internal/ads/x1;->s:I

    .line 1545
    .line 1546
    add-int/2addr v2, v7

    .line 1547
    iput v2, v1, Lcom/google/android/gms/internal/ads/x1;->s:I

    .line 1548
    .line 1549
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/jr;->F()J

    .line 1550
    .line 1551
    .line 1552
    move-result-wide v7

    .line 1553
    iput-wide v7, v1, Lcom/google/android/gms/internal/ads/x1;->r:J

    .line 1554
    .line 1555
    goto :goto_21

    .line 1556
    :cond_3b
    const-wide/16 v9, 0x0

    .line 1557
    .line 1558
    cmp-long v2, v7, v9

    .line 1559
    .line 1560
    if-nez v2, :cond_3e

    .line 1561
    .line 1562
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzd()J

    .line 1563
    .line 1564
    .line 1565
    move-result-wide v7

    .line 1566
    const-wide/16 v9, -0x1

    .line 1567
    .line 1568
    cmp-long v2, v7, v9

    .line 1569
    .line 1570
    if-nez v2, :cond_3d

    .line 1571
    .line 1572
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 1573
    .line 1574
    .line 1575
    move-result v2

    .line 1576
    if-nez v2, :cond_3c

    .line 1577
    .line 1578
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 1579
    .line 1580
    .line 1581
    move-result-object v2

    .line 1582
    check-cast v2, Lcom/google/android/gms/internal/ads/o1;

    .line 1583
    .line 1584
    iget-wide v7, v2, Lcom/google/android/gms/internal/ads/o1;->c:J

    .line 1585
    .line 1586
    goto :goto_20

    .line 1587
    :cond_3c
    move-wide v7, v9

    .line 1588
    :cond_3d
    :goto_20
    cmp-long v2, v7, v9

    .line 1589
    .line 1590
    if-eqz v2, :cond_3e

    .line 1591
    .line 1592
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzf()J

    .line 1593
    .line 1594
    .line 1595
    move-result-wide v9

    .line 1596
    sub-long/2addr v7, v9

    .line 1597
    iget v2, v1, Lcom/google/android/gms/internal/ads/x1;->s:I

    .line 1598
    .line 1599
    int-to-long v9, v2

    .line 1600
    add-long/2addr v7, v9

    .line 1601
    iput-wide v7, v1, Lcom/google/android/gms/internal/ads/x1;->r:J

    .line 1602
    .line 1603
    :cond_3e
    :goto_21
    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/x1;->r:J

    .line 1604
    .line 1605
    iget v2, v1, Lcom/google/android/gms/internal/ads/x1;->s:I

    .line 1606
    .line 1607
    int-to-long v9, v2

    .line 1608
    cmp-long v2, v7, v9

    .line 1609
    .line 1610
    if-ltz v2, :cond_4b

    .line 1611
    .line 1612
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzf()J

    .line 1613
    .line 1614
    .line 1615
    move-result-wide v7

    .line 1616
    sub-long/2addr v7, v9

    .line 1617
    iget v2, v1, Lcom/google/android/gms/internal/ads/x1;->q:I

    .line 1618
    .line 1619
    const v9, 0x6d646174

    .line 1620
    .line 1621
    .line 1622
    const v10, 0x6d6f6f66

    .line 1623
    .line 1624
    .line 1625
    if-eq v2, v10, :cond_3f

    .line 1626
    .line 1627
    if-ne v2, v9, :cond_40

    .line 1628
    .line 1629
    :cond_3f
    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/x1;->I:Z

    .line 1630
    .line 1631
    if-nez v2, :cond_40

    .line 1632
    .line 1633
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/x1;->F:Lcom/google/android/gms/internal/ads/N;

    .line 1634
    .line 1635
    new-instance v11, Lcom/google/android/gms/internal/ads/P;

    .line 1636
    .line 1637
    iget-wide v12, v1, Lcom/google/android/gms/internal/ads/x1;->x:J

    .line 1638
    .line 1639
    invoke-direct {v11, v12, v13, v7, v8}, Lcom/google/android/gms/internal/ads/P;-><init>(JJ)V

    .line 1640
    .line 1641
    .line 1642
    invoke-interface {v2, v11}, Lcom/google/android/gms/internal/ads/N;->g(Lcom/google/android/gms/internal/ads/Y;)V

    .line 1643
    .line 1644
    .line 1645
    const/4 v2, 0x1

    .line 1646
    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/x1;->I:Z

    .line 1647
    .line 1648
    :cond_40
    iget v2, v1, Lcom/google/android/gms/internal/ads/x1;->q:I

    .line 1649
    .line 1650
    if-ne v2, v10, :cond_41

    .line 1651
    .line 1652
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 1653
    .line 1654
    .line 1655
    move-result v2

    .line 1656
    const/4 v11, 0x0

    .line 1657
    :goto_22
    if-ge v11, v2, :cond_41

    .line 1658
    .line 1659
    invoke-virtual {v4, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 1660
    .line 1661
    .line 1662
    move-result-object v12

    .line 1663
    check-cast v12, Lcom/google/android/gms/internal/ads/w1;

    .line 1664
    .line 1665
    iget-object v12, v12, Lcom/google/android/gms/internal/ads/w1;->b:Lcom/google/android/gms/internal/ads/F1;

    .line 1666
    .line 1667
    iput-wide v7, v12, Lcom/google/android/gms/internal/ads/F1;->c:J

    .line 1668
    .line 1669
    iput-wide v7, v12, Lcom/google/android/gms/internal/ads/F1;->b:J

    .line 1670
    .line 1671
    add-int/lit8 v11, v11, 0x1

    .line 1672
    .line 1673
    goto :goto_22

    .line 1674
    :cond_41
    iget v2, v1, Lcom/google/android/gms/internal/ads/x1;->q:I

    .line 1675
    .line 1676
    if-ne v2, v9, :cond_42

    .line 1677
    .line 1678
    const/4 v4, 0x0

    .line 1679
    iput-object v4, v1, Lcom/google/android/gms/internal/ads/x1;->z:Lcom/google/android/gms/internal/ads/w1;

    .line 1680
    .line 1681
    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/x1;->r:J

    .line 1682
    .line 1683
    add-long/2addr v7, v2

    .line 1684
    iput-wide v7, v1, Lcom/google/android/gms/internal/ads/x1;->u:J

    .line 1685
    .line 1686
    const/4 v2, 0x2

    .line 1687
    iput v2, v1, Lcom/google/android/gms/internal/ads/x1;->p:I

    .line 1688
    .line 1689
    goto/16 :goto_0

    .line 1690
    .line 1691
    :cond_42
    const v4, 0x6d6f6f76

    .line 1692
    .line 1693
    .line 1694
    if-eq v2, v4, :cond_49

    .line 1695
    .line 1696
    const v4, 0x7472616b

    .line 1697
    .line 1698
    .line 1699
    if-eq v2, v4, :cond_49

    .line 1700
    .line 1701
    const v4, 0x6d646961

    .line 1702
    .line 1703
    .line 1704
    if-eq v2, v4, :cond_49

    .line 1705
    .line 1706
    const v4, 0x6d696e66

    .line 1707
    .line 1708
    .line 1709
    if-eq v2, v4, :cond_49

    .line 1710
    .line 1711
    const v4, 0x7374626c

    .line 1712
    .line 1713
    .line 1714
    if-eq v2, v4, :cond_49

    .line 1715
    .line 1716
    if-eq v2, v10, :cond_49

    .line 1717
    .line 1718
    const v4, 0x74726166

    .line 1719
    .line 1720
    .line 1721
    if-eq v2, v4, :cond_49

    .line 1722
    .line 1723
    const v4, 0x6d766578

    .line 1724
    .line 1725
    .line 1726
    if-eq v2, v4, :cond_49

    .line 1727
    .line 1728
    const v4, 0x65647473

    .line 1729
    .line 1730
    .line 1731
    if-ne v2, v4, :cond_43

    .line 1732
    .line 1733
    goto/16 :goto_24

    .line 1734
    .line 1735
    :cond_43
    const v3, 0x68646c72    # 4.3148E24f

    .line 1736
    .line 1737
    .line 1738
    const-wide/32 v7, 0x7fffffff

    .line 1739
    .line 1740
    .line 1741
    if-eq v2, v3, :cond_46

    .line 1742
    .line 1743
    const v3, 0x6d646864

    .line 1744
    .line 1745
    .line 1746
    if-eq v2, v3, :cond_46

    .line 1747
    .line 1748
    const v3, 0x6d766864

    .line 1749
    .line 1750
    .line 1751
    if-eq v2, v3, :cond_46

    .line 1752
    .line 1753
    if-eq v2, v6, :cond_46

    .line 1754
    .line 1755
    const v3, 0x73747364

    .line 1756
    .line 1757
    .line 1758
    if-eq v2, v3, :cond_46

    .line 1759
    .line 1760
    const v3, 0x73747473

    .line 1761
    .line 1762
    .line 1763
    if-eq v2, v3, :cond_46

    .line 1764
    .line 1765
    const v3, 0x63747473

    .line 1766
    .line 1767
    .line 1768
    if-eq v2, v3, :cond_46

    .line 1769
    .line 1770
    const v3, 0x73747363

    .line 1771
    .line 1772
    .line 1773
    if-eq v2, v3, :cond_46

    .line 1774
    .line 1775
    const v3, 0x7374737a

    .line 1776
    .line 1777
    .line 1778
    if-eq v2, v3, :cond_46

    .line 1779
    .line 1780
    const v3, 0x73747a32

    .line 1781
    .line 1782
    .line 1783
    if-eq v2, v3, :cond_46

    .line 1784
    .line 1785
    const v3, 0x7374636f

    .line 1786
    .line 1787
    .line 1788
    if-eq v2, v3, :cond_46

    .line 1789
    .line 1790
    const v3, 0x636f3634

    .line 1791
    .line 1792
    .line 1793
    if-eq v2, v3, :cond_46

    .line 1794
    .line 1795
    const v3, 0x73747373

    .line 1796
    .line 1797
    .line 1798
    if-eq v2, v3, :cond_46

    .line 1799
    .line 1800
    const v3, 0x74666474

    .line 1801
    .line 1802
    .line 1803
    if-eq v2, v3, :cond_46

    .line 1804
    .line 1805
    const v3, 0x74666864

    .line 1806
    .line 1807
    .line 1808
    if-eq v2, v3, :cond_46

    .line 1809
    .line 1810
    const v3, 0x746b6864

    .line 1811
    .line 1812
    .line 1813
    if-eq v2, v3, :cond_46

    .line 1814
    .line 1815
    const v3, 0x74726578

    .line 1816
    .line 1817
    .line 1818
    if-eq v2, v3, :cond_46

    .line 1819
    .line 1820
    const v3, 0x7472756e

    .line 1821
    .line 1822
    .line 1823
    if-eq v2, v3, :cond_46

    .line 1824
    .line 1825
    const v3, 0x70737368    # 3.013775E29f

    .line 1826
    .line 1827
    .line 1828
    if-eq v2, v3, :cond_46

    .line 1829
    .line 1830
    const v3, 0x7361697a

    .line 1831
    .line 1832
    .line 1833
    if-eq v2, v3, :cond_46

    .line 1834
    .line 1835
    const v3, 0x7361696f

    .line 1836
    .line 1837
    .line 1838
    if-eq v2, v3, :cond_46

    .line 1839
    .line 1840
    const v3, 0x73656e63

    .line 1841
    .line 1842
    .line 1843
    if-eq v2, v3, :cond_46

    .line 1844
    .line 1845
    const v3, 0x75756964

    .line 1846
    .line 1847
    .line 1848
    if-eq v2, v3, :cond_46

    .line 1849
    .line 1850
    const v3, 0x73626770

    .line 1851
    .line 1852
    .line 1853
    if-eq v2, v3, :cond_46

    .line 1854
    .line 1855
    const v3, 0x73677064

    .line 1856
    .line 1857
    .line 1858
    if-eq v2, v3, :cond_46

    .line 1859
    .line 1860
    const v3, 0x656c7374

    .line 1861
    .line 1862
    .line 1863
    if-eq v2, v3, :cond_46

    .line 1864
    .line 1865
    const v3, 0x6d656864

    .line 1866
    .line 1867
    .line 1868
    if-eq v2, v3, :cond_46

    .line 1869
    .line 1870
    const v3, 0x656d7367

    .line 1871
    .line 1872
    .line 1873
    if-ne v2, v3, :cond_44

    .line 1874
    .line 1875
    goto :goto_23

    .line 1876
    :cond_44
    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/x1;->r:J

    .line 1877
    .line 1878
    cmp-long v4, v2, v7

    .line 1879
    .line 1880
    if-gtz v4, :cond_45

    .line 1881
    .line 1882
    const/4 v2, 0x0

    .line 1883
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/x1;->t:Lcom/google/android/gms/internal/ads/jr;

    .line 1884
    .line 1885
    const/4 v2, 0x1

    .line 1886
    iput v2, v1, Lcom/google/android/gms/internal/ads/x1;->p:I

    .line 1887
    .line 1888
    goto/16 :goto_0

    .line 1889
    .line 1890
    :cond_45
    const-string v0, "Skipping atom with length > 2147483647 (unsupported)."

    .line 1891
    .line 1892
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ka;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/Ka;

    .line 1893
    .line 1894
    .line 1895
    move-result-object v0

    .line 1896
    throw v0

    .line 1897
    :cond_46
    :goto_23
    iget v2, v1, Lcom/google/android/gms/internal/ads/x1;->s:I

    .line 1898
    .line 1899
    const/16 v3, 0x8

    .line 1900
    .line 1901
    if-ne v2, v3, :cond_48

    .line 1902
    .line 1903
    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/x1;->r:J

    .line 1904
    .line 1905
    cmp-long v4, v2, v7

    .line 1906
    .line 1907
    if-gtz v4, :cond_47

    .line 1908
    .line 1909
    new-instance v2, Lcom/google/android/gms/internal/ads/jr;

    .line 1910
    .line 1911
    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/x1;->r:J

    .line 1912
    .line 1913
    long-to-int v4, v3

    .line 1914
    invoke-direct {v2, v4}, Lcom/google/android/gms/internal/ads/jr;-><init>(I)V

    .line 1915
    .line 1916
    .line 1917
    iget-object v3, v5, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 1918
    .line 1919
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 1920
    .line 1921
    const/4 v5, 0x0

    .line 1922
    const/16 v6, 0x8

    .line 1923
    .line 1924
    invoke-static {v3, v5, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1925
    .line 1926
    .line 1927
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/x1;->t:Lcom/google/android/gms/internal/ads/jr;

    .line 1928
    .line 1929
    const/4 v2, 0x1

    .line 1930
    iput v2, v1, Lcom/google/android/gms/internal/ads/x1;->p:I

    .line 1931
    .line 1932
    goto/16 :goto_0

    .line 1933
    .line 1934
    :cond_47
    const-string v0, "Leaf atom with length > 2147483647 (unsupported)."

    .line 1935
    .line 1936
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ka;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/Ka;

    .line 1937
    .line 1938
    .line 1939
    move-result-object v0

    .line 1940
    throw v0

    .line 1941
    :cond_48
    const-string v0, "Leaf atom defines extended atom size (unsupported)."

    .line 1942
    .line 1943
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ka;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/Ka;

    .line 1944
    .line 1945
    .line 1946
    move-result-object v0

    .line 1947
    throw v0

    .line 1948
    :cond_49
    :goto_24
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzf()J

    .line 1949
    .line 1950
    .line 1951
    move-result-wide v4

    .line 1952
    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/x1;->r:J

    .line 1953
    .line 1954
    add-long/2addr v4, v6

    .line 1955
    new-instance v6, Lcom/google/android/gms/internal/ads/o1;

    .line 1956
    .line 1957
    const-wide/16 v7, -0x8

    .line 1958
    .line 1959
    add-long/2addr v4, v7

    .line 1960
    invoke-direct {v6, v2, v4, v5}, Lcom/google/android/gms/internal/ads/o1;-><init>(IJ)V

    .line 1961
    .line 1962
    .line 1963
    invoke-virtual {v3, v6}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 1964
    .line 1965
    .line 1966
    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/x1;->r:J

    .line 1967
    .line 1968
    iget v6, v1, Lcom/google/android/gms/internal/ads/x1;->s:I

    .line 1969
    .line 1970
    int-to-long v6, v6

    .line 1971
    cmp-long v8, v2, v6

    .line 1972
    .line 1973
    if-nez v8, :cond_4a

    .line 1974
    .line 1975
    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/ads/x1;->h(J)V

    .line 1976
    .line 1977
    .line 1978
    goto/16 :goto_0

    .line 1979
    .line 1980
    :cond_4a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/x1;->b()V

    .line 1981
    .line 1982
    .line 1983
    goto/16 :goto_0

    .line 1984
    .line 1985
    :cond_4b
    const-string v0, "Atom size less than header length (unsupported)."

    .line 1986
    .line 1987
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ka;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/Ka;

    .line 1988
    .line 1989
    .line 1990
    move-result-object v0

    .line 1991
    throw v0
.end method

.method public final d(Lcom/google/android/gms/internal/ads/M;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/nH;->i(Lcom/google/android/gms/internal/ads/M;ZZ)Lcom/google/android/gms/internal/ads/c0;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/uA;->w(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/PA;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object v2, Lcom/google/android/gms/internal/ads/uA;->H:Lcom/google/android/gms/internal/ads/sA;

    .line 15
    .line 16
    sget-object v2, Lcom/google/android/gms/internal/ads/PA;->K:Lcom/google/android/gms/internal/ads/PA;

    .line 17
    .line 18
    :goto_0
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/x1;->o:Lcom/google/android/gms/internal/ads/PA;

    .line 19
    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    return v0

    .line 23
    :cond_1
    return v1
.end method

.method public final e(JJ)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/x1;->d:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    const/4 v0, 0x0

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    if-ge v1, p2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Lcom/google/android/gms/internal/ads/w1;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/w1;->d()V

    .line 18
    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/x1;->m:Ljava/util/ArrayDeque;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 26
    .line 27
    .line 28
    iput v0, p0, Lcom/google/android/gms/internal/ads/x1;->v:I

    .line 29
    .line 30
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/x1;->n:Lcom/google/android/gms/internal/ads/W2;

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/W2;->d(I)V

    .line 33
    .line 34
    .line 35
    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/x1;->w:J

    .line 36
    .line 37
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/x1;->l:Ljava/util/ArrayDeque;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/x1;->b()V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final f(Lcom/google/android/gms/internal/ads/N;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/x1;->b:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x20

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/X1;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/x1;->a:Lcom/google/android/gms/internal/ads/V1;

    .line 10
    .line 11
    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/X1;-><init>(Lcom/google/android/gms/internal/ads/N;Lcom/google/android/gms/internal/ads/V1;)V

    .line 12
    .line 13
    .line 14
    move-object p1, v0

    .line 15
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/x1;->F:Lcom/google/android/gms/internal/ads/N;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/x1;->b()V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x2

    .line 21
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/e0;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/x1;->G:[Lcom/google/android/gms/internal/ads/e0;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/Et;->g(I[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, [Lcom/google/android/gms/internal/ads/e0;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/x1;->G:[Lcom/google/android/gms/internal/ads/e0;

    .line 33
    .line 34
    array-length v1, p1

    .line 35
    const/4 v2, 0x0

    .line 36
    :goto_0
    if-ge v2, v1, :cond_1

    .line 37
    .line 38
    aget-object v3, p1, v2

    .line 39
    .line 40
    sget-object v4, Lcom/google/android/gms/internal/ads/x1;->K:Lcom/google/android/gms/internal/ads/p0;

    .line 41
    .line 42
    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/e0;->d(Lcom/google/android/gms/internal/ads/p0;)V

    .line 43
    .line 44
    .line 45
    add-int/lit8 v2, v2, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/x1;->c:Ljava/util/List;

    .line 49
    .line 50
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    new-array v1, v1, [Lcom/google/android/gms/internal/ads/e0;

    .line 55
    .line 56
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/x1;->H:[Lcom/google/android/gms/internal/ads/e0;

    .line 57
    .line 58
    const/16 v1, 0x64

    .line 59
    .line 60
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/x1;->H:[Lcom/google/android/gms/internal/ads/e0;

    .line 61
    .line 62
    array-length v2, v2

    .line 63
    if-ge v0, v2, :cond_2

    .line 64
    .line 65
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/x1;->F:Lcom/google/android/gms/internal/ads/N;

    .line 66
    .line 67
    add-int/lit8 v3, v1, 0x1

    .line 68
    .line 69
    const/4 v4, 0x3

    .line 70
    invoke-interface {v2, v1, v4}, Lcom/google/android/gms/internal/ads/N;->h(II)Lcom/google/android/gms/internal/ads/e0;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    check-cast v2, Lcom/google/android/gms/internal/ads/p0;

    .line 79
    .line 80
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/e0;->d(Lcom/google/android/gms/internal/ads/p0;)V

    .line 81
    .line 82
    .line 83
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/x1;->H:[Lcom/google/android/gms/internal/ads/e0;

    .line 84
    .line 85
    aput-object v1, v2, v0

    .line 86
    .line 87
    add-int/lit8 v0, v0, 0x1

    .line 88
    .line 89
    move v1, v3

    .line 90
    goto :goto_1

    .line 91
    :cond_2
    return-void
.end method

.method public final h(J)V
    .locals 44

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/x1;->l:Ljava/util/ArrayDeque;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_53

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Lcom/google/android/gms/internal/ads/o1;

    .line 16
    .line 17
    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/o1;->c:J

    .line 18
    .line 19
    cmp-long v4, v2, p1

    .line 20
    .line 21
    if-nez v4, :cond_53

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    move-object v3, v2

    .line 28
    check-cast v3, Lcom/google/android/gms/internal/ads/o1;

    .line 29
    .line 30
    iget v2, v3, Lq0/e;->b:I

    .line 31
    .line 32
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/x1;->d:Landroid/util/SparseArray;

    .line 33
    .line 34
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/o1;->d:Ljava/util/ArrayList;

    .line 35
    .line 36
    const v6, 0x6d6f6f76

    .line 37
    .line 38
    .line 39
    const/16 v9, 0xc

    .line 40
    .line 41
    if-ne v2, v6, :cond_a

    .line 42
    .line 43
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/x1;->a(Ljava/util/ArrayList;)Lcom/google/android/gms/internal/ads/mO;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const v2, 0x6d766578

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/o1;->e(I)Lcom/google/android/gms/internal/ads/o1;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    new-instance v14, Landroid/util/SparseArray;

    .line 58
    .line 59
    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V

    .line 60
    .line 61
    .line 62
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/o1;->d:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    const/4 v6, 0x0

    .line 69
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    :goto_1
    if-ge v6, v4, :cond_4

    .line 75
    .line 76
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v10

    .line 80
    check-cast v10, Lcom/google/android/gms/internal/ads/p1;

    .line 81
    .line 82
    iget v15, v10, Lq0/e;->b:I

    .line 83
    .line 84
    const v13, 0x74726578

    .line 85
    .line 86
    .line 87
    iget-object v10, v10, Lcom/google/android/gms/internal/ads/p1;->c:Lcom/google/android/gms/internal/ads/jr;

    .line 88
    .line 89
    if-ne v15, v13, :cond_1

    .line 90
    .line 91
    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 95
    .line 96
    .line 97
    move-result v13

    .line 98
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 99
    .line 100
    .line 101
    move-result v15

    .line 102
    add-int/lit8 v15, v15, -0x1

    .line 103
    .line 104
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 105
    .line 106
    .line 107
    move-result v9

    .line 108
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 109
    .line 110
    .line 111
    move-result v12

    .line 112
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 113
    .line 114
    .line 115
    move-result v10

    .line 116
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v13

    .line 120
    new-instance v5, Lcom/google/android/gms/internal/ads/t1;

    .line 121
    .line 122
    invoke-direct {v5, v15, v9, v12, v10}, Lcom/google/android/gms/internal/ads/t1;-><init>(IIII)V

    .line 123
    .line 124
    .line 125
    invoke-static {v13, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    iget-object v9, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast v9, Ljava/lang/Integer;

    .line 132
    .line 133
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 134
    .line 135
    .line 136
    move-result v9

    .line 137
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast v5, Lcom/google/android/gms/internal/ads/t1;

    .line 140
    .line 141
    invoke-virtual {v14, v9, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_1
    const v5, 0x6d656864

    .line 146
    .line 147
    .line 148
    if-ne v15, v5, :cond_3

    .line 149
    .line 150
    const/16 v5, 0x8

    .line 151
    .line 152
    invoke-virtual {v10, v5}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 156
    .line 157
    .line 158
    move-result v5

    .line 159
    invoke-static {v5}, Lq0/e;->c(I)I

    .line 160
    .line 161
    .line 162
    move-result v5

    .line 163
    if-nez v5, :cond_2

    .line 164
    .line 165
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/jr;->E()J

    .line 166
    .line 167
    .line 168
    move-result-wide v7

    .line 169
    goto :goto_2

    .line 170
    :cond_2
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/jr;->F()J

    .line 171
    .line 172
    .line 173
    move-result-wide v7

    .line 174
    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 175
    .line 176
    const/16 v9, 0xc

    .line 177
    .line 178
    goto :goto_1

    .line 179
    :cond_4
    new-instance v4, Lcom/google/android/gms/internal/ads/T;

    .line 180
    .line 181
    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/T;-><init>()V

    .line 182
    .line 183
    .line 184
    new-instance v10, Lcom/google/android/gms/internal/ads/u1;

    .line 185
    .line 186
    const/4 v2, 0x0

    .line 187
    invoke-direct {v10, v2, v2}, Lcom/google/android/gms/internal/ads/u1;-><init>(II)V

    .line 188
    .line 189
    .line 190
    const/4 v2, 0x0

    .line 191
    const/4 v9, 0x0

    .line 192
    move-wide v5, v7

    .line 193
    move-object v7, v1

    .line 194
    move v8, v2

    .line 195
    invoke-static/range {v3 .. v10}, Lcom/google/android/gms/internal/ads/r1;->b(Lcom/google/android/gms/internal/ads/o1;Lcom/google/android/gms/internal/ads/T;JLcom/google/android/gms/internal/ads/mO;ZZLcom/google/android/gms/internal/ads/u1;)Ljava/util/ArrayList;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    .line 204
    .line 205
    .line 206
    move-result v3

    .line 207
    if-nez v3, :cond_7

    .line 208
    .line 209
    const/4 v3, 0x0

    .line 210
    :goto_3
    if-ge v3, v2, :cond_6

    .line 211
    .line 212
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v4

    .line 216
    check-cast v4, Lcom/google/android/gms/internal/ads/G1;

    .line 217
    .line 218
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/G1;->a:Lcom/google/android/gms/internal/ads/D1;

    .line 219
    .line 220
    new-instance v6, Lcom/google/android/gms/internal/ads/w1;

    .line 221
    .line 222
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/x1;->F:Lcom/google/android/gms/internal/ads/N;

    .line 223
    .line 224
    iget v8, v5, Lcom/google/android/gms/internal/ads/D1;->b:I

    .line 225
    .line 226
    invoke-interface {v7, v3, v8}, Lcom/google/android/gms/internal/ads/N;->h(II)Lcom/google/android/gms/internal/ads/e0;

    .line 227
    .line 228
    .line 229
    move-result-object v7

    .line 230
    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    .line 231
    .line 232
    .line 233
    move-result v8

    .line 234
    iget v9, v5, Lcom/google/android/gms/internal/ads/D1;->a:I

    .line 235
    .line 236
    const/4 v10, 0x1

    .line 237
    if-ne v8, v10, :cond_5

    .line 238
    .line 239
    const/4 v8, 0x0

    .line 240
    invoke-virtual {v14, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v10

    .line 244
    check-cast v10, Lcom/google/android/gms/internal/ads/t1;

    .line 245
    .line 246
    goto :goto_4

    .line 247
    :cond_5
    invoke-virtual {v14, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v8

    .line 251
    move-object v10, v8

    .line 252
    check-cast v10, Lcom/google/android/gms/internal/ads/t1;

    .line 253
    .line 254
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 255
    .line 256
    .line 257
    :goto_4
    invoke-direct {v6, v7, v4, v10}, Lcom/google/android/gms/internal/ads/w1;-><init>(Lcom/google/android/gms/internal/ads/e0;Lcom/google/android/gms/internal/ads/G1;Lcom/google/android/gms/internal/ads/t1;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v11, v9, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/x1;->x:J

    .line 264
    .line 265
    iget-wide v4, v5, Lcom/google/android/gms/internal/ads/D1;->e:J

    .line 266
    .line 267
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 268
    .line 269
    .line 270
    move-result-wide v4

    .line 271
    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/x1;->x:J

    .line 272
    .line 273
    add-int/lit8 v3, v3, 0x1

    .line 274
    .line 275
    goto :goto_3

    .line 276
    :cond_6
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/x1;->F:Lcom/google/android/gms/internal/ads/N;

    .line 277
    .line 278
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/N;->f()V

    .line 279
    .line 280
    .line 281
    goto/16 :goto_0

    .line 282
    .line 283
    :cond_7
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    .line 284
    .line 285
    .line 286
    move-result v3

    .line 287
    if-ne v3, v2, :cond_8

    .line 288
    .line 289
    const/4 v3, 0x1

    .line 290
    goto :goto_5

    .line 291
    :cond_8
    const/4 v3, 0x0

    .line 292
    :goto_5
    invoke-static {v3}, Lo3/r;->M(Z)V

    .line 293
    .line 294
    .line 295
    const/4 v3, 0x0

    .line 296
    :goto_6
    if-ge v3, v2, :cond_0

    .line 297
    .line 298
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v4

    .line 302
    check-cast v4, Lcom/google/android/gms/internal/ads/G1;

    .line 303
    .line 304
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/G1;->a:Lcom/google/android/gms/internal/ads/D1;

    .line 305
    .line 306
    iget v6, v5, Lcom/google/android/gms/internal/ads/D1;->a:I

    .line 307
    .line 308
    invoke-virtual {v11, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v6

    .line 312
    check-cast v6, Lcom/google/android/gms/internal/ads/w1;

    .line 313
    .line 314
    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    .line 315
    .line 316
    .line 317
    move-result v7

    .line 318
    const/4 v8, 0x1

    .line 319
    if-ne v7, v8, :cond_9

    .line 320
    .line 321
    const/4 v7, 0x0

    .line 322
    invoke-virtual {v14, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v5

    .line 326
    check-cast v5, Lcom/google/android/gms/internal/ads/t1;

    .line 327
    .line 328
    goto :goto_7

    .line 329
    :cond_9
    iget v5, v5, Lcom/google/android/gms/internal/ads/D1;->a:I

    .line 330
    .line 331
    invoke-virtual {v14, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v5

    .line 335
    check-cast v5, Lcom/google/android/gms/internal/ads/t1;

    .line 336
    .line 337
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 338
    .line 339
    .line 340
    :goto_7
    iput-object v4, v6, Lcom/google/android/gms/internal/ads/w1;->d:Lcom/google/android/gms/internal/ads/G1;

    .line 341
    .line 342
    iput-object v5, v6, Lcom/google/android/gms/internal/ads/w1;->e:Lcom/google/android/gms/internal/ads/t1;

    .line 343
    .line 344
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/G1;->a:Lcom/google/android/gms/internal/ads/D1;

    .line 345
    .line 346
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/D1;->f:Lcom/google/android/gms/internal/ads/p0;

    .line 347
    .line 348
    iget-object v5, v6, Lcom/google/android/gms/internal/ads/w1;->a:Lcom/google/android/gms/internal/ads/e0;

    .line 349
    .line 350
    invoke-interface {v5, v4}, Lcom/google/android/gms/internal/ads/e0;->d(Lcom/google/android/gms/internal/ads/p0;)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/w1;->d()V

    .line 354
    .line 355
    .line 356
    add-int/lit8 v3, v3, 0x1

    .line 357
    .line 358
    goto :goto_6

    .line 359
    :cond_a
    const v5, 0x6d6f6f66

    .line 360
    .line 361
    .line 362
    if-ne v2, v5, :cond_52

    .line 363
    .line 364
    iget-object v1, v3, Lcom/google/android/gms/internal/ads/o1;->e:Ljava/util/ArrayList;

    .line 365
    .line 366
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 367
    .line 368
    .line 369
    move-result v2

    .line 370
    const/4 v3, 0x0

    .line 371
    :goto_8
    if-ge v3, v2, :cond_4b

    .line 372
    .line 373
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v6

    .line 377
    check-cast v6, Lcom/google/android/gms/internal/ads/o1;

    .line 378
    .line 379
    iget v9, v6, Lq0/e;->b:I

    .line 380
    .line 381
    const v10, 0x74726166

    .line 382
    .line 383
    .line 384
    if-ne v9, v10, :cond_11

    .line 385
    .line 386
    const v9, 0x74666864

    .line 387
    .line 388
    .line 389
    invoke-virtual {v6, v9}, Lcom/google/android/gms/internal/ads/o1;->f(I)Lcom/google/android/gms/internal/ads/p1;

    .line 390
    .line 391
    .line 392
    move-result-object v9

    .line 393
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 394
    .line 395
    .line 396
    iget-object v9, v9, Lcom/google/android/gms/internal/ads/p1;->c:Lcom/google/android/gms/internal/ads/jr;

    .line 397
    .line 398
    const/16 v10, 0x8

    .line 399
    .line 400
    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 404
    .line 405
    .line 406
    move-result v10

    .line 407
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 408
    .line 409
    .line 410
    move-result v12

    .line 411
    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    move-result-object v12

    .line 415
    check-cast v12, Lcom/google/android/gms/internal/ads/w1;

    .line 416
    .line 417
    if-nez v12, :cond_b

    .line 418
    .line 419
    const/4 v12, 0x0

    .line 420
    goto :goto_d

    .line 421
    :cond_b
    and-int/lit8 v13, v10, 0x1

    .line 422
    .line 423
    iget-object v14, v12, Lcom/google/android/gms/internal/ads/w1;->b:Lcom/google/android/gms/internal/ads/F1;

    .line 424
    .line 425
    if-eqz v13, :cond_c

    .line 426
    .line 427
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/jr;->F()J

    .line 428
    .line 429
    .line 430
    move-result-wide v7

    .line 431
    iput-wide v7, v14, Lcom/google/android/gms/internal/ads/F1;->b:J

    .line 432
    .line 433
    iput-wide v7, v14, Lcom/google/android/gms/internal/ads/F1;->c:J

    .line 434
    .line 435
    :cond_c
    iget-object v7, v12, Lcom/google/android/gms/internal/ads/w1;->e:Lcom/google/android/gms/internal/ads/t1;

    .line 436
    .line 437
    and-int/lit8 v8, v10, 0x2

    .line 438
    .line 439
    if-eqz v8, :cond_d

    .line 440
    .line 441
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 442
    .line 443
    .line 444
    move-result v8

    .line 445
    add-int/lit8 v8, v8, -0x1

    .line 446
    .line 447
    goto :goto_9

    .line 448
    :cond_d
    iget v8, v7, Lcom/google/android/gms/internal/ads/t1;->a:I

    .line 449
    .line 450
    :goto_9
    and-int/lit8 v13, v10, 0x8

    .line 451
    .line 452
    if-eqz v13, :cond_e

    .line 453
    .line 454
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 455
    .line 456
    .line 457
    move-result v13

    .line 458
    goto :goto_a

    .line 459
    :cond_e
    iget v13, v7, Lcom/google/android/gms/internal/ads/t1;->b:I

    .line 460
    .line 461
    :goto_a
    and-int/lit8 v15, v10, 0x10

    .line 462
    .line 463
    if-eqz v15, :cond_f

    .line 464
    .line 465
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 466
    .line 467
    .line 468
    move-result v15

    .line 469
    goto :goto_b

    .line 470
    :cond_f
    iget v15, v7, Lcom/google/android/gms/internal/ads/t1;->c:I

    .line 471
    .line 472
    :goto_b
    and-int/lit8 v10, v10, 0x20

    .line 473
    .line 474
    if-eqz v10, :cond_10

    .line 475
    .line 476
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 477
    .line 478
    .line 479
    move-result v7

    .line 480
    goto :goto_c

    .line 481
    :cond_10
    iget v7, v7, Lcom/google/android/gms/internal/ads/t1;->d:I

    .line 482
    .line 483
    :goto_c
    new-instance v9, Lcom/google/android/gms/internal/ads/t1;

    .line 484
    .line 485
    invoke-direct {v9, v8, v13, v15, v7}, Lcom/google/android/gms/internal/ads/t1;-><init>(IIII)V

    .line 486
    .line 487
    .line 488
    iput-object v9, v14, Lcom/google/android/gms/internal/ads/F1;->a:Lcom/google/android/gms/internal/ads/t1;

    .line 489
    .line 490
    :goto_d
    if-nez v12, :cond_12

    .line 491
    .line 492
    :cond_11
    move-object v8, v0

    .line 493
    move-object/from16 v16, v1

    .line 494
    .line 495
    move/from16 v19, v2

    .line 496
    .line 497
    move/from16 v23, v3

    .line 498
    .line 499
    move-object/from16 v22, v4

    .line 500
    .line 501
    move-object/from16 v24, v11

    .line 502
    .line 503
    const/4 v0, 0x1

    .line 504
    const/16 v3, 0xc

    .line 505
    .line 506
    const/16 v6, 0x8

    .line 507
    .line 508
    const/4 v10, 0x0

    .line 509
    goto/16 :goto_2e

    .line 510
    .line 511
    :cond_12
    iget-object v7, v12, Lcom/google/android/gms/internal/ads/w1;->b:Lcom/google/android/gms/internal/ads/F1;

    .line 512
    .line 513
    iget-wide v8, v7, Lcom/google/android/gms/internal/ads/F1;->p:J

    .line 514
    .line 515
    iget-boolean v10, v7, Lcom/google/android/gms/internal/ads/F1;->q:Z

    .line 516
    .line 517
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/w1;->d()V

    .line 518
    .line 519
    .line 520
    const/4 v13, 0x1

    .line 521
    iput-boolean v13, v12, Lcom/google/android/gms/internal/ads/w1;->l:Z

    .line 522
    .line 523
    const v14, 0x74666474

    .line 524
    .line 525
    .line 526
    invoke-virtual {v6, v14}, Lcom/google/android/gms/internal/ads/o1;->f(I)Lcom/google/android/gms/internal/ads/p1;

    .line 527
    .line 528
    .line 529
    move-result-object v14

    .line 530
    if-eqz v14, :cond_14

    .line 531
    .line 532
    iget-object v8, v14, Lcom/google/android/gms/internal/ads/p1;->c:Lcom/google/android/gms/internal/ads/jr;

    .line 533
    .line 534
    const/16 v9, 0x8

    .line 535
    .line 536
    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 537
    .line 538
    .line 539
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 540
    .line 541
    .line 542
    move-result v9

    .line 543
    invoke-static {v9}, Lq0/e;->c(I)I

    .line 544
    .line 545
    .line 546
    move-result v9

    .line 547
    if-ne v9, v13, :cond_13

    .line 548
    .line 549
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/jr;->F()J

    .line 550
    .line 551
    .line 552
    move-result-wide v8

    .line 553
    goto :goto_e

    .line 554
    :cond_13
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/jr;->E()J

    .line 555
    .line 556
    .line 557
    move-result-wide v8

    .line 558
    :goto_e
    iput-wide v8, v7, Lcom/google/android/gms/internal/ads/F1;->p:J

    .line 559
    .line 560
    iput-boolean v13, v7, Lcom/google/android/gms/internal/ads/F1;->q:Z

    .line 561
    .line 562
    goto :goto_f

    .line 563
    :cond_14
    iput-wide v8, v7, Lcom/google/android/gms/internal/ads/F1;->p:J

    .line 564
    .line 565
    iput-boolean v10, v7, Lcom/google/android/gms/internal/ads/F1;->q:Z

    .line 566
    .line 567
    :goto_f
    iget-object v8, v6, Lcom/google/android/gms/internal/ads/o1;->d:Ljava/util/ArrayList;

    .line 568
    .line 569
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 570
    .line 571
    .line 572
    move-result v9

    .line 573
    const/4 v10, 0x0

    .line 574
    const/4 v13, 0x0

    .line 575
    const/4 v14, 0x0

    .line 576
    :goto_10
    const v15, 0x7472756e

    .line 577
    .line 578
    .line 579
    if-ge v10, v9, :cond_16

    .line 580
    .line 581
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 582
    .line 583
    .line 584
    move-result-object v16

    .line 585
    move-object/from16 v5, v16

    .line 586
    .line 587
    check-cast v5, Lcom/google/android/gms/internal/ads/p1;

    .line 588
    .line 589
    move-object/from16 v16, v1

    .line 590
    .line 591
    iget v1, v5, Lq0/e;->b:I

    .line 592
    .line 593
    if-ne v1, v15, :cond_15

    .line 594
    .line 595
    iget-object v1, v5, Lcom/google/android/gms/internal/ads/p1;->c:Lcom/google/android/gms/internal/ads/jr;

    .line 596
    .line 597
    const/16 v5, 0xc

    .line 598
    .line 599
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 600
    .line 601
    .line 602
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/jr;->z()I

    .line 603
    .line 604
    .line 605
    move-result v1

    .line 606
    if-lez v1, :cond_15

    .line 607
    .line 608
    add-int/2addr v14, v1

    .line 609
    add-int/lit8 v13, v13, 0x1

    .line 610
    .line 611
    :cond_15
    add-int/lit8 v10, v10, 0x1

    .line 612
    .line 613
    move-object/from16 v1, v16

    .line 614
    .line 615
    goto :goto_10

    .line 616
    :cond_16
    move-object/from16 v16, v1

    .line 617
    .line 618
    const/4 v1, 0x0

    .line 619
    iput v1, v12, Lcom/google/android/gms/internal/ads/w1;->h:I

    .line 620
    .line 621
    iput v1, v12, Lcom/google/android/gms/internal/ads/w1;->g:I

    .line 622
    .line 623
    iput v1, v12, Lcom/google/android/gms/internal/ads/w1;->f:I

    .line 624
    .line 625
    iput v13, v7, Lcom/google/android/gms/internal/ads/F1;->d:I

    .line 626
    .line 627
    iput v14, v7, Lcom/google/android/gms/internal/ads/F1;->e:I

    .line 628
    .line 629
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/F1;->g:[I

    .line 630
    .line 631
    array-length v1, v1

    .line 632
    if-ge v1, v13, :cond_17

    .line 633
    .line 634
    new-array v1, v13, [J

    .line 635
    .line 636
    iput-object v1, v7, Lcom/google/android/gms/internal/ads/F1;->f:[J

    .line 637
    .line 638
    new-array v1, v13, [I

    .line 639
    .line 640
    iput-object v1, v7, Lcom/google/android/gms/internal/ads/F1;->g:[I

    .line 641
    .line 642
    :cond_17
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/F1;->h:[I

    .line 643
    .line 644
    array-length v1, v1

    .line 645
    if-ge v1, v14, :cond_18

    .line 646
    .line 647
    mul-int/lit8 v14, v14, 0x7d

    .line 648
    .line 649
    div-int/lit8 v14, v14, 0x64

    .line 650
    .line 651
    new-array v1, v14, [I

    .line 652
    .line 653
    iput-object v1, v7, Lcom/google/android/gms/internal/ads/F1;->h:[I

    .line 654
    .line 655
    new-array v1, v14, [J

    .line 656
    .line 657
    iput-object v1, v7, Lcom/google/android/gms/internal/ads/F1;->i:[J

    .line 658
    .line 659
    new-array v1, v14, [Z

    .line 660
    .line 661
    iput-object v1, v7, Lcom/google/android/gms/internal/ads/F1;->j:[Z

    .line 662
    .line 663
    new-array v1, v14, [Z

    .line 664
    .line 665
    iput-object v1, v7, Lcom/google/android/gms/internal/ads/F1;->l:[Z

    .line 666
    .line 667
    :cond_18
    const/4 v1, 0x0

    .line 668
    const/4 v5, 0x0

    .line 669
    const/4 v10, 0x0

    .line 670
    :goto_11
    const-wide/16 v17, 0x0

    .line 671
    .line 672
    if-ge v1, v9, :cond_2d

    .line 673
    .line 674
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 675
    .line 676
    .line 677
    move-result-object v14

    .line 678
    check-cast v14, Lcom/google/android/gms/internal/ads/p1;

    .line 679
    .line 680
    iget v13, v14, Lq0/e;->b:I

    .line 681
    .line 682
    if-ne v13, v15, :cond_2c

    .line 683
    .line 684
    add-int/lit8 v13, v5, 0x1

    .line 685
    .line 686
    iget-object v14, v14, Lcom/google/android/gms/internal/ads/p1;->c:Lcom/google/android/gms/internal/ads/jr;

    .line 687
    .line 688
    const/16 v15, 0x8

    .line 689
    .line 690
    invoke-virtual {v14, v15}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 691
    .line 692
    .line 693
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 694
    .line 695
    .line 696
    move-result v15

    .line 697
    move/from16 v19, v2

    .line 698
    .line 699
    iget-object v2, v12, Lcom/google/android/gms/internal/ads/w1;->d:Lcom/google/android/gms/internal/ads/G1;

    .line 700
    .line 701
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/G1;->a:Lcom/google/android/gms/internal/ads/D1;

    .line 702
    .line 703
    move/from16 v20, v9

    .line 704
    .line 705
    iget-object v9, v7, Lcom/google/android/gms/internal/ads/F1;->a:Lcom/google/android/gms/internal/ads/t1;

    .line 706
    .line 707
    sget v21, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 708
    .line 709
    move/from16 v21, v13

    .line 710
    .line 711
    iget-object v13, v7, Lcom/google/android/gms/internal/ads/F1;->g:[I

    .line 712
    .line 713
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/jr;->z()I

    .line 714
    .line 715
    .line 716
    move-result v22

    .line 717
    aput v22, v13, v5

    .line 718
    .line 719
    iget-object v13, v7, Lcom/google/android/gms/internal/ads/F1;->f:[J

    .line 720
    .line 721
    move/from16 v23, v3

    .line 722
    .line 723
    move-object/from16 v22, v4

    .line 724
    .line 725
    iget-wide v3, v7, Lcom/google/android/gms/internal/ads/F1;->b:J

    .line 726
    .line 727
    aput-wide v3, v13, v5

    .line 728
    .line 729
    and-int/lit8 v24, v15, 0x1

    .line 730
    .line 731
    if-eqz v24, :cond_19

    .line 732
    .line 733
    move-object/from16 v24, v11

    .line 734
    .line 735
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 736
    .line 737
    .line 738
    move-result v11

    .line 739
    move/from16 v25, v1

    .line 740
    .line 741
    int-to-long v0, v11

    .line 742
    add-long/2addr v3, v0

    .line 743
    aput-wide v3, v13, v5

    .line 744
    .line 745
    goto :goto_12

    .line 746
    :cond_19
    move/from16 v25, v1

    .line 747
    .line 748
    move-object/from16 v24, v11

    .line 749
    .line 750
    :goto_12
    and-int/lit8 v0, v15, 0x4

    .line 751
    .line 752
    if-eqz v0, :cond_1a

    .line 753
    .line 754
    const/4 v0, 0x1

    .line 755
    goto :goto_13

    .line 756
    :cond_1a
    const/4 v0, 0x0

    .line 757
    :goto_13
    iget v1, v9, Lcom/google/android/gms/internal/ads/t1;->d:I

    .line 758
    .line 759
    if-eqz v0, :cond_1b

    .line 760
    .line 761
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 762
    .line 763
    .line 764
    move-result v1

    .line 765
    :cond_1b
    and-int/lit16 v3, v15, 0x100

    .line 766
    .line 767
    and-int/lit16 v4, v15, 0x200

    .line 768
    .line 769
    and-int/lit16 v11, v15, 0x400

    .line 770
    .line 771
    and-int/lit16 v13, v15, 0x800

    .line 772
    .line 773
    iget-object v15, v2, Lcom/google/android/gms/internal/ads/D1;->h:[J

    .line 774
    .line 775
    if-eqz v15, :cond_20

    .line 776
    .line 777
    move/from16 v26, v1

    .line 778
    .line 779
    array-length v1, v15

    .line 780
    move-object/from16 v27, v8

    .line 781
    .line 782
    const/4 v8, 0x1

    .line 783
    if-ne v1, v8, :cond_1c

    .line 784
    .line 785
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/D1;->i:[J

    .line 786
    .line 787
    if-nez v1, :cond_1d

    .line 788
    .line 789
    :cond_1c
    :goto_14
    move-object/from16 v28, v9

    .line 790
    .line 791
    move-object/from16 v29, v12

    .line 792
    .line 793
    move v15, v13

    .line 794
    goto :goto_16

    .line 795
    :cond_1d
    const/4 v8, 0x0

    .line 796
    aget-wide v28, v15, v8

    .line 797
    .line 798
    cmp-long v15, v28, v17

    .line 799
    .line 800
    if-nez v15, :cond_1e

    .line 801
    .line 802
    move-object/from16 v28, v9

    .line 803
    .line 804
    move-object/from16 v29, v12

    .line 805
    .line 806
    move v15, v13

    .line 807
    goto :goto_15

    .line 808
    :cond_1e
    aget-wide v30, v1, v8

    .line 809
    .line 810
    add-long v32, v28, v30

    .line 811
    .line 812
    sget-object v38, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    .line 813
    .line 814
    const-wide/32 v34, 0xf4240

    .line 815
    .line 816
    .line 817
    move-object v8, v12

    .line 818
    move v15, v13

    .line 819
    iget-wide v12, v2, Lcom/google/android/gms/internal/ads/D1;->d:J

    .line 820
    .line 821
    move-wide/from16 v36, v12

    .line 822
    .line 823
    invoke-static/range {v32 .. v38}, Lcom/google/android/gms/internal/ads/Et;->v(JJJLjava/math/RoundingMode;)J

    .line 824
    .line 825
    .line 826
    move-result-wide v12

    .line 827
    move-object/from16 v29, v8

    .line 828
    .line 829
    move-object/from16 v28, v9

    .line 830
    .line 831
    iget-wide v8, v2, Lcom/google/android/gms/internal/ads/D1;->e:J

    .line 832
    .line 833
    cmp-long v30, v12, v8

    .line 834
    .line 835
    if-gez v30, :cond_1f

    .line 836
    .line 837
    goto :goto_16

    .line 838
    :cond_1f
    const/4 v8, 0x0

    .line 839
    :goto_15
    aget-wide v17, v1, v8

    .line 840
    .line 841
    goto :goto_16

    .line 842
    :cond_20
    move/from16 v26, v1

    .line 843
    .line 844
    move-object/from16 v27, v8

    .line 845
    .line 846
    goto :goto_14

    .line 847
    :goto_16
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/F1;->h:[I

    .line 848
    .line 849
    iget-object v8, v7, Lcom/google/android/gms/internal/ads/F1;->i:[J

    .line 850
    .line 851
    iget-object v9, v7, Lcom/google/android/gms/internal/ads/F1;->j:[Z

    .line 852
    .line 853
    iget-object v12, v7, Lcom/google/android/gms/internal/ads/F1;->g:[I

    .line 854
    .line 855
    aget v5, v12, v5

    .line 856
    .line 857
    add-int/2addr v5, v10

    .line 858
    iget-wide v12, v7, Lcom/google/android/gms/internal/ads/F1;->p:J

    .line 859
    .line 860
    :goto_17
    if-ge v10, v5, :cond_2b

    .line 861
    .line 862
    if-eqz v3, :cond_21

    .line 863
    .line 864
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 865
    .line 866
    .line 867
    move-result v30

    .line 868
    move/from16 v31, v3

    .line 869
    .line 870
    move-object/from16 v3, v28

    .line 871
    .line 872
    move/from16 v28, v5

    .line 873
    .line 874
    move/from16 v5, v30

    .line 875
    .line 876
    :goto_18
    move-object/from16 v30, v6

    .line 877
    .line 878
    goto :goto_19

    .line 879
    :cond_21
    move/from16 v31, v3

    .line 880
    .line 881
    move-object/from16 v3, v28

    .line 882
    .line 883
    move/from16 v28, v5

    .line 884
    .line 885
    iget v5, v3, Lcom/google/android/gms/internal/ads/t1;->b:I

    .line 886
    .line 887
    goto :goto_18

    .line 888
    :goto_19
    const-string v6, "Unexpected negative value: "

    .line 889
    .line 890
    if-ltz v5, :cond_2a

    .line 891
    .line 892
    if-eqz v4, :cond_22

    .line 893
    .line 894
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 895
    .line 896
    .line 897
    move-result v32

    .line 898
    move/from16 v43, v32

    .line 899
    .line 900
    move/from16 v32, v4

    .line 901
    .line 902
    move/from16 v4, v43

    .line 903
    .line 904
    goto :goto_1a

    .line 905
    :cond_22
    move/from16 v32, v4

    .line 906
    .line 907
    iget v4, v3, Lcom/google/android/gms/internal/ads/t1;->c:I

    .line 908
    .line 909
    :goto_1a
    if-ltz v4, :cond_29

    .line 910
    .line 911
    if-eqz v11, :cond_23

    .line 912
    .line 913
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 914
    .line 915
    .line 916
    move-result v6

    .line 917
    goto :goto_1b

    .line 918
    :cond_23
    if-nez v10, :cond_25

    .line 919
    .line 920
    if-eqz v0, :cond_24

    .line 921
    .line 922
    move/from16 v6, v26

    .line 923
    .line 924
    const/4 v10, 0x0

    .line 925
    goto :goto_1b

    .line 926
    :cond_24
    const/4 v10, 0x0

    .line 927
    :cond_25
    iget v6, v3, Lcom/google/android/gms/internal/ads/t1;->d:I

    .line 928
    .line 929
    :goto_1b
    if-eqz v15, :cond_26

    .line 930
    .line 931
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 932
    .line 933
    .line 934
    move-result v33

    .line 935
    move-object/from16 v34, v14

    .line 936
    .line 937
    move/from16 v35, v15

    .line 938
    .line 939
    move/from16 v43, v33

    .line 940
    .line 941
    move/from16 v33, v0

    .line 942
    .line 943
    move/from16 v0, v43

    .line 944
    .line 945
    goto :goto_1c

    .line 946
    :cond_26
    move/from16 v33, v0

    .line 947
    .line 948
    move-object/from16 v34, v14

    .line 949
    .line 950
    move/from16 v35, v15

    .line 951
    .line 952
    const/4 v0, 0x0

    .line 953
    :goto_1c
    int-to-long v14, v0

    .line 954
    add-long/2addr v14, v12

    .line 955
    sub-long v36, v14, v17

    .line 956
    .line 957
    sget-object v42, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    .line 958
    .line 959
    iget-wide v14, v2, Lcom/google/android/gms/internal/ads/D1;->c:J

    .line 960
    .line 961
    const-wide/32 v38, 0xf4240

    .line 962
    .line 963
    .line 964
    move-wide/from16 v40, v14

    .line 965
    .line 966
    invoke-static/range {v36 .. v42}, Lcom/google/android/gms/internal/ads/Et;->v(JJJLjava/math/RoundingMode;)J

    .line 967
    .line 968
    .line 969
    move-result-wide v14

    .line 970
    aput-wide v14, v8, v10

    .line 971
    .line 972
    iget-boolean v0, v7, Lcom/google/android/gms/internal/ads/F1;->q:Z

    .line 973
    .line 974
    if-nez v0, :cond_27

    .line 975
    .line 976
    move-object/from16 v0, v29

    .line 977
    .line 978
    move-object/from16 v29, v2

    .line 979
    .line 980
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/w1;->d:Lcom/google/android/gms/internal/ads/G1;

    .line 981
    .line 982
    move-object/from16 v36, v3

    .line 983
    .line 984
    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/G1;->h:J

    .line 985
    .line 986
    add-long/2addr v14, v2

    .line 987
    aput-wide v14, v8, v10

    .line 988
    .line 989
    goto :goto_1d

    .line 990
    :cond_27
    move-object/from16 v36, v3

    .line 991
    .line 992
    move-object/from16 v0, v29

    .line 993
    .line 994
    move-object/from16 v29, v2

    .line 995
    .line 996
    :goto_1d
    aput v4, v1, v10

    .line 997
    .line 998
    const/16 v2, 0x10

    .line 999
    .line 1000
    shr-int/lit8 v3, v6, 0x10

    .line 1001
    .line 1002
    const/4 v2, 0x1

    .line 1003
    and-int/2addr v3, v2

    .line 1004
    if-nez v3, :cond_28

    .line 1005
    .line 1006
    const/4 v2, 0x1

    .line 1007
    goto :goto_1e

    .line 1008
    :cond_28
    const/4 v2, 0x0

    .line 1009
    :goto_1e
    aput-boolean v2, v9, v10

    .line 1010
    .line 1011
    int-to-long v2, v5

    .line 1012
    add-long/2addr v12, v2

    .line 1013
    add-int/lit8 v10, v10, 0x1

    .line 1014
    .line 1015
    move/from16 v5, v28

    .line 1016
    .line 1017
    move-object/from16 v2, v29

    .line 1018
    .line 1019
    move-object/from16 v6, v30

    .line 1020
    .line 1021
    move/from16 v3, v31

    .line 1022
    .line 1023
    move/from16 v4, v32

    .line 1024
    .line 1025
    move-object/from16 v14, v34

    .line 1026
    .line 1027
    move/from16 v15, v35

    .line 1028
    .line 1029
    move-object/from16 v28, v36

    .line 1030
    .line 1031
    move-object/from16 v29, v0

    .line 1032
    .line 1033
    move/from16 v0, v33

    .line 1034
    .line 1035
    goto/16 :goto_17

    .line 1036
    .line 1037
    :cond_29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1038
    .line 1039
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1040
    .line 1041
    .line 1042
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1043
    .line 1044
    .line 1045
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1046
    .line 1047
    .line 1048
    move-result-object v0

    .line 1049
    const/4 v1, 0x0

    .line 1050
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 1051
    .line 1052
    .line 1053
    move-result-object v0

    .line 1054
    throw v0

    .line 1055
    :cond_2a
    const/4 v1, 0x0

    .line 1056
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1057
    .line 1058
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1059
    .line 1060
    .line 1061
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1062
    .line 1063
    .line 1064
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1065
    .line 1066
    .line 1067
    move-result-object v0

    .line 1068
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v0

    .line 1072
    throw v0

    .line 1073
    :cond_2b
    move/from16 v28, v5

    .line 1074
    .line 1075
    move-object/from16 v30, v6

    .line 1076
    .line 1077
    move-object/from16 v0, v29

    .line 1078
    .line 1079
    iput-wide v12, v7, Lcom/google/android/gms/internal/ads/F1;->p:J

    .line 1080
    .line 1081
    move/from16 v5, v21

    .line 1082
    .line 1083
    move/from16 v10, v28

    .line 1084
    .line 1085
    goto :goto_1f

    .line 1086
    :cond_2c
    move/from16 v25, v1

    .line 1087
    .line 1088
    move/from16 v19, v2

    .line 1089
    .line 1090
    move/from16 v23, v3

    .line 1091
    .line 1092
    move-object/from16 v22, v4

    .line 1093
    .line 1094
    move-object/from16 v30, v6

    .line 1095
    .line 1096
    move-object/from16 v27, v8

    .line 1097
    .line 1098
    move/from16 v20, v9

    .line 1099
    .line 1100
    move-object/from16 v24, v11

    .line 1101
    .line 1102
    move-object v0, v12

    .line 1103
    :goto_1f
    add-int/lit8 v1, v25, 0x1

    .line 1104
    .line 1105
    move-object v12, v0

    .line 1106
    move/from16 v2, v19

    .line 1107
    .line 1108
    move/from16 v9, v20

    .line 1109
    .line 1110
    move-object/from16 v4, v22

    .line 1111
    .line 1112
    move/from16 v3, v23

    .line 1113
    .line 1114
    move-object/from16 v11, v24

    .line 1115
    .line 1116
    move-object/from16 v8, v27

    .line 1117
    .line 1118
    move-object/from16 v6, v30

    .line 1119
    .line 1120
    const v15, 0x7472756e

    .line 1121
    .line 1122
    .line 1123
    move-object/from16 v0, p0

    .line 1124
    .line 1125
    goto/16 :goto_11

    .line 1126
    .line 1127
    :cond_2d
    move/from16 v19, v2

    .line 1128
    .line 1129
    move/from16 v23, v3

    .line 1130
    .line 1131
    move-object/from16 v22, v4

    .line 1132
    .line 1133
    move-object/from16 v30, v6

    .line 1134
    .line 1135
    move-object/from16 v27, v8

    .line 1136
    .line 1137
    move-object/from16 v24, v11

    .line 1138
    .line 1139
    move-object v0, v12

    .line 1140
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/w1;->d:Lcom/google/android/gms/internal/ads/G1;

    .line 1141
    .line 1142
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/G1;->a:Lcom/google/android/gms/internal/ads/D1;

    .line 1143
    .line 1144
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/F1;->a:Lcom/google/android/gms/internal/ads/t1;

    .line 1145
    .line 1146
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1147
    .line 1148
    .line 1149
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/D1;->k:[Lcom/google/android/gms/internal/ads/E1;

    .line 1150
    .line 1151
    iget v1, v1, Lcom/google/android/gms/internal/ads/t1;->a:I

    .line 1152
    .line 1153
    aget-object v0, v0, v1

    .line 1154
    .line 1155
    const v1, 0x7361697a

    .line 1156
    .line 1157
    .line 1158
    move-object/from16 v6, v30

    .line 1159
    .line 1160
    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/o1;->f(I)Lcom/google/android/gms/internal/ads/p1;

    .line 1161
    .line 1162
    .line 1163
    move-result-object v1

    .line 1164
    if-eqz v1, :cond_34

    .line 1165
    .line 1166
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1167
    .line 1168
    .line 1169
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/p1;->c:Lcom/google/android/gms/internal/ads/jr;

    .line 1170
    .line 1171
    const/16 v2, 0x8

    .line 1172
    .line 1173
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 1174
    .line 1175
    .line 1176
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 1177
    .line 1178
    .line 1179
    move-result v3

    .line 1180
    const/4 v4, 0x1

    .line 1181
    and-int/2addr v3, v4

    .line 1182
    if-ne v3, v4, :cond_2e

    .line 1183
    .line 1184
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 1185
    .line 1186
    .line 1187
    :cond_2e
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/jr;->w()I

    .line 1188
    .line 1189
    .line 1190
    move-result v2

    .line 1191
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/jr;->z()I

    .line 1192
    .line 1193
    .line 1194
    move-result v3

    .line 1195
    iget v4, v7, Lcom/google/android/gms/internal/ads/F1;->e:I

    .line 1196
    .line 1197
    if-gt v3, v4, :cond_33

    .line 1198
    .line 1199
    iget v4, v0, Lcom/google/android/gms/internal/ads/E1;->d:I

    .line 1200
    .line 1201
    if-nez v2, :cond_31

    .line 1202
    .line 1203
    iget-object v2, v7, Lcom/google/android/gms/internal/ads/F1;->l:[Z

    .line 1204
    .line 1205
    const/4 v5, 0x0

    .line 1206
    const/4 v8, 0x0

    .line 1207
    :goto_20
    if-ge v5, v3, :cond_30

    .line 1208
    .line 1209
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/jr;->w()I

    .line 1210
    .line 1211
    .line 1212
    move-result v9

    .line 1213
    add-int/2addr v8, v9

    .line 1214
    if-le v9, v4, :cond_2f

    .line 1215
    .line 1216
    const/4 v9, 0x1

    .line 1217
    goto :goto_21

    .line 1218
    :cond_2f
    const/4 v9, 0x0

    .line 1219
    :goto_21
    aput-boolean v9, v2, v5

    .line 1220
    .line 1221
    add-int/lit8 v5, v5, 0x1

    .line 1222
    .line 1223
    goto :goto_20

    .line 1224
    :cond_30
    const/4 v4, 0x0

    .line 1225
    goto :goto_23

    .line 1226
    :cond_31
    if-le v2, v4, :cond_32

    .line 1227
    .line 1228
    const/4 v1, 0x1

    .line 1229
    goto :goto_22

    .line 1230
    :cond_32
    const/4 v1, 0x0

    .line 1231
    :goto_22
    mul-int v8, v2, v3

    .line 1232
    .line 1233
    iget-object v2, v7, Lcom/google/android/gms/internal/ads/F1;->l:[Z

    .line 1234
    .line 1235
    const/4 v4, 0x0

    .line 1236
    invoke-static {v2, v4, v3, v1}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 1237
    .line 1238
    .line 1239
    :goto_23
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/F1;->l:[Z

    .line 1240
    .line 1241
    iget v2, v7, Lcom/google/android/gms/internal/ads/F1;->e:I

    .line 1242
    .line 1243
    invoke-static {v1, v3, v2, v4}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 1244
    .line 1245
    .line 1246
    if-lez v8, :cond_34

    .line 1247
    .line 1248
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/F1;->n:Lcom/google/android/gms/internal/ads/jr;

    .line 1249
    .line 1250
    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/jr;->g(I)V

    .line 1251
    .line 1252
    .line 1253
    const/4 v1, 0x1

    .line 1254
    iput-boolean v1, v7, Lcom/google/android/gms/internal/ads/F1;->k:Z

    .line 1255
    .line 1256
    iput-boolean v1, v7, Lcom/google/android/gms/internal/ads/F1;->o:Z

    .line 1257
    .line 1258
    goto :goto_24

    .line 1259
    :cond_33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1260
    .line 1261
    const-string v1, "Saiz sample count "

    .line 1262
    .line 1263
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1264
    .line 1265
    .line 1266
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1267
    .line 1268
    .line 1269
    const-string v1, " is greater than fragment sample count"

    .line 1270
    .line 1271
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1272
    .line 1273
    .line 1274
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1275
    .line 1276
    .line 1277
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1278
    .line 1279
    .line 1280
    move-result-object v0

    .line 1281
    const/4 v1, 0x0

    .line 1282
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 1283
    .line 1284
    .line 1285
    move-result-object v0

    .line 1286
    throw v0

    .line 1287
    :cond_34
    :goto_24
    const v1, 0x7361696f

    .line 1288
    .line 1289
    .line 1290
    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/o1;->f(I)Lcom/google/android/gms/internal/ads/p1;

    .line 1291
    .line 1292
    .line 1293
    move-result-object v1

    .line 1294
    if-eqz v1, :cond_37

    .line 1295
    .line 1296
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/p1;->c:Lcom/google/android/gms/internal/ads/jr;

    .line 1297
    .line 1298
    const/16 v2, 0x8

    .line 1299
    .line 1300
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 1301
    .line 1302
    .line 1303
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 1304
    .line 1305
    .line 1306
    move-result v3

    .line 1307
    and-int/lit8 v4, v3, 0x1

    .line 1308
    .line 1309
    const/4 v5, 0x1

    .line 1310
    if-ne v4, v5, :cond_35

    .line 1311
    .line 1312
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 1313
    .line 1314
    .line 1315
    :cond_35
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/jr;->z()I

    .line 1316
    .line 1317
    .line 1318
    move-result v2

    .line 1319
    if-ne v2, v5, :cond_38

    .line 1320
    .line 1321
    invoke-static {v3}, Lq0/e;->c(I)I

    .line 1322
    .line 1323
    .line 1324
    move-result v2

    .line 1325
    iget-wide v3, v7, Lcom/google/android/gms/internal/ads/F1;->c:J

    .line 1326
    .line 1327
    if-nez v2, :cond_36

    .line 1328
    .line 1329
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/jr;->E()J

    .line 1330
    .line 1331
    .line 1332
    move-result-wide v1

    .line 1333
    goto :goto_25

    .line 1334
    :cond_36
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/jr;->F()J

    .line 1335
    .line 1336
    .line 1337
    move-result-wide v1

    .line 1338
    :goto_25
    add-long/2addr v3, v1

    .line 1339
    iput-wide v3, v7, Lcom/google/android/gms/internal/ads/F1;->c:J

    .line 1340
    .line 1341
    :cond_37
    const/4 v1, 0x0

    .line 1342
    goto :goto_26

    .line 1343
    :cond_38
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1344
    .line 1345
    const-string v1, "Unexpected saio entry count: "

    .line 1346
    .line 1347
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1348
    .line 1349
    .line 1350
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1351
    .line 1352
    .line 1353
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1354
    .line 1355
    .line 1356
    move-result-object v0

    .line 1357
    const/4 v1, 0x0

    .line 1358
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 1359
    .line 1360
    .line 1361
    move-result-object v0

    .line 1362
    throw v0

    .line 1363
    :goto_26
    const v2, 0x73656e63

    .line 1364
    .line 1365
    .line 1366
    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/ads/o1;->f(I)Lcom/google/android/gms/internal/ads/p1;

    .line 1367
    .line 1368
    .line 1369
    move-result-object v2

    .line 1370
    if-eqz v2, :cond_39

    .line 1371
    .line 1372
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/p1;->c:Lcom/google/android/gms/internal/ads/jr;

    .line 1373
    .line 1374
    const/4 v3, 0x0

    .line 1375
    invoke-static {v2, v3, v7}, Lcom/google/android/gms/internal/ads/x1;->g(Lcom/google/android/gms/internal/ads/jr;ILcom/google/android/gms/internal/ads/F1;)V

    .line 1376
    .line 1377
    .line 1378
    :cond_39
    if-eqz v0, :cond_3a

    .line 1379
    .line 1380
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/E1;->b:Ljava/lang/String;

    .line 1381
    .line 1382
    move-object v10, v0

    .line 1383
    goto :goto_27

    .line 1384
    :cond_3a
    move-object v10, v1

    .line 1385
    :goto_27
    move-object v0, v1

    .line 1386
    move-object v2, v0

    .line 1387
    const/4 v3, 0x0

    .line 1388
    :goto_28
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    .line 1389
    .line 1390
    .line 1391
    move-result v4

    .line 1392
    if-ge v3, v4, :cond_3d

    .line 1393
    .line 1394
    move-object/from16 v4, v27

    .line 1395
    .line 1396
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1397
    .line 1398
    .line 1399
    move-result-object v5

    .line 1400
    check-cast v5, Lcom/google/android/gms/internal/ads/p1;

    .line 1401
    .line 1402
    iget-object v6, v5, Lcom/google/android/gms/internal/ads/p1;->c:Lcom/google/android/gms/internal/ads/jr;

    .line 1403
    .line 1404
    iget v5, v5, Lq0/e;->b:I

    .line 1405
    .line 1406
    const v8, 0x73626770

    .line 1407
    .line 1408
    .line 1409
    const v9, 0x73656967

    .line 1410
    .line 1411
    .line 1412
    if-ne v5, v8, :cond_3b

    .line 1413
    .line 1414
    const/16 v15, 0xc

    .line 1415
    .line 1416
    invoke-virtual {v6, v15}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 1417
    .line 1418
    .line 1419
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 1420
    .line 1421
    .line 1422
    move-result v5

    .line 1423
    if-ne v5, v9, :cond_3c

    .line 1424
    .line 1425
    move-object v0, v6

    .line 1426
    goto :goto_29

    .line 1427
    :cond_3b
    const/16 v15, 0xc

    .line 1428
    .line 1429
    const v8, 0x73677064

    .line 1430
    .line 1431
    .line 1432
    if-ne v5, v8, :cond_3c

    .line 1433
    .line 1434
    invoke-virtual {v6, v15}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 1435
    .line 1436
    .line 1437
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 1438
    .line 1439
    .line 1440
    move-result v5

    .line 1441
    if-ne v5, v9, :cond_3c

    .line 1442
    .line 1443
    move-object v2, v6

    .line 1444
    :cond_3c
    :goto_29
    add-int/lit8 v3, v3, 0x1

    .line 1445
    .line 1446
    move-object/from16 v27, v4

    .line 1447
    .line 1448
    goto :goto_28

    .line 1449
    :cond_3d
    move-object/from16 v4, v27

    .line 1450
    .line 1451
    const/16 v15, 0xc

    .line 1452
    .line 1453
    if-eqz v0, :cond_3e

    .line 1454
    .line 1455
    if-nez v2, :cond_40

    .line 1456
    .line 1457
    :cond_3e
    const/4 v0, 0x1

    .line 1458
    :cond_3f
    const/16 v3, 0xc

    .line 1459
    .line 1460
    goto/16 :goto_2b

    .line 1461
    .line 1462
    :cond_40
    const/16 v3, 0x8

    .line 1463
    .line 1464
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 1465
    .line 1466
    .line 1467
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 1468
    .line 1469
    .line 1470
    move-result v5

    .line 1471
    invoke-static {v5}, Lq0/e;->c(I)I

    .line 1472
    .line 1473
    .line 1474
    move-result v5

    .line 1475
    const/4 v6, 0x4

    .line 1476
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 1477
    .line 1478
    .line 1479
    const/4 v8, 0x1

    .line 1480
    if-ne v5, v8, :cond_41

    .line 1481
    .line 1482
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 1483
    .line 1484
    .line 1485
    :cond_41
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 1486
    .line 1487
    .line 1488
    move-result v0

    .line 1489
    if-ne v0, v8, :cond_47

    .line 1490
    .line 1491
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 1492
    .line 1493
    .line 1494
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 1495
    .line 1496
    .line 1497
    move-result v0

    .line 1498
    invoke-static {v0}, Lq0/e;->c(I)I

    .line 1499
    .line 1500
    .line 1501
    move-result v0

    .line 1502
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 1503
    .line 1504
    .line 1505
    if-ne v0, v8, :cond_43

    .line 1506
    .line 1507
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/jr;->E()J

    .line 1508
    .line 1509
    .line 1510
    move-result-wide v8

    .line 1511
    cmp-long v0, v8, v17

    .line 1512
    .line 1513
    if-eqz v0, :cond_42

    .line 1514
    .line 1515
    goto :goto_2a

    .line 1516
    :cond_42
    const-string v0, "Variable length description in sgpd found (unsupported)"

    .line 1517
    .line 1518
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ka;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/Ka;

    .line 1519
    .line 1520
    .line 1521
    move-result-object v0

    .line 1522
    throw v0

    .line 1523
    :cond_43
    const/4 v3, 0x2

    .line 1524
    if-lt v0, v3, :cond_44

    .line 1525
    .line 1526
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 1527
    .line 1528
    .line 1529
    :cond_44
    :goto_2a
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/jr;->E()J

    .line 1530
    .line 1531
    .line 1532
    move-result-wide v8

    .line 1533
    const-wide/16 v11, 0x1

    .line 1534
    .line 1535
    cmp-long v0, v8, v11

    .line 1536
    .line 1537
    if-nez v0, :cond_46

    .line 1538
    .line 1539
    const/4 v0, 0x1

    .line 1540
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 1541
    .line 1542
    .line 1543
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/jr;->w()I

    .line 1544
    .line 1545
    .line 1546
    move-result v3

    .line 1547
    and-int/lit16 v5, v3, 0xf0

    .line 1548
    .line 1549
    shr-int/lit8 v13, v5, 0x4

    .line 1550
    .line 1551
    and-int/lit8 v14, v3, 0xf

    .line 1552
    .line 1553
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/jr;->w()I

    .line 1554
    .line 1555
    .line 1556
    move-result v3

    .line 1557
    if-ne v3, v0, :cond_3f

    .line 1558
    .line 1559
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/jr;->w()I

    .line 1560
    .line 1561
    .line 1562
    move-result v11

    .line 1563
    const/16 v3, 0x10

    .line 1564
    .line 1565
    new-array v12, v3, [B

    .line 1566
    .line 1567
    const/4 v5, 0x0

    .line 1568
    invoke-virtual {v2, v5, v12, v3}, Lcom/google/android/gms/internal/ads/jr;->f(I[BI)V

    .line 1569
    .line 1570
    .line 1571
    if-nez v11, :cond_45

    .line 1572
    .line 1573
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/jr;->w()I

    .line 1574
    .line 1575
    .line 1576
    move-result v1

    .line 1577
    new-array v3, v1, [B

    .line 1578
    .line 1579
    invoke-virtual {v2, v5, v3, v1}, Lcom/google/android/gms/internal/ads/jr;->f(I[BI)V

    .line 1580
    .line 1581
    .line 1582
    move-object v1, v3

    .line 1583
    :cond_45
    iput-boolean v0, v7, Lcom/google/android/gms/internal/ads/F1;->k:Z

    .line 1584
    .line 1585
    new-instance v2, Lcom/google/android/gms/internal/ads/E1;

    .line 1586
    .line 1587
    const/4 v9, 0x1

    .line 1588
    move-object v8, v2

    .line 1589
    const/16 v3, 0xc

    .line 1590
    .line 1591
    move-object v15, v1

    .line 1592
    invoke-direct/range {v8 .. v15}, Lcom/google/android/gms/internal/ads/E1;-><init>(ZLjava/lang/String;I[BII[B)V

    .line 1593
    .line 1594
    .line 1595
    iput-object v2, v7, Lcom/google/android/gms/internal/ads/F1;->m:Lcom/google/android/gms/internal/ads/E1;

    .line 1596
    .line 1597
    goto :goto_2b

    .line 1598
    :cond_46
    const-string v0, "Entry count in sgpd != 1 (unsupported)."

    .line 1599
    .line 1600
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ka;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/Ka;

    .line 1601
    .line 1602
    .line 1603
    move-result-object v0

    .line 1604
    throw v0

    .line 1605
    :cond_47
    const-string v0, "Entry count in sbgp != 1 (unsupported)."

    .line 1606
    .line 1607
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ka;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/Ka;

    .line 1608
    .line 1609
    .line 1610
    move-result-object v0

    .line 1611
    throw v0

    .line 1612
    :goto_2b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 1613
    .line 1614
    .line 1615
    move-result v1

    .line 1616
    const/4 v2, 0x0

    .line 1617
    :goto_2c
    if-ge v2, v1, :cond_4a

    .line 1618
    .line 1619
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1620
    .line 1621
    .line 1622
    move-result-object v5

    .line 1623
    check-cast v5, Lcom/google/android/gms/internal/ads/p1;

    .line 1624
    .line 1625
    iget v6, v5, Lq0/e;->b:I

    .line 1626
    .line 1627
    const v8, 0x75756964

    .line 1628
    .line 1629
    .line 1630
    if-ne v6, v8, :cond_48

    .line 1631
    .line 1632
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/p1;->c:Lcom/google/android/gms/internal/ads/jr;

    .line 1633
    .line 1634
    const/16 v6, 0x8

    .line 1635
    .line 1636
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 1637
    .line 1638
    .line 1639
    move-object/from16 v8, p0

    .line 1640
    .line 1641
    iget-object v9, v8, Lcom/google/android/gms/internal/ads/x1;->h:[B

    .line 1642
    .line 1643
    const/4 v10, 0x0

    .line 1644
    const/16 v11, 0x10

    .line 1645
    .line 1646
    invoke-virtual {v5, v10, v9, v11}, Lcom/google/android/gms/internal/ads/jr;->f(I[BI)V

    .line 1647
    .line 1648
    .line 1649
    sget-object v12, Lcom/google/android/gms/internal/ads/x1;->J:[B

    .line 1650
    .line 1651
    invoke-static {v9, v12}, Ljava/util/Arrays;->equals([B[B)Z

    .line 1652
    .line 1653
    .line 1654
    move-result v9

    .line 1655
    if-eqz v9, :cond_49

    .line 1656
    .line 1657
    invoke-static {v5, v11, v7}, Lcom/google/android/gms/internal/ads/x1;->g(Lcom/google/android/gms/internal/ads/jr;ILcom/google/android/gms/internal/ads/F1;)V

    .line 1658
    .line 1659
    .line 1660
    goto :goto_2d

    .line 1661
    :cond_48
    const/16 v6, 0x8

    .line 1662
    .line 1663
    const/4 v10, 0x0

    .line 1664
    const/16 v11, 0x10

    .line 1665
    .line 1666
    move-object/from16 v8, p0

    .line 1667
    .line 1668
    :cond_49
    :goto_2d
    add-int/lit8 v2, v2, 0x1

    .line 1669
    .line 1670
    goto :goto_2c

    .line 1671
    :cond_4a
    const/16 v6, 0x8

    .line 1672
    .line 1673
    const/4 v10, 0x0

    .line 1674
    move-object/from16 v8, p0

    .line 1675
    .line 1676
    :goto_2e
    add-int/lit8 v1, v23, 0x1

    .line 1677
    .line 1678
    move v3, v1

    .line 1679
    move-object v0, v8

    .line 1680
    move-object/from16 v1, v16

    .line 1681
    .line 1682
    move/from16 v2, v19

    .line 1683
    .line 1684
    move-object/from16 v4, v22

    .line 1685
    .line 1686
    move-object/from16 v11, v24

    .line 1687
    .line 1688
    goto/16 :goto_8

    .line 1689
    .line 1690
    :cond_4b
    move-object v8, v0

    .line 1691
    move-object/from16 v22, v4

    .line 1692
    .line 1693
    move-object/from16 v24, v11

    .line 1694
    .line 1695
    const/4 v1, 0x0

    .line 1696
    const/4 v10, 0x0

    .line 1697
    invoke-static/range {v22 .. v22}, Lcom/google/android/gms/internal/ads/x1;->a(Ljava/util/ArrayList;)Lcom/google/android/gms/internal/ads/mO;

    .line 1698
    .line 1699
    .line 1700
    move-result-object v0

    .line 1701
    if-eqz v0, :cond_4d

    .line 1702
    .line 1703
    invoke-virtual/range {v24 .. v24}, Landroid/util/SparseArray;->size()I

    .line 1704
    .line 1705
    .line 1706
    move-result v2

    .line 1707
    const/4 v3, 0x0

    .line 1708
    :goto_2f
    if-ge v3, v2, :cond_4d

    .line 1709
    .line 1710
    move-object/from16 v4, v24

    .line 1711
    .line 1712
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 1713
    .line 1714
    .line 1715
    move-result-object v5

    .line 1716
    check-cast v5, Lcom/google/android/gms/internal/ads/w1;

    .line 1717
    .line 1718
    iget-object v6, v5, Lcom/google/android/gms/internal/ads/w1;->d:Lcom/google/android/gms/internal/ads/G1;

    .line 1719
    .line 1720
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/G1;->a:Lcom/google/android/gms/internal/ads/D1;

    .line 1721
    .line 1722
    iget-object v7, v5, Lcom/google/android/gms/internal/ads/w1;->b:Lcom/google/android/gms/internal/ads/F1;

    .line 1723
    .line 1724
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/F1;->a:Lcom/google/android/gms/internal/ads/t1;

    .line 1725
    .line 1726
    sget v9, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 1727
    .line 1728
    iget v7, v7, Lcom/google/android/gms/internal/ads/t1;->a:I

    .line 1729
    .line 1730
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/D1;->k:[Lcom/google/android/gms/internal/ads/E1;

    .line 1731
    .line 1732
    aget-object v6, v6, v7

    .line 1733
    .line 1734
    if-eqz v6, :cond_4c

    .line 1735
    .line 1736
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/E1;->b:Ljava/lang/String;

    .line 1737
    .line 1738
    goto :goto_30

    .line 1739
    :cond_4c
    move-object v6, v1

    .line 1740
    :goto_30
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/mO;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/mO;

    .line 1741
    .line 1742
    .line 1743
    move-result-object v6

    .line 1744
    iget-object v7, v5, Lcom/google/android/gms/internal/ads/w1;->d:Lcom/google/android/gms/internal/ads/G1;

    .line 1745
    .line 1746
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/G1;->a:Lcom/google/android/gms/internal/ads/D1;

    .line 1747
    .line 1748
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/D1;->f:Lcom/google/android/gms/internal/ads/p0;

    .line 1749
    .line 1750
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1751
    .line 1752
    .line 1753
    new-instance v9, Lcom/google/android/gms/internal/ads/K;

    .line 1754
    .line 1755
    invoke-direct {v9, v7}, Lcom/google/android/gms/internal/ads/K;-><init>(Lcom/google/android/gms/internal/ads/p0;)V

    .line 1756
    .line 1757
    .line 1758
    iput-object v6, v9, Lcom/google/android/gms/internal/ads/K;->p:Lcom/google/android/gms/internal/ads/mO;

    .line 1759
    .line 1760
    new-instance v6, Lcom/google/android/gms/internal/ads/p0;

    .line 1761
    .line 1762
    invoke-direct {v6, v9}, Lcom/google/android/gms/internal/ads/p0;-><init>(Lcom/google/android/gms/internal/ads/K;)V

    .line 1763
    .line 1764
    .line 1765
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/w1;->a:Lcom/google/android/gms/internal/ads/e0;

    .line 1766
    .line 1767
    invoke-interface {v5, v6}, Lcom/google/android/gms/internal/ads/e0;->d(Lcom/google/android/gms/internal/ads/p0;)V

    .line 1768
    .line 1769
    .line 1770
    add-int/lit8 v3, v3, 0x1

    .line 1771
    .line 1772
    move-object/from16 v24, v4

    .line 1773
    .line 1774
    goto :goto_2f

    .line 1775
    :cond_4d
    move-object/from16 v4, v24

    .line 1776
    .line 1777
    iget-wide v0, v8, Lcom/google/android/gms/internal/ads/x1;->w:J

    .line 1778
    .line 1779
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 1780
    .line 1781
    .line 1782
    .line 1783
    .line 1784
    cmp-long v5, v0, v2

    .line 1785
    .line 1786
    if-eqz v5, :cond_51

    .line 1787
    .line 1788
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 1789
    .line 1790
    .line 1791
    move-result v0

    .line 1792
    const/4 v12, 0x0

    .line 1793
    :goto_31
    if-ge v12, v0, :cond_50

    .line 1794
    .line 1795
    invoke-virtual {v4, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 1796
    .line 1797
    .line 1798
    move-result-object v1

    .line 1799
    check-cast v1, Lcom/google/android/gms/internal/ads/w1;

    .line 1800
    .line 1801
    iget-wide v2, v8, Lcom/google/android/gms/internal/ads/x1;->w:J

    .line 1802
    .line 1803
    iget v5, v1, Lcom/google/android/gms/internal/ads/w1;->f:I

    .line 1804
    .line 1805
    :goto_32
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/w1;->b:Lcom/google/android/gms/internal/ads/F1;

    .line 1806
    .line 1807
    iget v7, v6, Lcom/google/android/gms/internal/ads/F1;->e:I

    .line 1808
    .line 1809
    if-ge v5, v7, :cond_4f

    .line 1810
    .line 1811
    iget-object v7, v6, Lcom/google/android/gms/internal/ads/F1;->i:[J

    .line 1812
    .line 1813
    aget-wide v9, v7, v5

    .line 1814
    .line 1815
    cmp-long v7, v9, v2

    .line 1816
    .line 1817
    if-gtz v7, :cond_4f

    .line 1818
    .line 1819
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/F1;->j:[Z

    .line 1820
    .line 1821
    aget-boolean v6, v6, v5

    .line 1822
    .line 1823
    if-eqz v6, :cond_4e

    .line 1824
    .line 1825
    iput v5, v1, Lcom/google/android/gms/internal/ads/w1;->i:I

    .line 1826
    .line 1827
    :cond_4e
    add-int/lit8 v5, v5, 0x1

    .line 1828
    .line 1829
    goto :goto_32

    .line 1830
    :cond_4f
    add-int/lit8 v12, v12, 0x1

    .line 1831
    .line 1832
    goto :goto_31

    .line 1833
    :cond_50
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 1834
    .line 1835
    .line 1836
    .line 1837
    .line 1838
    iput-wide v1, v8, Lcom/google/android/gms/internal/ads/x1;->w:J

    .line 1839
    .line 1840
    :cond_51
    :goto_33
    move-object v0, v8

    .line 1841
    goto/16 :goto_0

    .line 1842
    .line 1843
    :cond_52
    move-object v8, v0

    .line 1844
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 1845
    .line 1846
    .line 1847
    move-result v0

    .line 1848
    if-nez v0, :cond_51

    .line 1849
    .line 1850
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 1851
    .line 1852
    .line 1853
    move-result-object v0

    .line 1854
    check-cast v0, Lcom/google/android/gms/internal/ads/o1;

    .line 1855
    .line 1856
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/o1;->e:Ljava/util/ArrayList;

    .line 1857
    .line 1858
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1859
    .line 1860
    .line 1861
    goto :goto_33

    .line 1862
    :cond_53
    move-object v8, v0

    .line 1863
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/x1;->b()V

    .line 1864
    .line 1865
    .line 1866
    return-void
.end method

.method public final synthetic zzd()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/x1;->o:Lcom/google/android/gms/internal/ads/PA;

    return-object v0
.end method
