.class public final LQ6/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public G:LQ6/j;

.field public H:Z

.field public I:LQ6/y;

.field public J:J

.field public K:[B

.field public L:I

.field public M:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, LQ6/h;->J:J

    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    iput v0, p0, LQ6/h;->L:I

    .line 10
    .line 11
    iput v0, p0, LQ6/h;->M:I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final E(J)I
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    iget-object v3, v0, LQ6/h;->G:LQ6/j;

    .line 6
    .line 7
    if-eqz v3, :cond_a

    .line 8
    .line 9
    const-wide/16 v4, -0x1

    .line 10
    .line 11
    cmp-long v6, v1, v4

    .line 12
    .line 13
    if-ltz v6, :cond_9

    .line 14
    .line 15
    iget-wide v4, v3, LQ6/j;->H:J

    .line 16
    .line 17
    cmp-long v7, v1, v4

    .line 18
    .line 19
    if-gtz v7, :cond_9

    .line 20
    .line 21
    if-eqz v6, :cond_8

    .line 22
    .line 23
    if-nez v7, :cond_0

    .line 24
    .line 25
    goto/16 :goto_3

    .line 26
    .line 27
    :cond_0
    iget-object v6, v3, LQ6/j;->G:LQ6/y;

    .line 28
    .line 29
    iget-object v7, v0, LQ6/h;->I:LQ6/y;

    .line 30
    .line 31
    const-wide/16 v8, 0x0

    .line 32
    .line 33
    if-eqz v7, :cond_2

    .line 34
    .line 35
    iget-wide v10, v0, LQ6/h;->J:J

    .line 36
    .line 37
    iget v12, v0, LQ6/h;->L:I

    .line 38
    .line 39
    iget v13, v7, LQ6/y;->b:I

    .line 40
    .line 41
    sub-int/2addr v12, v13

    .line 42
    int-to-long v12, v12

    .line 43
    sub-long/2addr v10, v12

    .line 44
    cmp-long v12, v10, v1

    .line 45
    .line 46
    if-lez v12, :cond_1

    .line 47
    .line 48
    move-wide v4, v10

    .line 49
    move-object/from16 v16, v7

    .line 50
    .line 51
    move-object v7, v6

    .line 52
    move-object/from16 v6, v16

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    move-wide v8, v10

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    move-object v7, v6

    .line 58
    :goto_0
    sub-long v10, v4, v1

    .line 59
    .line 60
    sub-long v12, v1, v8

    .line 61
    .line 62
    cmp-long v14, v10, v12

    .line 63
    .line 64
    if-lez v14, :cond_3

    .line 65
    .line 66
    :goto_1
    invoke-static {v7}, Lz4/q0;->e(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    iget v4, v7, LQ6/y;->c:I

    .line 70
    .line 71
    iget v5, v7, LQ6/y;->b:I

    .line 72
    .line 73
    sub-int/2addr v4, v5

    .line 74
    int-to-long v4, v4

    .line 75
    add-long/2addr v4, v8

    .line 76
    cmp-long v6, v1, v4

    .line 77
    .line 78
    if-ltz v6, :cond_5

    .line 79
    .line 80
    iget-object v7, v7, LQ6/y;->f:LQ6/y;

    .line 81
    .line 82
    move-wide v8, v4

    .line 83
    goto :goto_1

    .line 84
    :cond_3
    :goto_2
    cmp-long v7, v4, v1

    .line 85
    .line 86
    if-lez v7, :cond_4

    .line 87
    .line 88
    invoke-static {v6}, Lz4/q0;->e(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    iget-object v6, v6, LQ6/y;->g:LQ6/y;

    .line 92
    .line 93
    invoke-static {v6}, Lz4/q0;->e(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    iget v7, v6, LQ6/y;->c:I

    .line 97
    .line 98
    iget v8, v6, LQ6/y;->b:I

    .line 99
    .line 100
    sub-int/2addr v7, v8

    .line 101
    int-to-long v7, v7

    .line 102
    sub-long/2addr v4, v7

    .line 103
    goto :goto_2

    .line 104
    :cond_4
    move-wide v8, v4

    .line 105
    move-object v7, v6

    .line 106
    :cond_5
    iget-boolean v4, v0, LQ6/h;->H:Z

    .line 107
    .line 108
    if-eqz v4, :cond_7

    .line 109
    .line 110
    invoke-static {v7}, Lz4/q0;->e(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    iget-boolean v4, v7, LQ6/y;->d:Z

    .line 114
    .line 115
    if-eqz v4, :cond_7

    .line 116
    .line 117
    new-instance v4, LQ6/y;

    .line 118
    .line 119
    iget-object v5, v7, LQ6/y;->a:[B

    .line 120
    .line 121
    array-length v6, v5

    .line 122
    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 123
    .line 124
    .line 125
    move-result-object v11

    .line 126
    const-string v5, "copyOf(this, size)"

    .line 127
    .line 128
    invoke-static {v11, v5}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    iget v12, v7, LQ6/y;->b:I

    .line 132
    .line 133
    iget v13, v7, LQ6/y;->c:I

    .line 134
    .line 135
    const/4 v14, 0x0

    .line 136
    const/4 v15, 0x1

    .line 137
    move-object v10, v4

    .line 138
    invoke-direct/range {v10 .. v15}, LQ6/y;-><init>([BIIZZ)V

    .line 139
    .line 140
    .line 141
    iget-object v5, v3, LQ6/j;->G:LQ6/y;

    .line 142
    .line 143
    if-ne v5, v7, :cond_6

    .line 144
    .line 145
    iput-object v4, v3, LQ6/j;->G:LQ6/y;

    .line 146
    .line 147
    :cond_6
    invoke-virtual {v7, v4}, LQ6/y;->b(LQ6/y;)V

    .line 148
    .line 149
    .line 150
    iget-object v3, v4, LQ6/y;->g:LQ6/y;

    .line 151
    .line 152
    invoke-static {v3}, Lz4/q0;->e(Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v3}, LQ6/y;->a()LQ6/y;

    .line 156
    .line 157
    .line 158
    move-object v7, v4

    .line 159
    :cond_7
    iput-object v7, v0, LQ6/h;->I:LQ6/y;

    .line 160
    .line 161
    iput-wide v1, v0, LQ6/h;->J:J

    .line 162
    .line 163
    invoke-static {v7}, Lz4/q0;->e(Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    iget-object v3, v7, LQ6/y;->a:[B

    .line 167
    .line 168
    iput-object v3, v0, LQ6/h;->K:[B

    .line 169
    .line 170
    iget v3, v7, LQ6/y;->b:I

    .line 171
    .line 172
    sub-long/2addr v1, v8

    .line 173
    long-to-int v2, v1

    .line 174
    add-int/2addr v3, v2

    .line 175
    iput v3, v0, LQ6/h;->L:I

    .line 176
    .line 177
    iget v1, v7, LQ6/y;->c:I

    .line 178
    .line 179
    iput v1, v0, LQ6/h;->M:I

    .line 180
    .line 181
    sub-int/2addr v1, v3

    .line 182
    goto :goto_4

    .line 183
    :cond_8
    :goto_3
    const/4 v3, 0x0

    .line 184
    iput-object v3, v0, LQ6/h;->I:LQ6/y;

    .line 185
    .line 186
    iput-wide v1, v0, LQ6/h;->J:J

    .line 187
    .line 188
    iput-object v3, v0, LQ6/h;->K:[B

    .line 189
    .line 190
    const/4 v1, -0x1

    .line 191
    iput v1, v0, LQ6/h;->L:I

    .line 192
    .line 193
    iput v1, v0, LQ6/h;->M:I

    .line 194
    .line 195
    :goto_4
    return v1

    .line 196
    :cond_9
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 197
    .line 198
    const-string v5, "offset="

    .line 199
    .line 200
    const-string v6, " > size="

    .line 201
    .line 202
    invoke-static {v5, v1, v2, v6}, Lt/a;->d(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    iget-wide v2, v3, LQ6/j;->H:J

    .line 207
    .line 208
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-direct {v4, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    throw v4

    .line 219
    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 220
    .line 221
    const-string v2, "not attached to a buffer"

    .line 222
    .line 223
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    throw v1
.end method

.method public final close()V
    .locals 3

    .line 1
    iget-object v0, p0, LQ6/h;->G:LQ6/j;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, LQ6/h;->G:LQ6/j;

    .line 7
    .line 8
    iput-object v0, p0, LQ6/h;->I:LQ6/y;

    .line 9
    .line 10
    const-wide/16 v1, -0x1

    .line 11
    .line 12
    iput-wide v1, p0, LQ6/h;->J:J

    .line 13
    .line 14
    iput-object v0, p0, LQ6/h;->K:[B

    .line 15
    .line 16
    const/4 v0, -0x1

    .line 17
    iput v0, p0, LQ6/h;->L:I

    .line 18
    .line 19
    iput v0, p0, LQ6/h;->M:I

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string v1, "not attached to a buffer"

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v0
.end method

.method public final k(J)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-wide/from16 v1, p1

    .line 3
    .line 4
    iget-object v3, v0, LQ6/h;->G:LQ6/j;

    .line 5
    .line 6
    if-eqz v3, :cond_7

    .line 7
    .line 8
    iget-boolean v4, v0, LQ6/h;->H:Z

    .line 9
    .line 10
    if-eqz v4, :cond_6

    .line 11
    .line 12
    iget-wide v4, v3, LQ6/j;->H:J

    .line 13
    .line 14
    const-wide/16 v6, 0x0

    .line 15
    .line 16
    cmp-long v8, v1, v4

    .line 17
    .line 18
    if-gtz v8, :cond_3

    .line 19
    .line 20
    cmp-long v8, v1, v6

    .line 21
    .line 22
    if-ltz v8, :cond_2

    .line 23
    .line 24
    sub-long/2addr v4, v1

    .line 25
    :goto_0
    cmp-long v8, v4, v6

    .line 26
    .line 27
    if-lez v8, :cond_1

    .line 28
    .line 29
    iget-object v8, v3, LQ6/j;->G:LQ6/y;

    .line 30
    .line 31
    invoke-static {v8}, Lz4/q0;->e(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object v8, v8, LQ6/y;->g:LQ6/y;

    .line 35
    .line 36
    invoke-static {v8}, Lz4/q0;->e(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iget v9, v8, LQ6/y;->c:I

    .line 40
    .line 41
    iget v10, v8, LQ6/y;->b:I

    .line 42
    .line 43
    sub-int v10, v9, v10

    .line 44
    .line 45
    int-to-long v10, v10

    .line 46
    cmp-long v12, v10, v4

    .line 47
    .line 48
    if-gtz v12, :cond_0

    .line 49
    .line 50
    invoke-virtual {v8}, LQ6/y;->a()LQ6/y;

    .line 51
    .line 52
    .line 53
    move-result-object v9

    .line 54
    iput-object v9, v3, LQ6/j;->G:LQ6/y;

    .line 55
    .line 56
    invoke-static {v8}, LQ6/z;->a(LQ6/y;)V

    .line 57
    .line 58
    .line 59
    sub-long/2addr v4, v10

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    long-to-int v5, v4

    .line 62
    sub-int/2addr v9, v5

    .line 63
    iput v9, v8, LQ6/y;->c:I

    .line 64
    .line 65
    :cond_1
    const/4 v4, 0x0

    .line 66
    iput-object v4, v0, LQ6/h;->I:LQ6/y;

    .line 67
    .line 68
    iput-wide v1, v0, LQ6/h;->J:J

    .line 69
    .line 70
    iput-object v4, v0, LQ6/h;->K:[B

    .line 71
    .line 72
    const/4 v4, -0x1

    .line 73
    iput v4, v0, LQ6/h;->L:I

    .line 74
    .line 75
    iput v4, v0, LQ6/h;->M:I

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_2
    const-string v3, "newSize < 0: "

    .line 79
    .line 80
    invoke-static {v3, v1, v2}, LA0/O;->z(Ljava/lang/String;J)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw v2

    .line 94
    :cond_3
    if-lez v8, :cond_5

    .line 95
    .line 96
    sub-long v8, v1, v4

    .line 97
    .line 98
    const/4 v10, 0x1

    .line 99
    const/4 v11, 0x1

    .line 100
    :goto_1
    cmp-long v12, v8, v6

    .line 101
    .line 102
    if-lez v12, :cond_5

    .line 103
    .line 104
    invoke-virtual {v3, v10}, LQ6/j;->k0(I)LQ6/y;

    .line 105
    .line 106
    .line 107
    move-result-object v12

    .line 108
    iget v13, v12, LQ6/y;->c:I

    .line 109
    .line 110
    rsub-int v13, v13, 0x2000

    .line 111
    .line 112
    int-to-long v13, v13

    .line 113
    invoke-static {v8, v9, v13, v14}, Ljava/lang/Math;->min(JJ)J

    .line 114
    .line 115
    .line 116
    move-result-wide v13

    .line 117
    long-to-int v14, v13

    .line 118
    iget v13, v12, LQ6/y;->c:I

    .line 119
    .line 120
    add-int/2addr v13, v14

    .line 121
    iput v13, v12, LQ6/y;->c:I

    .line 122
    .line 123
    int-to-long v6, v14

    .line 124
    sub-long/2addr v8, v6

    .line 125
    if-eqz v11, :cond_4

    .line 126
    .line 127
    iput-object v12, v0, LQ6/h;->I:LQ6/y;

    .line 128
    .line 129
    iput-wide v4, v0, LQ6/h;->J:J

    .line 130
    .line 131
    iget-object v6, v12, LQ6/y;->a:[B

    .line 132
    .line 133
    iput-object v6, v0, LQ6/h;->K:[B

    .line 134
    .line 135
    sub-int v6, v13, v14

    .line 136
    .line 137
    iput v6, v0, LQ6/h;->L:I

    .line 138
    .line 139
    iput v13, v0, LQ6/h;->M:I

    .line 140
    .line 141
    const/4 v11, 0x0

    .line 142
    :cond_4
    const-wide/16 v6, 0x0

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_5
    :goto_2
    iput-wide v1, v3, LQ6/j;->H:J

    .line 146
    .line 147
    return-void

    .line 148
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 149
    .line 150
    const-string v2, "resizeBuffer() only permitted for read/write buffers"

    .line 151
    .line 152
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    throw v1

    .line 160
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 161
    .line 162
    const-string v2, "not attached to a buffer"

    .line 163
    .line 164
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    throw v1
.end method
