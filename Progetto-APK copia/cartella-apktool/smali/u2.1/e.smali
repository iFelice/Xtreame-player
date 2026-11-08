.class public final Lu2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu2/a;


# instance fields
.field public a:[I

.field public final b:[I

.field public final c:Lm2/l;

.field public d:Ljava/nio/ByteBuffer;

.field public e:[B

.field public f:[S

.field public g:[B

.field public h:[B

.field public i:[B

.field public final j:[I

.field public k:I

.field public l:Lu2/c;

.field public m:Landroid/graphics/Bitmap;

.field public final n:Z

.field public o:I

.field public final p:I

.field public final q:I

.field public final r:I

.field public s:Ljava/lang/Boolean;

.field public t:Landroid/graphics/Bitmap$Config;


# direct methods
.method public constructor <init>(Lm2/l;Lu2/c;Ljava/nio/ByteBuffer;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x100

    .line 5
    .line 6
    new-array v0, v0, [I

    .line 7
    .line 8
    iput-object v0, p0, Lu2/e;->b:[I

    .line 9
    .line 10
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 11
    .line 12
    iput-object v0, p0, Lu2/e;->t:Landroid/graphics/Bitmap$Config;

    .line 13
    .line 14
    iput-object p1, p0, Lu2/e;->c:Lm2/l;

    .line 15
    .line 16
    new-instance p1, Lu2/c;

    .line 17
    .line 18
    invoke-direct {p1}, Lu2/c;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lu2/e;->l:Lu2/c;

    .line 22
    .line 23
    const-string p1, "Sample size must be >=0, not: "

    .line 24
    .line 25
    monitor-enter p0

    .line 26
    if-lez p4, :cond_3

    .line 27
    .line 28
    :try_start_0
    invoke-static {p4}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    const/4 p4, 0x0

    .line 33
    iput p4, p0, Lu2/e;->o:I

    .line 34
    .line 35
    iput-object p2, p0, Lu2/e;->l:Lu2/c;

    .line 36
    .line 37
    const/4 v0, -0x1

    .line 38
    iput v0, p0, Lu2/e;->k:I

    .line 39
    .line 40
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    iput-object p3, p0, Lu2/e;->d:Ljava/nio/ByteBuffer;

    .line 45
    .line 46
    invoke-virtual {p3, p4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 47
    .line 48
    .line 49
    iget-object p3, p0, Lu2/e;->d:Ljava/nio/ByteBuffer;

    .line 50
    .line 51
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 52
    .line 53
    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 54
    .line 55
    .line 56
    iput-boolean p4, p0, Lu2/e;->n:Z

    .line 57
    .line 58
    iget-object p3, p2, Lu2/c;->e:Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object p3

    .line 64
    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result p4

    .line 68
    if-eqz p4, :cond_1

    .line 69
    .line 70
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p4

    .line 74
    check-cast p4, Lu2/b;

    .line 75
    .line 76
    iget p4, p4, Lu2/b;->g:I

    .line 77
    .line 78
    const/4 v0, 0x3

    .line 79
    if-ne p4, v0, :cond_0

    .line 80
    .line 81
    const/4 p3, 0x1

    .line 82
    iput-boolean p3, p0, Lu2/e;->n:Z

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :catchall_0
    move-exception p1

    .line 86
    goto :goto_2

    .line 87
    :cond_1
    :goto_0
    iput p1, p0, Lu2/e;->p:I

    .line 88
    .line 89
    iget p3, p2, Lu2/c;->f:I

    .line 90
    .line 91
    div-int p4, p3, p1

    .line 92
    .line 93
    iput p4, p0, Lu2/e;->r:I

    .line 94
    .line 95
    iget p2, p2, Lu2/c;->g:I

    .line 96
    .line 97
    div-int p1, p2, p1

    .line 98
    .line 99
    iput p1, p0, Lu2/e;->q:I

    .line 100
    .line 101
    iget-object p1, p0, Lu2/e;->c:Lm2/l;

    .line 102
    .line 103
    mul-int p3, p3, p2

    .line 104
    .line 105
    invoke-virtual {p1, p3}, Lm2/l;->n(I)[B

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    iput-object p1, p0, Lu2/e;->i:[B

    .line 110
    .line 111
    iget-object p1, p0, Lu2/e;->c:Lm2/l;

    .line 112
    .line 113
    iget p2, p0, Lu2/e;->r:I

    .line 114
    .line 115
    iget p3, p0, Lu2/e;->q:I

    .line 116
    .line 117
    mul-int p2, p2, p3

    .line 118
    .line 119
    iget-object p1, p1, Lm2/l;->I:Ljava/lang/Object;

    .line 120
    .line 121
    move-object p3, p1

    .line 122
    check-cast p3, Lz2/h;

    .line 123
    .line 124
    if-nez p3, :cond_2

    .line 125
    .line 126
    new-array p1, p2, [I

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_2
    check-cast p1, Lz2/h;

    .line 130
    .line 131
    const-class p3, [I

    .line 132
    .line 133
    invoke-virtual {p1, p2, p3}, Lz2/h;->d(ILjava/lang/Class;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    check-cast p1, [I

    .line 138
    .line 139
    :goto_1
    iput-object p1, p0, Lu2/e;->j:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    .line 141
    monitor-exit p0

    .line 142
    return-void

    .line 143
    :cond_3
    :try_start_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 144
    .line 145
    new-instance p3, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {p3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    :goto_2
    monitor-exit p0

    .line 162
    throw p1
.end method


# virtual methods
.method public final a()Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    iget-object v0, p0, Lu2/e;->s:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lu2/e;->t:Landroid/graphics/Bitmap$Config;

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 16
    .line 17
    :goto_1
    iget v1, p0, Lu2/e;->r:I

    .line 18
    .line 19
    iget v2, p0, Lu2/e;->q:I

    .line 20
    .line 21
    iget-object v3, p0, Lu2/e;->c:Lm2/l;

    .line 22
    .line 23
    iget-object v3, v3, Lm2/l;->H:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v3, Lz2/d;

    .line 26
    .line 27
    invoke-interface {v3, v1, v2, v0}, Lz2/d;->j(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/4 v1, 0x1

    .line 32
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 33
    .line 34
    .line 35
    return-object v0
.end method

.method public final declared-synchronized b()Landroid/graphics/Bitmap;
    .locals 9

    .line 1
    const-string v0, "Unable to decode frame, status="

    .line 2
    .line 3
    const-string v1, "No valid color table found for frame #"

    .line 4
    .line 5
    const-string v2, "Unable to decode frame, frameCount="

    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v3, p0, Lu2/e;->l:Lu2/c;

    .line 9
    .line 10
    iget v3, v3, Lu2/c;->c:I

    .line 11
    .line 12
    const/4 v4, 0x3

    .line 13
    const/4 v5, 0x1

    .line 14
    if-lez v3, :cond_0

    .line 15
    .line 16
    iget v3, p0, Lu2/e;->k:I

    .line 17
    .line 18
    if-gez v3, :cond_2

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto/16 :goto_4

    .line 23
    .line 24
    :cond_0
    :goto_0
    const-string v3, "e"

    .line 25
    .line 26
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    const-string v3, "e"

    .line 33
    .line 34
    new-instance v6, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lu2/e;->l:Lu2/c;

    .line 40
    .line 41
    iget v2, v2, Lu2/c;->c:I

    .line 42
    .line 43
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v2, ", framePointer="

    .line 47
    .line 48
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget v2, p0, Lu2/e;->k:I

    .line 52
    .line 53
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    :cond_1
    iput v5, p0, Lu2/e;->o:I

    .line 64
    .line 65
    :cond_2
    iget v2, p0, Lu2/e;->o:I

    .line 66
    .line 67
    const/4 v3, 0x0

    .line 68
    if-eq v2, v5, :cond_a

    .line 69
    .line 70
    const/4 v6, 0x2

    .line 71
    if-ne v2, v6, :cond_3

    .line 72
    .line 73
    goto/16 :goto_3

    .line 74
    .line 75
    :cond_3
    const/4 v0, 0x0

    .line 76
    iput v0, p0, Lu2/e;->o:I

    .line 77
    .line 78
    iget-object v2, p0, Lu2/e;->e:[B

    .line 79
    .line 80
    if-nez v2, :cond_4

    .line 81
    .line 82
    iget-object v2, p0, Lu2/e;->c:Lm2/l;

    .line 83
    .line 84
    const/16 v7, 0xff

    .line 85
    .line 86
    invoke-virtual {v2, v7}, Lm2/l;->n(I)[B

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    iput-object v2, p0, Lu2/e;->e:[B

    .line 91
    .line 92
    :cond_4
    iget-object v2, p0, Lu2/e;->l:Lu2/c;

    .line 93
    .line 94
    iget-object v2, v2, Lu2/c;->e:Ljava/util/ArrayList;

    .line 95
    .line 96
    iget v7, p0, Lu2/e;->k:I

    .line 97
    .line 98
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    check-cast v2, Lu2/b;

    .line 103
    .line 104
    iget v7, p0, Lu2/e;->k:I

    .line 105
    .line 106
    sub-int/2addr v7, v5

    .line 107
    if-ltz v7, :cond_5

    .line 108
    .line 109
    iget-object v8, p0, Lu2/e;->l:Lu2/c;

    .line 110
    .line 111
    iget-object v8, v8, Lu2/c;->e:Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    check-cast v7, Lu2/b;

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_5
    move-object v7, v3

    .line 121
    :goto_1
    iget-object v8, v2, Lu2/b;->k:[I

    .line 122
    .line 123
    if-eqz v8, :cond_6

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_6
    iget-object v8, p0, Lu2/e;->l:Lu2/c;

    .line 127
    .line 128
    iget-object v8, v8, Lu2/c;->a:[I

    .line 129
    .line 130
    :goto_2
    iput-object v8, p0, Lu2/e;->a:[I

    .line 131
    .line 132
    if-nez v8, :cond_8

    .line 133
    .line 134
    const-string v0, "e"

    .line 135
    .line 136
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-eqz v0, :cond_7

    .line 141
    .line 142
    const-string v0, "e"

    .line 143
    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    iget v1, p0, Lu2/e;->k:I

    .line 150
    .line 151
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    :cond_7
    iput v5, p0, Lu2/e;->o:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    .line 163
    monitor-exit p0

    .line 164
    return-object v3

    .line 165
    :cond_8
    :try_start_1
    iget-boolean v1, v2, Lu2/b;->f:Z

    .line 166
    .line 167
    if-eqz v1, :cond_9

    .line 168
    .line 169
    iget-object v1, p0, Lu2/e;->b:[I

    .line 170
    .line 171
    array-length v3, v8

    .line 172
    invoke-static {v8, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    .line 174
    .line 175
    iget-object v1, p0, Lu2/e;->b:[I

    .line 176
    .line 177
    iput-object v1, p0, Lu2/e;->a:[I

    .line 178
    .line 179
    iget v3, v2, Lu2/b;->h:I

    .line 180
    .line 181
    aput v0, v1, v3

    .line 182
    .line 183
    iget v0, v2, Lu2/b;->g:I

    .line 184
    .line 185
    if-ne v0, v6, :cond_9

    .line 186
    .line 187
    iget v0, p0, Lu2/e;->k:I

    .line 188
    .line 189
    if-nez v0, :cond_9

    .line 190
    .line 191
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 192
    .line 193
    iput-object v0, p0, Lu2/e;->s:Ljava/lang/Boolean;

    .line 194
    .line 195
    :cond_9
    invoke-virtual {p0, v2, v7}, Lu2/e;->d(Lu2/b;Lu2/b;)Landroid/graphics/Bitmap;

    .line 196
    .line 197
    .line 198
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    monitor-exit p0

    .line 200
    return-object v0

    .line 201
    :cond_a
    :goto_3
    :try_start_2
    const-string v1, "e"

    .line 202
    .line 203
    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    if-eqz v1, :cond_b

    .line 208
    .line 209
    const-string v1, "e"

    .line 210
    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    .line 212
    .line 213
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    iget v0, p0, Lu2/e;->o:I

    .line 217
    .line 218
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 226
    .line 227
    .line 228
    :cond_b
    monitor-exit p0

    .line 229
    return-object v3

    .line 230
    :goto_4
    monitor-exit p0

    .line 231
    throw v0
.end method

.method public final c(Landroid/graphics/Bitmap$Config;)V
    .locals 5

    .line 1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 6
    .line 7
    if-ne p1, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v4, "Unsupported format: "

    .line 15
    .line 16
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p1, ", must be one of "

    .line 23
    .line 24
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p1, " or "

    .line 31
    .line 32
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-direct {v2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v2

    .line 46
    :cond_1
    :goto_0
    iput-object p1, p0, Lu2/e;->t:Landroid/graphics/Bitmap$Config;

    .line 47
    .line 48
    return-void
.end method

.method public final d(Lu2/b;Lu2/b;)Landroid/graphics/Bitmap;
    .locals 33

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
    iget-object v10, v0, Lu2/e;->j:[I

    .line 8
    .line 9
    iget-object v11, v0, Lu2/e;->c:Lm2/l;

    .line 10
    .line 11
    const/4 v12, 0x0

    .line 12
    if-nez v2, :cond_1

    .line 13
    .line 14
    iget-object v3, v0, Lu2/e;->m:Landroid/graphics/Bitmap;

    .line 15
    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    iget-object v4, v11, Lm2/l;->H:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v4, Lz2/d;

    .line 21
    .line 22
    invoke-interface {v4, v3}, Lz2/d;->a(Landroid/graphics/Bitmap;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    const/4 v3, 0x0

    .line 26
    iput-object v3, v0, Lu2/e;->m:Landroid/graphics/Bitmap;

    .line 27
    .line 28
    invoke-static {v10, v12}, Ljava/util/Arrays;->fill([II)V

    .line 29
    .line 30
    .line 31
    :cond_1
    const/4 v13, 0x3

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    iget v3, v2, Lu2/b;->g:I

    .line 35
    .line 36
    if-ne v3, v13, :cond_2

    .line 37
    .line 38
    iget-object v3, v0, Lu2/e;->m:Landroid/graphics/Bitmap;

    .line 39
    .line 40
    if-nez v3, :cond_2

    .line 41
    .line 42
    invoke-static {v10, v12}, Ljava/util/Arrays;->fill([II)V

    .line 43
    .line 44
    .line 45
    :cond_2
    const/4 v14, 0x2

    .line 46
    if-eqz v2, :cond_7

    .line 47
    .line 48
    iget v3, v2, Lu2/b;->g:I

    .line 49
    .line 50
    if-lez v3, :cond_7

    .line 51
    .line 52
    if-ne v3, v14, :cond_6

    .line 53
    .line 54
    iget-boolean v3, v1, Lu2/b;->f:Z

    .line 55
    .line 56
    if-nez v3, :cond_3

    .line 57
    .line 58
    iget-object v3, v0, Lu2/e;->l:Lu2/c;

    .line 59
    .line 60
    iget v4, v3, Lu2/c;->k:I

    .line 61
    .line 62
    iget-object v5, v1, Lu2/b;->k:[I

    .line 63
    .line 64
    if-eqz v5, :cond_4

    .line 65
    .line 66
    iget v3, v3, Lu2/c;->j:I

    .line 67
    .line 68
    iget v5, v1, Lu2/b;->h:I

    .line 69
    .line 70
    if-ne v3, v5, :cond_4

    .line 71
    .line 72
    :cond_3
    const/4 v4, 0x0

    .line 73
    :cond_4
    iget v3, v2, Lu2/b;->d:I

    .line 74
    .line 75
    iget v5, v0, Lu2/e;->p:I

    .line 76
    .line 77
    div-int/2addr v3, v5

    .line 78
    iget v6, v2, Lu2/b;->b:I

    .line 79
    .line 80
    div-int/2addr v6, v5

    .line 81
    iget v7, v2, Lu2/b;->c:I

    .line 82
    .line 83
    div-int/2addr v7, v5

    .line 84
    iget v2, v2, Lu2/b;->a:I

    .line 85
    .line 86
    div-int/2addr v2, v5

    .line 87
    iget v5, v0, Lu2/e;->r:I

    .line 88
    .line 89
    mul-int v6, v6, v5

    .line 90
    .line 91
    add-int/2addr v6, v2

    .line 92
    mul-int v3, v3, v5

    .line 93
    .line 94
    add-int/2addr v3, v6

    .line 95
    :goto_0
    if-ge v6, v3, :cond_7

    .line 96
    .line 97
    add-int v2, v6, v7

    .line 98
    .line 99
    move v5, v6

    .line 100
    :goto_1
    if-ge v5, v2, :cond_5

    .line 101
    .line 102
    aput v4, v10, v5

    .line 103
    .line 104
    add-int/lit8 v5, v5, 0x1

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_5
    iget v2, v0, Lu2/e;->r:I

    .line 108
    .line 109
    add-int/2addr v6, v2

    .line 110
    goto :goto_0

    .line 111
    :cond_6
    if-ne v3, v13, :cond_7

    .line 112
    .line 113
    iget-object v2, v0, Lu2/e;->m:Landroid/graphics/Bitmap;

    .line 114
    .line 115
    if-eqz v2, :cond_7

    .line 116
    .line 117
    iget v8, v0, Lu2/e;->r:I

    .line 118
    .line 119
    iget v9, v0, Lu2/e;->q:I

    .line 120
    .line 121
    const/4 v4, 0x0

    .line 122
    const/4 v6, 0x0

    .line 123
    const/4 v7, 0x0

    .line 124
    move-object v3, v10

    .line 125
    move v5, v8

    .line 126
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 127
    .line 128
    .line 129
    :cond_7
    iget-object v2, v0, Lu2/e;->d:Ljava/nio/ByteBuffer;

    .line 130
    .line 131
    iget v3, v1, Lu2/b;->j:I

    .line 132
    .line 133
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 134
    .line 135
    .line 136
    iget v2, v1, Lu2/b;->c:I

    .line 137
    .line 138
    iget v3, v1, Lu2/b;->d:I

    .line 139
    .line 140
    mul-int v2, v2, v3

    .line 141
    .line 142
    iget-object v3, v0, Lu2/e;->i:[B

    .line 143
    .line 144
    if-eqz v3, :cond_8

    .line 145
    .line 146
    array-length v3, v3

    .line 147
    if-ge v3, v2, :cond_9

    .line 148
    .line 149
    :cond_8
    invoke-virtual {v11, v2}, Lm2/l;->n(I)[B

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    iput-object v3, v0, Lu2/e;->i:[B

    .line 154
    .line 155
    :cond_9
    iget-object v3, v0, Lu2/e;->i:[B

    .line 156
    .line 157
    iget-object v4, v0, Lu2/e;->f:[S

    .line 158
    .line 159
    const/16 v5, 0x1000

    .line 160
    .line 161
    if-nez v4, :cond_a

    .line 162
    .line 163
    new-array v4, v5, [S

    .line 164
    .line 165
    iput-object v4, v0, Lu2/e;->f:[S

    .line 166
    .line 167
    :cond_a
    iget-object v4, v0, Lu2/e;->f:[S

    .line 168
    .line 169
    iget-object v6, v0, Lu2/e;->g:[B

    .line 170
    .line 171
    if-nez v6, :cond_b

    .line 172
    .line 173
    new-array v6, v5, [B

    .line 174
    .line 175
    iput-object v6, v0, Lu2/e;->g:[B

    .line 176
    .line 177
    :cond_b
    iget-object v6, v0, Lu2/e;->g:[B

    .line 178
    .line 179
    iget-object v7, v0, Lu2/e;->h:[B

    .line 180
    .line 181
    if-nez v7, :cond_c

    .line 182
    .line 183
    const/16 v7, 0x1001

    .line 184
    .line 185
    new-array v7, v7, [B

    .line 186
    .line 187
    iput-object v7, v0, Lu2/e;->h:[B

    .line 188
    .line 189
    :cond_c
    iget-object v7, v0, Lu2/e;->h:[B

    .line 190
    .line 191
    iget-object v8, v0, Lu2/e;->d:Ljava/nio/ByteBuffer;

    .line 192
    .line 193
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->get()B

    .line 194
    .line 195
    .line 196
    move-result v8

    .line 197
    and-int/lit16 v8, v8, 0xff

    .line 198
    .line 199
    const/4 v9, 0x1

    .line 200
    shl-int v11, v9, v8

    .line 201
    .line 202
    add-int/lit8 v15, v11, 0x1

    .line 203
    .line 204
    add-int/lit8 v16, v11, 0x2

    .line 205
    .line 206
    add-int/2addr v8, v9

    .line 207
    shl-int v17, v9, v8

    .line 208
    .line 209
    add-int/lit8 v17, v17, -0x1

    .line 210
    .line 211
    const/4 v14, 0x0

    .line 212
    :goto_2
    if-ge v14, v11, :cond_d

    .line 213
    .line 214
    aput-short v12, v4, v14

    .line 215
    .line 216
    int-to-byte v5, v14

    .line 217
    aput-byte v5, v6, v14

    .line 218
    .line 219
    add-int/lit8 v14, v14, 0x1

    .line 220
    .line 221
    const/16 v5, 0x1000

    .line 222
    .line 223
    goto :goto_2

    .line 224
    :cond_d
    iget-object v5, v0, Lu2/e;->e:[B

    .line 225
    .line 226
    move/from16 v27, v8

    .line 227
    .line 228
    move/from16 v25, v16

    .line 229
    .line 230
    move/from16 v26, v17

    .line 231
    .line 232
    const/4 v14, 0x0

    .line 233
    const/16 v19, -0x1

    .line 234
    .line 235
    const/16 v20, 0x0

    .line 236
    .line 237
    const/16 v21, 0x0

    .line 238
    .line 239
    const/16 v22, 0x0

    .line 240
    .line 241
    const/16 v23, 0x0

    .line 242
    .line 243
    const/16 v24, 0x0

    .line 244
    .line 245
    const/16 v28, 0x0

    .line 246
    .line 247
    const/16 v29, 0x0

    .line 248
    .line 249
    :goto_3
    const/16 v30, 0x8

    .line 250
    .line 251
    if-ge v14, v2, :cond_f

    .line 252
    .line 253
    if-nez v20, :cond_11

    .line 254
    .line 255
    iget-object v9, v0, Lu2/e;->d:Ljava/nio/ByteBuffer;

    .line 256
    .line 257
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->get()B

    .line 258
    .line 259
    .line 260
    move-result v9

    .line 261
    and-int/lit16 v9, v9, 0xff

    .line 262
    .line 263
    if-gtz v9, :cond_e

    .line 264
    .line 265
    move/from16 v31, v8

    .line 266
    .line 267
    move/from16 v32, v14

    .line 268
    .line 269
    goto :goto_4

    .line 270
    :cond_e
    iget-object v13, v0, Lu2/e;->d:Ljava/nio/ByteBuffer;

    .line 271
    .line 272
    iget-object v12, v0, Lu2/e;->e:[B

    .line 273
    .line 274
    move/from16 v31, v8

    .line 275
    .line 276
    invoke-virtual {v13}, Ljava/nio/Buffer;->remaining()I

    .line 277
    .line 278
    .line 279
    move-result v8

    .line 280
    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    .line 281
    .line 282
    .line 283
    move-result v8

    .line 284
    move/from16 v32, v14

    .line 285
    .line 286
    const/4 v14, 0x0

    .line 287
    invoke-virtual {v13, v12, v14, v8}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 288
    .line 289
    .line 290
    :goto_4
    if-gtz v9, :cond_10

    .line 291
    .line 292
    const/4 v8, 0x3

    .line 293
    iput v8, v0, Lu2/e;->o:I

    .line 294
    .line 295
    :cond_f
    move-object/from16 v22, v10

    .line 296
    .line 297
    move/from16 v12, v24

    .line 298
    .line 299
    const/4 v14, 0x0

    .line 300
    goto/16 :goto_9

    .line 301
    .line 302
    :cond_10
    move/from16 v20, v9

    .line 303
    .line 304
    const/16 v21, 0x0

    .line 305
    .line 306
    goto :goto_5

    .line 307
    :cond_11
    move/from16 v31, v8

    .line 308
    .line 309
    move/from16 v32, v14

    .line 310
    .line 311
    :goto_5
    aget-byte v8, v5, v21

    .line 312
    .line 313
    and-int/lit16 v8, v8, 0xff

    .line 314
    .line 315
    shl-int v8, v8, v22

    .line 316
    .line 317
    add-int v23, v23, v8

    .line 318
    .line 319
    add-int/lit8 v22, v22, 0x8

    .line 320
    .line 321
    const/4 v8, 0x1

    .line 322
    add-int/lit8 v21, v21, 0x1

    .line 323
    .line 324
    const/4 v8, -0x1

    .line 325
    add-int/lit8 v20, v20, -0x1

    .line 326
    .line 327
    move/from16 v9, v19

    .line 328
    .line 329
    move/from16 v12, v22

    .line 330
    .line 331
    move/from16 v13, v25

    .line 332
    .line 333
    move/from16 v8, v27

    .line 334
    .line 335
    move/from16 v14, v32

    .line 336
    .line 337
    move-object/from16 v19, v5

    .line 338
    .line 339
    move/from16 v5, v28

    .line 340
    .line 341
    :goto_6
    if-lt v12, v8, :cond_19

    .line 342
    .line 343
    move-object/from16 v22, v10

    .line 344
    .line 345
    and-int v10, v23, v26

    .line 346
    .line 347
    shr-int v23, v23, v8

    .line 348
    .line 349
    sub-int/2addr v12, v8

    .line 350
    if-ne v10, v11, :cond_12

    .line 351
    .line 352
    move/from16 v13, v16

    .line 353
    .line 354
    move/from16 v26, v17

    .line 355
    .line 356
    move-object/from16 v10, v22

    .line 357
    .line 358
    move/from16 v8, v31

    .line 359
    .line 360
    const/4 v9, -0x1

    .line 361
    goto :goto_6

    .line 362
    :cond_12
    if-ne v10, v15, :cond_13

    .line 363
    .line 364
    move/from16 v28, v5

    .line 365
    .line 366
    move/from16 v27, v8

    .line 367
    .line 368
    move/from16 v25, v13

    .line 369
    .line 370
    move-object/from16 v5, v19

    .line 371
    .line 372
    move-object/from16 v10, v22

    .line 373
    .line 374
    move/from16 v8, v31

    .line 375
    .line 376
    const/4 v13, 0x3

    .line 377
    move/from16 v19, v9

    .line 378
    .line 379
    move/from16 v22, v12

    .line 380
    .line 381
    const/4 v9, 0x1

    .line 382
    const/4 v12, 0x0

    .line 383
    goto/16 :goto_3

    .line 384
    .line 385
    :cond_13
    move/from16 v25, v12

    .line 386
    .line 387
    const/4 v12, -0x1

    .line 388
    if-ne v9, v12, :cond_14

    .line 389
    .line 390
    aget-byte v5, v6, v10

    .line 391
    .line 392
    aput-byte v5, v3, v24

    .line 393
    .line 394
    add-int/lit8 v24, v24, 0x1

    .line 395
    .line 396
    add-int/lit8 v14, v14, 0x1

    .line 397
    .line 398
    move v5, v10

    .line 399
    move v9, v5

    .line 400
    move-object/from16 v10, v22

    .line 401
    .line 402
    move/from16 v12, v25

    .line 403
    .line 404
    goto :goto_6

    .line 405
    :cond_14
    if-lt v10, v13, :cond_15

    .line 406
    .line 407
    int-to-byte v5, v5

    .line 408
    aput-byte v5, v7, v29

    .line 409
    .line 410
    add-int/lit8 v29, v29, 0x1

    .line 411
    .line 412
    move v5, v9

    .line 413
    goto :goto_7

    .line 414
    :cond_15
    move v5, v10

    .line 415
    :goto_7
    if-lt v5, v11, :cond_16

    .line 416
    .line 417
    aget-byte v12, v6, v5

    .line 418
    .line 419
    aput-byte v12, v7, v29

    .line 420
    .line 421
    add-int/lit8 v29, v29, 0x1

    .line 422
    .line 423
    aget-short v5, v4, v5

    .line 424
    .line 425
    goto :goto_7

    .line 426
    :cond_16
    aget-byte v5, v6, v5

    .line 427
    .line 428
    and-int/lit16 v5, v5, 0xff

    .line 429
    .line 430
    int-to-byte v12, v5

    .line 431
    aput-byte v12, v3, v24

    .line 432
    .line 433
    :goto_8
    add-int/lit8 v24, v24, 0x1

    .line 434
    .line 435
    add-int/lit8 v14, v14, 0x1

    .line 436
    .line 437
    if-lez v29, :cond_17

    .line 438
    .line 439
    add-int/lit8 v29, v29, -0x1

    .line 440
    .line 441
    aget-byte v27, v7, v29

    .line 442
    .line 443
    aput-byte v27, v3, v24

    .line 444
    .line 445
    goto :goto_8

    .line 446
    :cond_17
    move/from16 v27, v5

    .line 447
    .line 448
    const/16 v5, 0x1000

    .line 449
    .line 450
    if-ge v13, v5, :cond_18

    .line 451
    .line 452
    int-to-short v9, v9

    .line 453
    aput-short v9, v4, v13

    .line 454
    .line 455
    aput-byte v12, v6, v13

    .line 456
    .line 457
    add-int/lit8 v13, v13, 0x1

    .line 458
    .line 459
    and-int v9, v13, v26

    .line 460
    .line 461
    if-nez v9, :cond_18

    .line 462
    .line 463
    if-ge v13, v5, :cond_18

    .line 464
    .line 465
    add-int/lit8 v8, v8, 0x1

    .line 466
    .line 467
    add-int v26, v26, v13

    .line 468
    .line 469
    :cond_18
    move v9, v10

    .line 470
    move-object/from16 v10, v22

    .line 471
    .line 472
    move/from16 v12, v25

    .line 473
    .line 474
    move/from16 v5, v27

    .line 475
    .line 476
    goto/16 :goto_6

    .line 477
    .line 478
    :cond_19
    move/from16 v28, v5

    .line 479
    .line 480
    move/from16 v27, v8

    .line 481
    .line 482
    move/from16 v22, v12

    .line 483
    .line 484
    move/from16 v25, v13

    .line 485
    .line 486
    move-object/from16 v5, v19

    .line 487
    .line 488
    move/from16 v8, v31

    .line 489
    .line 490
    const/4 v12, 0x0

    .line 491
    const/4 v13, 0x3

    .line 492
    move/from16 v19, v9

    .line 493
    .line 494
    const/4 v9, 0x1

    .line 495
    goto/16 :goto_3

    .line 496
    .line 497
    :goto_9
    invoke-static {v3, v12, v2, v14}, Ljava/util/Arrays;->fill([BIIB)V

    .line 498
    .line 499
    .line 500
    iget-boolean v2, v1, Lu2/b;->e:Z

    .line 501
    .line 502
    if-nez v2, :cond_24

    .line 503
    .line 504
    iget v2, v0, Lu2/e;->p:I

    .line 505
    .line 506
    const/4 v3, 0x1

    .line 507
    if-eq v2, v3, :cond_1a

    .line 508
    .line 509
    goto/16 :goto_f

    .line 510
    .line 511
    :cond_1a
    iget-object v2, v0, Lu2/e;->j:[I

    .line 512
    .line 513
    iget v3, v1, Lu2/b;->d:I

    .line 514
    .line 515
    iget v4, v1, Lu2/b;->b:I

    .line 516
    .line 517
    iget v5, v1, Lu2/b;->c:I

    .line 518
    .line 519
    iget v6, v1, Lu2/b;->a:I

    .line 520
    .line 521
    iget v7, v0, Lu2/e;->k:I

    .line 522
    .line 523
    if-nez v7, :cond_1b

    .line 524
    .line 525
    const/4 v7, 0x1

    .line 526
    goto :goto_a

    .line 527
    :cond_1b
    const/4 v7, 0x0

    .line 528
    :goto_a
    iget v8, v0, Lu2/e;->r:I

    .line 529
    .line 530
    iget-object v9, v0, Lu2/e;->i:[B

    .line 531
    .line 532
    iget-object v10, v0, Lu2/e;->a:[I

    .line 533
    .line 534
    const/4 v11, -0x1

    .line 535
    const/4 v12, 0x0

    .line 536
    :goto_b
    if-ge v12, v3, :cond_20

    .line 537
    .line 538
    add-int v13, v12, v4

    .line 539
    .line 540
    mul-int v13, v13, v8

    .line 541
    .line 542
    add-int v15, v13, v6

    .line 543
    .line 544
    add-int v14, v15, v5

    .line 545
    .line 546
    add-int/2addr v13, v8

    .line 547
    if-ge v13, v14, :cond_1c

    .line 548
    .line 549
    move v14, v13

    .line 550
    :cond_1c
    iget v13, v1, Lu2/b;->c:I

    .line 551
    .line 552
    mul-int v13, v13, v12

    .line 553
    .line 554
    :goto_c
    if-ge v15, v14, :cond_1f

    .line 555
    .line 556
    move/from16 v16, v3

    .line 557
    .line 558
    aget-byte v3, v9, v13

    .line 559
    .line 560
    move/from16 v17, v4

    .line 561
    .line 562
    and-int/lit16 v4, v3, 0xff

    .line 563
    .line 564
    if-eq v4, v11, :cond_1e

    .line 565
    .line 566
    aget v4, v10, v4

    .line 567
    .line 568
    if-eqz v4, :cond_1d

    .line 569
    .line 570
    aput v4, v2, v15

    .line 571
    .line 572
    goto :goto_d

    .line 573
    :cond_1d
    move v11, v3

    .line 574
    :cond_1e
    :goto_d
    add-int/lit8 v13, v13, 0x1

    .line 575
    .line 576
    add-int/lit8 v15, v15, 0x1

    .line 577
    .line 578
    move/from16 v3, v16

    .line 579
    .line 580
    move/from16 v4, v17

    .line 581
    .line 582
    goto :goto_c

    .line 583
    :cond_1f
    move/from16 v16, v3

    .line 584
    .line 585
    move/from16 v17, v4

    .line 586
    .line 587
    add-int/lit8 v12, v12, 0x1

    .line 588
    .line 589
    const/4 v14, 0x0

    .line 590
    goto :goto_b

    .line 591
    :cond_20
    iget-object v2, v0, Lu2/e;->s:Ljava/lang/Boolean;

    .line 592
    .line 593
    if-eqz v2, :cond_21

    .line 594
    .line 595
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 596
    .line 597
    .line 598
    move-result v2

    .line 599
    if-nez v2, :cond_22

    .line 600
    .line 601
    :cond_21
    iget-object v2, v0, Lu2/e;->s:Ljava/lang/Boolean;

    .line 602
    .line 603
    if-nez v2, :cond_23

    .line 604
    .line 605
    if-eqz v7, :cond_23

    .line 606
    .line 607
    const/4 v2, -0x1

    .line 608
    if-eq v11, v2, :cond_23

    .line 609
    .line 610
    :cond_22
    const/4 v12, 0x1

    .line 611
    goto :goto_e

    .line 612
    :cond_23
    const/4 v12, 0x0

    .line 613
    :goto_e
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 614
    .line 615
    .line 616
    move-result-object v2

    .line 617
    iput-object v2, v0, Lu2/e;->s:Ljava/lang/Boolean;

    .line 618
    .line 619
    goto/16 :goto_1e

    .line 620
    .line 621
    :cond_24
    :goto_f
    iget-object v2, v0, Lu2/e;->j:[I

    .line 622
    .line 623
    iget v3, v1, Lu2/b;->d:I

    .line 624
    .line 625
    iget v4, v0, Lu2/e;->p:I

    .line 626
    .line 627
    div-int/2addr v3, v4

    .line 628
    iget v5, v1, Lu2/b;->b:I

    .line 629
    .line 630
    div-int/2addr v5, v4

    .line 631
    iget v6, v1, Lu2/b;->c:I

    .line 632
    .line 633
    div-int/2addr v6, v4

    .line 634
    iget v7, v1, Lu2/b;->a:I

    .line 635
    .line 636
    div-int/2addr v7, v4

    .line 637
    iget v8, v0, Lu2/e;->k:I

    .line 638
    .line 639
    if-nez v8, :cond_25

    .line 640
    .line 641
    const/4 v14, 0x1

    .line 642
    goto :goto_10

    .line 643
    :cond_25
    const/4 v14, 0x0

    .line 644
    :goto_10
    iget v8, v0, Lu2/e;->r:I

    .line 645
    .line 646
    iget v9, v0, Lu2/e;->q:I

    .line 647
    .line 648
    iget-object v10, v0, Lu2/e;->i:[B

    .line 649
    .line 650
    iget-object v11, v0, Lu2/e;->a:[I

    .line 651
    .line 652
    iget-object v12, v0, Lu2/e;->s:Ljava/lang/Boolean;

    .line 653
    .line 654
    const/4 v13, 0x0

    .line 655
    const/4 v15, 0x0

    .line 656
    const/16 v16, 0x1

    .line 657
    .line 658
    const/16 v17, 0x8

    .line 659
    .line 660
    :goto_11
    if-ge v13, v3, :cond_3b

    .line 661
    .line 662
    move-object/from16 p2, v12

    .line 663
    .line 664
    iget-boolean v12, v1, Lu2/b;->e:Z

    .line 665
    .line 666
    if-eqz v12, :cond_2a

    .line 667
    .line 668
    if-lt v15, v3, :cond_29

    .line 669
    .line 670
    add-int/lit8 v12, v16, 0x1

    .line 671
    .line 672
    move/from16 v18, v3

    .line 673
    .line 674
    const/4 v3, 0x2

    .line 675
    if-eq v12, v3, :cond_28

    .line 676
    .line 677
    const/4 v3, 0x3

    .line 678
    if-eq v12, v3, :cond_27

    .line 679
    .line 680
    const/4 v3, 0x4

    .line 681
    if-eq v12, v3, :cond_26

    .line 682
    .line 683
    move/from16 v16, v12

    .line 684
    .line 685
    goto :goto_12

    .line 686
    :cond_26
    move/from16 v16, v12

    .line 687
    .line 688
    const/4 v15, 0x1

    .line 689
    const/16 v17, 0x2

    .line 690
    .line 691
    goto :goto_12

    .line 692
    :cond_27
    const/4 v3, 0x4

    .line 693
    move/from16 v16, v12

    .line 694
    .line 695
    const/4 v15, 0x2

    .line 696
    const/16 v17, 0x4

    .line 697
    .line 698
    goto :goto_12

    .line 699
    :cond_28
    const/4 v3, 0x4

    .line 700
    move/from16 v16, v12

    .line 701
    .line 702
    const/4 v15, 0x4

    .line 703
    goto :goto_12

    .line 704
    :cond_29
    move/from16 v18, v3

    .line 705
    .line 706
    :goto_12
    add-int v3, v15, v17

    .line 707
    .line 708
    goto :goto_13

    .line 709
    :cond_2a
    move/from16 v18, v3

    .line 710
    .line 711
    move v3, v15

    .line 712
    move v15, v13

    .line 713
    :goto_13
    add-int/2addr v15, v5

    .line 714
    const/4 v12, 0x1

    .line 715
    if-ne v4, v12, :cond_2b

    .line 716
    .line 717
    const/4 v12, 0x1

    .line 718
    goto :goto_14

    .line 719
    :cond_2b
    const/4 v12, 0x0

    .line 720
    :goto_14
    if-ge v15, v9, :cond_3a

    .line 721
    .line 722
    mul-int v15, v15, v8

    .line 723
    .line 724
    add-int v19, v15, v7

    .line 725
    .line 726
    move/from16 v20, v3

    .line 727
    .line 728
    add-int v3, v19, v6

    .line 729
    .line 730
    add-int/2addr v15, v8

    .line 731
    if-ge v15, v3, :cond_2c

    .line 732
    .line 733
    move v3, v15

    .line 734
    :cond_2c
    mul-int v15, v13, v4

    .line 735
    .line 736
    move/from16 v21, v5

    .line 737
    .line 738
    iget v5, v1, Lu2/b;->c:I

    .line 739
    .line 740
    mul-int v15, v15, v5

    .line 741
    .line 742
    if-eqz v12, :cond_31

    .line 743
    .line 744
    move-object/from16 v12, p2

    .line 745
    .line 746
    move/from16 v5, v19

    .line 747
    .line 748
    :goto_15
    if-ge v5, v3, :cond_2f

    .line 749
    .line 750
    move/from16 v23, v6

    .line 751
    .line 752
    aget-byte v6, v10, v15

    .line 753
    .line 754
    and-int/lit16 v6, v6, 0xff

    .line 755
    .line 756
    aget v6, v11, v6

    .line 757
    .line 758
    if-eqz v6, :cond_2d

    .line 759
    .line 760
    aput v6, v2, v5

    .line 761
    .line 762
    goto :goto_16

    .line 763
    :cond_2d
    if-eqz v14, :cond_2e

    .line 764
    .line 765
    if-nez v12, :cond_2e

    .line 766
    .line 767
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 768
    .line 769
    move-object v12, v6

    .line 770
    :cond_2e
    :goto_16
    add-int/2addr v15, v4

    .line 771
    add-int/lit8 v5, v5, 0x1

    .line 772
    .line 773
    move/from16 v6, v23

    .line 774
    .line 775
    goto :goto_15

    .line 776
    :cond_2f
    move/from16 v23, v6

    .line 777
    .line 778
    :cond_30
    move/from16 v29, v7

    .line 779
    .line 780
    move/from16 v31, v8

    .line 781
    .line 782
    move/from16 v32, v9

    .line 783
    .line 784
    goto/16 :goto_1c

    .line 785
    .line 786
    :cond_31
    move/from16 v23, v6

    .line 787
    .line 788
    sub-int v5, v3, v19

    .line 789
    .line 790
    mul-int v5, v5, v4

    .line 791
    .line 792
    add-int/2addr v5, v15

    .line 793
    move-object/from16 v12, p2

    .line 794
    .line 795
    move/from16 v6, v19

    .line 796
    .line 797
    :goto_17
    if-ge v6, v3, :cond_30

    .line 798
    .line 799
    move/from16 v19, v3

    .line 800
    .line 801
    iget v3, v1, Lu2/b;->c:I

    .line 802
    .line 803
    move/from16 v29, v7

    .line 804
    .line 805
    move/from16 v31, v8

    .line 806
    .line 807
    move v7, v15

    .line 808
    const/16 v24, 0x0

    .line 809
    .line 810
    const/16 v25, 0x0

    .line 811
    .line 812
    const/16 v26, 0x0

    .line 813
    .line 814
    const/16 v27, 0x0

    .line 815
    .line 816
    const/16 v28, 0x0

    .line 817
    .line 818
    :goto_18
    iget v8, v0, Lu2/e;->p:I

    .line 819
    .line 820
    add-int/2addr v8, v15

    .line 821
    if-ge v7, v8, :cond_33

    .line 822
    .line 823
    iget-object v8, v0, Lu2/e;->i:[B

    .line 824
    .line 825
    move/from16 v32, v9

    .line 826
    .line 827
    array-length v9, v8

    .line 828
    if-ge v7, v9, :cond_34

    .line 829
    .line 830
    if-ge v7, v5, :cond_34

    .line 831
    .line 832
    aget-byte v8, v8, v7

    .line 833
    .line 834
    and-int/lit16 v8, v8, 0xff

    .line 835
    .line 836
    iget-object v9, v0, Lu2/e;->a:[I

    .line 837
    .line 838
    aget v8, v9, v8

    .line 839
    .line 840
    if-eqz v8, :cond_32

    .line 841
    .line 842
    shr-int/lit8 v9, v8, 0x18

    .line 843
    .line 844
    and-int/lit16 v9, v9, 0xff

    .line 845
    .line 846
    add-int v24, v24, v9

    .line 847
    .line 848
    shr-int/lit8 v9, v8, 0x10

    .line 849
    .line 850
    and-int/lit16 v9, v9, 0xff

    .line 851
    .line 852
    add-int v25, v25, v9

    .line 853
    .line 854
    shr-int/lit8 v9, v8, 0x8

    .line 855
    .line 856
    and-int/lit16 v9, v9, 0xff

    .line 857
    .line 858
    add-int v26, v26, v9

    .line 859
    .line 860
    and-int/lit16 v8, v8, 0xff

    .line 861
    .line 862
    add-int v27, v27, v8

    .line 863
    .line 864
    add-int/lit8 v28, v28, 0x1

    .line 865
    .line 866
    :cond_32
    add-int/lit8 v7, v7, 0x1

    .line 867
    .line 868
    move/from16 v9, v32

    .line 869
    .line 870
    goto :goto_18

    .line 871
    :cond_33
    move/from16 v32, v9

    .line 872
    .line 873
    :cond_34
    add-int/2addr v3, v15

    .line 874
    move v7, v3

    .line 875
    :goto_19
    iget v8, v0, Lu2/e;->p:I

    .line 876
    .line 877
    add-int/2addr v8, v3

    .line 878
    if-ge v7, v8, :cond_36

    .line 879
    .line 880
    iget-object v8, v0, Lu2/e;->i:[B

    .line 881
    .line 882
    array-length v9, v8

    .line 883
    if-ge v7, v9, :cond_36

    .line 884
    .line 885
    if-ge v7, v5, :cond_36

    .line 886
    .line 887
    aget-byte v8, v8, v7

    .line 888
    .line 889
    and-int/lit16 v8, v8, 0xff

    .line 890
    .line 891
    iget-object v9, v0, Lu2/e;->a:[I

    .line 892
    .line 893
    aget v8, v9, v8

    .line 894
    .line 895
    if-eqz v8, :cond_35

    .line 896
    .line 897
    shr-int/lit8 v9, v8, 0x18

    .line 898
    .line 899
    and-int/lit16 v9, v9, 0xff

    .line 900
    .line 901
    add-int v24, v24, v9

    .line 902
    .line 903
    shr-int/lit8 v9, v8, 0x10

    .line 904
    .line 905
    and-int/lit16 v9, v9, 0xff

    .line 906
    .line 907
    add-int v25, v25, v9

    .line 908
    .line 909
    shr-int/lit8 v9, v8, 0x8

    .line 910
    .line 911
    and-int/lit16 v9, v9, 0xff

    .line 912
    .line 913
    add-int v26, v26, v9

    .line 914
    .line 915
    and-int/lit16 v8, v8, 0xff

    .line 916
    .line 917
    add-int v27, v27, v8

    .line 918
    .line 919
    add-int/lit8 v28, v28, 0x1

    .line 920
    .line 921
    :cond_35
    add-int/lit8 v7, v7, 0x1

    .line 922
    .line 923
    goto :goto_19

    .line 924
    :cond_36
    if-nez v28, :cond_37

    .line 925
    .line 926
    const/4 v3, 0x0

    .line 927
    goto :goto_1a

    .line 928
    :cond_37
    div-int v24, v24, v28

    .line 929
    .line 930
    shl-int/lit8 v3, v24, 0x18

    .line 931
    .line 932
    div-int v25, v25, v28

    .line 933
    .line 934
    shl-int/lit8 v7, v25, 0x10

    .line 935
    .line 936
    or-int/2addr v3, v7

    .line 937
    div-int v26, v26, v28

    .line 938
    .line 939
    shl-int/lit8 v7, v26, 0x8

    .line 940
    .line 941
    or-int/2addr v3, v7

    .line 942
    div-int v27, v27, v28

    .line 943
    .line 944
    or-int v3, v3, v27

    .line 945
    .line 946
    :goto_1a
    if-eqz v3, :cond_38

    .line 947
    .line 948
    aput v3, v2, v6

    .line 949
    .line 950
    goto :goto_1b

    .line 951
    :cond_38
    if-eqz v14, :cond_39

    .line 952
    .line 953
    if-nez v12, :cond_39

    .line 954
    .line 955
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 956
    .line 957
    move-object v12, v3

    .line 958
    :cond_39
    :goto_1b
    add-int/2addr v15, v4

    .line 959
    add-int/lit8 v6, v6, 0x1

    .line 960
    .line 961
    move/from16 v3, v19

    .line 962
    .line 963
    move/from16 v7, v29

    .line 964
    .line 965
    move/from16 v8, v31

    .line 966
    .line 967
    move/from16 v9, v32

    .line 968
    .line 969
    goto/16 :goto_17

    .line 970
    .line 971
    :cond_3a
    move/from16 v20, v3

    .line 972
    .line 973
    move/from16 v21, v5

    .line 974
    .line 975
    move/from16 v23, v6

    .line 976
    .line 977
    move/from16 v29, v7

    .line 978
    .line 979
    move/from16 v31, v8

    .line 980
    .line 981
    move/from16 v32, v9

    .line 982
    .line 983
    move-object/from16 v12, p2

    .line 984
    .line 985
    :goto_1c
    add-int/lit8 v13, v13, 0x1

    .line 986
    .line 987
    move/from16 v3, v18

    .line 988
    .line 989
    move/from16 v15, v20

    .line 990
    .line 991
    move/from16 v5, v21

    .line 992
    .line 993
    move/from16 v6, v23

    .line 994
    .line 995
    move/from16 v7, v29

    .line 996
    .line 997
    move/from16 v8, v31

    .line 998
    .line 999
    move/from16 v9, v32

    .line 1000
    .line 1001
    goto/16 :goto_11

    .line 1002
    .line 1003
    :cond_3b
    move-object/from16 p2, v12

    .line 1004
    .line 1005
    iget-object v2, v0, Lu2/e;->s:Ljava/lang/Boolean;

    .line 1006
    .line 1007
    if-nez v2, :cond_3d

    .line 1008
    .line 1009
    if-nez p2, :cond_3c

    .line 1010
    .line 1011
    const/4 v12, 0x0

    .line 1012
    goto :goto_1d

    .line 1013
    :cond_3c
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1014
    .line 1015
    .line 1016
    move-result v12

    .line 1017
    :goto_1d
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1018
    .line 1019
    .line 1020
    move-result-object v2

    .line 1021
    iput-object v2, v0, Lu2/e;->s:Ljava/lang/Boolean;

    .line 1022
    .line 1023
    :cond_3d
    :goto_1e
    iget-boolean v2, v0, Lu2/e;->n:Z

    .line 1024
    .line 1025
    if-eqz v2, :cond_40

    .line 1026
    .line 1027
    iget v1, v1, Lu2/b;->g:I

    .line 1028
    .line 1029
    if-eqz v1, :cond_3e

    .line 1030
    .line 1031
    const/4 v2, 0x1

    .line 1032
    if-ne v1, v2, :cond_40

    .line 1033
    .line 1034
    :cond_3e
    iget-object v1, v0, Lu2/e;->m:Landroid/graphics/Bitmap;

    .line 1035
    .line 1036
    if-nez v1, :cond_3f

    .line 1037
    .line 1038
    invoke-virtual/range {p0 .. p0}, Lu2/e;->a()Landroid/graphics/Bitmap;

    .line 1039
    .line 1040
    .line 1041
    move-result-object v1

    .line 1042
    iput-object v1, v0, Lu2/e;->m:Landroid/graphics/Bitmap;

    .line 1043
    .line 1044
    :cond_3f
    iget-object v1, v0, Lu2/e;->m:Landroid/graphics/Bitmap;

    .line 1045
    .line 1046
    iget v7, v0, Lu2/e;->r:I

    .line 1047
    .line 1048
    iget v8, v0, Lu2/e;->q:I

    .line 1049
    .line 1050
    const/4 v3, 0x0

    .line 1051
    const/4 v5, 0x0

    .line 1052
    const/4 v6, 0x0

    .line 1053
    move-object/from16 v2, v22

    .line 1054
    .line 1055
    move v4, v7

    .line 1056
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 1057
    .line 1058
    .line 1059
    :cond_40
    invoke-virtual/range {p0 .. p0}, Lu2/e;->a()Landroid/graphics/Bitmap;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v9

    .line 1063
    iget v7, v0, Lu2/e;->r:I

    .line 1064
    .line 1065
    iget v8, v0, Lu2/e;->q:I

    .line 1066
    .line 1067
    const/4 v3, 0x0

    .line 1068
    const/4 v5, 0x0

    .line 1069
    const/4 v6, 0x0

    .line 1070
    move-object v1, v9

    .line 1071
    move-object/from16 v2, v22

    .line 1072
    .line 1073
    move v4, v7

    .line 1074
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 1075
    .line 1076
    .line 1077
    return-object v9
.end method
