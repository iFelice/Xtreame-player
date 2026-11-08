.class public final Lcom/bumptech/glide/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# static fields
.field public static volatile N:Lcom/bumptech/glide/b;

.field public static volatile O:Z


# instance fields
.field public final G:Lz2/d;

.field public final H:LA2/f;

.field public final I:Lcom/bumptech/glide/f;

.field public final J:Lz2/h;

.field public final K:LJ2/n;

.field public final L:LF2/G;

.field public final M:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ly2/p;LA2/f;Lz2/d;Lz2/h;LJ2/n;LF2/G;ILD0/U;Lr/f;Ljava/util/List;Ljava/util/ArrayList;Lcom/google/android/gms/internal/measurement/Q1;Le0/u;)V
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v1, v0, Lcom/bumptech/glide/b;->M:Ljava/util/ArrayList;

    .line 11
    .line 12
    move-object/from16 v1, p4

    .line 13
    .line 14
    iput-object v1, v0, Lcom/bumptech/glide/b;->G:Lz2/d;

    .line 15
    .line 16
    move-object/from16 v3, p5

    .line 17
    .line 18
    iput-object v3, v0, Lcom/bumptech/glide/b;->J:Lz2/h;

    .line 19
    .line 20
    move-object/from16 v1, p3

    .line 21
    .line 22
    iput-object v1, v0, Lcom/bumptech/glide/b;->H:LA2/f;

    .line 23
    .line 24
    move-object/from16 v1, p6

    .line 25
    .line 26
    iput-object v1, v0, Lcom/bumptech/glide/b;->K:LJ2/n;

    .line 27
    .line 28
    move-object/from16 v1, p7

    .line 29
    .line 30
    iput-object v1, v0, Lcom/bumptech/glide/b;->L:LF2/G;

    .line 31
    .line 32
    new-instance v4, LB0/c;

    .line 33
    .line 34
    move-object/from16 v1, p12

    .line 35
    .line 36
    move-object/from16 v2, p13

    .line 37
    .line 38
    invoke-direct {v4, p0, v1, v2}, LB0/c;-><init>(Lcom/bumptech/glide/b;Ljava/util/ArrayList;Lcom/google/android/gms/internal/measurement/Q1;)V

    .line 39
    .line 40
    .line 41
    new-instance v5, LF2/G;

    .line 42
    .line 43
    const/16 v1, 0xa

    .line 44
    .line 45
    invoke-direct {v5, v1}, LF2/G;-><init>(I)V

    .line 46
    .line 47
    .line 48
    new-instance v12, Lcom/bumptech/glide/f;

    .line 49
    .line 50
    move-object v1, v12

    .line 51
    move-object v2, p1

    .line 52
    move-object/from16 v3, p5

    .line 53
    .line 54
    move-object/from16 v6, p9

    .line 55
    .line 56
    move-object/from16 v7, p10

    .line 57
    .line 58
    move-object/from16 v8, p11

    .line 59
    .line 60
    move-object v9, p2

    .line 61
    move-object/from16 v10, p14

    .line 62
    .line 63
    move/from16 v11, p8

    .line 64
    .line 65
    invoke-direct/range {v1 .. v11}, Lcom/bumptech/glide/f;-><init>(Landroid/content/Context;Lz2/h;LB0/c;LF2/G;LD0/U;Lr/f;Ljava/util/List;Ly2/p;Le0/u;I)V

    .line 66
    .line 67
    .line 68
    iput-object v12, v0, Lcom/bumptech/glide/b;->I:Lcom/bumptech/glide/f;

    .line 69
    .line 70
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/bumptech/glide/b;
    .locals 6

    .line 1
    sget-object v0, Lcom/bumptech/glide/b;->N:Lcom/bumptech/glide/b;

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    :try_start_0
    const-string v3, "com.bumptech.glide.GeneratedAppGlideModuleImpl"

    .line 12
    .line 13
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    new-array v4, v2, [Ljava/lang/Class;

    .line 18
    .line 19
    const-class v5, Landroid/content/Context;

    .line 20
    .line 21
    aput-object v5, v4, v1

    .line 22
    .line 23
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    new-array v4, v2, [Ljava/lang/Object;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    aput-object v0, v4, v1

    .line 34
    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/bumptech/glide/GeneratedAppGlideModule;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    goto :goto_5

    .line 42
    :catch_0
    move-exception p0

    .line 43
    goto :goto_0

    .line 44
    :catch_1
    move-exception p0

    .line 45
    goto :goto_1

    .line 46
    :catch_2
    move-exception p0

    .line 47
    goto :goto_2

    .line 48
    :catch_3
    move-exception p0

    .line 49
    goto :goto_3

    .line 50
    :catch_4
    nop

    .line 51
    goto :goto_4

    .line 52
    :goto_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    .line 55
    .line 56
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    throw v0

    .line 60
    :goto_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 61
    .line 62
    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    .line 63
    .line 64
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    throw v0

    .line 68
    :goto_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 69
    .line 70
    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    .line 71
    .line 72
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    throw v0

    .line 76
    :goto_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 77
    .line 78
    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    .line 79
    .line 80
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    .line 82
    .line 83
    throw v0

    .line 84
    :goto_4
    const-string v0, "Glide"

    .line 85
    .line 86
    const/4 v3, 0x5

    .line 87
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-eqz v3, :cond_0

    .line 92
    .line 93
    const-string v3, "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored"

    .line 94
    .line 95
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    :cond_0
    const/4 v0, 0x0

    .line 99
    :goto_5
    const-class v3, Lcom/bumptech/glide/b;

    .line 100
    .line 101
    monitor-enter v3

    .line 102
    :try_start_1
    sget-object v4, Lcom/bumptech/glide/b;->N:Lcom/bumptech/glide/b;

    .line 103
    .line 104
    if-nez v4, :cond_2

    .line 105
    .line 106
    sget-boolean v4, Lcom/bumptech/glide/b;->O:Z

    .line 107
    .line 108
    if-nez v4, :cond_1

    .line 109
    .line 110
    sput-boolean v2, Lcom/bumptech/glide/b;->O:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 111
    .line 112
    :try_start_2
    invoke-static {p0, v0}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;Lcom/bumptech/glide/GeneratedAppGlideModule;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    .line 114
    .line 115
    :try_start_3
    sput-boolean v1, Lcom/bumptech/glide/b;->O:Z

    .line 116
    .line 117
    goto :goto_6

    .line 118
    :catchall_0
    move-exception p0

    .line 119
    sput-boolean v1, Lcom/bumptech/glide/b;->O:Z

    .line 120
    .line 121
    throw p0

    .line 122
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 123
    .line 124
    const-string v0, "Glide has been called recursively, this is probably an internal library error!"

    .line 125
    .line 126
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw p0

    .line 130
    :cond_2
    :goto_6
    monitor-exit v3

    .line 131
    goto :goto_7

    .line 132
    :catchall_1
    move-exception p0

    .line 133
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 134
    throw p0

    .line 135
    :cond_3
    :goto_7
    sget-object p0, Lcom/bumptech/glide/b;->N:Lcom/bumptech/glide/b;

    .line 136
    .line 137
    return-object p0
.end method

.method public static b(Landroid/content/Context;Lcom/bumptech/glide/GeneratedAppGlideModule;)V
    .locals 25

    .line 1
    new-instance v1, Lcom/bumptech/glide/e;

    .line 2
    .line 3
    invoke-direct {v1}, Lcom/bumptech/glide/e;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v15

    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    const-string v0, "Got app info metadata: "

    .line 14
    .line 15
    const-string v2, "ManifestParser"

    .line 16
    .line 17
    const/4 v3, 0x3

    .line 18
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-eqz v4, :cond_0

    .line 23
    .line 24
    const-string v4, "Loading Glide modules"

    .line 25
    .line 26
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    new-instance v14, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    const/4 v4, 0x6

    .line 35
    const/4 v5, 0x2

    .line 36
    :try_start_0
    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    const/16 v8, 0x80

    .line 45
    .line 46
    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    if-eqz v6, :cond_5

    .line 51
    .line 52
    iget-object v7, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 53
    .line 54
    if-nez v7, :cond_1

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_1
    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    if-eqz v7, :cond_2

    .line 62
    .line 63
    new-instance v7, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 69
    .line 70
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    goto :goto_3

    .line 83
    :cond_2
    :goto_0
    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 84
    .line 85
    invoke-virtual {v0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    .line 95
    .line 96
    move-result v7

    .line 97
    if-eqz v7, :cond_4

    .line 98
    .line 99
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v7

    .line 103
    check-cast v7, Ljava/lang/String;

    .line 104
    .line 105
    const-string v8, "GlideModule"

    .line 106
    .line 107
    iget-object v9, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 108
    .line 109
    invoke-virtual {v9, v7}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v9

    .line 113
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v8

    .line 117
    if-eqz v8, :cond_3

    .line 118
    .line 119
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/U1;->e(Ljava/lang/String;)Lcom/bumptech/glide/integration/okhttp3/OkHttpGlideModule;

    .line 120
    .line 121
    .line 122
    move-result-object v8

    .line 123
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 127
    .line 128
    .line 129
    move-result v8

    .line 130
    if-eqz v8, :cond_3

    .line 131
    .line 132
    new-instance v8, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .line 136
    .line 137
    const-string v9, "Loaded Glide module: "

    .line 138
    .line 139
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v7

    .line 149
    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_4
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-eqz v0, :cond_6

    .line 158
    .line 159
    const-string v0, "Finished loading Glide modules"

    .line 160
    .line 161
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    .line 163
    .line 164
    goto :goto_4

    .line 165
    :cond_5
    :goto_2
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    if-eqz v0, :cond_6

    .line 170
    .line 171
    const-string v0, "Got null app info metadata"

    .line 172
    .line 173
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .line 175
    .line 176
    goto :goto_4

    .line 177
    :goto_3
    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 178
    .line 179
    .line 180
    move-result v6

    .line 181
    if-eqz v6, :cond_6

    .line 182
    .line 183
    const-string v6, "Failed to parse glide modules"

    .line 184
    .line 185
    invoke-static {v2, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    .line 187
    .line 188
    :cond_6
    :goto_4
    const-string v0, "Glide"

    .line 189
    .line 190
    if-eqz p1, :cond_9

    .line 191
    .line 192
    new-instance v2, Ljava/util/HashSet;

    .line 193
    .line 194
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    if-nez v2, :cond_9

    .line 202
    .line 203
    new-instance v2, Ljava/util/HashSet;

    .line 204
    .line 205
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 209
    .line 210
    .line 211
    move-result-object v6

    .line 212
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 213
    .line 214
    .line 215
    move-result v7

    .line 216
    if-eqz v7, :cond_9

    .line 217
    .line 218
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v7

    .line 222
    check-cast v7, Lcom/bumptech/glide/integration/okhttp3/OkHttpGlideModule;

    .line 223
    .line 224
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    .line 226
    .line 227
    move-result-object v8

    .line 228
    invoke-virtual {v2, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v8

    .line 232
    if-nez v8, :cond_7

    .line 233
    .line 234
    goto :goto_5

    .line 235
    :cond_7
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 236
    .line 237
    .line 238
    move-result v8

    .line 239
    if-eqz v8, :cond_8

    .line 240
    .line 241
    new-instance v8, Ljava/lang/StringBuilder;

    .line 242
    .line 243
    const-string v9, "AppGlideModule excludes manifest GlideModule: "

    .line 244
    .line 245
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v7

    .line 255
    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    .line 257
    .line 258
    :cond_8
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 259
    .line 260
    .line 261
    goto :goto_5

    .line 262
    :cond_9
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 263
    .line 264
    .line 265
    move-result v2

    .line 266
    if-eqz v2, :cond_a

    .line 267
    .line 268
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 269
    .line 270
    .line 271
    move-result-object v2

    .line 272
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 273
    .line 274
    .line 275
    move-result v3

    .line 276
    if-eqz v3, :cond_a

    .line 277
    .line 278
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    check-cast v3, Lcom/bumptech/glide/integration/okhttp3/OkHttpGlideModule;

    .line 283
    .line 284
    new-instance v6, Ljava/lang/StringBuilder;

    .line 285
    .line 286
    const-string v7, "Discovered GlideModule from manifest: "

    .line 287
    .line 288
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 292
    .line 293
    .line 294
    move-result-object v3

    .line 295
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v3

    .line 302
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    .line 304
    .line 305
    goto :goto_6

    .line 306
    :cond_a
    const/4 v0, 0x0

    .line 307
    iput-object v0, v1, Lcom/bumptech/glide/e;->n:LF2/G;

    .line 308
    .line 309
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 314
    .line 315
    .line 316
    move-result v2

    .line 317
    if-eqz v2, :cond_b

    .line 318
    .line 319
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v2

    .line 323
    check-cast v2, Lcom/bumptech/glide/integration/okhttp3/OkHttpGlideModule;

    .line 324
    .line 325
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 326
    .line 327
    .line 328
    goto :goto_7

    .line 329
    :cond_b
    iget-object v0, v1, Lcom/bumptech/glide/e;->g:LB2/c;

    .line 330
    .line 331
    sget-object v2, LB2/b;->a:LU1/f;

    .line 332
    .line 333
    const/4 v3, 0x4

    .line 334
    const/4 v6, 0x0

    .line 335
    if-nez v0, :cond_e

    .line 336
    .line 337
    new-instance v0, Ly2/a;

    .line 338
    .line 339
    invoke-direct {v0}, Ly2/a;-><init>()V

    .line 340
    .line 341
    .line 342
    sget v7, LB2/c;->I:I

    .line 343
    .line 344
    if-nez v7, :cond_c

    .line 345
    .line 346
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 347
    .line 348
    .line 349
    move-result-object v7

    .line 350
    invoke-virtual {v7}, Ljava/lang/Runtime;->availableProcessors()I

    .line 351
    .line 352
    .line 353
    move-result v7

    .line 354
    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    .line 355
    .line 356
    .line 357
    move-result v7

    .line 358
    sput v7, LB2/c;->I:I

    .line 359
    .line 360
    :cond_c
    sget v18, LB2/c;->I:I

    .line 361
    .line 362
    const-string v7, "source"

    .line 363
    .line 364
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 365
    .line 366
    .line 367
    move-result v8

    .line 368
    if-nez v8, :cond_d

    .line 369
    .line 370
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 371
    .line 372
    sget-object v21, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 373
    .line 374
    new-instance v22, Ljava/util/concurrent/PriorityBlockingQueue;

    .line 375
    .line 376
    invoke-direct/range {v22 .. v22}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    .line 377
    .line 378
    .line 379
    new-instance v9, LB2/a;

    .line 380
    .line 381
    invoke-direct {v9, v0, v7, v2, v6}, LB2/a;-><init>(Ljava/util/concurrent/ThreadFactory;Ljava/lang/String;LB2/b;Z)V

    .line 382
    .line 383
    .line 384
    const-wide/16 v19, 0x0

    .line 385
    .line 386
    move-object/from16 v16, v8

    .line 387
    .line 388
    move/from16 v17, v18

    .line 389
    .line 390
    move-object/from16 v23, v9

    .line 391
    .line 392
    invoke-direct/range {v16 .. v23}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 393
    .line 394
    .line 395
    new-instance v0, LB2/c;

    .line 396
    .line 397
    invoke-direct {v0, v8}, LB2/c;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 398
    .line 399
    .line 400
    iput-object v0, v1, Lcom/bumptech/glide/e;->g:LB2/c;

    .line 401
    .line 402
    goto :goto_8

    .line 403
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 404
    .line 405
    const-string v1, "Name must be non-null and non-empty, but given: source"

    .line 406
    .line 407
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    throw v0

    .line 411
    :cond_e
    :goto_8
    iget-object v0, v1, Lcom/bumptech/glide/e;->h:LB2/c;

    .line 412
    .line 413
    if-nez v0, :cond_10

    .line 414
    .line 415
    sget v0, LB2/c;->I:I

    .line 416
    .line 417
    new-instance v0, Ly2/a;

    .line 418
    .line 419
    invoke-direct {v0}, Ly2/a;-><init>()V

    .line 420
    .line 421
    .line 422
    const-string v7, "disk-cache"

    .line 423
    .line 424
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 425
    .line 426
    .line 427
    move-result v8

    .line 428
    if-nez v8, :cond_f

    .line 429
    .line 430
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 431
    .line 432
    sget-object v21, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 433
    .line 434
    new-instance v22, Ljava/util/concurrent/PriorityBlockingQueue;

    .line 435
    .line 436
    invoke-direct/range {v22 .. v22}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    .line 437
    .line 438
    .line 439
    new-instance v9, LB2/a;

    .line 440
    .line 441
    const/4 v10, 0x1

    .line 442
    invoke-direct {v9, v0, v7, v2, v10}, LB2/a;-><init>(Ljava/util/concurrent/ThreadFactory;Ljava/lang/String;LB2/b;Z)V

    .line 443
    .line 444
    .line 445
    const-wide/16 v19, 0x0

    .line 446
    .line 447
    move-object/from16 v16, v8

    .line 448
    .line 449
    move/from16 v17, v10

    .line 450
    .line 451
    move/from16 v18, v10

    .line 452
    .line 453
    move-object/from16 v23, v9

    .line 454
    .line 455
    invoke-direct/range {v16 .. v23}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 456
    .line 457
    .line 458
    new-instance v0, LB2/c;

    .line 459
    .line 460
    invoke-direct {v0, v8}, LB2/c;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 461
    .line 462
    .line 463
    iput-object v0, v1, Lcom/bumptech/glide/e;->h:LB2/c;

    .line 464
    .line 465
    goto :goto_9

    .line 466
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 467
    .line 468
    const-string v1, "Name must be non-null and non-empty, but given: disk-cache"

    .line 469
    .line 470
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    throw v0

    .line 474
    :cond_10
    :goto_9
    iget-object v0, v1, Lcom/bumptech/glide/e;->o:LB2/c;

    .line 475
    .line 476
    if-nez v0, :cond_14

    .line 477
    .line 478
    sget v0, LB2/c;->I:I

    .line 479
    .line 480
    if-nez v0, :cond_11

    .line 481
    .line 482
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 483
    .line 484
    .line 485
    move-result-object v0

    .line 486
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    .line 487
    .line 488
    .line 489
    move-result v0

    .line 490
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    .line 491
    .line 492
    .line 493
    move-result v0

    .line 494
    sput v0, LB2/c;->I:I

    .line 495
    .line 496
    :cond_11
    sget v0, LB2/c;->I:I

    .line 497
    .line 498
    const/4 v7, 0x1

    .line 499
    if-lt v0, v3, :cond_12

    .line 500
    .line 501
    const/16 v18, 0x2

    .line 502
    .line 503
    goto :goto_a

    .line 504
    :cond_12
    const/16 v18, 0x1

    .line 505
    .line 506
    :goto_a
    new-instance v0, Ly2/a;

    .line 507
    .line 508
    invoke-direct {v0}, Ly2/a;-><init>()V

    .line 509
    .line 510
    .line 511
    const-string v3, "animation"

    .line 512
    .line 513
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 514
    .line 515
    .line 516
    move-result v5

    .line 517
    if-nez v5, :cond_13

    .line 518
    .line 519
    new-instance v5, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 520
    .line 521
    sget-object v21, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 522
    .line 523
    new-instance v22, Ljava/util/concurrent/PriorityBlockingQueue;

    .line 524
    .line 525
    invoke-direct/range {v22 .. v22}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    .line 526
    .line 527
    .line 528
    new-instance v8, LB2/a;

    .line 529
    .line 530
    invoke-direct {v8, v0, v3, v2, v7}, LB2/a;-><init>(Ljava/util/concurrent/ThreadFactory;Ljava/lang/String;LB2/b;Z)V

    .line 531
    .line 532
    .line 533
    const-wide/16 v19, 0x0

    .line 534
    .line 535
    move-object/from16 v16, v5

    .line 536
    .line 537
    move/from16 v17, v18

    .line 538
    .line 539
    move-object/from16 v23, v8

    .line 540
    .line 541
    invoke-direct/range {v16 .. v23}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 542
    .line 543
    .line 544
    new-instance v0, LB2/c;

    .line 545
    .line 546
    invoke-direct {v0, v5}, LB2/c;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 547
    .line 548
    .line 549
    iput-object v0, v1, Lcom/bumptech/glide/e;->o:LB2/c;

    .line 550
    .line 551
    goto :goto_b

    .line 552
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 553
    .line 554
    const-string v1, "Name must be non-null and non-empty, but given: animation"

    .line 555
    .line 556
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 557
    .line 558
    .line 559
    throw v0

    .line 560
    :cond_14
    :goto_b
    iget-object v0, v1, Lcom/bumptech/glide/e;->j:LA2/i;

    .line 561
    .line 562
    if-nez v0, :cond_15

    .line 563
    .line 564
    new-instance v0, LA2/h;

    .line 565
    .line 566
    invoke-direct {v0, v15}, LA2/h;-><init>(Landroid/content/Context;)V

    .line 567
    .line 568
    .line 569
    new-instance v3, LA2/i;

    .line 570
    .line 571
    invoke-direct {v3, v0}, LA2/i;-><init>(LA2/h;)V

    .line 572
    .line 573
    .line 574
    iput-object v3, v1, Lcom/bumptech/glide/e;->j:LA2/i;

    .line 575
    .line 576
    :cond_15
    iget-object v0, v1, Lcom/bumptech/glide/e;->k:LF2/G;

    .line 577
    .line 578
    if-nez v0, :cond_16

    .line 579
    .line 580
    new-instance v0, LF2/G;

    .line 581
    .line 582
    invoke-direct {v0, v4}, LF2/G;-><init>(I)V

    .line 583
    .line 584
    .line 585
    iput-object v0, v1, Lcom/bumptech/glide/e;->k:LF2/G;

    .line 586
    .line 587
    :cond_16
    iget-object v0, v1, Lcom/bumptech/glide/e;->d:Lz2/d;

    .line 588
    .line 589
    if-nez v0, :cond_18

    .line 590
    .line 591
    iget-object v0, v1, Lcom/bumptech/glide/e;->j:LA2/i;

    .line 592
    .line 593
    iget v0, v0, LA2/i;->a:I

    .line 594
    .line 595
    if-lez v0, :cond_17

    .line 596
    .line 597
    new-instance v3, Lz2/i;

    .line 598
    .line 599
    int-to-long v4, v0

    .line 600
    invoke-direct {v3, v4, v5}, Lz2/i;-><init>(J)V

    .line 601
    .line 602
    .line 603
    iput-object v3, v1, Lcom/bumptech/glide/e;->d:Lz2/d;

    .line 604
    .line 605
    goto :goto_c

    .line 606
    :cond_17
    new-instance v0, LU4/b;

    .line 607
    .line 608
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 609
    .line 610
    .line 611
    iput-object v0, v1, Lcom/bumptech/glide/e;->d:Lz2/d;

    .line 612
    .line 613
    :cond_18
    :goto_c
    iget-object v0, v1, Lcom/bumptech/glide/e;->e:Lz2/h;

    .line 614
    .line 615
    if-nez v0, :cond_19

    .line 616
    .line 617
    new-instance v0, Lz2/h;

    .line 618
    .line 619
    iget-object v3, v1, Lcom/bumptech/glide/e;->j:LA2/i;

    .line 620
    .line 621
    iget v3, v3, LA2/i;->c:I

    .line 622
    .line 623
    invoke-direct {v0, v3}, Lz2/h;-><init>(I)V

    .line 624
    .line 625
    .line 626
    iput-object v0, v1, Lcom/bumptech/glide/e;->e:Lz2/h;

    .line 627
    .line 628
    :cond_19
    iget-object v0, v1, Lcom/bumptech/glide/e;->f:LA2/f;

    .line 629
    .line 630
    if-nez v0, :cond_1a

    .line 631
    .line 632
    new-instance v0, LA2/f;

    .line 633
    .line 634
    iget-object v3, v1, Lcom/bumptech/glide/e;->j:LA2/i;

    .line 635
    .line 636
    iget v3, v3, LA2/i;->b:I

    .line 637
    .line 638
    int-to-long v3, v3

    .line 639
    invoke-direct {v0, v3, v4}, LA2/f;-><init>(J)V

    .line 640
    .line 641
    .line 642
    iput-object v0, v1, Lcom/bumptech/glide/e;->f:LA2/f;

    .line 643
    .line 644
    :cond_1a
    iget-object v0, v1, Lcom/bumptech/glide/e;->i:LA2/e;

    .line 645
    .line 646
    if-nez v0, :cond_1b

    .line 647
    .line 648
    new-instance v0, LA2/e;

    .line 649
    .line 650
    new-instance v3, Lm2/e;

    .line 651
    .line 652
    const/16 v4, 0xa

    .line 653
    .line 654
    const-string v5, "image_manager_disk_cache"

    .line 655
    .line 656
    invoke-direct {v3, v4, v15, v5}, Lm2/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 657
    .line 658
    .line 659
    invoke-direct {v0, v3}, LA2/d;-><init>(Lm2/e;)V

    .line 660
    .line 661
    .line 662
    iput-object v0, v1, Lcom/bumptech/glide/e;->i:LA2/e;

    .line 663
    .line 664
    :cond_1b
    iget-object v0, v1, Lcom/bumptech/glide/e;->c:Ly2/p;

    .line 665
    .line 666
    if-nez v0, :cond_1c

    .line 667
    .line 668
    new-instance v0, Ly2/p;

    .line 669
    .line 670
    iget-object v8, v1, Lcom/bumptech/glide/e;->f:LA2/f;

    .line 671
    .line 672
    iget-object v9, v1, Lcom/bumptech/glide/e;->i:LA2/e;

    .line 673
    .line 674
    iget-object v10, v1, Lcom/bumptech/glide/e;->h:LB2/c;

    .line 675
    .line 676
    iget-object v11, v1, Lcom/bumptech/glide/e;->g:LB2/c;

    .line 677
    .line 678
    new-instance v12, LB2/c;

    .line 679
    .line 680
    new-instance v3, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 681
    .line 682
    sget-object v21, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 683
    .line 684
    new-instance v22, Ljava/util/concurrent/SynchronousQueue;

    .line 685
    .line 686
    invoke-direct/range {v22 .. v22}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    .line 687
    .line 688
    .line 689
    new-instance v4, LB2/a;

    .line 690
    .line 691
    new-instance v5, Ly2/a;

    .line 692
    .line 693
    invoke-direct {v5}, Ly2/a;-><init>()V

    .line 694
    .line 695
    .line 696
    const-string v7, "source-unlimited"

    .line 697
    .line 698
    invoke-direct {v4, v5, v7, v2, v6}, LB2/a;-><init>(Ljava/util/concurrent/ThreadFactory;Ljava/lang/String;LB2/b;Z)V

    .line 699
    .line 700
    .line 701
    sget-wide v19, LB2/c;->H:J

    .line 702
    .line 703
    const/16 v17, 0x0

    .line 704
    .line 705
    const v18, 0x7fffffff

    .line 706
    .line 707
    .line 708
    move-object/from16 v16, v3

    .line 709
    .line 710
    move-object/from16 v23, v4

    .line 711
    .line 712
    invoke-direct/range {v16 .. v23}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 713
    .line 714
    .line 715
    invoke-direct {v12, v3}, LB2/c;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 716
    .line 717
    .line 718
    iget-object v13, v1, Lcom/bumptech/glide/e;->o:LB2/c;

    .line 719
    .line 720
    move-object v7, v0

    .line 721
    invoke-direct/range {v7 .. v13}, Ly2/p;-><init>(LA2/f;LA2/d;LB2/c;LB2/c;LB2/c;LB2/c;)V

    .line 722
    .line 723
    .line 724
    iput-object v0, v1, Lcom/bumptech/glide/e;->c:Ly2/p;

    .line 725
    .line 726
    :cond_1c
    iget-object v0, v1, Lcom/bumptech/glide/e;->p:Ljava/util/List;

    .line 727
    .line 728
    if-nez v0, :cond_1d

    .line 729
    .line 730
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 731
    .line 732
    .line 733
    move-result-object v0

    .line 734
    iput-object v0, v1, Lcom/bumptech/glide/e;->p:Ljava/util/List;

    .line 735
    .line 736
    goto :goto_d

    .line 737
    :cond_1d
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 738
    .line 739
    .line 740
    move-result-object v0

    .line 741
    iput-object v0, v1, Lcom/bumptech/glide/e;->p:Ljava/util/List;

    .line 742
    .line 743
    :goto_d
    iget-object v0, v1, Lcom/bumptech/glide/e;->b:Le0/u;

    .line 744
    .line 745
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 746
    .line 747
    .line 748
    new-instance v13, Le0/u;

    .line 749
    .line 750
    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 751
    .line 752
    .line 753
    new-instance v2, Ljava/util/HashMap;

    .line 754
    .line 755
    iget-object v0, v0, Le0/u;->a:Ljava/util/Map;

    .line 756
    .line 757
    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 758
    .line 759
    .line 760
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 761
    .line 762
    .line 763
    move-result-object v0

    .line 764
    iput-object v0, v13, Le0/u;->a:Ljava/util/Map;

    .line 765
    .line 766
    new-instance v8, LJ2/n;

    .line 767
    .line 768
    iget-object v0, v1, Lcom/bumptech/glide/e;->n:LF2/G;

    .line 769
    .line 770
    invoke-direct {v8, v0}, LJ2/n;-><init>(LF2/G;)V

    .line 771
    .line 772
    .line 773
    new-instance v0, Lcom/bumptech/glide/b;

    .line 774
    .line 775
    iget-object v4, v1, Lcom/bumptech/glide/e;->c:Ly2/p;

    .line 776
    .line 777
    iget-object v5, v1, Lcom/bumptech/glide/e;->f:LA2/f;

    .line 778
    .line 779
    iget-object v6, v1, Lcom/bumptech/glide/e;->d:Lz2/d;

    .line 780
    .line 781
    iget-object v7, v1, Lcom/bumptech/glide/e;->e:Lz2/h;

    .line 782
    .line 783
    iget-object v9, v1, Lcom/bumptech/glide/e;->k:LF2/G;

    .line 784
    .line 785
    iget-object v12, v1, Lcom/bumptech/glide/e;->a:Lr/f;

    .line 786
    .line 787
    iget-object v11, v1, Lcom/bumptech/glide/e;->p:Ljava/util/List;

    .line 788
    .line 789
    iget v10, v1, Lcom/bumptech/glide/e;->l:I

    .line 790
    .line 791
    iget-object v1, v1, Lcom/bumptech/glide/e;->m:LD0/U;

    .line 792
    .line 793
    move-object v2, v0

    .line 794
    move-object v3, v15

    .line 795
    move-object/from16 v16, v11

    .line 796
    .line 797
    move-object v11, v1

    .line 798
    move-object v1, v13

    .line 799
    move-object/from16 v13, v16

    .line 800
    .line 801
    move-object/from16 v24, v15

    .line 802
    .line 803
    move-object/from16 v15, p1

    .line 804
    .line 805
    move-object/from16 v16, v1

    .line 806
    .line 807
    invoke-direct/range {v2 .. v16}, Lcom/bumptech/glide/b;-><init>(Landroid/content/Context;Ly2/p;LA2/f;Lz2/d;Lz2/h;LJ2/n;LF2/G;ILD0/U;Lr/f;Ljava/util/List;Ljava/util/ArrayList;Lcom/google/android/gms/internal/measurement/Q1;Le0/u;)V

    .line 808
    .line 809
    .line 810
    move-object/from16 v1, v24

    .line 811
    .line 812
    invoke-virtual {v1, v0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 813
    .line 814
    .line 815
    sput-object v0, Lcom/bumptech/glide/b;->N:Lcom/bumptech/glide/b;

    .line 816
    .line 817
    return-void
.end method

.method public static d(Landroid/content/Context;)Lcom/bumptech/glide/n;
    .locals 1

    .line 1
    const-string v0, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed)."

    .line 2
    .line 3
    invoke-static {p0, v0}, Ln0/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lcom/bumptech/glide/b;->a(Landroid/content/Context;)Lcom/bumptech/glide/b;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v0, v0, Lcom/bumptech/glide/b;->K:LJ2/n;

    .line 11
    .line 12
    invoke-virtual {v0, p0}, LJ2/n;->b(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method


# virtual methods
.method public final c(Lcom/bumptech/glide/n;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/b;->M:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/b;->M:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/bumptech/glide/b;->M:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string v1, "Cannot unregister not yet registered manager"

    .line 24
    .line 25
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1

    .line 29
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p1
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public final onLowMemory()V
    .locals 3

    .line 1
    invoke-static {}, LP2/o;->a()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iget-object v2, p0, Lcom/bumptech/glide/b;->H:LA2/f;

    .line 7
    .line 8
    invoke-virtual {v2, v0, v1}, LP2/k;->e(J)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/bumptech/glide/b;->G:Lz2/d;

    .line 12
    .line 13
    invoke-interface {v0}, Lz2/d;->K()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/bumptech/glide/b;->J:Lz2/h;

    .line 17
    .line 18
    invoke-virtual {v0}, Lz2/h;->a()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 3

    .line 1
    invoke-static {}, LP2/o;->a()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bumptech/glide/b;->M:Ljava/util/ArrayList;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/b;->M:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lcom/bumptech/glide/n;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    iget-object v0, p0, Lcom/bumptech/glide/b;->H:LA2/f;

    .line 33
    .line 34
    invoke-virtual {v0, p1}, LA2/f;->f(I)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/bumptech/glide/b;->G:Lz2/d;

    .line 38
    .line 39
    invoke-interface {v0, p1}, Lz2/d;->G(I)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/bumptech/glide/b;->J:Lz2/h;

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Lz2/h;->i(I)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    throw p1
.end method
