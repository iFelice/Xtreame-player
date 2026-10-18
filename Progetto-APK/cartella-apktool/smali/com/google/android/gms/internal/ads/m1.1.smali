.class public final Lcom/google/android/gms/internal/ads/m1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/l1;


# instance fields
.field public final a:[J

.field public final b:[J

.field public final c:J

.field public final d:J

.field public final e:I


# direct methods
.method public constructor <init>([J[JJJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/m1;->a:[J

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/m1;->b:[J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/m1;->c:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/m1;->d:J

    iput p7, p0, Lcom/google/android/gms/internal/ads/m1;->e:I

    return-void
.end method

.method public static c(JJLW0/b;Lcom/google/android/gms/internal/ads/jr;)Lcom/google/android/gms/internal/ads/m1;
    .locals 19

    .line 1
    move-wide/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v2, p4

    .line 4
    .line 5
    move-object/from16 v3, p5

    .line 6
    .line 7
    const/16 v4, 0xa

    .line 8
    .line 9
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    if-gtz v4, :cond_0

    .line 17
    .line 18
    goto :goto_2

    .line 19
    :cond_0
    iget v5, v2, LW0/b;->d:I

    .line 20
    .line 21
    const/16 v6, 0x7d00

    .line 22
    .line 23
    if-lt v5, v6, :cond_1

    .line 24
    .line 25
    const/16 v6, 0x480

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/16 v6, 0x240

    .line 29
    .line 30
    :goto_0
    int-to-long v6, v6

    .line 31
    const-wide/32 v8, 0xf4240

    .line 32
    .line 33
    .line 34
    mul-long v12, v6, v8

    .line 35
    .line 36
    int-to-long v14, v5

    .line 37
    int-to-long v10, v4

    .line 38
    sget-object v16, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    .line 39
    .line 40
    invoke-static/range {v10 .. v16}, Lcom/google/android/gms/internal/ads/Et;->v(JJJLjava/math/RoundingMode;)J

    .line 41
    .line 42
    .line 43
    move-result-wide v4

    .line 44
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/ads/jr;->A()I

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/ads/jr;->A()I

    .line 49
    .line 50
    .line 51
    move-result v7

    .line 52
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/ads/jr;->A()I

    .line 53
    .line 54
    .line 55
    move-result v8

    .line 56
    const/4 v9, 0x2

    .line 57
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 58
    .line 59
    .line 60
    iget v10, v2, LW0/b;->c:I

    .line 61
    .line 62
    int-to-long v10, v10

    .line 63
    add-long v10, p2, v10

    .line 64
    .line 65
    new-array v12, v6, [J

    .line 66
    .line 67
    new-array v13, v6, [J

    .line 68
    .line 69
    const/4 v14, 0x0

    .line 70
    move-wide/from16 v14, p2

    .line 71
    .line 72
    const/4 v9, 0x0

    .line 73
    :goto_1
    if-ge v9, v6, :cond_6

    .line 74
    .line 75
    int-to-long v2, v9

    .line 76
    mul-long v2, v2, v4

    .line 77
    .line 78
    move-wide/from16 v17, v4

    .line 79
    .line 80
    int-to-long v4, v6

    .line 81
    div-long/2addr v2, v4

    .line 82
    aput-wide v2, v12, v9

    .line 83
    .line 84
    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->max(JJ)J

    .line 85
    .line 86
    .line 87
    move-result-wide v2

    .line 88
    aput-wide v2, v13, v9

    .line 89
    .line 90
    const/4 v2, 0x1

    .line 91
    if-eq v8, v2, :cond_5

    .line 92
    .line 93
    const/4 v2, 0x2

    .line 94
    if-eq v8, v2, :cond_4

    .line 95
    .line 96
    const/4 v3, 0x3

    .line 97
    if-eq v8, v3, :cond_3

    .line 98
    .line 99
    const/4 v3, 0x4

    .line 100
    if-eq v8, v3, :cond_2

    .line 101
    .line 102
    :goto_2
    const/4 v0, 0x0

    .line 103
    return-object v0

    .line 104
    :cond_2
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/ads/jr;->z()I

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    goto :goto_3

    .line 109
    :cond_3
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/ads/jr;->y()I

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    goto :goto_3

    .line 114
    :cond_4
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/ads/jr;->A()I

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    goto :goto_3

    .line 119
    :cond_5
    const/4 v2, 0x2

    .line 120
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/ads/jr;->w()I

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    :goto_3
    int-to-long v4, v7

    .line 125
    int-to-long v2, v3

    .line 126
    mul-long v2, v2, v4

    .line 127
    .line 128
    add-long/2addr v14, v2

    .line 129
    add-int/lit8 v9, v9, 0x1

    .line 130
    .line 131
    move-object/from16 v2, p4

    .line 132
    .line 133
    move-object/from16 v3, p5

    .line 134
    .line 135
    move-wide/from16 v4, v17

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_6
    move-wide/from16 v17, v4

    .line 139
    .line 140
    const-wide/16 v2, -0x1

    .line 141
    .line 142
    cmp-long v4, v0, v2

    .line 143
    .line 144
    if-eqz v4, :cond_7

    .line 145
    .line 146
    cmp-long v2, v0, v14

    .line 147
    .line 148
    if-eqz v2, :cond_7

    .line 149
    .line 150
    const-string v2, "VBRI data size mismatch: "

    .line 151
    .line 152
    const-string v3, ", "

    .line 153
    .line 154
    invoke-static {v2, v0, v1, v3}, Lt/a;->d(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    const-string v1, "VbriSeeker"

    .line 166
    .line 167
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    :cond_7
    new-instance v8, Lcom/google/android/gms/internal/ads/m1;

    .line 171
    .line 172
    move-object/from16 v0, p4

    .line 173
    .line 174
    iget v7, v0, LW0/b;->f:I

    .line 175
    .line 176
    move-object v0, v8

    .line 177
    move-object v1, v12

    .line 178
    move-object v2, v13

    .line 179
    move-wide/from16 v3, v17

    .line 180
    .line 181
    move-wide v5, v14

    .line 182
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/m1;-><init>([J[JJJI)V

    .line 183
    .line 184
    .line 185
    return-object v8
.end method


# virtual methods
.method public final a(J)J
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/m1;->b:[J

    .line 3
    .line 4
    invoke-static {v1, p1, p2, v0}, Lcom/google/android/gms/internal/ads/Et;->k([JJZ)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/m1;->a:[J

    .line 9
    .line 10
    aget-wide p1, p2, p1

    .line 11
    .line 12
    return-wide p1
.end method

.method public final b(J)Lcom/google/android/gms/internal/ads/X;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/m1;->a:[J

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/Et;->k([JJZ)I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    new-instance v3, Lcom/google/android/gms/internal/ads/Z;

    .line 9
    .line 10
    aget-wide v4, v0, v2

    .line 11
    .line 12
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/m1;->b:[J

    .line 13
    .line 14
    aget-wide v7, v6, v2

    .line 15
    .line 16
    invoke-direct {v3, v4, v5, v7, v8}, Lcom/google/android/gms/internal/ads/Z;-><init>(JJ)V

    .line 17
    .line 18
    .line 19
    cmp-long v7, v4, p1

    .line 20
    .line 21
    if-gez v7, :cond_1

    .line 22
    .line 23
    array-length p1, v0

    .line 24
    add-int/lit8 p1, p1, -0x1

    .line 25
    .line 26
    if-ne v2, p1, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    add-int/2addr v2, v1

    .line 30
    new-instance p1, Lcom/google/android/gms/internal/ads/Z;

    .line 31
    .line 32
    aget-wide v4, v0, v2

    .line 33
    .line 34
    aget-wide v0, v6, v2

    .line 35
    .line 36
    invoke-direct {p1, v4, v5, v0, v1}, Lcom/google/android/gms/internal/ads/Z;-><init>(JJ)V

    .line 37
    .line 38
    .line 39
    new-instance p2, Lcom/google/android/gms/internal/ads/X;

    .line 40
    .line 41
    invoke-direct {p2, v3, p1}, Lcom/google/android/gms/internal/ads/X;-><init>(Lcom/google/android/gms/internal/ads/Z;Lcom/google/android/gms/internal/ads/Z;)V

    .line 42
    .line 43
    .line 44
    return-object p2

    .line 45
    :cond_1
    :goto_0
    new-instance p1, Lcom/google/android/gms/internal/ads/X;

    .line 46
    .line 47
    invoke-direct {p1, v3, v3}, Lcom/google/android/gms/internal/ads/X;-><init>(Lcom/google/android/gms/internal/ads/Z;Lcom/google/android/gms/internal/ads/Z;)V

    .line 48
    .line 49
    .line 50
    return-object p1
.end method

.method public final zza()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/m1;->c:J

    return-wide v0
.end method

.method public final zzc()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/m1;->e:I

    return v0
.end method

.method public final zzd()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/m1;->d:J

    return-wide v0
.end method

.method public final zzh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
