.class public final Lt0/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt0/b;


# static fields
.field public static final i:Ljava/util/HashSet;


# instance fields
.field public final a:Ljava/io/File;

.field public final b:Lt0/h;

.field public final c:Ll/x;

.field public final d:Lt0/j;

.field public final e:Ljava/util/HashMap;

.field public final f:Ljava/util/Random;

.field public g:J

.field public h:Lt0/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lt0/v;->i:Ljava/util/HashSet;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lt0/s;Lr0/b;)V
    .locals 5

    .line 1
    new-instance v0, Ll/x;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v1, v0, Ll/x;->G:Ljava/lang/Object;

    .line 12
    .line 13
    new-instance v1, Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v1, v0, Ll/x;->H:Ljava/lang/Object;

    .line 19
    .line 20
    new-instance v1, Landroid/util/SparseBooleanArray;

    .line 21
    .line 22
    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v1, v0, Ll/x;->I:Ljava/lang/Object;

    .line 26
    .line 27
    new-instance v1, Landroid/util/SparseBooleanArray;

    .line 28
    .line 29
    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v1, v0, Ll/x;->J:Ljava/lang/Object;

    .line 33
    .line 34
    new-instance v1, Lt0/o;

    .line 35
    .line 36
    invoke-direct {v1, p3}, Lt0/o;-><init>(Lr0/b;)V

    .line 37
    .line 38
    .line 39
    new-instance v2, Lt0/p;

    .line 40
    .line 41
    new-instance v3, Ljava/io/File;

    .line 42
    .line 43
    const-string v4, "cached_content_index.exi"

    .line 44
    .line 45
    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-direct {v2, v3}, Lt0/p;-><init>(Ljava/io/File;)V

    .line 49
    .line 50
    .line 51
    iput-object v1, v0, Ll/x;->K:Ljava/lang/Object;

    .line 52
    .line 53
    iput-object v2, v0, Ll/x;->L:Ljava/lang/Object;

    .line 54
    .line 55
    new-instance v1, Lt0/j;

    .line 56
    .line 57
    invoke-direct {v1, p3}, Lt0/j;-><init>(Lr0/b;)V

    .line 58
    .line 59
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    .line 62
    .line 63
    const-class p3, Lt0/v;

    .line 64
    .line 65
    monitor-enter p3

    .line 66
    :try_start_0
    sget-object v2, Lt0/v;->i:Ljava/util/HashSet;

    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit p3

    .line 77
    if-eqz v2, :cond_0

    .line 78
    .line 79
    iput-object p1, p0, Lt0/v;->a:Ljava/io/File;

    .line 80
    .line 81
    iput-object p2, p0, Lt0/v;->b:Lt0/h;

    .line 82
    .line 83
    iput-object v0, p0, Lt0/v;->c:Ll/x;

    .line 84
    .line 85
    iput-object v1, p0, Lt0/v;->d:Lt0/j;

    .line 86
    .line 87
    new-instance p1, Ljava/util/HashMap;

    .line 88
    .line 89
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 90
    .line 91
    .line 92
    iput-object p1, p0, Lt0/v;->e:Ljava/util/HashMap;

    .line 93
    .line 94
    new-instance p1, Ljava/util/Random;

    .line 95
    .line 96
    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    .line 97
    .line 98
    .line 99
    iput-object p1, p0, Lt0/v;->f:Ljava/util/Random;

    .line 100
    .line 101
    const-wide/16 p1, -0x1

    .line 102
    .line 103
    iput-wide p1, p0, Lt0/v;->g:J

    .line 104
    .line 105
    new-instance p1, Landroid/os/ConditionVariable;

    .line 106
    .line 107
    invoke-direct {p1}, Landroid/os/ConditionVariable;-><init>()V

    .line 108
    .line 109
    .line 110
    new-instance p2, Lt0/u;

    .line 111
    .line 112
    invoke-direct {p2, p0, p1}, Lt0/u;-><init>(Lt0/v;Landroid/os/ConditionVariable;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1}, Landroid/os/ConditionVariable;->block()V

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 123
    .line 124
    new-instance p3, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    const-string v0, "Another SimpleCache instance uses the folder: "

    .line 127
    .line 128
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    throw p2

    .line 142
    :catchall_0
    move-exception p1

    .line 143
    monitor-exit p3

    .line 144
    throw p1
.end method

.method public static a(Lt0/v;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lt0/v;->c:Ll/x;

    .line 2
    .line 3
    iget-object v1, p0, Lt0/v;->a:Ljava/io/File;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    :try_start_0
    invoke-static {v1}, Lt0/v;->e(Ljava/io/File;)V
    :try_end_0
    .catch Lt0/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception v0

    .line 16
    iput-object v0, p0, Lt0/v;->h:Lt0/a;

    .line 17
    .line 18
    goto/16 :goto_7

    .line 19
    .line 20
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const-string v3, "SimpleCache"

    .line 25
    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v2, "Failed to list cache directory files: "

    .line 31
    .line 32
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v3, v0}, Lp0/x;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    new-instance v1, Lt0/a;

    .line 46
    .line 47
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iput-object v1, p0, Lt0/v;->h:Lt0/a;

    .line 51
    .line 52
    goto/16 :goto_7

    .line 53
    .line 54
    :cond_1
    array-length v4, v2

    .line 55
    const/4 v5, 0x0

    .line 56
    const/4 v6, 0x0

    .line 57
    :goto_1
    const-wide/16 v7, -0x1

    .line 58
    .line 59
    if-ge v6, v4, :cond_3

    .line 60
    .line 61
    aget-object v9, v2, v6

    .line 62
    .line 63
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v10

    .line 67
    const-string v11, ".uid"

    .line 68
    .line 69
    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result v11

    .line 73
    if-eqz v11, :cond_2

    .line 74
    .line 75
    const/16 v11, 0x2e

    .line 76
    .line 77
    :try_start_1
    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(I)I

    .line 78
    .line 79
    .line 80
    move-result v11

    .line 81
    invoke-virtual {v10, v5, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v10

    .line 85
    const/16 v11, 0x10

    .line 86
    .line 87
    invoke-static {v10, v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    .line 88
    .line 89
    .line 90
    move-result-wide v4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 91
    goto :goto_2

    .line 92
    :catch_1
    new-instance v7, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string v8, "Malformed UID file: "

    .line 95
    .line 96
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    invoke-static {v3, v7}, Lp0/x;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 110
    .line 111
    .line 112
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_3
    move-wide v4, v7

    .line 116
    :goto_2
    iput-wide v4, p0, Lt0/v;->g:J

    .line 117
    .line 118
    cmp-long v6, v4, v7

    .line 119
    .line 120
    if-nez v6, :cond_4

    .line 121
    .line 122
    :try_start_2
    invoke-static {v1}, Lt0/v;->f(Ljava/io/File;)J

    .line 123
    .line 124
    .line 125
    move-result-wide v4

    .line 126
    iput-wide v4, p0, Lt0/v;->g:J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :catch_2
    move-exception v0

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    const-string v4, "Failed to create cache UID: "

    .line 133
    .line 134
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-static {v3, v1, v0}, Lp0/x;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 145
    .line 146
    .line 147
    new-instance v2, Lt0/a;

    .line 148
    .line 149
    invoke-direct {v2, v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 150
    .line 151
    .line 152
    iput-object v2, p0, Lt0/v;->h:Lt0/a;

    .line 153
    .line 154
    goto :goto_7

    .line 155
    :cond_4
    :goto_3
    :try_start_3
    iget-wide v4, p0, Lt0/v;->g:J

    .line 156
    .line 157
    invoke-virtual {v0, v4, v5}, Ll/x;->k(J)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 158
    .line 159
    .line 160
    const/4 v4, 0x1

    .line 161
    iget-object v5, p0, Lt0/v;->d:Lt0/j;

    .line 162
    .line 163
    if-eqz v5, :cond_5

    .line 164
    .line 165
    :try_start_4
    iget-wide v6, p0, Lt0/v;->g:J

    .line 166
    .line 167
    invoke-virtual {v5, v6, v7}, Lt0/j;->b(J)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v5}, Lt0/j;->a()Ljava/util/HashMap;

    .line 171
    .line 172
    .line 173
    move-result-object v6

    .line 174
    invoke-virtual {p0, v1, v4, v2, v6}, Lt0/v;->i(Ljava/io/File;Z[Ljava/io/File;Ljava/util/HashMap;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    invoke-virtual {v5, v2}, Lt0/j;->c(Ljava/util/Set;)V

    .line 182
    .line 183
    .line 184
    goto :goto_4

    .line 185
    :catch_3
    move-exception v0

    .line 186
    goto :goto_6

    .line 187
    :cond_5
    const/4 v5, 0x0

    .line 188
    invoke-virtual {p0, v1, v4, v2, v5}, Lt0/v;->i(Ljava/io/File;Z[Ljava/io/File;Ljava/util/HashMap;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 189
    .line 190
    .line 191
    :goto_4
    iget-object p0, v0, Ll/x;->G:Ljava/lang/Object;

    .line 192
    .line 193
    check-cast p0, Ljava/util/HashMap;

    .line 194
    .line 195
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 196
    .line 197
    .line 198
    move-result-object p0

    .line 199
    invoke-static {p0}, Lz4/L;->r(Ljava/util/Collection;)Lz4/L;

    .line 200
    .line 201
    .line 202
    move-result-object p0

    .line 203
    invoke-virtual {p0}, Lz4/L;->t()Lcom/google/android/gms/internal/ads/gB;

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    if-eqz v1, :cond_6

    .line 212
    .line 213
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    check-cast v1, Ljava/lang/String;

    .line 218
    .line 219
    invoke-virtual {v0, v1}, Ll/x;->l(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    goto :goto_5

    .line 223
    :cond_6
    :try_start_5
    invoke-virtual {v0}, Ll/x;->o()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 224
    .line 225
    .line 226
    goto :goto_7

    .line 227
    :catch_4
    move-exception p0

    .line 228
    const-string v0, "Storing index file failed"

    .line 229
    .line 230
    invoke-static {v3, v0, p0}, Lp0/x;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 231
    .line 232
    .line 233
    goto :goto_7

    .line 234
    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 235
    .line 236
    const-string v4, "Failed to initialize cache indices: "

    .line 237
    .line 238
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    invoke-static {v3, v1, v0}, Lp0/x;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 249
    .line 250
    .line 251
    new-instance v2, Lt0/a;

    .line 252
    .line 253
    invoke-direct {v2, v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 254
    .line 255
    .line 256
    iput-object v2, p0, Lt0/v;->h:Lt0/a;

    .line 257
    .line 258
    :goto_7
    return-void
.end method

.method public static e(Ljava/io/File;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v1, "Failed to create cache directory: "

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const-string v0, "SimpleCache"

    .line 29
    .line 30
    invoke-static {v0, p0}, Lp0/x;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance v0, Lt0/a;

    .line 34
    .line 35
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v0

    .line 39
    :cond_1
    :goto_0
    return-void
.end method

.method public static f(Ljava/io/File;)J
    .locals 5

    .line 1
    new-instance v0, Ljava/security/SecureRandom;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    const-wide/high16 v2, -0x8000000000000000L

    .line 11
    .line 12
    cmp-long v4, v0, v2

    .line 13
    .line 14
    if-nez v4, :cond_0

    .line 15
    .line 16
    const-wide/16 v0, 0x0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    :goto_0
    const/16 v2, 0x10

    .line 24
    .line 25
    invoke-static {v0, v1, v2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    new-instance v3, Ljava/io/File;

    .line 30
    .line 31
    const-string v4, ".uid"

    .line 32
    .line 33
    invoke-static {v2, v4}, Lcom/google/protobuf/U2;->A(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-direct {v3, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    if-eqz p0, :cond_1

    .line 45
    .line 46
    return-wide v0

    .line 47
    :cond_1
    new-instance p0, Ljava/io/IOException;

    .line 48
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v1, "Failed to create UID file: "

    .line 52
    .line 53
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p0
.end method


# virtual methods
.method public final b(Lt0/w;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lt0/v;->c:Ll/x;

    .line 2
    .line 3
    iget-object v1, p1, Lt0/l;->G:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ll/x;->h(Ljava/lang/String;)Lt0/n;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v0, v0, Lt0/n;->c:Ljava/util/TreeSet;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lt0/v;->e:Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Ljava/util/ArrayList;

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    add-int/lit8 v0, v0, -0x1

    .line 29
    .line 30
    :goto_0
    if-ltz v0, :cond_0

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lt0/h;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    add-int/lit8 v0, v0, -0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object p1, p0, Lt0/v;->b:Lt0/h;

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final declared-synchronized c(Lcom/google/android/gms/internal/atv_ads_framework/x0;Ljava/lang/String;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lt0/v;->d()V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lt0/v;->c:Ll/x;

    .line 6
    .line 7
    invoke-virtual {v0, p2}, Ll/x;->h(Ljava/lang/String;)Lt0/n;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    iget-object v1, p2, Lt0/n;->e:Lt0/r;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Lt0/r;->a(Lcom/google/android/gms/internal/atv_ads_framework/x0;)Lt0/r;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p2, Lt0/n;->e:Lt0/r;

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Lt0/r;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    xor-int/lit8 p1, p1, 0x1

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    iget-object p1, v0, Ll/x;->K:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p1, Lt0/q;

    .line 30
    .line 31
    invoke-interface {p1, p2}, Lt0/q;->c(Lt0/n;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    :cond_0
    :try_start_1
    iget-object p1, p0, Lt0/v;->c:Ll/x;

    .line 35
    .line 36
    invoke-virtual {p1}, Ll/x;->o()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    .line 38
    .line 39
    monitor-exit p0

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception p1

    .line 44
    :try_start_2
    new-instance p2, Lt0/a;

    .line 45
    .line 46
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    :goto_0
    monitor-exit p0

    .line 51
    throw p1
.end method

.method public final declared-synchronized d()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lt0/v;->h:Lt0/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    monitor-exit p0

    .line 11
    throw v0
.end method

.method public final declared-synchronized g(Ljava/lang/String;)Lt0/r;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lt0/v;->c:Ll/x;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Ll/x;->g(Ljava/lang/String;)Lt0/n;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p1, Lt0/n;->e:Lt0/r;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sget-object p1, Lt0/r;->c:Lt0/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    :goto_0
    monitor-exit p0

    .line 16
    return-object p1

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    monitor-exit p0

    .line 19
    throw p1
.end method

.method public final h(JJLjava/lang/String;)Lt0/w;
    .locals 14

    .line 1
    move-wide/from16 v9, p3

    .line 2
    .line 3
    move-object v11, p0

    .line 4
    iget-object v0, v11, Lt0/v;->c:Ll/x;

    .line 5
    .line 6
    move-object/from16 v1, p5

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ll/x;->g(Ljava/lang/String;)Lt0/n;

    .line 9
    .line 10
    .line 11
    move-result-object v12

    .line 12
    if-nez v12, :cond_0

    .line 13
    .line 14
    new-instance v12, Lt0/w;

    .line 15
    .line 16
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    const/4 v8, 0x0

    .line 22
    move-object v0, v12

    .line 23
    move-object/from16 v1, p5

    .line 24
    .line 25
    move-wide v2, p1

    .line 26
    move-wide/from16 v4, p3

    .line 27
    .line 28
    invoke-direct/range {v0 .. v8}, Lt0/l;-><init>(Ljava/lang/String;JJJLjava/io/File;)V

    .line 29
    .line 30
    .line 31
    return-object v12

    .line 32
    :cond_0
    :goto_0
    new-instance v13, Lt0/w;

    .line 33
    .line 34
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    const/4 v8, 0x0

    .line 40
    iget-object v1, v12, Lt0/n;->b:Ljava/lang/String;

    .line 41
    .line 42
    const-wide/16 v4, -0x1

    .line 43
    .line 44
    move-object v0, v13

    .line 45
    move-wide v2, p1

    .line 46
    invoke-direct/range {v0 .. v8}, Lt0/l;-><init>(Ljava/lang/String;JJJLjava/io/File;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, v12, Lt0/n;->c:Ljava/util/TreeSet;

    .line 50
    .line 51
    invoke-virtual {v0, v13}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Lt0/w;

    .line 56
    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    iget-wide v2, v1, Lt0/l;->H:J

    .line 60
    .line 61
    iget-wide v4, v1, Lt0/l;->I:J

    .line 62
    .line 63
    add-long/2addr v2, v4

    .line 64
    cmp-long v4, v2, p1

    .line 65
    .line 66
    if-lez v4, :cond_1

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_1
    invoke-virtual {v0, v13}, Ljava/util/TreeSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Lt0/w;

    .line 74
    .line 75
    if-eqz v0, :cond_3

    .line 76
    .line 77
    iget-wide v0, v0, Lt0/l;->H:J

    .line 78
    .line 79
    sub-long/2addr v0, p1

    .line 80
    const-wide/16 v2, -0x1

    .line 81
    .line 82
    cmp-long v4, v9, v2

    .line 83
    .line 84
    if-nez v4, :cond_2

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_2
    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->min(JJ)J

    .line 88
    .line 89
    .line 90
    move-result-wide v0

    .line 91
    :goto_1
    move-wide v4, v0

    .line 92
    goto :goto_2

    .line 93
    :cond_3
    move-wide v4, v9

    .line 94
    :goto_2
    new-instance v13, Lt0/w;

    .line 95
    .line 96
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    const/4 v8, 0x0

    .line 102
    iget-object v1, v12, Lt0/n;->b:Ljava/lang/String;

    .line 103
    .line 104
    move-object v0, v13

    .line 105
    move-wide v2, p1

    .line 106
    invoke-direct/range {v0 .. v8}, Lt0/l;-><init>(Ljava/lang/String;JJJLjava/io/File;)V

    .line 107
    .line 108
    .line 109
    move-object v1, v13

    .line 110
    :goto_3
    iget-boolean v0, v1, Lt0/l;->J:Z

    .line 111
    .line 112
    if-eqz v0, :cond_4

    .line 113
    .line 114
    iget-object v0, v1, Lt0/l;->K:Ljava/io/File;

    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 120
    .line 121
    .line 122
    move-result-wide v2

    .line 123
    iget-wide v4, v1, Lt0/l;->I:J

    .line 124
    .line 125
    cmp-long v0, v2, v4

    .line 126
    .line 127
    if-eqz v0, :cond_4

    .line 128
    .line 129
    invoke-virtual {p0}, Lt0/v;->k()V

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_4
    return-object v1
.end method

.method public final i(Ljava/io/File;Z[Ljava/io/File;Ljava/util/HashMap;)V
    .locals 9

    .line 1
    if-eqz p3, :cond_8

    .line 2
    .line 3
    array-length v0, p3

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_4

    .line 7
    :cond_0
    array-length p1, p3

    .line 8
    const/4 v0, 0x0

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-ge v1, p1, :cond_7

    .line 11
    .line 12
    aget-object v8, p3, v1

    .line 13
    .line 14
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    if-eqz p2, :cond_1

    .line 19
    .line 20
    const/16 v3, 0x2e

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const/4 v4, -0x1

    .line 27
    if-ne v3, v4, :cond_1

    .line 28
    .line 29
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {p0, v8, v0, v2, p4}, Lt0/v;->i(Ljava/io/File;Z[Ljava/io/File;Ljava/util/HashMap;)V

    .line 34
    .line 35
    .line 36
    goto :goto_3

    .line 37
    :cond_1
    if-eqz p2, :cond_2

    .line 38
    .line 39
    const-string v3, "cached_content_index.exi"

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-nez v3, :cond_6

    .line 46
    .line 47
    const-string v3, ".uid"

    .line 48
    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_2

    .line 54
    .line 55
    goto :goto_3

    .line 56
    :cond_2
    if-eqz p4, :cond_3

    .line 57
    .line 58
    invoke-virtual {p4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    check-cast v2, Lt0/i;

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    const/4 v2, 0x0

    .line 66
    :goto_1
    if-eqz v2, :cond_4

    .line 67
    .line 68
    iget-wide v3, v2, Lt0/i;->a:J

    .line 69
    .line 70
    iget-wide v5, v2, Lt0/i;->b:J

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_4
    const-wide/16 v2, -0x1

    .line 74
    .line 75
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    move-wide v5, v4

    .line 81
    move-wide v3, v2

    .line 82
    :goto_2
    iget-object v7, p0, Lt0/v;->c:Ll/x;

    .line 83
    .line 84
    move-object v2, v8

    .line 85
    invoke-static/range {v2 .. v7}, Lt0/w;->a(Ljava/io/File;JJLl/x;)Lt0/w;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    if-eqz v2, :cond_5

    .line 90
    .line 91
    invoke-virtual {p0, v2}, Lt0/v;->b(Lt0/w;)V

    .line 92
    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_5
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 96
    .line 97
    .line 98
    :cond_6
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_7
    return-void

    .line 102
    :cond_8
    :goto_4
    if-nez p2, :cond_9

    .line 103
    .line 104
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 105
    .line 106
    .line 107
    :cond_9
    return-void
.end method

.method public final declared-synchronized j(Lt0/l;)V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lt0/v;->c:Ll/x;

    .line 3
    .line 4
    iget-object v1, p1, Lt0/l;->G:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Ll/x;->g(Ljava/lang/String;)Lt0/n;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-wide v1, p1, Lt0/l;->H:J

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    :goto_0
    iget-object v3, v0, Lt0/n;->d:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-ge p1, v4, :cond_1

    .line 23
    .line 24
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    check-cast v4, Lt0/m;

    .line 29
    .line 30
    iget-wide v4, v4, Lt0/m;->a:J

    .line 31
    .line 32
    cmp-long v6, v4, v1

    .line 33
    .line 34
    if-nez v6, :cond_0

    .line 35
    .line 36
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lt0/v;->c:Ll/x;

    .line 40
    .line 41
    iget-object v0, v0, Lt0/n;->b:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Ll/x;->l(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    monitor-exit p0

    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    goto :goto_1

    .line 53
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 57
    .line 58
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 59
    .line 60
    .line 61
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    :goto_1
    monitor-exit p0

    .line 63
    throw p1
.end method

.method public final k()V
    .locals 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lt0/v;->c:Ll/x;

    .line 7
    .line 8
    iget-object v2, v1, Ll/x;->G:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v2, Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_2

    .line 29
    .line 30
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Lt0/n;

    .line 35
    .line 36
    iget-object v3, v3, Lt0/n;->c:Ljava/util/TreeSet;

    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_0

    .line 47
    .line 48
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    check-cast v4, Lt0/l;

    .line 53
    .line 54
    iget-object v5, v4, Lt0/l;->K:Ljava/io/File;

    .line 55
    .line 56
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v5}, Ljava/io/File;->length()J

    .line 60
    .line 61
    .line 62
    move-result-wide v5

    .line 63
    iget-wide v7, v4, Lt0/l;->I:J

    .line 64
    .line 65
    cmp-long v9, v5, v7

    .line 66
    .line 67
    if-eqz v9, :cond_1

    .line 68
    .line 69
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    const/4 v2, 0x0

    .line 74
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-ge v2, v3, :cond_7

    .line 79
    .line 80
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    check-cast v3, Lt0/l;

    .line 85
    .line 86
    iget-object v4, v3, Lt0/l;->G:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v1, v4}, Ll/x;->g(Ljava/lang/String;)Lt0/n;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    if-eqz v4, :cond_6

    .line 93
    .line 94
    iget-object v5, v4, Lt0/n;->c:Ljava/util/TreeSet;

    .line 95
    .line 96
    invoke-virtual {v5, v3}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    if-eqz v5, :cond_6

    .line 101
    .line 102
    iget-object v5, v3, Lt0/l;->K:Ljava/io/File;

    .line 103
    .line 104
    if-eqz v5, :cond_3

    .line 105
    .line 106
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 107
    .line 108
    .line 109
    :cond_3
    iget-object v6, p0, Lt0/v;->d:Lt0/j;

    .line 110
    .line 111
    if-eqz v6, :cond_4

    .line 112
    .line 113
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    :try_start_0
    iget-object v7, v6, Lt0/j;->b:Ljava/lang/String;

    .line 121
    .line 122
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 123
    .line 124
    .line 125
    :try_start_1
    iget-object v7, v6, Lt0/j;->a:Lr0/a;

    .line 126
    .line 127
    invoke-interface {v7}, Lr0/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 128
    .line 129
    .line 130
    move-result-object v7

    .line 131
    iget-object v6, v6, Lt0/j;->b:Ljava/lang/String;

    .line 132
    .line 133
    const-string v8, "name = ?"

    .line 134
    .line 135
    filled-new-array {v5}, [Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v9

    .line 139
    invoke-virtual {v7, v6, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 140
    .line 141
    .line 142
    goto :goto_2

    .line 143
    :catch_0
    move-exception v6

    .line 144
    :try_start_2
    new-instance v7, LI0/u;

    .line 145
    .line 146
    invoke-direct {v7, v6}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 147
    .line 148
    .line 149
    throw v7
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 150
    :catch_1
    const-string v6, "Failed to remove file index entry for: "

    .line 151
    .line 152
    const-string v7, "SimpleCache"

    .line 153
    .line 154
    invoke-static {v6, v5, v7}, Lcom/google/protobuf/U2;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    :cond_4
    :goto_2
    iget-object v4, v4, Lt0/n;->b:Ljava/lang/String;

    .line 158
    .line 159
    invoke-virtual {v1, v4}, Ll/x;->l(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    iget-object v4, p0, Lt0/v;->e:Ljava/util/HashMap;

    .line 163
    .line 164
    iget-object v3, v3, Lt0/l;->G:Ljava/lang/String;

    .line 165
    .line 166
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    check-cast v3, Ljava/util/ArrayList;

    .line 171
    .line 172
    if-eqz v3, :cond_5

    .line 173
    .line 174
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 175
    .line 176
    .line 177
    move-result v4

    .line 178
    add-int/lit8 v4, v4, -0x1

    .line 179
    .line 180
    :goto_3
    if-ltz v4, :cond_5

    .line 181
    .line 182
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v5

    .line 186
    check-cast v5, Lt0/h;

    .line 187
    .line 188
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    .line 190
    .line 191
    add-int/lit8 v4, v4, -0x1

    .line 192
    .line 193
    goto :goto_3

    .line 194
    :cond_5
    iget-object v3, p0, Lt0/v;->b:Lt0/h;

    .line 195
    .line 196
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    .line 198
    .line 199
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 200
    .line 201
    goto :goto_1

    .line 202
    :cond_7
    return-void
.end method

.method public final declared-synchronized l(JJLjava/lang/String;)Lt0/w;
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lt0/v;->d()V

    .line 3
    .line 4
    .line 5
    invoke-virtual/range {p0 .. p5}, Lt0/v;->h(JJLjava/lang/String;)Lt0/w;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    iget-boolean p4, p3, Lt0/l;->J:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    if-eqz p4, :cond_0

    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-object p3

    .line 15
    :cond_0
    :try_start_1
    iget-object p4, p0, Lt0/v;->c:Ll/x;

    .line 16
    .line 17
    invoke-virtual {p4, p5}, Ll/x;->h(Ljava/lang/String;)Lt0/n;

    .line 18
    .line 19
    .line 20
    move-result-object p4

    .line 21
    iget-wide v0, p3, Lt0/l;->I:J

    .line 22
    .line 23
    const/4 p5, 0x0

    .line 24
    :goto_0
    iget-object v2, p4, Lt0/n;->d:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-ge p5, v3, :cond_4

    .line 31
    .line 32
    invoke-virtual {v2, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Lt0/m;

    .line 37
    .line 38
    iget-wide v3, v2, Lt0/m;->a:J

    .line 39
    .line 40
    const-wide/16 v5, -0x1

    .line 41
    .line 42
    cmp-long v7, v3, p1

    .line 43
    .line 44
    if-gtz v7, :cond_1

    .line 45
    .line 46
    iget-wide v7, v2, Lt0/m;->b:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    .line 48
    cmp-long v2, v7, v5

    .line 49
    .line 50
    if-eqz v2, :cond_3

    .line 51
    .line 52
    add-long/2addr v3, v7

    .line 53
    cmp-long v2, v3, p1

    .line 54
    .line 55
    if-lez v2, :cond_2

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    cmp-long v2, v0, v5

    .line 59
    .line 60
    if-eqz v2, :cond_3

    .line 61
    .line 62
    add-long v5, p1, v0

    .line 63
    .line 64
    cmp-long v2, v5, v3

    .line 65
    .line 66
    if-lez v2, :cond_2

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    add-int/lit8 p5, p5, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    :goto_1
    monitor-exit p0

    .line 73
    const/4 p1, 0x0

    .line 74
    return-object p1

    .line 75
    :cond_4
    :try_start_2
    new-instance p4, Lt0/m;

    .line 76
    .line 77
    invoke-direct {p4, p1, p2, v0, v1}, Lt0/m;-><init>(JJ)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    .line 82
    .line 83
    monitor-exit p0

    .line 84
    return-object p3

    .line 85
    :catchall_0
    move-exception p1

    .line 86
    monitor-exit p0

    .line 87
    throw p1
.end method
