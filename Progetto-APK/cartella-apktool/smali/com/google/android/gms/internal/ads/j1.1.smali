.class public final Lcom/google/android/gms/internal/ads/j1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/L;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/jr;

.field public final b:LW0/b;

.field public final c:Lcom/google/android/gms/internal/ads/T;

.field public final d:Lcom/google/android/gms/internal/ads/V;

.field public e:Lcom/google/android/gms/internal/ads/N;

.field public f:Lcom/google/android/gms/internal/ads/e0;

.field public g:Lcom/google/android/gms/internal/ads/e0;

.field public h:I

.field public i:Lcom/google/android/gms/internal/ads/Q9;

.field public j:J

.field public k:J

.field public l:J

.field public m:I

.field public n:Lcom/google/android/gms/internal/ads/l1;

.field public o:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/jr;

    .line 5
    .line 6
    const/16 v1, 0xa

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/jr;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/j1;->a:Lcom/google/android/gms/internal/ads/jr;

    .line 12
    .line 13
    new-instance v0, LW0/b;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/j1;->b:LW0/b;

    .line 19
    .line 20
    new-instance v0, Lcom/google/android/gms/internal/ads/T;

    .line 21
    .line 22
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/T;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/j1;->c:Lcom/google/android/gms/internal/ads/T;

    .line 26
    .line 27
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/j1;->j:J

    .line 33
    .line 34
    new-instance v0, Lcom/google/android/gms/internal/ads/V;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/V;-><init>(I)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/j1;->d:Lcom/google/android/gms/internal/ads/V;

    .line 41
    .line 42
    new-instance v0, Lcom/google/android/gms/internal/ads/I;

    .line 43
    .line 44
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/I;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/j1;->g:Lcom/google/android/gms/internal/ads/e0;

    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/M;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/j1;->n:Lcom/google/android/gms/internal/ads/l1;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/l1;->zzd()J

    .line 7
    .line 8
    .line 9
    move-result-wide v2

    .line 10
    const-wide/16 v4, -0x1

    .line 11
    .line 12
    cmp-long v0, v2, v4

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/M;->zze()J

    .line 17
    .line 18
    .line 19
    move-result-wide v4

    .line 20
    const-wide/16 v6, -0x4

    .line 21
    .line 22
    add-long/2addr v2, v6

    .line 23
    cmp-long v0, v4, v2

    .line 24
    .line 25
    if-gtz v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return v1

    .line 29
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/j1;->a:Lcom/google/android/gms/internal/ads/jr;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 32
    .line 33
    const/4 v2, 0x4

    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-interface {p1, v0, v3, v2, v1}, Lcom/google/android/gms/internal/ads/M;->d([BIIZ)Z

    .line 36
    .line 37
    .line 38
    move-result p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    if-nez p1, :cond_2

    .line 40
    .line 41
    return v1

    .line 42
    :cond_2
    return v3

    .line 43
    :catch_0
    return v1
.end method

.method public final b(Lcom/google/android/gms/internal/ads/M;Z)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzj()V

    .line 8
    .line 9
    .line 10
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzf()J

    .line 11
    .line 12
    .line 13
    move-result-wide v3

    .line 14
    const-wide/16 v5, 0x0

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    const/4 v8, 0x0

    .line 18
    cmp-long v9, v3, v5

    .line 19
    .line 20
    if-nez v9, :cond_2

    .line 21
    .line 22
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/j1;->d:Lcom/google/android/gms/internal/ads/V;

    .line 23
    .line 24
    invoke-virtual {v3, v1, v7}, Lcom/google/android/gms/internal/ads/V;->a(Lcom/google/android/gms/internal/ads/M;Lcom/google/android/gms/internal/ads/kH;)Lcom/google/android/gms/internal/ads/Q9;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    iput-object v3, v0, Lcom/google/android/gms/internal/ads/j1;->i:Lcom/google/android/gms/internal/ads/Q9;

    .line 29
    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/j1;->c:Lcom/google/android/gms/internal/ads/T;

    .line 33
    .line 34
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/T;->b(Lcom/google/android/gms/internal/ads/Q9;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zze()J

    .line 38
    .line 39
    .line 40
    move-result-wide v3

    .line 41
    long-to-int v4, v3

    .line 42
    if-nez v2, :cond_1

    .line 43
    .line 44
    invoke-interface {v1, v4}, Lcom/google/android/gms/internal/ads/M;->q(I)V

    .line 45
    .line 46
    .line 47
    :cond_1
    const/4 v3, 0x0

    .line 48
    :goto_0
    const/4 v5, 0x0

    .line 49
    const/4 v6, 0x0

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    const/4 v3, 0x0

    .line 52
    const/4 v4, 0x0

    .line 53
    goto :goto_0

    .line 54
    :goto_1
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/j1;->a(Lcom/google/android/gms/internal/ads/M;)Z

    .line 55
    .line 56
    .line 57
    move-result v9

    .line 58
    const/4 v10, 0x1

    .line 59
    if-eqz v9, :cond_4

    .line 60
    .line 61
    if-lez v5, :cond_3

    .line 62
    .line 63
    goto :goto_4

    .line 64
    :cond_3
    new-instance v1, Ljava/io/EOFException;

    .line 65
    .line 66
    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    .line 67
    .line 68
    .line 69
    throw v1

    .line 70
    :cond_4
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/j1;->a:Lcom/google/android/gms/internal/ads/jr;

    .line 71
    .line 72
    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 76
    .line 77
    .line 78
    move-result v9

    .line 79
    if-eqz v3, :cond_5

    .line 80
    .line 81
    int-to-long v11, v3

    .line 82
    const v13, -0x1f400

    .line 83
    .line 84
    .line 85
    and-int/2addr v13, v9

    .line 86
    int-to-long v13, v13

    .line 87
    const-wide/32 v15, -0x1f400

    .line 88
    .line 89
    .line 90
    and-long/2addr v11, v15

    .line 91
    cmp-long v15, v13, v11

    .line 92
    .line 93
    if-nez v15, :cond_6

    .line 94
    .line 95
    :cond_5
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/nH;->b(I)I

    .line 96
    .line 97
    .line 98
    move-result v11

    .line 99
    const/4 v12, -0x1

    .line 100
    if-ne v11, v12, :cond_b

    .line 101
    .line 102
    :cond_6
    if-eq v10, v2, :cond_7

    .line 103
    .line 104
    const/high16 v3, 0x20000

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_7
    const v3, 0x8000

    .line 108
    .line 109
    .line 110
    :goto_2
    add-int/lit8 v5, v6, 0x1

    .line 111
    .line 112
    if-ne v6, v3, :cond_9

    .line 113
    .line 114
    if-eqz v2, :cond_8

    .line 115
    .line 116
    return v8

    .line 117
    :cond_8
    const-string v1, "Searched too many bytes."

    .line 118
    .line 119
    invoke-static {v1, v7}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    throw v1

    .line 124
    :cond_9
    if-eqz v2, :cond_a

    .line 125
    .line 126
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzj()V

    .line 127
    .line 128
    .line 129
    add-int v3, v4, v5

    .line 130
    .line 131
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/M;->zzg(I)V

    .line 132
    .line 133
    .line 134
    :goto_3
    move v6, v5

    .line 135
    const/4 v3, 0x0

    .line 136
    const/4 v5, 0x0

    .line 137
    goto :goto_1

    .line 138
    :cond_a
    invoke-interface {v1, v10}, Lcom/google/android/gms/internal/ads/M;->q(I)V

    .line 139
    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_b
    add-int/lit8 v5, v5, 0x1

    .line 143
    .line 144
    if-ne v5, v10, :cond_c

    .line 145
    .line 146
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/j1;->b:LW0/b;

    .line 147
    .line 148
    invoke-virtual {v3, v9}, LW0/b;->b(I)Z

    .line 149
    .line 150
    .line 151
    move v3, v9

    .line 152
    goto :goto_6

    .line 153
    :cond_c
    const/4 v9, 0x4

    .line 154
    if-ne v5, v9, :cond_e

    .line 155
    .line 156
    :goto_4
    if-eqz v2, :cond_d

    .line 157
    .line 158
    add-int/2addr v4, v6

    .line 159
    invoke-interface {v1, v4}, Lcom/google/android/gms/internal/ads/M;->q(I)V

    .line 160
    .line 161
    .line 162
    goto :goto_5

    .line 163
    :cond_d
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzj()V

    .line 164
    .line 165
    .line 166
    :goto_5
    iput v3, v0, Lcom/google/android/gms/internal/ads/j1;->h:I

    .line 167
    .line 168
    return v10

    .line 169
    :cond_e
    :goto_6
    add-int/lit8 v11, v11, -0x4

    .line 170
    .line 171
    invoke-interface {v1, v11}, Lcom/google/android/gms/internal/ads/M;->zzg(I)V

    .line 172
    .line 173
    .line 174
    goto :goto_1
.end method

.method public final c(Lcom/google/android/gms/internal/ads/M;LW0/w;)I
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/j1;->f:Lcom/google/android/gms/internal/ads/e0;

    .line 6
    .line 7
    invoke-static {v2}, Lo3/r;->x(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    sget v2, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 11
    .line 12
    iget v2, v0, Lcom/google/android/gms/internal/ads/j1;->h:I

    .line 13
    .line 14
    const/4 v3, -0x1

    .line 15
    const/4 v4, 0x0

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    :try_start_0
    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/internal/ads/j1;->b(Lcom/google/android/gms/internal/ads/M;Z)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/j1;->n:Lcom/google/android/gms/internal/ads/l1;

    .line 22
    .line 23
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/j1;->b:LW0/b;

    .line 24
    .line 25
    const/4 v6, 0x1

    .line 26
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/j1;->a:Lcom/google/android/gms/internal/ads/jr;

    .line 27
    .line 28
    if-nez v2, :cond_18

    .line 29
    .line 30
    new-instance v15, Lcom/google/android/gms/internal/ads/jr;

    .line 31
    .line 32
    iget v2, v5, LW0/b;->c:I

    .line 33
    .line 34
    invoke-direct {v15, v2}, Lcom/google/android/gms/internal/ads/jr;-><init>(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/jr;->l()[B

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    iget v10, v5, LW0/b;->c:I

    .line 42
    .line 43
    invoke-interface {v1, v4, v2, v10}, Lcom/google/android/gms/internal/ads/M;->g(I[BI)V

    .line 44
    .line 45
    .line 46
    iget v2, v5, LW0/b;->a:I

    .line 47
    .line 48
    and-int/2addr v2, v6

    .line 49
    const/16 v10, 0x15

    .line 50
    .line 51
    const/16 v11, 0x24

    .line 52
    .line 53
    if-eqz v2, :cond_1

    .line 54
    .line 55
    iget v2, v5, LW0/b;->e:I

    .line 56
    .line 57
    if-eq v2, v6, :cond_3

    .line 58
    .line 59
    const/16 v10, 0x24

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    iget v2, v5, LW0/b;->e:I

    .line 63
    .line 64
    if-eq v2, v6, :cond_2

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    const/16 v10, 0xd

    .line 68
    .line 69
    :cond_3
    :goto_0
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/jr;->q()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    add-int/lit8 v12, v10, 0x4

    .line 74
    .line 75
    const v13, 0x56425249

    .line 76
    .line 77
    .line 78
    const v14, 0x496e666f

    .line 79
    .line 80
    .line 81
    const v6, 0x58696e67

    .line 82
    .line 83
    .line 84
    if-lt v2, v12, :cond_4

    .line 85
    .line 86
    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-eq v2, v6, :cond_6

    .line 94
    .line 95
    if-ne v2, v14, :cond_4

    .line 96
    .line 97
    const v2, 0x496e666f

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_4
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/jr;->q()I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    const/16 v10, 0x28

    .line 106
    .line 107
    if-lt v2, v10, :cond_5

    .line 108
    .line 109
    invoke-virtual {v15, v11}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    if-ne v2, v13, :cond_5

    .line 117
    .line 118
    const v2, 0x56425249

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_5
    const/4 v2, 0x0

    .line 123
    :cond_6
    :goto_1
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/j1;->c:Lcom/google/android/gms/internal/ads/T;

    .line 124
    .line 125
    const/16 v16, 0x0

    .line 126
    .line 127
    if-eq v2, v14, :cond_8

    .line 128
    .line 129
    if-eq v2, v13, :cond_9

    .line 130
    .line 131
    if-eq v2, v6, :cond_8

    .line 132
    .line 133
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzj()V

    .line 134
    .line 135
    .line 136
    move-object/from16 v21, v12

    .line 137
    .line 138
    :cond_7
    :goto_2
    move-object/from16 v2, v16

    .line 139
    .line 140
    goto/16 :goto_7

    .line 141
    .line 142
    :cond_8
    move-object v10, v12

    .line 143
    goto :goto_3

    .line 144
    :cond_9
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzd()J

    .line 145
    .line 146
    .line 147
    move-result-wide v10

    .line 148
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzf()J

    .line 149
    .line 150
    .line 151
    move-result-wide v13

    .line 152
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/j1;->b:LW0/b;

    .line 153
    .line 154
    move-object v6, v12

    .line 155
    move-wide v12, v13

    .line 156
    move-object v14, v2

    .line 157
    invoke-static/range {v10 .. v15}, Lcom/google/android/gms/internal/ads/m1;->c(JJLW0/b;Lcom/google/android/gms/internal/ads/jr;)Lcom/google/android/gms/internal/ads/m1;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    iget v10, v5, LW0/b;->c:I

    .line 162
    .line 163
    invoke-interface {v1, v10}, Lcom/google/android/gms/internal/ads/M;->q(I)V

    .line 164
    .line 165
    .line 166
    move-object/from16 v21, v6

    .line 167
    .line 168
    goto/16 :goto_7

    .line 169
    .line 170
    :goto_3
    invoke-static {v5, v15}, Ln1/h;->b(LW0/b;Lcom/google/android/gms/internal/ads/jr;)Ln1/h;

    .line 171
    .line 172
    .line 173
    move-result-object v11

    .line 174
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/T;->a()Z

    .line 175
    .line 176
    .line 177
    move-result v12

    .line 178
    if-nez v12, :cond_a

    .line 179
    .line 180
    iget v12, v11, Ln1/h;->c:I

    .line 181
    .line 182
    if-eq v12, v3, :cond_a

    .line 183
    .line 184
    iget v13, v11, Ln1/h;->d:I

    .line 185
    .line 186
    if-eq v13, v3, :cond_a

    .line 187
    .line 188
    iput v12, v10, Lcom/google/android/gms/internal/ads/T;->a:I

    .line 189
    .line 190
    iput v13, v10, Lcom/google/android/gms/internal/ads/T;->b:I

    .line 191
    .line 192
    :cond_a
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzf()J

    .line 193
    .line 194
    .line 195
    move-result-wide v12

    .line 196
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzd()J

    .line 197
    .line 198
    .line 199
    move-result-wide v14

    .line 200
    const-wide/16 v17, -0x1

    .line 201
    .line 202
    iget-wide v3, v11, Ln1/h;->b:J

    .line 203
    .line 204
    cmp-long v19, v14, v17

    .line 205
    .line 206
    if-eqz v19, :cond_b

    .line 207
    .line 208
    cmp-long v14, v3, v17

    .line 209
    .line 210
    if-eqz v14, :cond_b

    .line 211
    .line 212
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzd()J

    .line 213
    .line 214
    .line 215
    move-result-wide v14

    .line 216
    add-long v7, v12, v3

    .line 217
    .line 218
    cmp-long v20, v14, v7

    .line 219
    .line 220
    if-eqz v20, :cond_b

    .line 221
    .line 222
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzd()J

    .line 223
    .line 224
    .line 225
    move-result-wide v14

    .line 226
    const-string v6, "Data size mismatch between stream ("

    .line 227
    .line 228
    move-object/from16 v21, v10

    .line 229
    .line 230
    const-string v10, ") and Xing frame ("

    .line 231
    .line 232
    invoke-static {v6, v14, v15, v10}, Lt/a;->d(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    move-result-object v6

    .line 236
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    const-string v7, "), using Xing value."

    .line 240
    .line 241
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v6

    .line 248
    const-string v7, "Mp3Extractor"

    .line 249
    .line 250
    invoke-static {v7, v6}, Lcom/google/android/gms/internal/ads/Zo;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    goto :goto_4

    .line 254
    :cond_b
    move-object/from16 v21, v10

    .line 255
    .line 256
    :goto_4
    iget v6, v5, LW0/b;->c:I

    .line 257
    .line 258
    invoke-interface {v1, v6}, Lcom/google/android/gms/internal/ads/M;->q(I)V

    .line 259
    .line 260
    .line 261
    const v6, 0x58696e67

    .line 262
    .line 263
    .line 264
    if-ne v2, v6, :cond_c

    .line 265
    .line 266
    invoke-static {v11, v12, v13}, Lcom/google/android/gms/internal/ads/n1;->c(Ln1/h;J)Lcom/google/android/gms/internal/ads/n1;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    goto :goto_7

    .line 271
    :cond_c
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzd()J

    .line 272
    .line 273
    .line 274
    move-result-wide v6

    .line 275
    invoke-virtual {v11}, Ln1/h;->a()J

    .line 276
    .line 277
    .line 278
    move-result-wide v26

    .line 279
    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    cmp-long v2, v26, v14

    .line 285
    .line 286
    if-nez v2, :cond_d

    .line 287
    .line 288
    goto/16 :goto_2

    .line 289
    .line 290
    :cond_d
    iget-object v2, v11, Ln1/h;->f:LW0/b;

    .line 291
    .line 292
    cmp-long v8, v3, v17

    .line 293
    .line 294
    if-eqz v8, :cond_e

    .line 295
    .line 296
    add-long v6, v12, v3

    .line 297
    .line 298
    iget v8, v2, LW0/b;->c:I

    .line 299
    .line 300
    :goto_5
    int-to-long v14, v8

    .line 301
    sub-long/2addr v3, v14

    .line 302
    move-wide/from16 v31, v6

    .line 303
    .line 304
    goto :goto_6

    .line 305
    :cond_e
    cmp-long v3, v6, v17

    .line 306
    .line 307
    if-eqz v3, :cond_7

    .line 308
    .line 309
    sub-long v3, v6, v12

    .line 310
    .line 311
    iget v8, v2, LW0/b;->c:I

    .line 312
    .line 313
    goto :goto_5

    .line 314
    :goto_6
    sget-object v6, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 315
    .line 316
    const-wide/32 v24, 0x7a1200

    .line 317
    .line 318
    .line 319
    move-wide/from16 v22, v3

    .line 320
    .line 321
    move-object/from16 v28, v6

    .line 322
    .line 323
    invoke-static/range {v22 .. v28}, Lcom/google/android/gms/internal/ads/Et;->v(JJJLjava/math/RoundingMode;)J

    .line 324
    .line 325
    .line 326
    move-result-wide v7

    .line 327
    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/Cw;->w0(J)I

    .line 328
    .line 329
    .line 330
    move-result v29

    .line 331
    iget-wide v7, v11, Ln1/h;->a:J

    .line 332
    .line 333
    invoke-static {v3, v4, v7, v8, v6}, Lcom/google/android/gms/internal/ads/Cw;->z0(JJLjava/math/RoundingMode;)J

    .line 334
    .line 335
    .line 336
    move-result-wide v3

    .line 337
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/Cw;->w0(J)I

    .line 338
    .line 339
    .line 340
    move-result v30

    .line 341
    new-instance v3, Lcom/google/android/gms/internal/ads/h1;

    .line 342
    .line 343
    iget v2, v2, LW0/b;->c:I

    .line 344
    .line 345
    int-to-long v6, v2

    .line 346
    add-long v33, v12, v6

    .line 347
    .line 348
    move-object/from16 v28, v3

    .line 349
    .line 350
    invoke-direct/range {v28 .. v34}, Lcom/google/android/gms/internal/ads/h1;-><init>(IIJJ)V

    .line 351
    .line 352
    .line 353
    move-object v2, v3

    .line 354
    :goto_7
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/j1;->i:Lcom/google/android/gms/internal/ads/Q9;

    .line 355
    .line 356
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzf()J

    .line 357
    .line 358
    .line 359
    move-result-wide v6

    .line 360
    if-eqz v3, :cond_12

    .line 361
    .line 362
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/Q9;->a()I

    .line 363
    .line 364
    .line 365
    move-result v4

    .line 366
    const/4 v8, 0x0

    .line 367
    :goto_8
    if-ge v8, v4, :cond_12

    .line 368
    .line 369
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/Q9;->c(I)Lcom/google/android/gms/internal/ads/K9;

    .line 370
    .line 371
    .line 372
    move-result-object v10

    .line 373
    instance-of v11, v10, Lcom/google/android/gms/internal/ads/S0;

    .line 374
    .line 375
    if-eqz v11, :cond_11

    .line 376
    .line 377
    check-cast v10, Lcom/google/android/gms/internal/ads/S0;

    .line 378
    .line 379
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/Q9;->a()I

    .line 380
    .line 381
    .line 382
    move-result v4

    .line 383
    const/4 v8, 0x0

    .line 384
    :goto_9
    if-ge v8, v4, :cond_10

    .line 385
    .line 386
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/Q9;->c(I)Lcom/google/android/gms/internal/ads/K9;

    .line 387
    .line 388
    .line 389
    move-result-object v11

    .line 390
    instance-of v12, v11, Lcom/google/android/gms/internal/ads/U0;

    .line 391
    .line 392
    if-eqz v12, :cond_f

    .line 393
    .line 394
    check-cast v11, Lcom/google/android/gms/internal/ads/U0;

    .line 395
    .line 396
    iget-object v12, v11, Lcom/google/android/gms/internal/ads/P0;->G:Ljava/lang/String;

    .line 397
    .line 398
    const-string v13, "TLEN"

    .line 399
    .line 400
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 401
    .line 402
    .line 403
    move-result v12

    .line 404
    if-eqz v12, :cond_f

    .line 405
    .line 406
    iget-object v3, v11, Lcom/google/android/gms/internal/ads/U0;->I:Lcom/google/android/gms/internal/ads/uA;

    .line 407
    .line 408
    const/4 v4, 0x0

    .line 409
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object v3

    .line 413
    check-cast v3, Ljava/lang/String;

    .line 414
    .line 415
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 416
    .line 417
    .line 418
    move-result-wide v3

    .line 419
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/Et;->t(J)J

    .line 420
    .line 421
    .line 422
    move-result-wide v14

    .line 423
    goto :goto_a

    .line 424
    :cond_f
    add-int/lit8 v8, v8, 0x1

    .line 425
    .line 426
    goto :goto_9

    .line 427
    :cond_10
    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    :goto_a
    invoke-static {v6, v7, v10, v14, v15}, Lcom/google/android/gms/internal/ads/i1;->c(JLcom/google/android/gms/internal/ads/S0;J)Lcom/google/android/gms/internal/ads/i1;

    .line 433
    .line 434
    .line 435
    move-result-object v3

    .line 436
    goto :goto_b

    .line 437
    :cond_11
    add-int/lit8 v8, v8, 0x1

    .line 438
    .line 439
    goto :goto_8

    .line 440
    :cond_12
    move-object/from16 v3, v16

    .line 441
    .line 442
    :goto_b
    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/j1;->o:Z

    .line 443
    .line 444
    if-eqz v4, :cond_13

    .line 445
    .line 446
    new-instance v2, Lcom/google/android/gms/internal/ads/k1;

    .line 447
    .line 448
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/k1;-><init>()V

    .line 449
    .line 450
    .line 451
    goto :goto_d

    .line 452
    :cond_13
    if-eqz v3, :cond_14

    .line 453
    .line 454
    move-object/from16 v16, v3

    .line 455
    .line 456
    goto :goto_c

    .line 457
    :cond_14
    if-nez v2, :cond_15

    .line 458
    .line 459
    goto :goto_c

    .line 460
    :cond_15
    move-object/from16 v16, v2

    .line 461
    .line 462
    :goto_c
    if-eqz v16, :cond_16

    .line 463
    .line 464
    invoke-interface/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/Y;->zzh()Z

    .line 465
    .line 466
    .line 467
    move-object/from16 v2, v16

    .line 468
    .line 469
    goto :goto_d

    .line 470
    :cond_16
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/jr;->l()[B

    .line 471
    .line 472
    .line 473
    move-result-object v2

    .line 474
    const/4 v3, 0x4

    .line 475
    const/4 v4, 0x0

    .line 476
    invoke-interface {v1, v4, v2, v3}, Lcom/google/android/gms/internal/ads/M;->g(I[BI)V

    .line 477
    .line 478
    .line 479
    invoke-virtual {v9, v4}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 480
    .line 481
    .line 482
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 483
    .line 484
    .line 485
    move-result v2

    .line 486
    invoke-virtual {v5, v2}, LW0/b;->b(I)Z

    .line 487
    .line 488
    .line 489
    new-instance v2, Lcom/google/android/gms/internal/ads/h1;

    .line 490
    .line 491
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzd()J

    .line 492
    .line 493
    .line 494
    move-result-wide v13

    .line 495
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzf()J

    .line 496
    .line 497
    .line 498
    move-result-wide v15

    .line 499
    iget v11, v5, LW0/b;->f:I

    .line 500
    .line 501
    iget v12, v5, LW0/b;->c:I

    .line 502
    .line 503
    move-object v10, v2

    .line 504
    invoke-direct/range {v10 .. v16}, Lcom/google/android/gms/internal/ads/h1;-><init>(IIJJ)V

    .line 505
    .line 506
    .line 507
    :goto_d
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/j1;->n:Lcom/google/android/gms/internal/ads/l1;

    .line 508
    .line 509
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/j1;->e:Lcom/google/android/gms/internal/ads/N;

    .line 510
    .line 511
    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/N;->g(Lcom/google/android/gms/internal/ads/Y;)V

    .line 512
    .line 513
    .line 514
    new-instance v2, Lcom/google/android/gms/internal/ads/K;

    .line 515
    .line 516
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/K;-><init>()V

    .line 517
    .line 518
    .line 519
    iget-object v3, v5, LW0/b;->b:Ljava/lang/String;

    .line 520
    .line 521
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/K;->f(Ljava/lang/String;)V

    .line 522
    .line 523
    .line 524
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/K;->d()V

    .line 525
    .line 526
    .line 527
    iget v3, v5, LW0/b;->e:I

    .line 528
    .line 529
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/K;->j(I)V

    .line 530
    .line 531
    .line 532
    iget v3, v5, LW0/b;->d:I

    .line 533
    .line 534
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/K;->g(I)V

    .line 535
    .line 536
    .line 537
    move-object/from16 v3, v21

    .line 538
    .line 539
    iget v4, v3, Lcom/google/android/gms/internal/ads/T;->a:I

    .line 540
    .line 541
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/K;->a(I)V

    .line 542
    .line 543
    .line 544
    iget v3, v3, Lcom/google/android/gms/internal/ads/T;->b:I

    .line 545
    .line 546
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/K;->b(I)V

    .line 547
    .line 548
    .line 549
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/j1;->i:Lcom/google/android/gms/internal/ads/Q9;

    .line 550
    .line 551
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/K;->e(Lcom/google/android/gms/internal/ads/Q9;)V

    .line 552
    .line 553
    .line 554
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/j1;->n:Lcom/google/android/gms/internal/ads/l1;

    .line 555
    .line 556
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/l1;->zzc()I

    .line 557
    .line 558
    .line 559
    move-result v3

    .line 560
    const v4, -0x7fffffff

    .line 561
    .line 562
    .line 563
    if-eq v3, v4, :cond_17

    .line 564
    .line 565
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/j1;->n:Lcom/google/android/gms/internal/ads/l1;

    .line 566
    .line 567
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/l1;->zzc()I

    .line 568
    .line 569
    .line 570
    move-result v3

    .line 571
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/K;->i(I)V

    .line 572
    .line 573
    .line 574
    :cond_17
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/j1;->g:Lcom/google/android/gms/internal/ads/e0;

    .line 575
    .line 576
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/K;->h()Lcom/google/android/gms/internal/ads/p0;

    .line 577
    .line 578
    .line 579
    move-result-object v2

    .line 580
    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/e0;->d(Lcom/google/android/gms/internal/ads/p0;)V

    .line 581
    .line 582
    .line 583
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzf()J

    .line 584
    .line 585
    .line 586
    move-result-wide v2

    .line 587
    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/j1;->l:J

    .line 588
    .line 589
    goto :goto_e

    .line 590
    :cond_18
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/j1;->l:J

    .line 591
    .line 592
    const-wide/16 v6, 0x0

    .line 593
    .line 594
    cmp-long v4, v2, v6

    .line 595
    .line 596
    if-eqz v4, :cond_19

    .line 597
    .line 598
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzf()J

    .line 599
    .line 600
    .line 601
    move-result-wide v6

    .line 602
    cmp-long v4, v6, v2

    .line 603
    .line 604
    if-gez v4, :cond_19

    .line 605
    .line 606
    sub-long/2addr v2, v6

    .line 607
    long-to-int v3, v2

    .line 608
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/M;->q(I)V

    .line 609
    .line 610
    .line 611
    :cond_19
    :goto_e
    iget v2, v0, Lcom/google/android/gms/internal/ads/j1;->m:I

    .line 612
    .line 613
    if-nez v2, :cond_1e

    .line 614
    .line 615
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzj()V

    .line 616
    .line 617
    .line 618
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/j1;->a(Lcom/google/android/gms/internal/ads/M;)Z

    .line 619
    .line 620
    .line 621
    move-result v2

    .line 622
    if-eqz v2, :cond_1a

    .line 623
    .line 624
    :goto_f
    const/4 v3, -0x1

    .line 625
    goto/16 :goto_13

    .line 626
    .line 627
    :cond_1a
    const/4 v2, 0x0

    .line 628
    invoke-virtual {v9, v2}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 629
    .line 630
    .line 631
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 632
    .line 633
    .line 634
    move-result v2

    .line 635
    iget v3, v0, Lcom/google/android/gms/internal/ads/j1;->h:I

    .line 636
    .line 637
    int-to-long v3, v3

    .line 638
    const v6, -0x1f400

    .line 639
    .line 640
    .line 641
    and-int/2addr v6, v2

    .line 642
    int-to-long v6, v6

    .line 643
    const-wide/32 v8, -0x1f400

    .line 644
    .line 645
    .line 646
    and-long/2addr v3, v8

    .line 647
    cmp-long v8, v6, v3

    .line 648
    .line 649
    if-nez v8, :cond_1b

    .line 650
    .line 651
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/nH;->b(I)I

    .line 652
    .line 653
    .line 654
    move-result v3

    .line 655
    const/4 v4, -0x1

    .line 656
    if-ne v3, v4, :cond_1c

    .line 657
    .line 658
    :cond_1b
    const/4 v3, 0x1

    .line 659
    goto :goto_10

    .line 660
    :cond_1c
    invoke-virtual {v5, v2}, LW0/b;->b(I)Z

    .line 661
    .line 662
    .line 663
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/j1;->j:J

    .line 664
    .line 665
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    cmp-long v4, v2, v6

    .line 671
    .line 672
    if-nez v4, :cond_1d

    .line 673
    .line 674
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/j1;->n:Lcom/google/android/gms/internal/ads/l1;

    .line 675
    .line 676
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzf()J

    .line 677
    .line 678
    .line 679
    move-result-wide v3

    .line 680
    invoke-interface {v2, v3, v4}, Lcom/google/android/gms/internal/ads/l1;->a(J)J

    .line 681
    .line 682
    .line 683
    move-result-wide v2

    .line 684
    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/j1;->j:J

    .line 685
    .line 686
    :cond_1d
    iget v2, v5, LW0/b;->c:I

    .line 687
    .line 688
    iput v2, v0, Lcom/google/android/gms/internal/ads/j1;->m:I

    .line 689
    .line 690
    :cond_1e
    const/4 v3, 0x1

    .line 691
    goto :goto_11

    .line 692
    :goto_10
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/M;->q(I)V

    .line 693
    .line 694
    .line 695
    const/4 v1, 0x0

    .line 696
    iput v1, v0, Lcom/google/android/gms/internal/ads/j1;->h:I

    .line 697
    .line 698
    goto :goto_12

    .line 699
    :goto_11
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/j1;->g:Lcom/google/android/gms/internal/ads/e0;

    .line 700
    .line 701
    invoke-interface {v4, v1, v2, v3}, Lcom/google/android/gms/internal/ads/e0;->e(Lcom/google/android/gms/internal/ads/HL;IZ)I

    .line 702
    .line 703
    .line 704
    move-result v1

    .line 705
    const/4 v2, -0x1

    .line 706
    if-ne v1, v2, :cond_1f

    .line 707
    .line 708
    goto :goto_f

    .line 709
    :cond_1f
    iget v2, v0, Lcom/google/android/gms/internal/ads/j1;->m:I

    .line 710
    .line 711
    sub-int/2addr v2, v1

    .line 712
    iput v2, v0, Lcom/google/android/gms/internal/ads/j1;->m:I

    .line 713
    .line 714
    if-lez v2, :cond_20

    .line 715
    .line 716
    goto :goto_12

    .line 717
    :cond_20
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/j1;->g:Lcom/google/android/gms/internal/ads/e0;

    .line 718
    .line 719
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/j1;->k:J

    .line 720
    .line 721
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/j1;->j:J

    .line 722
    .line 723
    iget v7, v5, LW0/b;->d:I

    .line 724
    .line 725
    int-to-long v7, v7

    .line 726
    const-wide/32 v9, 0xf4240

    .line 727
    .line 728
    .line 729
    mul-long v1, v1, v9

    .line 730
    .line 731
    div-long/2addr v1, v7

    .line 732
    add-long v7, v1, v3

    .line 733
    .line 734
    iget v10, v5, LW0/b;->c:I

    .line 735
    .line 736
    const/4 v9, 0x1

    .line 737
    const/4 v11, 0x0

    .line 738
    const/4 v12, 0x0

    .line 739
    invoke-interface/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/e0;->b(JIIILcom/google/android/gms/internal/ads/d0;)V

    .line 740
    .line 741
    .line 742
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/j1;->k:J

    .line 743
    .line 744
    iget v3, v5, LW0/b;->g:I

    .line 745
    .line 746
    int-to-long v3, v3

    .line 747
    add-long/2addr v1, v3

    .line 748
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/j1;->k:J

    .line 749
    .line 750
    const/4 v1, 0x0

    .line 751
    iput v1, v0, Lcom/google/android/gms/internal/ads/j1;->m:I

    .line 752
    .line 753
    :goto_12
    const/4 v3, 0x0

    .line 754
    :catch_0
    :goto_13
    return v3
.end method

.method public final d(Lcom/google/android/gms/internal/ads/M;)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/j1;->b(Lcom/google/android/gms/internal/ads/M;Z)Z

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    return p1
.end method

.method public final e(JJ)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/ads/j1;->h:I

    .line 3
    .line 4
    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/j1;->j:J

    .line 10
    .line 11
    const-wide/16 p2, 0x0

    .line 12
    .line 13
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/j1;->k:J

    .line 14
    .line 15
    iput p1, p0, Lcom/google/android/gms/internal/ads/j1;->m:I

    .line 16
    .line 17
    return-void
.end method

.method public final f(Lcom/google/android/gms/internal/ads/N;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/j1;->e:Lcom/google/android/gms/internal/ads/N;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/N;->h(II)Lcom/google/android/gms/internal/ads/e0;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/j1;->f:Lcom/google/android/gms/internal/ads/e0;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/j1;->g:Lcom/google/android/gms/internal/ads/e0;

    .line 12
    .line 13
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/j1;->e:Lcom/google/android/gms/internal/ads/N;

    .line 14
    .line 15
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/N;->f()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final zzd()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/uA;->H:Lcom/google/android/gms/internal/ads/sA;

    .line 2
    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/PA;->K:Lcom/google/android/gms/internal/ads/PA;

    .line 4
    .line 5
    return-object v0
.end method
