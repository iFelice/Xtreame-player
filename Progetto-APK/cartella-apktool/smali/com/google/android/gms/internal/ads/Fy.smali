.class public final Lcom/google/android/gms/internal/ads/Fy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final g:Ljava/util/HashMap;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ll3/n;

.field public final c:Lcom/google/android/gms/internal/ads/cy;

.field public final d:Lcom/google/android/gms/internal/ads/y1;

.field public e:Lcom/google/android/gms/internal/ads/xc;

.field public final f:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/Fy;->g:Ljava/util/HashMap;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ll3/n;Lcom/google/android/gms/internal/ads/cy;Lcom/google/android/gms/internal/ads/y1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Fy;->f:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Fy;->a:Landroid/content/Context;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Fy;->b:Ll3/n;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Fy;->c:Lcom/google/android/gms/internal/ads/cy;

    .line 16
    .line 17
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/Fy;->d:Lcom/google/android/gms/internal/ads/y1;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/xc;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Fy;->f:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Fy;->e:Lcom/google/android/gms/internal/ads/xc;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-object v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v1
.end method

.method public final b()Lcom/google/android/gms/internal/ads/Yu;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Fy;->f:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Fy;->e:Lcom/google/android/gms/internal/ads/xc;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/xc;->I:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lcom/google/android/gms/internal/ads/Yu;

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-object v1

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    monitor-exit v0

    .line 17
    const/4 v0, 0x0

    .line 18
    return-object v0

    .line 19
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw v1
.end method

.method public final c(Lcom/google/android/gms/internal/ads/Yu;)Z
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "ci: "

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    const/4 v4, 0x0

    .line 10
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/Fy;->d(Lcom/google/android/gms/internal/ads/Yu;)Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v5
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/Ey; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 14
    const/4 v6, 0x6

    .line 15
    :try_start_1
    new-array v7, v6, [Ljava/lang/Class;

    .line 16
    .line 17
    const-class v8, Landroid/content/Context;

    .line 18
    .line 19
    aput-object v8, v7, v4

    .line 20
    .line 21
    const-class v8, Ljava/lang/String;

    .line 22
    .line 23
    const/4 v9, 0x1

    .line 24
    aput-object v8, v7, v9

    .line 25
    .line 26
    const-class v8, [B

    .line 27
    .line 28
    const/4 v10, 0x2

    .line 29
    aput-object v8, v7, v10

    .line 30
    .line 31
    const-class v8, Ljava/lang/Object;

    .line 32
    .line 33
    const/4 v11, 0x3

    .line 34
    aput-object v8, v7, v11

    .line 35
    .line 36
    const-class v8, Landroid/os/Bundle;

    .line 37
    .line 38
    const/4 v12, 0x4

    .line 39
    aput-object v8, v7, v12

    .line 40
    .line 41
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 42
    .line 43
    const/4 v13, 0x5

    .line 44
    aput-object v8, v7, v13

    .line 45
    .line 46
    invoke-virtual {v5, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    new-array v6, v6, [Ljava/lang/Object;

    .line 51
    .line 52
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/Fy;->a:Landroid/content/Context;

    .line 53
    .line 54
    aput-object v7, v6, v4

    .line 55
    .line 56
    const-string v7, "msa-r"

    .line 57
    .line 58
    aput-object v7, v6, v9

    .line 59
    .line 60
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/Yu;->g()[B

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    aput-object v7, v6, v10

    .line 65
    .line 66
    const/4 v7, 0x0

    .line 67
    aput-object v7, v6, v11

    .line 68
    .line 69
    new-instance v7, Landroid/os/Bundle;

    .line 70
    .line 71
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 72
    .line 73
    .line 74
    aput-object v7, v6, v12

    .line 75
    .line 76
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    aput-object v7, v6, v13

    .line 81
    .line 82
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v15
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 86
    :try_start_2
    new-instance v5, Lcom/google/android/gms/internal/ads/xc;

    .line 87
    .line 88
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/Fy;->b:Ll3/n;

    .line 89
    .line 90
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/Fy;->c:Lcom/google/android/gms/internal/ads/cy;

    .line 91
    .line 92
    const/16 v19, 0x2

    .line 93
    .line 94
    move-object v14, v5

    .line 95
    move-object/from16 v16, p1

    .line 96
    .line 97
    move-object/from16 v17, v6

    .line 98
    .line 99
    move-object/from16 v18, v7

    .line 100
    .line 101
    invoke-direct/range {v14 .. v19}, Lcom/google/android/gms/internal/ads/xc;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/xc;->N()Z

    .line 105
    .line 106
    .line 107
    move-result v6

    .line 108
    if-eqz v6, :cond_2

    .line 109
    .line 110
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/xc;->J()I

    .line 111
    .line 112
    .line 113
    move-result v6

    .line 114
    if-nez v6, :cond_1

    .line 115
    .line 116
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/Fy;->f:Ljava/lang/Object;

    .line 117
    .line 118
    monitor-enter v6
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/Ey; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 119
    :try_start_3
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Fy;->e:Lcom/google/android/gms/internal/ads/xc;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 120
    .line 121
    if-eqz v0, :cond_0

    .line 122
    .line 123
    :try_start_4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xc;->L()V
    :try_end_4
    .catch Lcom/google/android/gms/internal/ads/Ey; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :catchall_0
    move-exception v0

    .line 128
    goto :goto_1

    .line 129
    :catch_0
    move-exception v0

    .line 130
    move-object v7, v0

    .line 131
    :try_start_5
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Fy;->c:Lcom/google/android/gms/internal/ads/cy;

    .line 132
    .line 133
    iget v8, v7, Lcom/google/android/gms/internal/ads/Ey;->G:I

    .line 134
    .line 135
    const-wide/16 v10, -0x1

    .line 136
    .line 137
    invoke-virtual {v0, v8, v10, v11, v7}, Lcom/google/android/gms/internal/ads/cy;->b(IJLjava/lang/Exception;)V

    .line 138
    .line 139
    .line 140
    :cond_0
    :goto_0
    iput-object v5, v1, Lcom/google/android/gms/internal/ads/Fy;->e:Lcom/google/android/gms/internal/ads/xc;

    .line 141
    .line 142
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 143
    :try_start_6
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Fy;->c:Lcom/google/android/gms/internal/ads/cy;

    .line 144
    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 146
    .line 147
    .line 148
    move-result-wide v5

    .line 149
    sub-long/2addr v5, v2

    .line 150
    const/16 v7, 0xbb8

    .line 151
    .line 152
    invoke-virtual {v0, v7, v5, v6}, Lcom/google/android/gms/internal/ads/cy;->c(IJ)V
    :try_end_6
    .catch Lcom/google/android/gms/internal/ads/Ey; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 153
    .line 154
    .line 155
    return v9

    .line 156
    :catch_1
    move-exception v0

    .line 157
    goto :goto_2

    .line 158
    :catch_2
    move-exception v0

    .line 159
    goto :goto_3

    .line 160
    :goto_1
    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 161
    :try_start_8
    throw v0

    .line 162
    :cond_1
    new-instance v5, Lcom/google/android/gms/internal/ads/Ey;

    .line 163
    .line 164
    new-instance v7, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    const/16 v6, 0xfa1

    .line 177
    .line 178
    invoke-direct {v5, v6, v0}, Lcom/google/android/gms/internal/ads/Ey;-><init>(ILjava/lang/String;)V

    .line 179
    .line 180
    .line 181
    throw v5

    .line 182
    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/Ey;

    .line 183
    .line 184
    const-string v5, "init failed"

    .line 185
    .line 186
    const/16 v6, 0xfa0

    .line 187
    .line 188
    invoke-direct {v0, v6, v5}, Lcom/google/android/gms/internal/ads/Ey;-><init>(ILjava/lang/String;)V

    .line 189
    .line 190
    .line 191
    throw v0

    .line 192
    :catch_3
    move-exception v0

    .line 193
    new-instance v5, Lcom/google/android/gms/internal/ads/Ey;

    .line 194
    .line 195
    const/16 v6, 0x7d4

    .line 196
    .line 197
    invoke-direct {v5, v6, v0}, Lcom/google/android/gms/internal/ads/Ey;-><init>(ILjava/lang/Exception;)V

    .line 198
    .line 199
    .line 200
    throw v5
    :try_end_8
    .catch Lcom/google/android/gms/internal/ads/Ey; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 201
    :goto_2
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/Fy;->c:Lcom/google/android/gms/internal/ads/cy;

    .line 202
    .line 203
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 204
    .line 205
    .line 206
    move-result-wide v6

    .line 207
    sub-long/2addr v6, v2

    .line 208
    const/16 v2, 0xfaa

    .line 209
    .line 210
    invoke-virtual {v5, v2, v6, v7, v0}, Lcom/google/android/gms/internal/ads/cy;->b(IJLjava/lang/Exception;)V

    .line 211
    .line 212
    .line 213
    goto :goto_4

    .line 214
    :goto_3
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/Fy;->c:Lcom/google/android/gms/internal/ads/cy;

    .line 215
    .line 216
    iget v6, v0, Lcom/google/android/gms/internal/ads/Ey;->G:I

    .line 217
    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 219
    .line 220
    .line 221
    move-result-wide v7

    .line 222
    sub-long/2addr v7, v2

    .line 223
    invoke-virtual {v5, v6, v7, v8, v0}, Lcom/google/android/gms/internal/ads/cy;->b(IJLjava/lang/Exception;)V

    .line 224
    .line 225
    .line 226
    :goto_4
    return v4
.end method

.method public final declared-synchronized d(Lcom/google/android/gms/internal/ads/Yu;)Ljava/lang/Class;
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/Yu;->H:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v0, Lcom/google/android/gms/internal/ads/x5;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/x5;->I()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lcom/google/android/gms/internal/ads/Fy;->g:Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    monitor-exit p0

    .line 21
    return-object v2

    .line 22
    :cond_0
    const/16 v2, 0x7ea

    .line 23
    .line 24
    :try_start_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Fy;->d:Lcom/google/android/gms/internal/ads/y1;

    .line 25
    .line 26
    iget-object v4, p1, Lcom/google/android/gms/internal/ads/Yu;->I:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v4, Ljava/io/File;

    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/y1;->g(Ljava/io/File;)Z

    .line 34
    .line 35
    .line 36
    move-result v3
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    :try_start_2
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/Yu;->J:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v2, Ljava/io/File;

    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-nez v3, :cond_1

    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p1

    .line 54
    goto :goto_2

    .line 55
    :catch_0
    move-exception p1

    .line 56
    goto :goto_1

    .line 57
    :catch_1
    move-exception p1

    .line 58
    goto :goto_1

    .line 59
    :catch_2
    move-exception p1

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    :goto_0
    new-instance v3, Ldalvik/system/DexClassLoader;

    .line 62
    .line 63
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Yu;->I:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast p1, Ljava/io/File;

    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Fy;->a:Landroid/content/Context;

    .line 76
    .line 77
    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    const/4 v5, 0x0

    .line 82
    invoke-direct {v3, p1, v2, v5, v4}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 83
    .line 84
    .line 85
    const-string p1, "com.google.ccc.abuse.droidguard.DroidGuard"

    .line 86
    .line 87
    invoke-virtual {v3, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    move-result-object p1
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    :try_start_3
    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 92
    .line 93
    .line 94
    monitor-exit p0

    .line 95
    return-object p1

    .line 96
    :goto_1
    :try_start_4
    new-instance v0, Lcom/google/android/gms/internal/ads/Ey;

    .line 97
    .line 98
    const/16 v1, 0x7d8

    .line 99
    .line 100
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/Ey;-><init>(ILjava/lang/Exception;)V

    .line 101
    .line 102
    .line 103
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 104
    :cond_2
    :try_start_5
    new-instance p1, Lcom/google/android/gms/internal/ads/Ey;

    .line 105
    .line 106
    const-string v0, "VM did not pass signature verification"

    .line 107
    .line 108
    invoke-direct {p1, v2, v0}, Lcom/google/android/gms/internal/ads/Ey;-><init>(ILjava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw p1
    :try_end_5
    .catch Ljava/security/GeneralSecurityException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 112
    :catch_3
    move-exception p1

    .line 113
    :try_start_6
    new-instance v0, Lcom/google/android/gms/internal/ads/Ey;

    .line 114
    .line 115
    invoke-direct {v0, v2, p1}, Lcom/google/android/gms/internal/ads/Ey;-><init>(ILjava/lang/Exception;)V

    .line 116
    .line 117
    .line 118
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 119
    :goto_2
    monitor-exit p0

    .line 120
    throw p1
.end method
