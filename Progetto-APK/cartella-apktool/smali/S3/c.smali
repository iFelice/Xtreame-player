.class public final LS3/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:LS3/g;

.field public static final c:LS3/g;

.field public static final d:LS3/g;

.field public static e:Ljava/lang/Boolean; = null

.field public static f:Ljava/lang/String; = null

.field public static g:Z = false

.field public static h:I = -0x1

.field public static i:Ljava/lang/Boolean;

.field public static final j:Ljava/lang/ThreadLocal;

.field public static final k:LK3/X;

.field public static final l:LF2/G;

.field public static m:LS3/i;

.field public static n:LS3/j;


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, LS3/c;->j:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    new-instance v0, LK3/X;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-direct {v0, v1}, LK3/X;-><init>(I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, LS3/c;->k:LK3/X;

    .line 15
    .line 16
    new-instance v0, LF2/G;

    .line 17
    .line 18
    const/16 v1, 0x1d

    .line 19
    .line 20
    invoke-direct {v0, v1}, LF2/G;-><init>(I)V

    .line 21
    .line 22
    .line 23
    sput-object v0, LS3/c;->l:LF2/G;

    .line 24
    .line 25
    new-instance v0, LS3/g;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-direct {v0, v1}, LS3/g;-><init>(I)V

    .line 29
    .line 30
    .line 31
    sput-object v0, LS3/c;->b:LS3/g;

    .line 32
    .line 33
    new-instance v0, LS3/g;

    .line 34
    .line 35
    const/4 v1, 0x3

    .line 36
    invoke-direct {v0, v1}, LS3/g;-><init>(I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, LS3/c;->c:LS3/g;

    .line 40
    .line 41
    new-instance v0, LS3/g;

    .line 42
    .line 43
    const/4 v1, 0x4

    .line 44
    invoke-direct {v0, v1}, LS3/g;-><init>(I)V

    .line 45
    .line 46
    .line 47
    sput-object v0, LS3/c;->d:LS3/g;

    .line 48
    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LS3/c;->a:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)I
    .locals 6

    .line 1
    const-string v0, "DynamiteModule"

    .line 2
    .line 3
    const-string v1, "Module descriptor id \'"

    .line 4
    .line 5
    const-string v2, "com.google.android.gms.dynamite.descriptors."

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    new-instance v4, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, ".ModuleDescriptor"

    .line 25
    .line 26
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {p0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const-string v2, "MODULE_ID"

    .line 38
    .line 39
    invoke-virtual {p0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const-string v4, "MODULE_VERSION"

    .line 44
    .line 45
    invoke-virtual {p0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    const/4 v4, 0x0

    .line 50
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    invoke-static {v5, p1}, LU4/a;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    if-nez v5, :cond_0

    .line 59
    .line 60
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string p0, "\' didn\'t match expected id \'"

    .line 77
    .line 78
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string p0, "\'"

    .line 85
    .line 86
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    return v3

    .line 97
    :catch_0
    move-exception p0

    .line 98
    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {p0, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    .line 100
    .line 101
    .line 102
    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    return p0

    .line 104
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    const-string p1, "Failed to load module descriptor class: "

    .line 113
    .line 114
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :catch_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    const-string v1, "Local module descriptor class for "

    .line 125
    .line 126
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string p1, " not found."

    .line 133
    .line 134
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    :goto_1
    return v3
.end method

.method public static c(Landroid/content/Context;LS3/g;Ljava/lang/String;)LS3/c;
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    const-string v0, "No acceptable module "

    .line 8
    .line 9
    const-string v4, "VersionPolicy returned invalid code:"

    .line 10
    .line 11
    const-string v5, "Selected remote version of "

    .line 12
    .line 13
    const-string v6, "Selected remote version of "

    .line 14
    .line 15
    const-string v7, "Considering local module "

    .line 16
    .line 17
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v8

    .line 21
    if-eqz v8, :cond_17

    .line 22
    .line 23
    sget-object v9, LS3/c;->j:Ljava/lang/ThreadLocal;

    .line 24
    .line 25
    invoke-virtual {v9}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v10

    .line 29
    check-cast v10, LS3/h;

    .line 30
    .line 31
    new-instance v11, LS3/h;

    .line 32
    .line 33
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v9, v11}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    sget-object v12, LS3/c;->k:LK3/X;

    .line 40
    .line 41
    invoke-virtual {v12}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v13

    .line 45
    check-cast v13, Ljava/lang/Long;

    .line 46
    .line 47
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    .line 48
    .line 49
    .line 50
    move-result-wide v14

    .line 51
    const-wide/16 v16, 0x0

    .line 52
    .line 53
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 54
    .line 55
    .line 56
    move-result-wide v18

    .line 57
    move-object/from16 v20, v0

    .line 58
    .line 59
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v12, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    sget-object v0, LS3/c;->l:LF2/G;

    .line 67
    .line 68
    invoke-virtual {v2, v1, v3, v0}, LS3/g;->b(Landroid/content/Context;Ljava/lang/String;LS3/b;)LA2/i;

    .line 69
    .line 70
    .line 71
    move-result-object v12

    .line 72
    const-string v0, "DynamiteModule"

    .line 73
    .line 74
    move-object/from16 v18, v4

    .line 75
    .line 76
    iget v4, v12, LA2/i;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 77
    .line 78
    move-object/from16 v19, v10

    .line 79
    .line 80
    :try_start_1
    iget v10, v12, LA2/i;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 81
    .line 82
    move-object/from16 v21, v11

    .line 83
    .line 84
    :try_start_2
    new-instance v11, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v11, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v7, ":"

    .line 93
    .line 94
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v4, " and remote module "

    .line 101
    .line 102
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v4, ":"

    .line 109
    .line 110
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    iget v0, v12, LA2/i;->c:I

    .line 124
    .line 125
    if-eqz v0, :cond_0

    .line 126
    .line 127
    const/4 v4, -0x1

    .line 128
    if-ne v0, v4, :cond_1

    .line 129
    .line 130
    iget v0, v12, LA2/i;->a:I

    .line 131
    .line 132
    if-eqz v0, :cond_0

    .line 133
    .line 134
    const/4 v0, -0x1

    .line 135
    goto :goto_0

    .line 136
    :cond_0
    move-object/from16 v10, v19

    .line 137
    .line 138
    move-object/from16 v1, v21

    .line 139
    .line 140
    goto/16 :goto_d

    .line 141
    .line 142
    :catchall_0
    move-exception v0

    .line 143
    move-object/from16 v10, v19

    .line 144
    .line 145
    move-object/from16 v1, v21

    .line 146
    .line 147
    goto/16 :goto_e

    .line 148
    .line 149
    :cond_1
    :goto_0
    const/4 v7, 0x1

    .line 150
    if-ne v0, v7, :cond_2

    .line 151
    .line 152
    iget v10, v12, LA2/i;->b:I

    .line 153
    .line 154
    if-eqz v10, :cond_0

    .line 155
    .line 156
    :cond_2
    if-ne v0, v4, :cond_3

    .line 157
    .line 158
    const-string v0, "Selected local version of "

    .line 159
    .line 160
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    const-string v1, "DynamiteModule"

    .line 165
    .line 166
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    new-instance v0, LS3/c;

    .line 170
    .line 171
    invoke-direct {v0, v8}, LS3/c;-><init>(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 172
    .line 173
    .line 174
    goto/16 :goto_a

    .line 175
    .line 176
    :cond_3
    if-ne v0, v7, :cond_14

    .line 177
    .line 178
    const/4 v10, 0x0

    .line 179
    :try_start_3
    iget v0, v12, LA2/i;->b:I
    :try_end_3
    .catch LS3/a; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 180
    .line 181
    :try_start_4
    const-class v11, LS3/c;

    .line 182
    .line 183
    monitor-enter v11
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch LS3/a; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 184
    :try_start_5
    invoke-static/range {p0 .. p0}, LS3/c;->g(Landroid/content/Context;)Z

    .line 185
    .line 186
    .line 187
    move-result v18

    .line 188
    if-eqz v18, :cond_10

    .line 189
    .line 190
    sget-object v18, LS3/c;->e:Ljava/lang/Boolean;

    .line 191
    .line 192
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 193
    if-eqz v18, :cond_f

    .line 194
    .line 195
    :try_start_6
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    .line 196
    .line 197
    .line 198
    move-result v11

    .line 199
    const/4 v4, 0x2

    .line 200
    if-eqz v11, :cond_9

    .line 201
    .line 202
    const-string v5, "DynamiteModule"

    .line 203
    .line 204
    new-instance v11, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    invoke-direct {v11, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    const-string v6, ", version >= "

    .line 213
    .line 214
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v6

    .line 224
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    .line 226
    .line 227
    const-class v5, LS3/c;

    .line 228
    .line 229
    monitor-enter v5
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catch LS3/a; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 230
    :try_start_7
    sget-object v6, LS3/c;->n:LS3/j;

    .line 231
    .line 232
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 233
    if-eqz v6, :cond_8

    .line 234
    .line 235
    :try_start_8
    invoke-virtual {v9}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v5

    .line 239
    check-cast v5, LS3/h;

    .line 240
    .line 241
    if-eqz v5, :cond_7

    .line 242
    .line 243
    iget-object v9, v5, LS3/h;->a:Landroid/database/Cursor;

    .line 244
    .line 245
    if-eqz v9, :cond_7

    .line 246
    .line 247
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 248
    .line 249
    .line 250
    move-result-object v9

    .line 251
    iget-object v5, v5, LS3/h;->a:Landroid/database/Cursor;

    .line 252
    .line 253
    new-instance v11, LR3/b;

    .line 254
    .line 255
    const/4 v7, 0x0

    .line 256
    invoke-direct {v11, v7}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    const-class v7, LS3/c;

    .line 260
    .line 261
    monitor-enter v7
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1
    .catch LS3/a; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 262
    :try_start_9
    sget v11, LS3/c;->h:I

    .line 263
    .line 264
    if-lt v11, v4, :cond_4

    .line 265
    .line 266
    const/4 v4, 0x1

    .line 267
    goto :goto_1

    .line 268
    :cond_4
    const/4 v4, 0x0

    .line 269
    :goto_1
    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 270
    if-eqz v4, :cond_5

    .line 271
    .line 272
    :try_start_a
    const-string v4, "DynamiteModule"

    .line 273
    .line 274
    const-string v7, "Dynamite loader version >= 2, using loadModule2NoCrashUtils"

    .line 275
    .line 276
    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    .line 278
    .line 279
    new-instance v4, LR3/b;

    .line 280
    .line 281
    invoke-direct {v4, v9}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 282
    .line 283
    .line 284
    new-instance v7, LR3/b;

    .line 285
    .line 286
    invoke-direct {v7, v5}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v6, v4, v3, v0, v7}, LS3/j;->A3(LR3/b;Ljava/lang/String;ILR3/b;)LR3/a;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    goto :goto_2

    .line 294
    :catchall_1
    move-exception v0

    .line 295
    goto/16 :goto_6

    .line 296
    .line 297
    :catch_0
    move-exception v0

    .line 298
    goto/16 :goto_7

    .line 299
    .line 300
    :catch_1
    move-exception v0

    .line 301
    goto/16 :goto_8

    .line 302
    .line 303
    :cond_5
    const-string v4, "DynamiteModule"

    .line 304
    .line 305
    const-string v7, "Dynamite loader version < 2, falling back to loadModule2"

    .line 306
    .line 307
    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    .line 309
    .line 310
    new-instance v4, LR3/b;

    .line 311
    .line 312
    invoke-direct {v4, v9}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 313
    .line 314
    .line 315
    new-instance v7, LR3/b;

    .line 316
    .line 317
    invoke-direct {v7, v5}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v6, v4, v3, v0, v7}, LS3/j;->z3(LR3/b;Ljava/lang/String;ILR3/b;)LR3/a;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    :goto_2
    invoke-static {v0}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    check-cast v0, Landroid/content/Context;

    .line 329
    .line 330
    if-eqz v0, :cond_6

    .line 331
    .line 332
    new-instance v4, LS3/c;

    .line 333
    .line 334
    invoke-direct {v4, v0}, LS3/c;-><init>(Landroid/content/Context;)V

    .line 335
    .line 336
    .line 337
    :goto_3
    move-object v0, v4

    .line 338
    goto/16 :goto_a

    .line 339
    .line 340
    :cond_6
    new-instance v0, LS3/a;

    .line 341
    .line 342
    const-string v4, "Failed to get module context"

    .line 343
    .line 344
    invoke-direct {v0, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    throw v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1
    .catch LS3/a; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 348
    :catchall_2
    move-exception v0

    .line 349
    :try_start_b
    monitor-exit v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 350
    :try_start_c
    throw v0

    .line 351
    :cond_7
    new-instance v0, LS3/a;

    .line 352
    .line 353
    const-string v4, "No result cursor"

    .line 354
    .line 355
    invoke-direct {v0, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    throw v0

    .line 359
    :cond_8
    new-instance v0, LS3/a;

    .line 360
    .line 361
    const-string v4, "DynamiteLoaderV2 was not cached."

    .line 362
    .line 363
    invoke-direct {v0, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    throw v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_1
    .catch LS3/a; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 367
    :catchall_3
    move-exception v0

    .line 368
    :try_start_d
    monitor-exit v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 369
    :try_start_e
    throw v0

    .line 370
    :cond_9
    const-string v6, "DynamiteModule"

    .line 371
    .line 372
    new-instance v7, Ljava/lang/StringBuilder;

    .line 373
    .line 374
    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    const-string v5, ", version >= "

    .line 381
    .line 382
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v5

    .line 392
    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    .line 394
    .line 395
    invoke-static/range {p0 .. p0}, LS3/c;->h(Landroid/content/Context;)LS3/i;

    .line 396
    .line 397
    .line 398
    move-result-object v5

    .line 399
    if-eqz v5, :cond_e

    .line 400
    .line 401
    invoke-virtual {v5}, LS3/i;->J()I

    .line 402
    .line 403
    .line 404
    move-result v6

    .line 405
    const/4 v7, 0x3

    .line 406
    if-lt v6, v7, :cond_b

    .line 407
    .line 408
    invoke-virtual {v9}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    move-result-object v4

    .line 412
    check-cast v4, LS3/h;

    .line 413
    .line 414
    if-eqz v4, :cond_a

    .line 415
    .line 416
    new-instance v6, LR3/b;

    .line 417
    .line 418
    invoke-direct {v6, v1}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 419
    .line 420
    .line 421
    iget-object v4, v4, LS3/h;->a:Landroid/database/Cursor;

    .line 422
    .line 423
    new-instance v7, LR3/b;

    .line 424
    .line 425
    invoke-direct {v7, v4}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {v5, v6, v3, v0, v7}, LS3/i;->A3(LR3/b;Ljava/lang/String;ILR3/b;)LR3/a;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    goto :goto_4

    .line 433
    :cond_a
    new-instance v0, LS3/a;

    .line 434
    .line 435
    const-string v4, "No cached result cursor holder"

    .line 436
    .line 437
    invoke-direct {v0, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    throw v0

    .line 441
    :cond_b
    if-ne v6, v4, :cond_c

    .line 442
    .line 443
    const-string v4, "DynamiteModule"

    .line 444
    .line 445
    const-string v6, "IDynamite loader version = 2"

    .line 446
    .line 447
    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    .line 449
    .line 450
    new-instance v4, LR3/b;

    .line 451
    .line 452
    invoke-direct {v4, v1}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 453
    .line 454
    .line 455
    invoke-virtual {v5, v4, v3, v0}, LS3/i;->B3(LR3/b;Ljava/lang/String;I)LR3/a;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    goto :goto_4

    .line 460
    :cond_c
    const-string v4, "DynamiteModule"

    .line 461
    .line 462
    const-string v6, "Dynamite loader version < 2, falling back to createModuleContext"

    .line 463
    .line 464
    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    .line 466
    .line 467
    new-instance v4, LR3/b;

    .line 468
    .line 469
    invoke-direct {v4, v1}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 470
    .line 471
    .line 472
    invoke-virtual {v5, v4, v3, v0}, LS3/i;->z3(LR3/b;Ljava/lang/String;I)LR3/a;

    .line 473
    .line 474
    .line 475
    move-result-object v0

    .line 476
    :goto_4
    invoke-static {v0}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 477
    .line 478
    .line 479
    move-result-object v0

    .line 480
    if-eqz v0, :cond_d

    .line 481
    .line 482
    new-instance v4, LS3/c;

    .line 483
    .line 484
    check-cast v0, Landroid/content/Context;

    .line 485
    .line 486
    invoke-direct {v4, v0}, LS3/c;-><init>(Landroid/content/Context;)V

    .line 487
    .line 488
    .line 489
    goto/16 :goto_3

    .line 490
    .line 491
    :cond_d
    new-instance v0, LS3/a;

    .line 492
    .line 493
    const-string v4, "Failed to load remote module."

    .line 494
    .line 495
    invoke-direct {v0, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 496
    .line 497
    .line 498
    throw v0

    .line 499
    :cond_e
    new-instance v0, LS3/a;

    .line 500
    .line 501
    const-string v4, "Failed to create IDynamiteLoader."

    .line 502
    .line 503
    invoke-direct {v0, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 504
    .line 505
    .line 506
    throw v0

    .line 507
    :cond_f
    new-instance v0, LS3/a;

    .line 508
    .line 509
    const-string v4, "Failed to determine which loading route to use."

    .line 510
    .line 511
    invoke-direct {v0, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    throw v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_1
    .catch LS3/a; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 515
    :catchall_4
    move-exception v0

    .line 516
    goto :goto_5

    .line 517
    :cond_10
    :try_start_f
    new-instance v0, LS3/a;

    .line 518
    .line 519
    const-string v4, "Remote loading disabled"

    .line 520
    .line 521
    invoke-direct {v0, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 522
    .line 523
    .line 524
    throw v0

    .line 525
    :goto_5
    monitor-exit v11
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 526
    :try_start_10
    throw v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_1
    .catch LS3/a; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 527
    :goto_6
    :try_start_11
    invoke-static {v1, v0}, LP3/c;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 528
    .line 529
    .line 530
    new-instance v4, LS3/a;

    .line 531
    .line 532
    const-string v5, "Failed to load remote module."

    .line 533
    .line 534
    invoke-direct {v4, v5, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 535
    .line 536
    .line 537
    throw v4

    .line 538
    :catch_2
    move-exception v0

    .line 539
    goto :goto_9

    .line 540
    :goto_7
    throw v0

    .line 541
    :goto_8
    new-instance v4, LS3/a;

    .line 542
    .line 543
    const-string v5, "Failed to load remote module."

    .line 544
    .line 545
    invoke-direct {v4, v5, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 546
    .line 547
    .line 548
    throw v4
    :try_end_11
    .catch LS3/a; {:try_start_11 .. :try_end_11} :catch_2
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 549
    :goto_9
    :try_start_12
    const-string v4, "DynamiteModule"

    .line 550
    .line 551
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v5

    .line 555
    new-instance v6, Ljava/lang/StringBuilder;

    .line 556
    .line 557
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 558
    .line 559
    .line 560
    const-string v7, "Failed to load remote module: "

    .line 561
    .line 562
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    .line 564
    .line 565
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    .line 567
    .line 568
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object v5

    .line 572
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    .line 574
    .line 575
    iget v4, v12, LA2/i;->a:I

    .line 576
    .line 577
    if-eqz v4, :cond_13

    .line 578
    .line 579
    new-instance v5, Landroidx/leanback/widget/j;

    .line 580
    .line 581
    const/4 v6, 0x1

    .line 582
    invoke-direct {v5, v4, v10, v6}, Landroidx/leanback/widget/j;-><init>(III)V

    .line 583
    .line 584
    .line 585
    invoke-virtual {v2, v1, v3, v5}, LS3/g;->b(Landroid/content/Context;Ljava/lang/String;LS3/b;)LA2/i;

    .line 586
    .line 587
    .line 588
    move-result-object v1

    .line 589
    iget v1, v1, LA2/i;->c:I

    .line 590
    .line 591
    const/4 v2, -0x1

    .line 592
    if-ne v1, v2, :cond_13

    .line 593
    .line 594
    const-string v0, "Selected local version of "

    .line 595
    .line 596
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 597
    .line 598
    .line 599
    move-result-object v0

    .line 600
    const-string v1, "DynamiteModule"

    .line 601
    .line 602
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    .line 604
    .line 605
    new-instance v0, LS3/c;

    .line 606
    .line 607
    invoke-direct {v0, v8}, LS3/c;-><init>(Landroid/content/Context;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 608
    .line 609
    .line 610
    :goto_a
    cmp-long v1, v14, v16

    .line 611
    .line 612
    if-nez v1, :cond_11

    .line 613
    .line 614
    sget-object v1, LS3/c;->k:LK3/X;

    .line 615
    .line 616
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 617
    .line 618
    .line 619
    :goto_b
    move-object/from16 v1, v21

    .line 620
    .line 621
    goto :goto_c

    .line 622
    :cond_11
    sget-object v1, LS3/c;->k:LK3/X;

    .line 623
    .line 624
    invoke-virtual {v1, v13}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 625
    .line 626
    .line 627
    goto :goto_b

    .line 628
    :goto_c
    iget-object v1, v1, LS3/h;->a:Landroid/database/Cursor;

    .line 629
    .line 630
    if-eqz v1, :cond_12

    .line 631
    .line 632
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 633
    .line 634
    .line 635
    :cond_12
    sget-object v1, LS3/c;->j:Ljava/lang/ThreadLocal;

    .line 636
    .line 637
    move-object/from16 v10, v19

    .line 638
    .line 639
    invoke-virtual {v1, v10}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 640
    .line 641
    .line 642
    return-object v0

    .line 643
    :cond_13
    move-object/from16 v10, v19

    .line 644
    .line 645
    move-object/from16 v1, v21

    .line 646
    .line 647
    :try_start_13
    new-instance v2, LS3/a;

    .line 648
    .line 649
    const-string v3, "Remote load failed. No local fallback found."

    .line 650
    .line 651
    invoke-direct {v2, v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 652
    .line 653
    .line 654
    throw v2

    .line 655
    :catchall_5
    move-exception v0

    .line 656
    goto :goto_e

    .line 657
    :cond_14
    move-object/from16 v10, v19

    .line 658
    .line 659
    move-object/from16 v1, v21

    .line 660
    .line 661
    new-instance v2, LS3/a;

    .line 662
    .line 663
    new-instance v3, Ljava/lang/StringBuilder;

    .line 664
    .line 665
    move-object/from16 v4, v18

    .line 666
    .line 667
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 668
    .line 669
    .line 670
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 671
    .line 672
    .line 673
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 674
    .line 675
    .line 676
    move-result-object v0

    .line 677
    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 678
    .line 679
    .line 680
    throw v2

    .line 681
    :goto_d
    new-instance v0, LS3/a;

    .line 682
    .line 683
    iget v2, v12, LA2/i;->a:I

    .line 684
    .line 685
    iget v4, v12, LA2/i;->b:I

    .line 686
    .line 687
    new-instance v5, Ljava/lang/StringBuilder;

    .line 688
    .line 689
    move-object/from16 v6, v20

    .line 690
    .line 691
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 692
    .line 693
    .line 694
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    .line 696
    .line 697
    const-string v3, " found. Local version is "

    .line 698
    .line 699
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    .line 701
    .line 702
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 703
    .line 704
    .line 705
    const-string v2, " and remote version is "

    .line 706
    .line 707
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    .line 709
    .line 710
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 711
    .line 712
    .line 713
    const-string v2, "."

    .line 714
    .line 715
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    .line 717
    .line 718
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 719
    .line 720
    .line 721
    move-result-object v2

    .line 722
    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 723
    .line 724
    .line 725
    throw v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    .line 726
    :catchall_6
    move-exception v0

    .line 727
    move-object v1, v11

    .line 728
    move-object/from16 v10, v19

    .line 729
    .line 730
    goto :goto_e

    .line 731
    :catchall_7
    move-exception v0

    .line 732
    move-object v1, v11

    .line 733
    :goto_e
    cmp-long v2, v14, v16

    .line 734
    .line 735
    if-nez v2, :cond_15

    .line 736
    .line 737
    sget-object v2, LS3/c;->k:LK3/X;

    .line 738
    .line 739
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    .line 740
    .line 741
    .line 742
    goto :goto_f

    .line 743
    :cond_15
    sget-object v2, LS3/c;->k:LK3/X;

    .line 744
    .line 745
    invoke-virtual {v2, v13}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 746
    .line 747
    .line 748
    :goto_f
    iget-object v1, v1, LS3/h;->a:Landroid/database/Cursor;

    .line 749
    .line 750
    if-eqz v1, :cond_16

    .line 751
    .line 752
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 753
    .line 754
    .line 755
    :cond_16
    sget-object v1, LS3/c;->j:Ljava/lang/ThreadLocal;

    .line 756
    .line 757
    invoke-virtual {v1, v10}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 758
    .line 759
    .line 760
    throw v0

    .line 761
    :cond_17
    new-instance v0, LS3/a;

    .line 762
    .line 763
    const-string v1, "null application Context"

    .line 764
    .line 765
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 766
    .line 767
    .line 768
    throw v0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;Z)I
    .locals 10

    .line 1
    :try_start_0
    const-class v0, LS3/c;

    .line 2
    .line 3
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 4
    :try_start_1
    sget-object v1, LS3/c;->e:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    if-nez v1, :cond_9

    .line 9
    .line 10
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-class v4, Lcom/google/android/gms/dynamite/DynamiteModule$DynamiteLoaderClassLoader;

    .line 19
    .line 20
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-virtual {v1, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v4, "sClassLoader"

    .line 29
    .line 30
    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    monitor-enter v4
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 39
    :try_start_3
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    check-cast v5, Ljava/lang/ClassLoader;

    .line 44
    .line 45
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    if-ne v5, v6, :cond_0

    .line 50
    .line 51
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 52
    .line 53
    goto/16 :goto_3

    .line 54
    .line 55
    :catchall_0
    move-exception v1

    .line 56
    goto/16 :goto_4

    .line 57
    .line 58
    :cond_0
    if-eqz v5, :cond_1

    .line 59
    .line 60
    :try_start_4
    invoke-static {v5}, LS3/c;->f(Ljava/lang/ClassLoader;)V
    :try_end_4
    .catch LS3/a; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 61
    .line 62
    .line 63
    :catch_0
    :try_start_5
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 64
    .line 65
    goto/16 :goto_3

    .line 66
    .line 67
    :cond_1
    invoke-static {p0}, LS3/c;->g(Landroid/content/Context;)Z

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-nez v5, :cond_2

    .line 72
    .line 73
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 74
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 75
    return v3

    .line 76
    :catchall_1
    move-exception p1

    .line 77
    goto/16 :goto_11

    .line 78
    .line 79
    :cond_2
    :try_start_7
    sget-boolean v5, LS3/c;->g:Z

    .line 80
    .line 81
    if-nez v5, :cond_8

    .line 82
    .line 83
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 84
    .line 85
    invoke-virtual {v5, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 89
    if-eqz v6, :cond_3

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_3
    const/4 v6, 0x1

    .line 93
    :try_start_8
    invoke-static {p1, p0, p2, v6}, LS3/c;->e(Ljava/lang/String;Landroid/content/Context;ZZ)I

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    sget-object v7, LS3/c;->f:Ljava/lang/String;

    .line 98
    .line 99
    if-eqz v7, :cond_7

    .line 100
    .line 101
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 102
    .line 103
    .line 104
    move-result v7

    .line 105
    if-eqz v7, :cond_4

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_4
    invoke-static {}, LS3/e;->t()Ljava/lang/ClassLoader;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    if-eqz v7, :cond_5

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_5
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 116
    .line 117
    const/16 v8, 0x1d

    .line 118
    .line 119
    if-lt v7, v8, :cond_6

    .line 120
    .line 121
    invoke-static {}, LF2/B;->c()V

    .line 122
    .line 123
    .line 124
    sget-object v7, LS3/c;->f:Ljava/lang/String;

    .line 125
    .line 126
    invoke-static {v7}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    .line 130
    .line 131
    .line 132
    move-result-object v8

    .line 133
    invoke-static {v7, v8}, LF2/B;->b(Ljava/lang/String;Ljava/lang/ClassLoader;)Ldalvik/system/DelegateLastClassLoader;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    goto :goto_0

    .line 138
    :cond_6
    new-instance v7, LS3/f;

    .line 139
    .line 140
    sget-object v8, LS3/c;->f:Ljava/lang/String;

    .line 141
    .line 142
    invoke-static {v8}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    .line 146
    .line 147
    .line 148
    move-result-object v9

    .line 149
    invoke-direct {v7, v8, v9}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 150
    .line 151
    .line 152
    :goto_0
    invoke-static {v7}, LS3/c;->f(Ljava/lang/ClassLoader;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, v2, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    sput-object v5, LS3/c;->e:Ljava/lang/Boolean;
    :try_end_8
    .catch LS3/a; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 159
    .line 160
    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 161
    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 162
    return v6

    .line 163
    :cond_7
    :goto_1
    :try_start_b
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 164
    :try_start_c
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 165
    return v6

    .line 166
    :catch_1
    :try_start_d
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    .line 167
    .line 168
    .line 169
    move-result-object v5

    .line 170
    invoke-virtual {v1, v2, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 174
    .line 175
    goto :goto_3

    .line 176
    :cond_8
    :goto_2
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    invoke-virtual {v1, v2, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 184
    .line 185
    :goto_3
    monitor-exit v4

    .line 186
    goto :goto_6

    .line 187
    :goto_4
    monitor-exit v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 188
    :try_start_e
    throw v1
    :try_end_e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 189
    :catch_2
    move-exception v1

    .line 190
    goto :goto_5

    .line 191
    :catch_3
    move-exception v1

    .line 192
    goto :goto_5

    .line 193
    :catch_4
    move-exception v1

    .line 194
    :goto_5
    :try_start_f
    const-string v4, "DynamiteModule"

    .line 195
    .line 196
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    new-instance v5, Ljava/lang/StringBuilder;

    .line 201
    .line 202
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .line 204
    .line 205
    const-string v6, "Failed to load module via V2: "

    .line 206
    .line 207
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    .line 219
    .line 220
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 221
    .line 222
    :goto_6
    sput-object v1, LS3/c;->e:Ljava/lang/Boolean;

    .line 223
    .line 224
    :cond_9
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 225
    :try_start_10
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 226
    .line 227
    .line 228
    move-result v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 229
    if-eqz v0, :cond_a

    .line 230
    .line 231
    :try_start_11
    invoke-static {p1, p0, p2, v3}, LS3/c;->e(Ljava/lang/String;Landroid/content/Context;ZZ)I

    .line 232
    .line 233
    .line 234
    move-result p0
    :try_end_11
    .catch LS3/a; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 235
    return p0

    .line 236
    :catchall_2
    move-exception p1

    .line 237
    goto/16 :goto_12

    .line 238
    .line 239
    :catch_5
    move-exception p1

    .line 240
    :try_start_12
    const-string p2, "DynamiteModule"

    .line 241
    .line 242
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    .line 247
    .line 248
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    .line 250
    .line 251
    const-string v1, "Failed to retrieve remote module version: "

    .line 252
    .line 253
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    .line 265
    .line 266
    return v3

    .line 267
    :cond_a
    invoke-static {p0}, LS3/c;->h(Landroid/content/Context;)LS3/i;

    .line 268
    .line 269
    .line 270
    move-result-object v4
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 271
    if-nez v4, :cond_b

    .line 272
    .line 273
    goto/16 :goto_f

    .line 274
    .line 275
    :cond_b
    :try_start_13
    invoke-virtual {v4}, LS3/i;->J()I

    .line 276
    .line 277
    .line 278
    move-result v0

    .line 279
    const/4 v1, 0x3

    .line 280
    if-lt v0, v1, :cond_11

    .line 281
    .line 282
    sget-object v0, LS3/c;->j:Ljava/lang/ThreadLocal;

    .line 283
    .line 284
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    check-cast v1, LS3/h;

    .line 289
    .line 290
    if-eqz v1, :cond_c

    .line 291
    .line 292
    iget-object v1, v1, LS3/h;->a:Landroid/database/Cursor;

    .line 293
    .line 294
    if-eqz v1, :cond_c

    .line 295
    .line 296
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 297
    .line 298
    .line 299
    move-result v3

    .line 300
    goto/16 :goto_f

    .line 301
    .line 302
    :catch_6
    move-exception p1

    .line 303
    goto/16 :goto_d

    .line 304
    .line 305
    :cond_c
    new-instance v5, LR3/b;

    .line 306
    .line 307
    invoke-direct {v5, p0}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 308
    .line 309
    .line 310
    sget-object v1, LS3/c;->k:LK3/X;

    .line 311
    .line 312
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v1

    .line 316
    check-cast v1, Ljava/lang/Long;

    .line 317
    .line 318
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 319
    .line 320
    .line 321
    move-result-wide v8

    .line 322
    move-object v6, p1

    .line 323
    move v7, p2

    .line 324
    invoke-virtual/range {v4 .. v9}, LS3/i;->C3(LR3/b;Ljava/lang/String;ZJ)LR3/a;

    .line 325
    .line 326
    .line 327
    move-result-object p1

    .line 328
    invoke-static {p1}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object p1

    .line 332
    check-cast p1, Landroid/database/Cursor;
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 333
    .line 334
    if-eqz p1, :cond_10

    .line 335
    .line 336
    :try_start_14
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 337
    .line 338
    .line 339
    move-result p2

    .line 340
    if-nez p2, :cond_d

    .line 341
    .line 342
    goto :goto_9

    .line 343
    :cond_d
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 344
    .line 345
    .line 346
    move-result p2

    .line 347
    if-lez p2, :cond_e

    .line 348
    .line 349
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    check-cast v0, LS3/h;

    .line 354
    .line 355
    if-eqz v0, :cond_e

    .line 356
    .line 357
    iget-object v1, v0, LS3/h;->a:Landroid/database/Cursor;

    .line 358
    .line 359
    if-nez v1, :cond_e

    .line 360
    .line 361
    iput-object p1, v0, LS3/h;->a:Landroid/database/Cursor;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_7
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 362
    .line 363
    goto :goto_7

    .line 364
    :cond_e
    move-object v2, p1

    .line 365
    :goto_7
    if-eqz v2, :cond_f

    .line 366
    .line 367
    :try_start_15
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 368
    .line 369
    .line 370
    :cond_f
    :goto_8
    move v3, p2

    .line 371
    goto/16 :goto_f

    .line 372
    .line 373
    :catchall_3
    move-exception p2

    .line 374
    goto :goto_a

    .line 375
    :catch_7
    move-exception p2

    .line 376
    goto :goto_b

    .line 377
    :cond_10
    :goto_9
    :try_start_16
    const-string p2, "DynamiteModule"

    .line 378
    .line 379
    const-string v0, "Failed to retrieve remote module version."

    .line 380
    .line 381
    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_7
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    .line 382
    .line 383
    .line 384
    if-eqz p1, :cond_13

    .line 385
    .line 386
    :try_start_17
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    .line 387
    .line 388
    .line 389
    goto/16 :goto_f

    .line 390
    .line 391
    :goto_a
    move-object v2, p1

    .line 392
    goto/16 :goto_10

    .line 393
    .line 394
    :goto_b
    move-object v2, p1

    .line 395
    goto :goto_e

    .line 396
    :cond_11
    const/4 v5, 0x2

    .line 397
    if-ne v0, v5, :cond_12

    .line 398
    .line 399
    :try_start_18
    const-string v0, "DynamiteModule"

    .line 400
    .line 401
    const-string v1, "IDynamite loader version = 2, no high precision latency measurement."

    .line 402
    .line 403
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    .line 405
    .line 406
    new-instance v0, LR3/b;

    .line 407
    .line 408
    invoke-direct {v0, p0}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 412
    .line 413
    .line 414
    move-result-object v1

    .line 415
    invoke-static {v1, v0}, LY3/a;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 422
    .line 423
    .line 424
    const/4 p1, 0x5

    .line 425
    invoke-virtual {v4, p1, v1}, Lcom/google/android/gms/internal/ads/y5;->Y(ILandroid/os/Parcel;)Landroid/os/Parcel;

    .line 426
    .line 427
    .line 428
    move-result-object p1

    .line 429
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 430
    .line 431
    .line 432
    move-result p2

    .line 433
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 434
    .line 435
    .line 436
    goto :goto_8

    .line 437
    :cond_12
    const-string v0, "DynamiteModule"

    .line 438
    .line 439
    const-string v5, "IDynamite loader version < 2, falling back to getModuleVersion2"

    .line 440
    .line 441
    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    .line 443
    .line 444
    new-instance v0, LR3/b;

    .line 445
    .line 446
    invoke-direct {v0, p0}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 447
    .line 448
    .line 449
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 450
    .line 451
    .line 452
    move-result-object v5

    .line 453
    invoke-static {v5, v0}, LY3/a;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {v5, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 457
    .line 458
    .line 459
    invoke-virtual {v5, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 460
    .line 461
    .line 462
    invoke-virtual {v4, v1, v5}, Lcom/google/android/gms/internal/ads/y5;->Y(ILandroid/os/Parcel;)Landroid/os/Parcel;

    .line 463
    .line 464
    .line 465
    move-result-object p1

    .line 466
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 467
    .line 468
    .line 469
    move-result p2

    .line 470
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_6
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    .line 471
    .line 472
    .line 473
    goto :goto_8

    .line 474
    :goto_c
    move-object p2, p1

    .line 475
    goto :goto_10

    .line 476
    :goto_d
    move-object p2, p1

    .line 477
    :goto_e
    :try_start_19
    const-string p1, "DynamiteModule"

    .line 478
    .line 479
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object p2

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    .line 484
    .line 485
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 486
    .line 487
    .line 488
    const-string v1, "Failed to retrieve remote module version: "

    .line 489
    .line 490
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    .line 492
    .line 493
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    .line 495
    .line 496
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object p2

    .line 500
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    .line 501
    .line 502
    .line 503
    if-eqz v2, :cond_13

    .line 504
    .line 505
    :try_start_1a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 506
    .line 507
    .line 508
    :cond_13
    :goto_f
    return v3

    .line 509
    :catchall_4
    move-exception p1

    .line 510
    goto :goto_c

    .line 511
    :goto_10
    if-eqz v2, :cond_14

    .line 512
    .line 513
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 514
    .line 515
    .line 516
    :cond_14
    throw p2
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    .line 517
    :goto_11
    :try_start_1b
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    .line 518
    :try_start_1c
    throw p1
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    .line 519
    :goto_12
    invoke-static {p0, p1}, LP3/c;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 520
    .line 521
    .line 522
    throw p1
.end method

.method public static e(Ljava/lang/String;Landroid/content/Context;ZZ)I
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, LS3/c;->k:LK3/X;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Ljava/lang/Long;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    const-string v3, "api_force_staging"

    .line 15
    .line 16
    const-string v4, "api"

    .line 17
    .line 18
    const/4 v5, 0x1

    .line 19
    if-eq v5, p2, :cond_0

    .line 20
    .line 21
    move-object v3, v4

    .line 22
    :cond_0
    new-instance p2, Landroid/net/Uri$Builder;

    .line 23
    .line 24
    invoke-direct {p2}, Landroid/net/Uri$Builder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v4, "content"

    .line 28
    .line 29
    invoke-virtual {p2, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    const-string v4, "com.google.android.gms.chimera"

    .line 34
    .line 35
    invoke-virtual {p2, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-virtual {p2, v3}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-virtual {p2, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    const-string p2, "requestStartUptime"

    .line 48
    .line 49
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {p0, p2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p0, v7}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    .line 66
    .line 67
    .line 68
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 69
    const/4 p1, 0x2

    .line 70
    const/4 p2, 0x0

    .line 71
    if-nez p0, :cond_1

    .line 72
    .line 73
    :goto_0
    move-object v4, v0

    .line 74
    goto/16 :goto_7

    .line 75
    .line 76
    :cond_1
    const/4 v8, 0x0

    .line 77
    const/4 v9, 0x0

    .line 78
    const/4 v10, 0x0

    .line 79
    const/4 v11, 0x0

    .line 80
    move-object v6, p0

    .line 81
    :try_start_1
    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 82
    .line 83
    .line 84
    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 85
    if-nez v1, :cond_2

    .line 86
    .line 87
    :catch_0
    :try_start_2
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_2
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    invoke-interface {v1}, Landroid/database/Cursor;->getColumnCount()I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    new-instance v4, Landroid/database/MatrixCursor;

    .line 100
    .line 101
    invoke-interface {v1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    invoke-direct {v4, v6, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 106
    .line 107
    .line 108
    const/4 v6, 0x0

    .line 109
    :goto_1
    if-ge v6, v2, :cond_a

    .line 110
    .line 111
    invoke-interface {v1, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 112
    .line 113
    .line 114
    move-result v7

    .line 115
    if-eqz v7, :cond_9

    .line 116
    .line 117
    new-array v7, v3, [Ljava/lang/Object;

    .line 118
    .line 119
    const/4 v8, 0x0

    .line 120
    :goto_2
    if-ge v8, v3, :cond_8

    .line 121
    .line 122
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getType(I)I

    .line 123
    .line 124
    .line 125
    move-result v9

    .line 126
    if-eqz v9, :cond_7

    .line 127
    .line 128
    if-eq v9, v5, :cond_6

    .line 129
    .line 130
    if-eq v9, p1, :cond_5

    .line 131
    .line 132
    const/4 v10, 0x3

    .line 133
    if-eq v9, v10, :cond_4

    .line 134
    .line 135
    const/4 v10, 0x4

    .line 136
    if-ne v9, v10, :cond_3

    .line 137
    .line 138
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getBlob(I)[B

    .line 139
    .line 140
    .line 141
    move-result-object v9

    .line 142
    aput-object v9, v7, v8

    .line 143
    .line 144
    goto :goto_3

    .line 145
    :catchall_0
    move-exception v2

    .line 146
    goto :goto_4

    .line 147
    :cond_3
    new-instance v2, Landroid/os/RemoteException;

    .line 148
    .line 149
    const-string v3, "Unknown column type"

    .line 150
    .line 151
    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    throw v2

    .line 155
    :cond_4
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v9

    .line 159
    aput-object v9, v7, v8

    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_5
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getDouble(I)D

    .line 163
    .line 164
    .line 165
    move-result-wide v9

    .line 166
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 167
    .line 168
    .line 169
    move-result-object v9

    .line 170
    aput-object v9, v7, v8

    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_6
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    .line 174
    .line 175
    .line 176
    move-result-wide v9

    .line 177
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 178
    .line 179
    .line 180
    move-result-object v9

    .line 181
    aput-object v9, v7, v8

    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_7
    aput-object v0, v7, v8

    .line 185
    .line 186
    :goto_3
    add-int/lit8 v8, v8, 0x1

    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_8
    invoke-virtual {v4, v7}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    add-int/lit8 v6, v6, 0x1

    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_9
    new-instance v2, Landroid/os/RemoteException;

    .line 196
    .line 197
    const-string v3, "Cursor read incomplete (ContentProvider dead?)"

    .line 198
    .line 199
    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 203
    :cond_a
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 204
    .line 205
    .line 206
    :try_start_5
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 207
    .line 208
    .line 209
    goto :goto_7

    .line 210
    :catchall_1
    move-exception p1

    .line 211
    goto :goto_6

    .line 212
    :goto_4
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 213
    .line 214
    .line 215
    goto :goto_5

    .line 216
    :catchall_2
    move-exception v1

    .line 217
    :try_start_7
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 218
    .line 219
    .line 220
    :goto_5
    throw v2
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 221
    :goto_6
    :try_start_8
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z

    .line 222
    .line 223
    .line 224
    throw p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 225
    :goto_7
    if-eqz v4, :cond_12

    .line 226
    .line 227
    :try_start_9
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 228
    .line 229
    .line 230
    move-result p0

    .line 231
    if-eqz p0, :cond_12

    .line 232
    .line 233
    invoke-interface {v4, p2}, Landroid/database/Cursor;->getInt(I)I

    .line 234
    .line 235
    .line 236
    move-result p0

    .line 237
    if-lez p0, :cond_e

    .line 238
    .line 239
    const-class v1, LS3/c;

    .line 240
    .line 241
    monitor-enter v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 242
    :try_start_a
    invoke-interface {v4, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    sput-object p1, LS3/c;->f:Ljava/lang/String;

    .line 247
    .line 248
    const-string p1, "loaderVersion"

    .line 249
    .line 250
    invoke-interface {v4, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 251
    .line 252
    .line 253
    move-result p1

    .line 254
    if-ltz p1, :cond_b

    .line 255
    .line 256
    invoke-interface {v4, p1}, Landroid/database/Cursor;->getInt(I)I

    .line 257
    .line 258
    .line 259
    move-result p1

    .line 260
    sput p1, LS3/c;->h:I

    .line 261
    .line 262
    goto :goto_8

    .line 263
    :catchall_3
    move-exception p0

    .line 264
    goto :goto_a

    .line 265
    :cond_b
    :goto_8
    const-string p1, "disableStandaloneDynamiteLoader2"

    .line 266
    .line 267
    invoke-interface {v4, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 268
    .line 269
    .line 270
    move-result p1

    .line 271
    if-ltz p1, :cond_d

    .line 272
    .line 273
    invoke-interface {v4, p1}, Landroid/database/Cursor;->getInt(I)I

    .line 274
    .line 275
    .line 276
    move-result p1

    .line 277
    if-eqz p1, :cond_c

    .line 278
    .line 279
    goto :goto_9

    .line 280
    :cond_c
    const/4 v5, 0x0

    .line 281
    :goto_9
    sput-boolean v5, LS3/c;->g:Z

    .line 282
    .line 283
    move p2, v5

    .line 284
    :cond_d
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 285
    :try_start_b
    sget-object p1, LS3/c;->j:Ljava/lang/ThreadLocal;

    .line 286
    .line 287
    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    check-cast p1, LS3/h;

    .line 292
    .line 293
    if-eqz p1, :cond_e

    .line 294
    .line 295
    iget-object v1, p1, LS3/h;->a:Landroid/database/Cursor;

    .line 296
    .line 297
    if-nez v1, :cond_e

    .line 298
    .line 299
    iput-object v4, p1, LS3/h;->a:Landroid/database/Cursor;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 300
    .line 301
    goto :goto_b

    .line 302
    :cond_e
    move-object v0, v4

    .line 303
    goto :goto_b

    .line 304
    :goto_a
    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 305
    :try_start_d
    throw p0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 306
    :catchall_4
    move-exception p0

    .line 307
    goto :goto_d

    .line 308
    :catch_1
    move-exception p0

    .line 309
    goto :goto_e

    .line 310
    :goto_b
    if-eqz p3, :cond_10

    .line 311
    .line 312
    if-nez p2, :cond_f

    .line 313
    .line 314
    goto :goto_c

    .line 315
    :cond_f
    :try_start_e
    new-instance p0, LS3/a;

    .line 316
    .line 317
    const-string p1, "forcing fallback to container DynamiteLoader impl"

    .line 318
    .line 319
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    throw p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 323
    :catchall_5
    move-exception p0

    .line 324
    goto :goto_10

    .line 325
    :catch_2
    move-exception p0

    .line 326
    goto :goto_f

    .line 327
    :cond_10
    :goto_c
    if-eqz v0, :cond_11

    .line 328
    .line 329
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 330
    .line 331
    .line 332
    :cond_11
    return p0

    .line 333
    :cond_12
    :try_start_f
    const-string p0, "DynamiteModule"

    .line 334
    .line 335
    const-string p1, "Failed to retrieve remote module version."

    .line 336
    .line 337
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    .line 339
    .line 340
    new-instance p0, LS3/a;

    .line 341
    .line 342
    const-string p1, "Failed to connect to dynamite module ContentResolver."

    .line 343
    .line 344
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    throw p0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 348
    :goto_d
    move-object v0, v4

    .line 349
    goto :goto_10

    .line 350
    :goto_e
    move-object v0, v4

    .line 351
    :goto_f
    :try_start_10
    instance-of p1, p0, LS3/a;

    .line 352
    .line 353
    if-eqz p1, :cond_13

    .line 354
    .line 355
    throw p0

    .line 356
    :cond_13
    new-instance p1, LS3/a;

    .line 357
    .line 358
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object p2

    .line 362
    new-instance p3, Ljava/lang/StringBuilder;

    .line 363
    .line 364
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 365
    .line 366
    .line 367
    const-string v1, "V2 version check failed: "

    .line 368
    .line 369
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object p2

    .line 379
    invoke-direct {p1, p2, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 380
    .line 381
    .line 382
    throw p1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    .line 383
    :goto_10
    if-eqz v0, :cond_14

    .line 384
    .line 385
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 386
    .line 387
    .line 388
    :cond_14
    throw p0
.end method

.method public static f(Ljava/lang/ClassLoader;)V
    .locals 3

    .line 1
    const-string v0, "com.google.android.gms.dynamite.IDynamiteLoaderV2"

    .line 2
    .line 3
    :try_start_0
    const-string v1, "com.google.android.gms.dynamiteloader.DynamiteLoaderV2"

    .line 4
    .line 5
    invoke-virtual {p0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 v1, 0x0

    .line 10
    new-array v2, v1, [Ljava/lang/Class;

    .line 11
    .line 12
    invoke-virtual {p0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    new-array v1, v1, [Ljava/lang/Object;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Landroid/os/IBinder;

    .line 23
    .line 24
    if-nez p0, :cond_0

    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    instance-of v2, v1, LS3/j;

    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    move-object p0, v1

    .line 37
    check-cast p0, LS3/j;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception p0

    .line 41
    goto :goto_1

    .line 42
    :catch_1
    move-exception p0

    .line 43
    goto :goto_1

    .line 44
    :catch_2
    move-exception p0

    .line 45
    goto :goto_1

    .line 46
    :catch_3
    move-exception p0

    .line 47
    goto :goto_1

    .line 48
    :catch_4
    move-exception p0

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    new-instance v1, LS3/j;

    .line 51
    .line 52
    const/4 v2, 0x3

    .line 53
    invoke-direct {v1, p0, v0, v2}, Lcom/google/android/gms/internal/ads/y5;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 54
    .line 55
    .line 56
    move-object p0, v1

    .line 57
    :goto_0
    sput-object p0, LS3/c;->n:LS3/j;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    return-void

    .line 60
    :goto_1
    new-instance v0, LS3/a;

    .line 61
    .line 62
    const-string v1, "Failed to instantiate dynamite loader"

    .line 63
    .line 64
    invoke-direct {v0, v1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    throw v0
.end method

.method public static g(Landroid/content/Context;)Z
    .locals 6

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return v2

    .line 12
    :cond_0
    sget-object v1, LS3/c;->i:Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    return v2

    .line 21
    :cond_1
    sget-object v0, LS3/c;->i:Ljava/lang/Boolean;

    .line 22
    .line 23
    const-string v1, "DynamiteModule"

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    if-nez v0, :cond_4

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 33
    .line 34
    const/16 v5, 0x1d

    .line 35
    .line 36
    if-lt v4, v5, :cond_2

    .line 37
    .line 38
    const/high16 v4, 0x10000000

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    const/4 v4, 0x0

    .line 42
    :goto_0
    const-string v5, "com.google.android.gms.chimera"

    .line 43
    .line 44
    invoke-virtual {v0, v5, v4}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    sget-object v4, LJ3/f;->b:LJ3/f;

    .line 49
    .line 50
    const v5, 0x989680

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4, p0, v5}, LJ3/f;->c(Landroid/content/Context;I)I

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    if-nez p0, :cond_3

    .line 58
    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    const-string p0, "com.google.android.gms"

    .line 62
    .line 63
    iget-object v4, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    if-eqz p0, :cond_3

    .line 70
    .line 71
    const/4 v3, 0x1

    .line 72
    :cond_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    sput-object p0, LS3/c;->i:Ljava/lang/Boolean;

    .line 77
    .line 78
    if-eqz v3, :cond_4

    .line 79
    .line 80
    iget-object p0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 81
    .line 82
    if-eqz p0, :cond_4

    .line 83
    .line 84
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 85
    .line 86
    and-int/lit16 p0, p0, 0x81

    .line 87
    .line 88
    if-nez p0, :cond_4

    .line 89
    .line 90
    const-string p0, "Non-system-image GmsCore APK, forcing V1"

    .line 91
    .line 92
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    sput-boolean v2, LS3/c;->g:Z

    .line 96
    .line 97
    :cond_4
    if-nez v3, :cond_5

    .line 98
    .line 99
    const-string p0, "Invalid GmsCore APK, remote loading disabled."

    .line 100
    .line 101
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    :cond_5
    return v3
.end method

.method public static h(Landroid/content/Context;)LS3/i;
    .locals 6

    .line 1
    const-string v0, "Failed to load IDynamiteLoader from GmsCore: "

    .line 2
    .line 3
    const-class v1, LS3/c;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    sget-object v2, LS3/c;->m:LS3/i;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    return-object v2

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    goto :goto_2

    .line 14
    :cond_0
    const/4 v2, 0x0

    .line 15
    :try_start_1
    const-string v3, "com.google.android.gms"

    .line 16
    .line 17
    const/4 v4, 0x3

    .line 18
    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-string v3, "com.google.android.gms.chimera.container.DynamiteLoaderImpl"

    .line 27
    .line 28
    invoke-virtual {p0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Landroid/os/IBinder;

    .line 37
    .line 38
    if-nez p0, :cond_1

    .line 39
    .line 40
    move-object v3, v2

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const-string v3, "com.google.android.gms.dynamite.IDynamiteLoader"

    .line 43
    .line 44
    invoke-interface {p0, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    instance-of v5, v3, LS3/i;

    .line 49
    .line 50
    if-eqz v5, :cond_2

    .line 51
    .line 52
    check-cast v3, LS3/i;

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move-exception p0

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    new-instance v3, LS3/i;

    .line 58
    .line 59
    const-string v5, "com.google.android.gms.dynamite.IDynamiteLoader"

    .line 60
    .line 61
    invoke-direct {v3, p0, v5, v4}, Lcom/google/android/gms/internal/ads/y5;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 62
    .line 63
    .line 64
    :goto_0
    if-eqz v3, :cond_3

    .line 65
    .line 66
    sput-object v3, LS3/c;->m:LS3/i;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    .line 68
    :try_start_2
    monitor-exit v1

    .line 69
    return-object v3

    .line 70
    :goto_1
    const-string v3, "DynamiteModule"

    .line 71
    .line 72
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    new-instance v4, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    :cond_3
    monitor-exit v1

    .line 92
    return-object v2

    .line 93
    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    throw p0
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, LS3/c;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    return-object v0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    goto :goto_0

    .line 20
    :catch_1
    move-exception v0

    .line 21
    goto :goto_0

    .line 22
    :catch_2
    move-exception v0

    .line 23
    :goto_0
    new-instance v1, LS3/a;

    .line 24
    .line 25
    const-string v2, "Failed to instantiate module class: "

    .line 26
    .line 27
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {v1, p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    throw v1
.end method
