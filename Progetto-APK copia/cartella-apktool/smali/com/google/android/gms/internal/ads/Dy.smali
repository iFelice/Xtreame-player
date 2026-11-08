.class public final Lcom/google/android/gms/internal/ads/Dy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Ljava/lang/Object;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/content/SharedPreferences;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/google/android/gms/internal/ads/uy;

.field public final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/Dy;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/google/android/gms/internal/ads/uy;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Dy;->e:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Dy;->a:Landroid/content/Context;

    .line 8
    .line 9
    add-int/lit8 p2, p2, -0x1

    .line 10
    .line 11
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Dy;->c:Ljava/lang/String;

    .line 16
    .line 17
    const-string p2, "pcvmspf"

    .line 18
    .line 19
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Dy;->b:Landroid/content/SharedPreferences;

    .line 24
    .line 25
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Dy;->d:Lcom/google/android/gms/internal/ads/uy;

    .line 26
    .line 27
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/Dy;->e:Z

    .line 28
    .line 29
    return-void
.end method

.method public static d(Lcom/google/android/gms/internal/ads/v5;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/x5;->D()Lcom/google/android/gms/internal/ads/w5;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/v5;->B()Lcom/google/android/gms/internal/ads/x5;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/x5;->I()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 14
    .line 15
    .line 16
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 17
    .line 18
    check-cast v2, Lcom/google/android/gms/internal/ads/x5;

    .line 19
    .line 20
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/x5;->J(Lcom/google/android/gms/internal/ads/x5;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/v5;->B()Lcom/google/android/gms/internal/ads/x5;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/x5;->H()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 32
    .line 33
    .line 34
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 35
    .line 36
    check-cast v2, Lcom/google/android/gms/internal/ads/x5;

    .line 37
    .line 38
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/x5;->L(Lcom/google/android/gms/internal/ads/x5;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/v5;->B()Lcom/google/android/gms/internal/ads/x5;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/x5;->A()J

    .line 46
    .line 47
    .line 48
    move-result-wide v1

    .line 49
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 50
    .line 51
    .line 52
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 53
    .line 54
    check-cast v3, Lcom/google/android/gms/internal/ads/x5;

    .line 55
    .line 56
    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/ads/x5;->N(Lcom/google/android/gms/internal/ads/x5;J)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/v5;->B()Lcom/google/android/gms/internal/ads/x5;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/x5;->C()J

    .line 64
    .line 65
    .line 66
    move-result-wide v1

    .line 67
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 68
    .line 69
    .line 70
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 71
    .line 72
    check-cast v3, Lcom/google/android/gms/internal/ads/x5;

    .line 73
    .line 74
    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/ads/x5;->K(Lcom/google/android/gms/internal/ads/x5;J)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/v5;->B()Lcom/google/android/gms/internal/ads/x5;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/x5;->B()J

    .line 82
    .line 83
    .line 84
    move-result-wide v1

    .line 85
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 86
    .line 87
    .line 88
    iget-object p0, v0, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 89
    .line 90
    check-cast p0, Lcom/google/android/gms/internal/ads/x5;

    .line 91
    .line 92
    invoke-static {p0, v1, v2}, Lcom/google/android/gms/internal/ads/x5;->M(Lcom/google/android/gms/internal/ads/x5;J)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oH;->b()Lcom/google/android/gms/internal/ads/qH;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    check-cast p0, Lcom/google/android/gms/internal/ads/x5;

    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/PG;->d()[B

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-static {p0}, LP3/c;->b([B)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/v5;)Z
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sget-object v2, Lcom/google/android/gms/internal/ads/Dy;->f:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v2

    .line 8
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/v5;->B()Lcom/google/android/gms/internal/ads/x5;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/x5;->I()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/Dy;->c(Ljava/lang/String;)Ljava/io/File;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    new-instance v4, Ljava/io/File;

    .line 21
    .line 22
    const-string v5, "pcbc"

    .line 23
    .line 24
    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/v5;->C()Lcom/google/android/gms/internal/ads/XG;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/XG;->b()[B

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-static {v4, v3}, LQ3/b;->U(Ljava/io/File;[B)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-nez v3, :cond_0

    .line 40
    .line 41
    const/16 p1, 0xfb4

    .line 42
    .line 43
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/Dy;->e(IJ)V

    .line 44
    .line 45
    .line 46
    monitor-exit v2

    .line 47
    const/4 p1, 0x0

    .line 48
    return p1

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    goto :goto_1

    .line 51
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Dy;->d(Lcom/google/android/gms/internal/ads/v5;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Dy;->b:Landroid/content/SharedPreferences;

    .line 56
    .line 57
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Dy;->c:Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    const-string v5, "LATMTD"

    .line 68
    .line 69
    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-interface {v3, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 74
    .line 75
    .line 76
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-eqz p1, :cond_1

    .line 81
    .line 82
    const/16 v3, 0x1397

    .line 83
    .line 84
    invoke-virtual {p0, v3, v0, v1}, Lcom/google/android/gms/internal/ads/Dy;->e(IJ)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    const/16 v3, 0xfb5

    .line 89
    .line 90
    invoke-virtual {p0, v3, v0, v1}, Lcom/google/android/gms/internal/ads/Dy;->e(IJ)V

    .line 91
    .line 92
    .line 93
    :goto_0
    monitor-exit v2

    .line 94
    return p1

    .line 95
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    throw p1
.end method

.method public final b(Lcom/google/android/gms/internal/ads/v5;Lcom/google/android/gms/internal/ads/K4;)Z
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    const-string v2, "d:"

    .line 6
    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v3

    .line 11
    sget-object v5, Lcom/google/android/gms/internal/ads/Dy;->f:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v5

    .line 14
    const/4 v6, 0x1

    .line 15
    :try_start_0
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/Dy;->f(I)Lcom/google/android/gms/internal/ads/x5;

    .line 16
    .line 17
    .line 18
    move-result-object v7

    .line 19
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/v5;->B()Lcom/google/android/gms/internal/ads/x5;

    .line 20
    .line 21
    .line 22
    move-result-object v8

    .line 23
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/x5;->I()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v8

    .line 27
    const/4 v9, 0x0

    .line 28
    if-eqz v7, :cond_0

    .line 29
    .line 30
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/x5;->I()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    if-eqz v7, :cond_0

    .line 39
    .line 40
    const/16 v0, 0xfae

    .line 41
    .line 42
    invoke-virtual {v1, v0, v3, v4}, Lcom/google/android/gms/internal/ads/Dy;->e(IJ)V

    .line 43
    .line 44
    .line 45
    monitor-exit v5

    .line 46
    return v9

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    goto/16 :goto_2

    .line 49
    .line 50
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 51
    .line 52
    .line 53
    move-result-wide v10

    .line 54
    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/Dy;->c(Ljava/lang/String;)Ljava/io/File;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 59
    .line 60
    .line 61
    move-result v12

    .line 62
    const/16 v13, 0xfaf

    .line 63
    .line 64
    if-eqz v12, :cond_3

    .line 65
    .line 66
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    .line 67
    .line 68
    .line 69
    move-result v12

    .line 70
    const-string v14, "1"

    .line 71
    .line 72
    const-string v15, "0"

    .line 73
    .line 74
    if-eq v6, v12, :cond_1

    .line 75
    .line 76
    move-object v14, v15

    .line 77
    :cond_1
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    .line 78
    .line 79
    .line 80
    move-result v7

    .line 81
    const-string v12, "1"

    .line 82
    .line 83
    const-string v15, "0"

    .line 84
    .line 85
    if-eq v6, v7, :cond_2

    .line 86
    .line 87
    move-object v12, v15

    .line 88
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v2, ",f:"

    .line 97
    .line 98
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/Dy;->d:Lcom/google/android/gms/internal/ads/uy;

    .line 109
    .line 110
    const/16 v12, 0xfb7

    .line 111
    .line 112
    invoke-interface {v7, v12, v10, v11, v2}, Lcom/google/android/gms/internal/ads/uy;->zzb(IJLjava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, v13, v10, v11}, Lcom/google/android/gms/internal/ads/Dy;->e(IJ)V

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_3
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    if-nez v2, :cond_5

    .line 124
    .line 125
    invoke-virtual {v7}, Ljava/io/File;->canWrite()Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    const-string v2, "1"

    .line 130
    .line 131
    const-string v3, "0"

    .line 132
    .line 133
    if-eq v6, v0, :cond_4

    .line 134
    .line 135
    move-object v2, v3

    .line 136
    :cond_4
    const-string v0, "cw:"

    .line 137
    .line 138
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/Dy;->d:Lcom/google/android/gms/internal/ads/uy;

    .line 143
    .line 144
    const/16 v3, 0xfb8

    .line 145
    .line 146
    invoke-interface {v2, v3, v10, v11, v0}, Lcom/google/android/gms/internal/ads/uy;->zzb(IJLjava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1, v13, v10, v11}, Lcom/google/android/gms/internal/ads/Dy;->e(IJ)V

    .line 150
    .line 151
    .line 152
    monitor-exit v5

    .line 153
    return v9

    .line 154
    :cond_5
    :goto_0
    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/Dy;->c(Ljava/lang/String;)Ljava/io/File;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    new-instance v7, Ljava/io/File;

    .line 159
    .line 160
    const-string v8, "pcam.jar"

    .line 161
    .line 162
    invoke-direct {v7, v2, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    new-instance v8, Ljava/io/File;

    .line 166
    .line 167
    const-string v10, "pcbc"

    .line 168
    .line 169
    invoke-direct {v8, v2, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/v5;->D()Lcom/google/android/gms/internal/ads/XG;

    .line 173
    .line 174
    .line 175
    move-result-object v10

    .line 176
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/XG;->b()[B

    .line 177
    .line 178
    .line 179
    move-result-object v10

    .line 180
    invoke-static {v7, v10}, LQ3/b;->U(Ljava/io/File;[B)Z

    .line 181
    .line 182
    .line 183
    move-result v10

    .line 184
    if-nez v10, :cond_6

    .line 185
    .line 186
    const/16 v0, 0xfb0

    .line 187
    .line 188
    invoke-virtual {v1, v0, v3, v4}, Lcom/google/android/gms/internal/ads/Dy;->e(IJ)V

    .line 189
    .line 190
    .line 191
    monitor-exit v5

    .line 192
    return v9

    .line 193
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/v5;->C()Lcom/google/android/gms/internal/ads/XG;

    .line 194
    .line 195
    .line 196
    move-result-object v10

    .line 197
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/XG;->b()[B

    .line 198
    .line 199
    .line 200
    move-result-object v10

    .line 201
    invoke-static {v8, v10}, LQ3/b;->U(Ljava/io/File;[B)Z

    .line 202
    .line 203
    .line 204
    move-result v8

    .line 205
    if-nez v8, :cond_7

    .line 206
    .line 207
    const/16 v0, 0xfb1

    .line 208
    .line 209
    invoke-virtual {v1, v0, v3, v4}, Lcom/google/android/gms/internal/ads/Dy;->e(IJ)V

    .line 210
    .line 211
    .line 212
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    return v9

    .line 214
    :cond_7
    if-eqz v0, :cond_8

    .line 215
    .line 216
    :try_start_1
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/K4;->H:Ljava/lang/Object;

    .line 217
    .line 218
    check-cast v0, Lcom/google/android/gms/internal/ads/y1;

    .line 219
    .line 220
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 221
    .line 222
    .line 223
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/y1;->g(Ljava/io/File;)Z

    .line 224
    .line 225
    .line 226
    move-result v0
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    if-nez v0, :cond_8

    .line 228
    .line 229
    :catch_0
    const/16 v0, 0xfb2

    .line 230
    .line 231
    :try_start_2
    invoke-virtual {v1, v0, v3, v4}, Lcom/google/android/gms/internal/ads/Dy;->e(IJ)V

    .line 232
    .line 233
    .line 234
    invoke-static {v2}, LQ3/b;->Q(Ljava/io/File;)Z

    .line 235
    .line 236
    .line 237
    monitor-exit v5

    .line 238
    return v9

    .line 239
    :cond_8
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/Dy;->d(Lcom/google/android/gms/internal/ads/v5;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 244
    .line 245
    .line 246
    move-result-wide v7

    .line 247
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/Dy;->b:Landroid/content/SharedPreferences;

    .line 248
    .line 249
    iget-object v10, v1, Lcom/google/android/gms/internal/ads/Dy;->c:Ljava/lang/String;

    .line 250
    .line 251
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v10

    .line 255
    const-string v11, "LATMTD"

    .line 256
    .line 257
    invoke-virtual {v11, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v10

    .line 261
    const/4 v11, 0x0

    .line 262
    invoke-interface {v2, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    iget-object v10, v1, Lcom/google/android/gms/internal/ads/Dy;->b:Landroid/content/SharedPreferences;

    .line 267
    .line 268
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 269
    .line 270
    .line 271
    move-result-object v10

    .line 272
    iget-object v11, v1, Lcom/google/android/gms/internal/ads/Dy;->c:Ljava/lang/String;

    .line 273
    .line 274
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v11

    .line 278
    const-string v12, "LATMTD"

    .line 279
    .line 280
    invoke-virtual {v12, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v11

    .line 284
    invoke-interface {v10, v11, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 285
    .line 286
    .line 287
    if-eqz v2, :cond_9

    .line 288
    .line 289
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Dy;->c:Ljava/lang/String;

    .line 290
    .line 291
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    const-string v11, "FBAMTD"

    .line 296
    .line 297
    invoke-virtual {v11, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    invoke-interface {v10, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 302
    .line 303
    .line 304
    :cond_9
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 305
    .line 306
    .line 307
    move-result v0

    .line 308
    if-nez v0, :cond_a

    .line 309
    .line 310
    const/16 v0, 0xfb3

    .line 311
    .line 312
    invoke-virtual {v1, v0, v7, v8}, Lcom/google/android/gms/internal/ads/Dy;->e(IJ)V

    .line 313
    .line 314
    .line 315
    monitor-exit v5

    .line 316
    return v9

    .line 317
    :cond_a
    new-instance v0, Ljava/util/HashSet;

    .line 318
    .line 319
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/Dy;->f(I)Lcom/google/android/gms/internal/ads/x5;

    .line 323
    .line 324
    .line 325
    move-result-object v2

    .line 326
    if-eqz v2, :cond_b

    .line 327
    .line 328
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/x5;->I()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v2

    .line 332
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 333
    .line 334
    .line 335
    :cond_b
    const/4 v2, 0x2

    .line 336
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/Dy;->f(I)Lcom/google/android/gms/internal/ads/x5;

    .line 337
    .line 338
    .line 339
    move-result-object v2

    .line 340
    if-eqz v2, :cond_c

    .line 341
    .line 342
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/x5;->I()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v2

    .line 346
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    :cond_c
    new-instance v2, Ljava/io/File;

    .line 350
    .line 351
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/Dy;->a:Landroid/content/Context;

    .line 352
    .line 353
    const-string v8, "pccache"

    .line 354
    .line 355
    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    .line 356
    .line 357
    .line 358
    move-result-object v7

    .line 359
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/Dy;->c:Ljava/lang/String;

    .line 360
    .line 361
    invoke-direct {v2, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 365
    .line 366
    .line 367
    move-result-object v2

    .line 368
    array-length v7, v2

    .line 369
    :goto_1
    if-ge v9, v7, :cond_e

    .line 370
    .line 371
    aget-object v8, v2, v9

    .line 372
    .line 373
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v10

    .line 377
    invoke-virtual {v0, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    move-result v10

    .line 381
    if-nez v10, :cond_d

    .line 382
    .line 383
    invoke-static {v8}, LQ3/b;->Q(Ljava/io/File;)Z

    .line 384
    .line 385
    .line 386
    :cond_d
    add-int/lit8 v9, v9, 0x1

    .line 387
    .line 388
    goto :goto_1

    .line 389
    :cond_e
    const/16 v0, 0x1396

    .line 390
    .line 391
    invoke-virtual {v1, v0, v3, v4}, Lcom/google/android/gms/internal/ads/Dy;->e(IJ)V

    .line 392
    .line 393
    .line 394
    monitor-exit v5

    .line 395
    return v6

    .line 396
    :goto_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 397
    throw v0
.end method

.method public final c(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .line 1
    const-string v0, "pccache"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Dy;->a:Landroid/content/Context;

    .line 5
    .line 6
    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Ljava/io/File;

    .line 11
    .line 12
    new-instance v2, Ljava/io/File;

    .line 13
    .line 14
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Dy;->c:Ljava/lang/String;

    .line 15
    .line 16
    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-object v1
.end method

.method public final e(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->d:Lcom/google/android/gms/internal/ads/uy;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/uy;->zza(IJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final f(I)Lcom/google/android/gms/internal/ads/x5;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->c:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Dy;->b:Landroid/content/SharedPreferences;

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    if-ne p1, v1, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string v0, "LATMTD"

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string v0, "FBAMTD"

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    :goto_0
    if-nez p1, :cond_1

    .line 39
    .line 40
    return-object v3

    .line 41
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 42
    .line 43
    .line 44
    move-result-wide v0

    .line 45
    :try_start_0
    invoke-static {p1}, LP3/c;->d(Ljava/lang/String;)[B

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    array-length v2, p1

    .line 50
    const/4 v4, 0x0

    .line 51
    invoke-static {v4, p1, v2}, Lcom/google/android/gms/internal/ads/XG;->y(I[BI)Lcom/google/android/gms/internal/ads/VG;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/Dy;->e:Z

    .line 56
    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    sget-object v2, Lcom/google/android/gms/internal/ads/jH;->b:Lcom/google/android/gms/internal/ads/jH;

    .line 60
    .line 61
    sget-object v2, Lcom/google/android/gms/internal/ads/UH;->c:Lcom/google/android/gms/internal/ads/UH;

    .line 62
    .line 63
    sget-object v2, Lcom/google/android/gms/internal/ads/jH;->c:Lcom/google/android/gms/internal/ads/jH;

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/jH;->a()Lcom/google/android/gms/internal/ads/jH;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    :goto_1
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/x5;->G(Lcom/google/android/gms/internal/ads/VG;Lcom/google/android/gms/internal/ads/jH;)Lcom/google/android/gms/internal/ads/x5;

    .line 71
    .line 72
    .line 73
    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/AH; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    return-object p1

    .line 75
    :catch_0
    const/16 p1, 0x7f0

    .line 76
    .line 77
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/Dy;->e(IJ)V

    .line 78
    .line 79
    .line 80
    goto :goto_2

    .line 81
    :catch_1
    const/16 p1, 0x7ed

    .line 82
    .line 83
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/Dy;->e(IJ)V

    .line 84
    .line 85
    .line 86
    :catch_2
    :goto_2
    return-object v3
.end method
