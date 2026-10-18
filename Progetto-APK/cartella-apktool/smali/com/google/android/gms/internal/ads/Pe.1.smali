.class public final Lcom/google/android/gms/internal/ads/Pe;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final r:Z


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Lp3/a;

.field public final d:Lcom/google/android/gms/internal/ads/U7;

.field public final e:Lcom/google/android/gms/internal/ads/W7;

.field public final f:Ll/D;

.field public final g:[J

.field public final h:[Ljava/lang/String;

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Lcom/google/android/gms/internal/ads/De;

.field public o:Z

.field public p:Z

.field public q:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ll3/p;->f:Ll3/p;

    .line 2
    .line 3
    iget-object v0, v0, Ll3/p;->e:Ljava/util/Random;

    .line 4
    .line 5
    const/16 v1, 0x64

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    sget-object v1, Lcom/google/android/gms/internal/ads/Q7;->Vb:Lcom/google/android/gms/internal/ads/J7;

    .line 12
    .line 13
    sget-object v2, Ll3/q;->d:Ll3/q;

    .line 14
    .line 15
    iget-object v2, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-ge v0, v1, :cond_0

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    :goto_0
    sput-boolean v0, Lcom/google/android/gms/internal/ads/Pe;->r:Z

    .line 33
    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lp3/a;Ljava/lang/String;Lcom/google/android/gms/internal/ads/W7;Lcom/google/android/gms/internal/ads/U7;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v6, LF0/u;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-direct {v6, v0}, LF0/u;-><init>(I)V

    .line 8
    .line 9
    .line 10
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 11
    .line 12
    const-string v1, "min_1"

    .line 13
    .line 14
    const-wide/16 v2, 0x1

    .line 15
    .line 16
    move-object v0, v6

    .line 17
    invoke-virtual/range {v0 .. v5}, LF0/u;->c(Ljava/lang/String;DD)V

    .line 18
    .line 19
    .line 20
    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    .line 21
    .line 22
    const-string v1, "1_5"

    .line 23
    .line 24
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 25
    .line 26
    invoke-virtual/range {v0 .. v5}, LF0/u;->c(Ljava/lang/String;DD)V

    .line 27
    .line 28
    .line 29
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    .line 30
    .line 31
    const-string v1, "5_10"

    .line 32
    .line 33
    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    .line 34
    .line 35
    invoke-virtual/range {v0 .. v5}, LF0/u;->c(Ljava/lang/String;DD)V

    .line 36
    .line 37
    .line 38
    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    .line 39
    .line 40
    const-string v1, "10_20"

    .line 41
    .line 42
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    .line 43
    .line 44
    invoke-virtual/range {v0 .. v5}, LF0/u;->c(Ljava/lang/String;DD)V

    .line 45
    .line 46
    .line 47
    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    .line 48
    .line 49
    const-string v1, "20_30"

    .line 50
    .line 51
    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    .line 52
    .line 53
    invoke-virtual/range {v0 .. v5}, LF0/u;->c(Ljava/lang/String;DD)V

    .line 54
    .line 55
    .line 56
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    const-string v1, "30_max"

    .line 62
    .line 63
    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    .line 64
    .line 65
    invoke-virtual/range {v0 .. v5}, LF0/u;->c(Ljava/lang/String;DD)V

    .line 66
    .line 67
    .line 68
    new-instance v0, Ll/D;

    .line 69
    .line 70
    invoke-direct {v0, v6}, Ll/D;-><init>(LF0/u;)V

    .line 71
    .line 72
    .line 73
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Pe;->f:Ll/D;

    .line 74
    .line 75
    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Pe;->i:Z

    .line 77
    .line 78
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Pe;->j:Z

    .line 79
    .line 80
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Pe;->k:Z

    .line 81
    .line 82
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Pe;->l:Z

    .line 83
    .line 84
    const-wide/16 v1, -0x1

    .line 85
    .line 86
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/Pe;->q:J

    .line 87
    .line 88
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Pe;->a:Landroid/content/Context;

    .line 89
    .line 90
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Pe;->c:Lp3/a;

    .line 91
    .line 92
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Pe;->b:Ljava/lang/String;

    .line 93
    .line 94
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/Pe;->e:Lcom/google/android/gms/internal/ads/W7;

    .line 95
    .line 96
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/Pe;->d:Lcom/google/android/gms/internal/ads/U7;

    .line 97
    .line 98
    sget-object p1, Lcom/google/android/gms/internal/ads/Q7;->y:Lcom/google/android/gms/internal/ads/J7;

    .line 99
    .line 100
    sget-object p2, Ll3/q;->d:Ll3/q;

    .line 101
    .line 102
    iget-object p2, p2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 103
    .line 104
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    check-cast p1, Ljava/lang/String;

    .line 109
    .line 110
    if-nez p1, :cond_0

    .line 111
    .line 112
    new-array p1, v0, [Ljava/lang/String;

    .line 113
    .line 114
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Pe;->h:[Ljava/lang/String;

    .line 115
    .line 116
    new-array p1, v0, [J

    .line 117
    .line 118
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Pe;->g:[J

    .line 119
    .line 120
    return-void

    .line 121
    :cond_0
    const-string p2, ","

    .line 122
    .line 123
    invoke-static {p1, p2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    array-length p2, p1

    .line 128
    new-array p3, p2, [Ljava/lang/String;

    .line 129
    .line 130
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Pe;->h:[Ljava/lang/String;

    .line 131
    .line 132
    new-array p2, p2, [J

    .line 133
    .line 134
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Pe;->g:[J

    .line 135
    .line 136
    :goto_0
    array-length p2, p1

    .line 137
    if-ge v0, p2, :cond_1

    .line 138
    .line 139
    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Pe;->g:[J

    .line 140
    .line 141
    aget-object p3, p1, v0

    .line 142
    .line 143
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 144
    .line 145
    .line 146
    move-result-wide p3

    .line 147
    aput-wide p3, p2, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :catch_0
    move-exception p2

    .line 151
    const-string p3, "Unable to parse frame hash target time number."

    .line 152
    .line 153
    invoke-static {p3, p2}, Lp3/h;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    .line 155
    .line 156
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Pe;->g:[J

    .line 157
    .line 158
    aput-wide v1, p2, v0

    .line 159
    .line 160
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/De;)V
    .locals 3

    .line 1
    const-string v0, "vpc2"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Pe;->e:Lcom/google/android/gms/internal/ads/W7;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Pe;->d:Lcom/google/android/gms/internal/ads/U7;

    .line 10
    .line 11
    invoke-static {v1, v2, v0}, LS3/e;->v(Lcom/google/android/gms/internal/ads/W7;Lcom/google/android/gms/internal/ads/U7;[Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Pe;->i:Z

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/De;->r()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v2, "vpn"

    .line 22
    .line 23
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/W7;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Pe;->n:Lcom/google/android/gms/internal/ads/De;

    .line 27
    .line 28
    return-void
.end method

.method public final b()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Pe;->m:Z

    .line 3
    .line 4
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/Pe;->j:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/Pe;->k:Z

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const-string v1, "vfp2"

    .line 13
    .line 14
    filled-new-array {v1}, [Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Pe;->e:Lcom/google/android/gms/internal/ads/W7;

    .line 19
    .line 20
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Pe;->d:Lcom/google/android/gms/internal/ads/U7;

    .line 21
    .line 22
    invoke-static {v2, v3, v1}, LS3/e;->v(Lcom/google/android/gms/internal/ads/W7;Lcom/google/android/gms/internal/ads/U7;[Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Pe;->k:Z

    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-boolean v1, Lcom/google/android/gms/internal/ads/Pe;->r:Z

    .line 4
    .line 5
    if-eqz v1, :cond_7

    .line 6
    .line 7
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/Pe;->o:Z

    .line 8
    .line 9
    if-nez v1, :cond_7

    .line 10
    .line 11
    new-instance v1, Landroid/os/Bundle;

    .line 12
    .line 13
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "type"

    .line 17
    .line 18
    const-string v3, "native-player-metrics"

    .line 19
    .line 20
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/Pe;->b:Ljava/lang/String;

    .line 24
    .line 25
    const-string v3, "request"

    .line 26
    .line 27
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/Pe;->n:Lcom/google/android/gms/internal/ads/De;

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/De;->r()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const-string v3, "player"

    .line 37
    .line 38
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/Pe;->f:Ll/D;

    .line 42
    .line 43
    iget-object v3, v2, Ll/D;->c:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v3, [Ljava/lang/String;

    .line 46
    .line 47
    new-instance v4, Ljava/util/ArrayList;

    .line 48
    .line 49
    array-length v3, v3

    .line 50
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 51
    .line 52
    .line 53
    const/4 v5, 0x0

    .line 54
    :goto_0
    iget-object v6, v2, Ll/D;->c:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v6, [Ljava/lang/String;

    .line 57
    .line 58
    array-length v7, v6

    .line 59
    if-ge v5, v7, :cond_0

    .line 60
    .line 61
    new-instance v7, Lo3/q;

    .line 62
    .line 63
    aget-object v9, v6, v5

    .line 64
    .line 65
    iget-object v6, v2, Ll/D;->e:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v6, [D

    .line 68
    .line 69
    iget-object v8, v2, Ll/D;->d:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v8, [D

    .line 72
    .line 73
    iget-object v10, v2, Ll/D;->f:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v10, [I

    .line 76
    .line 77
    aget-wide v11, v6, v5

    .line 78
    .line 79
    aget-wide v13, v8, v5

    .line 80
    .line 81
    aget v6, v10, v5

    .line 82
    .line 83
    move-object/from16 v17, v4

    .line 84
    .line 85
    int-to-double v3, v6

    .line 86
    iget v8, v2, Ll/D;->b:I

    .line 87
    .line 88
    move-object/from16 v18, v1

    .line 89
    .line 90
    int-to-double v0, v8

    .line 91
    div-double v0, v3, v0

    .line 92
    .line 93
    move-object v8, v7

    .line 94
    move-wide v10, v11

    .line 95
    move-wide v12, v13

    .line 96
    move-wide v14, v0

    .line 97
    move/from16 v16, v6

    .line 98
    .line 99
    invoke-direct/range {v8 .. v16}, Lo3/q;-><init>(Ljava/lang/String;DDDI)V

    .line 100
    .line 101
    .line 102
    move-object/from16 v0, v17

    .line 103
    .line 104
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    add-int/lit8 v5, v5, 0x1

    .line 108
    .line 109
    move-object v4, v0

    .line 110
    move-object/from16 v1, v18

    .line 111
    .line 112
    move-object/from16 v0, p0

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_0
    move-object/from16 v18, v1

    .line 116
    .line 117
    move-object v0, v4

    .line 118
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-eqz v1, :cond_1

    .line 127
    .line 128
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    check-cast v1, Lo3/q;

    .line 133
    .line 134
    iget-object v2, v1, Lo3/q;->a:Ljava/lang/String;

    .line 135
    .line 136
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    iget v3, v1, Lo3/q;->e:I

    .line 141
    .line 142
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    const-string v4, "fps_c_"

    .line 147
    .line 148
    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    move-object/from16 v4, v18

    .line 153
    .line 154
    invoke-virtual {v4, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    iget-object v2, v1, Lo3/q;->a:Ljava/lang/String;

    .line 158
    .line 159
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    iget-wide v5, v1, Lo3/q;->d:D

    .line 164
    .line 165
    invoke-static {v5, v6}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    const-string v3, "fps_p_"

    .line 170
    .line 171
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    invoke-virtual {v4, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    goto :goto_1

    .line 179
    :cond_1
    move-object/from16 v4, v18

    .line 180
    .line 181
    const/4 v3, 0x0

    .line 182
    move-object/from16 v0, p0

    .line 183
    .line 184
    :goto_2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Pe;->g:[J

    .line 185
    .line 186
    array-length v2, v1

    .line 187
    if-ge v3, v2, :cond_3

    .line 188
    .line 189
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/Pe;->h:[Ljava/lang/String;

    .line 190
    .line 191
    aget-object v2, v2, v3

    .line 192
    .line 193
    if-eqz v2, :cond_2

    .line 194
    .line 195
    aget-wide v5, v1, v3

    .line 196
    .line 197
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    const-string v5, "fh_"

    .line 202
    .line 203
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    invoke-virtual {v4, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 215
    .line 216
    goto :goto_2

    .line 217
    :cond_3
    sget-object v1, Lk3/l;->A:Lk3/l;

    .line 218
    .line 219
    iget-object v1, v1, Lk3/l;->c:Lo3/O;

    .line 220
    .line 221
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/Pe;->c:Lp3/a;

    .line 222
    .line 223
    iget-object v2, v2, Lp3/a;->G:Ljava/lang/String;

    .line 224
    .line 225
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 226
    .line 227
    .line 228
    const-string v3, "device"

    .line 229
    .line 230
    invoke-static {}, Lo3/O;->G()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v5

    .line 234
    invoke-virtual {v4, v3, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    sget-object v3, Lcom/google/android/gms/internal/ads/Q7;->a:Lcom/google/android/gms/internal/ads/J7;

    .line 238
    .line 239
    sget-object v3, Ll3/q;->d:Ll3/q;

    .line 240
    .line 241
    iget-object v5, v3, Ll3/q;->a:LF0/u;

    .line 242
    .line 243
    invoke-virtual {v5}, LF0/u;->b()Ljava/util/ArrayList;

    .line 244
    .line 245
    .line 246
    move-result-object v5

    .line 247
    const-string v6, ","

    .line 248
    .line 249
    invoke-static {v6, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v5

    .line 253
    const-string v6, "eids"

    .line 254
    .line 255
    invoke-virtual {v4, v6, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v4}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 259
    .line 260
    .line 261
    move-result v5

    .line 262
    const/4 v6, 0x1

    .line 263
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/Pe;->a:Landroid/content/Context;

    .line 264
    .line 265
    if-eqz v5, :cond_4

    .line 266
    .line 267
    const-string v1, "Empty or null bundle."

    .line 268
    .line 269
    invoke-static {v1}, Lp3/h;->b(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    goto :goto_4

    .line 273
    :cond_4
    sget-object v5, Lcom/google/android/gms/internal/ads/Q7;->P9:Lcom/google/android/gms/internal/ads/J7;

    .line 274
    .line 275
    iget-object v3, v3, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 276
    .line 277
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v3

    .line 281
    check-cast v3, Ljava/lang/String;

    .line 282
    .line 283
    iget-object v5, v1, Lo3/O;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 284
    .line 285
    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 286
    .line 287
    .line 288
    move-result v5

    .line 289
    iget-object v8, v1, Lo3/O;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 290
    .line 291
    if-nez v5, :cond_6

    .line 292
    .line 293
    new-instance v5, Lo3/M;

    .line 294
    .line 295
    invoke-direct {v5, v1, v7, v3}, Lo3/M;-><init>(Lo3/O;Landroid/content/Context;Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 299
    .line 300
    .line 301
    move-result v1

    .line 302
    if-eqz v1, :cond_5

    .line 303
    .line 304
    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 305
    .line 306
    goto :goto_3

    .line 307
    :cond_5
    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    invoke-interface {v1, v5}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 312
    .line 313
    .line 314
    invoke-static {v7, v3}, LJ6/r;->u(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    :goto_3
    invoke-virtual {v8, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 319
    .line 320
    .line 321
    :cond_6
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    check-cast v1, Landroid/os/Bundle;

    .line 326
    .line 327
    invoke-virtual {v4, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 328
    .line 329
    .line 330
    :goto_4
    sget-object v1, Ll3/p;->f:Ll3/p;

    .line 331
    .line 332
    iget-object v1, v1, Ll3/p;->a:Lp3/d;

    .line 333
    .line 334
    new-instance v1, Lm2/c;

    .line 335
    .line 336
    const/16 v3, 0xe

    .line 337
    .line 338
    invoke-direct {v1, v3, v7, v2}, Lm2/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 339
    .line 340
    .line 341
    invoke-static {v7, v2, v4, v1}, Lp3/d;->n(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lp3/c;)V

    .line 342
    .line 343
    .line 344
    iput-boolean v6, v0, Lcom/google/android/gms/internal/ads/Pe;->o:Z

    .line 345
    .line 346
    :cond_7
    return-void
.end method

.method public final d(Lcom/google/android/gms/internal/ads/De;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/Pe;->k:Z

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    if-eqz v2, :cond_1

    .line 8
    .line 9
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/Pe;->l:Z

    .line 10
    .line 11
    if-nez v2, :cond_1

    .line 12
    .line 13
    invoke-static {}, Lo3/I;->m()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/Pe;->l:Z

    .line 20
    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    const-string v2, "VideoMetricsMixin first frame"

    .line 24
    .line 25
    invoke-static {v2}, Lo3/I;->k(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    const-string v2, "vff2"

    .line 29
    .line 30
    filled-new-array {v2}, [Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Pe;->e:Lcom/google/android/gms/internal/ads/W7;

    .line 35
    .line 36
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Pe;->d:Lcom/google/android/gms/internal/ads/U7;

    .line 37
    .line 38
    invoke-static {v4, v5, v2}, LS3/e;->v(Lcom/google/android/gms/internal/ads/W7;Lcom/google/android/gms/internal/ads/U7;[Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/Pe;->l:Z

    .line 42
    .line 43
    :cond_1
    sget-object v2, Lk3/l;->A:Lk3/l;

    .line 44
    .line 45
    iget-object v2, v2, Lk3/l;->j:LP3/b;

    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 51
    .line 52
    .line 53
    move-result-wide v4

    .line 54
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/Pe;->m:Z

    .line 55
    .line 56
    const-wide/16 v6, 0x1

    .line 57
    .line 58
    const-wide/16 v8, -0x1

    .line 59
    .line 60
    if-eqz v2, :cond_4

    .line 61
    .line 62
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/Pe;->p:Z

    .line 63
    .line 64
    if-eqz v2, :cond_4

    .line 65
    .line 66
    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/Pe;->q:J

    .line 67
    .line 68
    cmp-long v2, v10, v8

    .line 69
    .line 70
    if-eqz v2, :cond_4

    .line 71
    .line 72
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 73
    .line 74
    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 75
    .line 76
    .line 77
    move-result-wide v10

    .line 78
    long-to-double v10, v10

    .line 79
    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/Pe;->q:J

    .line 80
    .line 81
    sub-long v12, v4, v12

    .line 82
    .line 83
    long-to-double v12, v12

    .line 84
    div-double/2addr v10, v12

    .line 85
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/Pe;->f:Ll/D;

    .line 86
    .line 87
    iget v12, v2, Ll/D;->b:I

    .line 88
    .line 89
    add-int/2addr v12, v3

    .line 90
    iput v12, v2, Ll/D;->b:I

    .line 91
    .line 92
    const/4 v12, 0x0

    .line 93
    :goto_0
    iget-object v13, v2, Ll/D;->e:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v13, [D

    .line 96
    .line 97
    array-length v14, v13

    .line 98
    if-ge v12, v14, :cond_4

    .line 99
    .line 100
    aget-wide v14, v13, v12

    .line 101
    .line 102
    cmpg-double v13, v14, v10

    .line 103
    .line 104
    if-gtz v13, :cond_2

    .line 105
    .line 106
    iget-object v13, v2, Ll/D;->d:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v13, [D

    .line 109
    .line 110
    aget-wide v16, v13, v12

    .line 111
    .line 112
    cmpg-double v13, v10, v16

    .line 113
    .line 114
    if-gez v13, :cond_2

    .line 115
    .line 116
    iget-object v13, v2, Ll/D;->f:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v13, [I

    .line 119
    .line 120
    aget v16, v13, v12

    .line 121
    .line 122
    add-int/lit8 v16, v16, 0x1

    .line 123
    .line 124
    aput v16, v13, v12

    .line 125
    .line 126
    :cond_2
    cmpg-double v13, v10, v14

    .line 127
    .line 128
    if-gez v13, :cond_3

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_3
    add-int/2addr v12, v3

    .line 132
    goto :goto_0

    .line 133
    :cond_4
    :goto_1
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/Pe;->m:Z

    .line 134
    .line 135
    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/Pe;->p:Z

    .line 136
    .line 137
    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/Pe;->q:J

    .line 138
    .line 139
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->z:Lcom/google/android/gms/internal/ads/J7;

    .line 140
    .line 141
    sget-object v4, Ll3/q;->d:Ll3/q;

    .line 142
    .line 143
    iget-object v4, v4, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 144
    .line 145
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    check-cast v2, Ljava/lang/Long;

    .line 150
    .line 151
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 152
    .line 153
    .line 154
    move-result-wide v4

    .line 155
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/De;->j()I

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    int-to-long v10, v2

    .line 160
    const/4 v2, 0x0

    .line 161
    :goto_2
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/Pe;->h:[Ljava/lang/String;

    .line 162
    .line 163
    array-length v13, v12

    .line 164
    if-ge v2, v13, :cond_a

    .line 165
    .line 166
    aget-object v13, v12, v2

    .line 167
    .line 168
    if-eqz v13, :cond_6

    .line 169
    .line 170
    :cond_5
    move-object/from16 v13, p1

    .line 171
    .line 172
    goto :goto_6

    .line 173
    :cond_6
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/Pe;->g:[J

    .line 174
    .line 175
    aget-wide v14, v13, v2

    .line 176
    .line 177
    sub-long v13, v10, v14

    .line 178
    .line 179
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    .line 180
    .line 181
    .line 182
    move-result-wide v13

    .line 183
    cmp-long v15, v4, v13

    .line 184
    .line 185
    if-lez v15, :cond_5

    .line 186
    .line 187
    const/16 v4, 0x8

    .line 188
    .line 189
    move-object/from16 v13, p1

    .line 190
    .line 191
    invoke-virtual {v13, v4, v4}, Landroid/view/TextureView;->getBitmap(II)Landroid/graphics/Bitmap;

    .line 192
    .line 193
    .line 194
    move-result-object v5

    .line 195
    const-wide/16 v10, 0x0

    .line 196
    .line 197
    const-wide/16 v13, 0x3f

    .line 198
    .line 199
    move-wide/from16 v16, v10

    .line 200
    .line 201
    const/4 v15, 0x0

    .line 202
    :goto_3
    if-ge v15, v4, :cond_9

    .line 203
    .line 204
    const/4 v6, 0x0

    .line 205
    :goto_4
    if-ge v6, v4, :cond_8

    .line 206
    .line 207
    invoke-virtual {v5, v6, v15}, Landroid/graphics/Bitmap;->getPixel(II)I

    .line 208
    .line 209
    .line 210
    move-result v7

    .line 211
    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    .line 212
    .line 213
    .line 214
    move-result v18

    .line 215
    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    .line 216
    .line 217
    .line 218
    move-result v19

    .line 219
    add-int v19, v19, v18

    .line 220
    .line 221
    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    .line 222
    .line 223
    .line 224
    move-result v7

    .line 225
    add-int v7, v7, v19

    .line 226
    .line 227
    const/16 v4, 0x80

    .line 228
    .line 229
    if-le v7, v4, :cond_7

    .line 230
    .line 231
    const-wide/16 v19, 0x1

    .line 232
    .line 233
    goto :goto_5

    .line 234
    :cond_7
    move-wide/from16 v19, v10

    .line 235
    .line 236
    :goto_5
    long-to-int v4, v13

    .line 237
    shl-long v19, v19, v4

    .line 238
    .line 239
    or-long v16, v16, v19

    .line 240
    .line 241
    add-long/2addr v13, v8

    .line 242
    add-int/2addr v6, v3

    .line 243
    const/16 v4, 0x8

    .line 244
    .line 245
    goto :goto_4

    .line 246
    :cond_8
    add-int/2addr v15, v3

    .line 247
    const/16 v4, 0x8

    .line 248
    .line 249
    const-wide/16 v6, 0x1

    .line 250
    .line 251
    goto :goto_3

    .line 252
    :cond_9
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 253
    .line 254
    .line 255
    move-result-object v4

    .line 256
    new-array v3, v3, [Ljava/lang/Object;

    .line 257
    .line 258
    aput-object v4, v3, v1

    .line 259
    .line 260
    const-string v1, "%016X"

    .line 261
    .line 262
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    aput-object v1, v12, v2

    .line 267
    .line 268
    return-void

    .line 269
    :goto_6
    add-int/2addr v2, v3

    .line 270
    const-wide/16 v6, 0x1

    .line 271
    .line 272
    goto :goto_2

    .line 273
    :cond_a
    return-void
.end method
