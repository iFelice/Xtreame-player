.class public final Lcom/google/android/gms/internal/ads/E2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/F2;


# instance fields
.field public final synthetic a:I

.field public b:Z

.field public c:J

.field public d:I

.field public e:I

.field public final f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/E2;->a:I

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/jr;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/jr;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/E2;->f:Ljava/lang/Object;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/E2;->c:J

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/E2;->a:I

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/E2;->f:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/e0;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/E2;->g:Ljava/lang/Object;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/E2;->c:J

    return-void
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/internal/ads/jr;)V
    .locals 9

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/E2;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/E2;->g:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lcom/google/android/gms/internal/ads/e0;

    .line 10
    .line 11
    invoke-static {v0}, Lo3/r;->x(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/E2;->b:Z

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_2

    .line 19
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget v2, p0, Lcom/google/android/gms/internal/ads/E2;->e:I

    .line 24
    .line 25
    const/16 v3, 0xa

    .line 26
    .line 27
    if-ge v2, v3, :cond_3

    .line 28
    .line 29
    rsub-int/lit8 v2, v2, 0xa

    .line 30
    .line 31
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    iget-object v4, p1, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 36
    .line 37
    iget v5, p1, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 38
    .line 39
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/E2;->f:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v6, Lcom/google/android/gms/internal/ads/jr;

    .line 42
    .line 43
    iget-object v7, v6, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 44
    .line 45
    iget v8, p0, Lcom/google/android/gms/internal/ads/E2;->e:I

    .line 46
    .line 47
    invoke-static {v4, v5, v7, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    .line 49
    .line 50
    iget v4, p0, Lcom/google/android/gms/internal/ads/E2;->e:I

    .line 51
    .line 52
    add-int/2addr v4, v2

    .line 53
    if-ne v4, v3, :cond_3

    .line 54
    .line 55
    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/jr;->w()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    const/16 v4, 0x49

    .line 63
    .line 64
    if-ne v2, v4, :cond_2

    .line 65
    .line 66
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/jr;->w()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    const/16 v4, 0x44

    .line 71
    .line 72
    if-ne v2, v4, :cond_2

    .line 73
    .line 74
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/jr;->w()I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    const/16 v4, 0x33

    .line 79
    .line 80
    if-eq v2, v4, :cond_1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    const/4 v1, 0x3

    .line 84
    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/jr;->v()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    add-int/2addr v1, v3

    .line 92
    iput v1, p0, Lcom/google/android/gms/internal/ads/E2;->d:I

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_2
    :goto_0
    const-string p1, "Id3Reader"

    .line 96
    .line 97
    const-string v0, "Discarding invalid ID3 tag"

    .line 98
    .line 99
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/E2;->b:Z

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_3
    :goto_1
    iget v1, p0, Lcom/google/android/gms/internal/ads/E2;->d:I

    .line 106
    .line 107
    iget v2, p0, Lcom/google/android/gms/internal/ads/E2;->e:I

    .line 108
    .line 109
    sub-int/2addr v1, v2

    .line 110
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/E2;->g:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast v1, Lcom/google/android/gms/internal/ads/e0;

    .line 117
    .line 118
    invoke-interface {v1, v0, p1}, Lcom/google/android/gms/internal/ads/e0;->f(ILcom/google/android/gms/internal/ads/jr;)V

    .line 119
    .line 120
    .line 121
    iget p1, p0, Lcom/google/android/gms/internal/ads/E2;->e:I

    .line 122
    .line 123
    add-int/2addr p1, v0

    .line 124
    iput p1, p0, Lcom/google/android/gms/internal/ads/E2;->e:I

    .line 125
    .line 126
    :goto_2
    return-void

    .line 127
    :pswitch_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/E2;->b:Z

    .line 128
    .line 129
    if-eqz v0, :cond_b

    .line 130
    .line 131
    iget v0, p0, Lcom/google/android/gms/internal/ads/E2;->d:I

    .line 132
    .line 133
    const/4 v2, 0x2

    .line 134
    if-ne v0, v2, :cond_6

    .line 135
    .line 136
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-nez v0, :cond_4

    .line 141
    .line 142
    goto :goto_4

    .line 143
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/jr;->w()I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    const/16 v2, 0x20

    .line 148
    .line 149
    if-eq v0, v2, :cond_5

    .line 150
    .line 151
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/E2;->b:Z

    .line 152
    .line 153
    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/ads/E2;->d:I

    .line 154
    .line 155
    add-int/lit8 v0, v0, -0x1

    .line 156
    .line 157
    iput v0, p0, Lcom/google/android/gms/internal/ads/E2;->d:I

    .line 158
    .line 159
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/E2;->b:Z

    .line 160
    .line 161
    if-eqz v0, :cond_b

    .line 162
    .line 163
    :cond_6
    iget v0, p0, Lcom/google/android/gms/internal/ads/E2;->d:I

    .line 164
    .line 165
    const/4 v2, 0x1

    .line 166
    if-ne v0, v2, :cond_9

    .line 167
    .line 168
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    if-nez v0, :cond_7

    .line 173
    .line 174
    goto :goto_4

    .line 175
    :cond_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/jr;->w()I

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    if-eqz v0, :cond_8

    .line 180
    .line 181
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/E2;->b:Z

    .line 182
    .line 183
    :cond_8
    iget v0, p0, Lcom/google/android/gms/internal/ads/E2;->d:I

    .line 184
    .line 185
    add-int/lit8 v0, v0, -0x1

    .line 186
    .line 187
    iput v0, p0, Lcom/google/android/gms/internal/ads/E2;->d:I

    .line 188
    .line 189
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/E2;->b:Z

    .line 190
    .line 191
    if-eqz v0, :cond_b

    .line 192
    .line 193
    :cond_9
    iget v0, p1, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 194
    .line 195
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 196
    .line 197
    .line 198
    move-result v2

    .line 199
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/E2;->g:Ljava/lang/Object;

    .line 200
    .line 201
    check-cast v3, [Lcom/google/android/gms/internal/ads/e0;

    .line 202
    .line 203
    :goto_3
    array-length v4, v3

    .line 204
    if-ge v1, v4, :cond_a

    .line 205
    .line 206
    aget-object v4, v3, v1

    .line 207
    .line 208
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 209
    .line 210
    .line 211
    invoke-interface {v4, v2, p1}, Lcom/google/android/gms/internal/ads/e0;->f(ILcom/google/android/gms/internal/ads/jr;)V

    .line 212
    .line 213
    .line 214
    add-int/lit8 v1, v1, 0x1

    .line 215
    .line 216
    goto :goto_3

    .line 217
    :cond_a
    iget p1, p0, Lcom/google/android/gms/internal/ads/E2;->e:I

    .line 218
    .line 219
    add-int/2addr p1, v2

    .line 220
    iput p1, p0, Lcom/google/android/gms/internal/ads/E2;->e:I

    .line 221
    .line 222
    :cond_b
    :goto_4
    return-void

    .line 223
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Lcom/google/android/gms/internal/ads/N;LA1/I;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/E2;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, LA1/I;->c()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, LA1/I;->d()V

    .line 10
    .line 11
    .line 12
    iget v0, p2, LA1/I;->d:I

    .line 13
    .line 14
    const/4 v1, 0x5

    .line 15
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/N;->h(II)Lcom/google/android/gms/internal/ads/e0;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/E2;->g:Ljava/lang/Object;

    .line 20
    .line 21
    new-instance v0, Lcom/google/android/gms/internal/ads/K;

    .line 22
    .line 23
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/K;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, LA1/I;->d()V

    .line 27
    .line 28
    .line 29
    iget-object p2, p2, LA1/I;->e:Ljava/lang/String;

    .line 30
    .line 31
    iput-object p2, v0, Lcom/google/android/gms/internal/ads/K;->a:Ljava/lang/String;

    .line 32
    .line 33
    const-string p2, "application/id3"

    .line 34
    .line 35
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/K;->f(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    new-instance p2, Lcom/google/android/gms/internal/ads/p0;

    .line 39
    .line 40
    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/p0;-><init>(Lcom/google/android/gms/internal/ads/K;)V

    .line 41
    .line 42
    .line 43
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/e0;->d(Lcom/google/android/gms/internal/ads/p0;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :pswitch_0
    const/4 v0, 0x0

    .line 48
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/E2;->g:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v1, [Lcom/google/android/gms/internal/ads/e0;

    .line 51
    .line 52
    array-length v1, v1

    .line 53
    if-ge v0, v1, :cond_0

    .line 54
    .line 55
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/E2;->f:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v1, Ljava/util/List;

    .line 58
    .line 59
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Lcom/google/android/gms/internal/ads/Y2;

    .line 64
    .line 65
    invoke-virtual {p2}, LA1/I;->c()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2}, LA1/I;->d()V

    .line 69
    .line 70
    .line 71
    iget v2, p2, LA1/I;->d:I

    .line 72
    .line 73
    const/4 v3, 0x3

    .line 74
    invoke-interface {p1, v2, v3}, Lcom/google/android/gms/internal/ads/N;->h(II)Lcom/google/android/gms/internal/ads/e0;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    new-instance v3, Lcom/google/android/gms/internal/ads/K;

    .line 79
    .line 80
    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/K;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2}, LA1/I;->d()V

    .line 84
    .line 85
    .line 86
    iget-object v4, p2, LA1/I;->e:Ljava/lang/String;

    .line 87
    .line 88
    iput-object v4, v3, Lcom/google/android/gms/internal/ads/K;->a:Ljava/lang/String;

    .line 89
    .line 90
    const-string v4, "application/dvbsubs"

    .line 91
    .line 92
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/K;->f(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/Y2;->b:[B

    .line 96
    .line 97
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    iput-object v4, v3, Lcom/google/android/gms/internal/ads/K;->o:Ljava/util/List;

    .line 102
    .line 103
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Y2;->a:Ljava/lang/String;

    .line 104
    .line 105
    iput-object v1, v3, Lcom/google/android/gms/internal/ads/K;->d:Ljava/lang/String;

    .line 106
    .line 107
    new-instance v1, Lcom/google/android/gms/internal/ads/p0;

    .line 108
    .line 109
    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/ads/p0;-><init>(Lcom/google/android/gms/internal/ads/K;)V

    .line 110
    .line 111
    .line 112
    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/e0;->d(Lcom/google/android/gms/internal/ads/p0;)V

    .line 113
    .line 114
    .line 115
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/E2;->g:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v1, [Lcom/google/android/gms/internal/ads/e0;

    .line 118
    .line 119
    aput-object v2, v1, v0

    .line 120
    .line 121
    add-int/lit8 v0, v0, 0x1

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_0
    return-void

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d(IJ)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/E2;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    and-int/lit8 p1, p1, 0x4

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/E2;->b:Z

    .line 14
    .line 15
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/E2;->c:J

    .line 16
    .line 17
    iput v1, p0, Lcom/google/android/gms/internal/ads/E2;->d:I

    .line 18
    .line 19
    iput v1, p0, Lcom/google/android/gms/internal/ads/E2;->e:I

    .line 20
    .line 21
    :goto_0
    return-void

    .line 22
    :pswitch_0
    and-int/lit8 p1, p1, 0x4

    .line 23
    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/E2;->b:Z

    .line 28
    .line 29
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/E2;->c:J

    .line 30
    .line 31
    iput v1, p0, Lcom/google/android/gms/internal/ads/E2;->e:I

    .line 32
    .line 33
    const/4 p1, 0x2

    .line 34
    iput p1, p0, Lcom/google/android/gms/internal/ads/E2;->d:I

    .line 35
    .line 36
    :goto_1
    return-void

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final zzc(Z)V
    .locals 10

    .line 1
    iget p1, p0, Lcom/google/android/gms/internal/ads/E2;->a:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    packed-switch p1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/E2;->g:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p1, Lcom/google/android/gms/internal/ads/e0;

    .line 16
    .line 17
    invoke-static {p1}, Lo3/r;->x(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/E2;->b:Z

    .line 21
    .line 22
    if-eqz p1, :cond_2

    .line 23
    .line 24
    iget p1, p0, Lcom/google/android/gms/internal/ads/E2;->d:I

    .line 25
    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    iget v4, p0, Lcom/google/android/gms/internal/ads/E2;->e:I

    .line 29
    .line 30
    if-eq v4, p1, :cond_0

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/E2;->c:J

    .line 34
    .line 35
    cmp-long p1, v4, v1

    .line 36
    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v3, 0x0

    .line 41
    :goto_0
    invoke-static {v3}, Lo3/r;->M(Z)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/E2;->g:Ljava/lang/Object;

    .line 45
    .line 46
    move-object v1, p1

    .line 47
    check-cast v1, Lcom/google/android/gms/internal/ads/e0;

    .line 48
    .line 49
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/E2;->c:J

    .line 50
    .line 51
    iget v5, p0, Lcom/google/android/gms/internal/ads/E2;->d:I

    .line 52
    .line 53
    const/4 v4, 0x1

    .line 54
    const/4 v6, 0x0

    .line 55
    const/4 v7, 0x0

    .line 56
    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/e0;->b(JIIILcom/google/android/gms/internal/ads/d0;)V

    .line 57
    .line 58
    .line 59
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/E2;->b:Z

    .line 60
    .line 61
    :cond_2
    :goto_1
    return-void

    .line 62
    :pswitch_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/E2;->b:Z

    .line 63
    .line 64
    if-eqz p1, :cond_5

    .line 65
    .line 66
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/E2;->c:J

    .line 67
    .line 68
    cmp-long p1, v4, v1

    .line 69
    .line 70
    if-eqz p1, :cond_3

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_3
    const/4 v3, 0x0

    .line 74
    :goto_2
    invoke-static {v3}, Lo3/r;->M(Z)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/E2;->g:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast p1, [Lcom/google/android/gms/internal/ads/e0;

    .line 80
    .line 81
    const/4 v1, 0x0

    .line 82
    :goto_3
    array-length v2, p1

    .line 83
    if-ge v1, v2, :cond_4

    .line 84
    .line 85
    aget-object v3, p1, v1

    .line 86
    .line 87
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/E2;->c:J

    .line 88
    .line 89
    iget v7, p0, Lcom/google/android/gms/internal/ads/E2;->e:I

    .line 90
    .line 91
    const/4 v6, 0x1

    .line 92
    const/4 v8, 0x0

    .line 93
    const/4 v9, 0x0

    .line 94
    invoke-interface/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/e0;->b(JIIILcom/google/android/gms/internal/ads/d0;)V

    .line 95
    .line 96
    .line 97
    add-int/lit8 v1, v1, 0x1

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/E2;->b:Z

    .line 101
    .line 102
    :cond_5
    return-void

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final zze()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/E2;->a:I

    .line 2
    .line 3
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/E2;->b:Z

    .line 13
    .line 14
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/E2;->c:J

    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_0
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/E2;->b:Z

    .line 18
    .line 19
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/E2;->c:J

    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
