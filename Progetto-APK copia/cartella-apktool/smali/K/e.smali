.class public abstract LK/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lr/l;

.field public static final b:LK/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lr/l;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Lr/l;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, LK/e;->a:Lr/l;

    .line 8
    .line 9
    new-instance v0, LK/b;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {v0, v1}, LK/b;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, LK/e;->b:LK/b;

    .line 16
    .line 17
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;)LK/k;
    .locals 6

    .line 1
    const-string v0, "FontProvider.getFontFamilyResult"

    .line 2
    .line 3
    invoke-static {v0}, LJ6/r;->b(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-ge v2, v3, :cond_1

    .line 18
    .line 19
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, LK/f;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-static {v4, v3, v5}, LK/e;->b(Landroid/content/pm/PackageManager;LK/f;Landroid/content/res/Resources;)Landroid/content/pm/ProviderInfo;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    if-nez v4, :cond_0

    .line 38
    .line 39
    new-instance p0, LK/k;

    .line 40
    .line 41
    invoke-direct {p0}, LK/k;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 45
    .line 46
    .line 47
    return-object p0

    .line 48
    :cond_0
    :try_start_1
    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {p0, v3, v4}, LK/e;->c(Landroid/content/Context;LK/f;Ljava/lang/String;)[LK/l;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    add-int/lit8 v2, v2, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    new-instance p0, LK/k;

    .line 63
    .line 64
    invoke-direct {p0, v1, v0, v1}, LK/k;-><init>(ILjava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    .line 66
    .line 67
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 68
    .line 69
    .line 70
    return-object p0

    .line 71
    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 72
    .line 73
    .line 74
    throw p0
.end method

.method public static b(Landroid/content/pm/PackageManager;LK/f;Landroid/content/res/Resources;)Landroid/content/pm/ProviderInfo;
    .locals 9

    .line 1
    const-string v0, "Found content provider "

    .line 2
    .line 3
    const-string v1, "No package found for authority: "

    .line 4
    .line 5
    const-string v2, "FontProvider.getProvider"

    .line 6
    .line 7
    invoke-static {v2}, LJ6/r;->b(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object v2, p1, LK/f;->d:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    iget-object v3, p1, LK/f;->a:Ljava/lang/String;

    .line 13
    .line 14
    iget-object p1, p1, LK/f;->b:Ljava/lang/String;

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    :try_start_1
    invoke-static {p2, v4}, Lcom/bumptech/glide/c;->s(Landroid/content/res/Resources;I)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    :goto_0
    new-instance p2, LK/d;

    .line 25
    .line 26
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v3, p2, LK/d;->a:Ljava/lang/String;

    .line 30
    .line 31
    iput-object p1, p2, LK/d;->b:Ljava/lang/String;

    .line 32
    .line 33
    iput-object v2, p2, LK/d;->c:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    .line 35
    sget-object v5, LK/e;->a:Lr/l;

    .line 36
    .line 37
    :try_start_2
    invoke-virtual {v5, p2}, Lr/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    check-cast v6, Landroid/content/pm/ProviderInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    .line 43
    if-eqz v6, :cond_1

    .line 44
    .line 45
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 46
    .line 47
    .line 48
    return-object v6

    .line 49
    :cond_1
    :try_start_3
    invoke-virtual {p0, v3, v4}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    if-eqz v6, :cond_8

    .line 54
    .line 55
    iget-object v1, v6, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_7

    .line 62
    .line 63
    iget-object p1, v6, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 64
    .line 65
    const/16 v0, 0x40

    .line 66
    .line 67
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 72
    .line 73
    new-instance p1, Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .line 77
    .line 78
    array-length v0, p0

    .line 79
    const/4 v1, 0x0

    .line 80
    :goto_1
    if-ge v1, v0, :cond_2

    .line 81
    .line 82
    aget-object v3, p0, v1

    .line 83
    .line 84
    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 89
    .line 90
    .line 91
    add-int/lit8 v1, v1, 0x1

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_2
    sget-object p0, LK/e;->b:LK/b;

    .line 95
    .line 96
    :try_start_4
    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 97
    .line 98
    .line 99
    const/4 v0, 0x0

    .line 100
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-ge v0, v1, :cond_6

    .line 105
    .line 106
    new-instance v1, Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    check-cast v3, Ljava/util/Collection;

    .line 113
    .line 114
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 115
    .line 116
    .line 117
    invoke-static {v1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 125
    .line 126
    .line 127
    move-result v7

    .line 128
    if-eq v3, v7, :cond_3

    .line 129
    .line 130
    goto :goto_4

    .line 131
    :cond_3
    const/4 v3, 0x0

    .line 132
    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 133
    .line 134
    .line 135
    move-result v7

    .line 136
    if-ge v3, v7, :cond_5

    .line 137
    .line 138
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v7

    .line 142
    check-cast v7, [B

    .line 143
    .line 144
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v8

    .line 148
    check-cast v8, [B

    .line 149
    .line 150
    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([B[B)Z

    .line 151
    .line 152
    .line 153
    move-result v7

    .line 154
    if-nez v7, :cond_4

    .line 155
    .line 156
    :goto_4
    add-int/lit8 v0, v0, 0x1

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_5
    invoke-virtual {v5, p2, v6}, Lr/l;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 163
    .line 164
    .line 165
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 166
    .line 167
    .line 168
    return-object v6

    .line 169
    :catchall_0
    move-exception p0

    .line 170
    goto :goto_5

    .line 171
    :cond_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 172
    .line 173
    .line 174
    const/4 p0, 0x0

    .line 175
    return-object p0

    .line 176
    :cond_7
    :try_start_5
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    .line 177
    .line 178
    new-instance p2, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    const-string v0, ", but package was not "

    .line 187
    .line 188
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    throw p0

    .line 202
    :cond_8
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    .line 203
    .line 204
    new-instance p1, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 220
    :goto_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 221
    .line 222
    .line 223
    throw p0
.end method

.method public static c(Landroid/content/Context;LK/f;Ljava/lang/String;)[LK/l;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const-string v2, "result_code"

    .line 6
    .line 7
    const-string v3, "font_italic"

    .line 8
    .line 9
    const-string v4, "font_weight"

    .line 10
    .line 11
    const-string v5, "font_ttc_index"

    .line 12
    .line 13
    const-string v6, "file_id"

    .line 14
    .line 15
    const-string v7, "_id"

    .line 16
    .line 17
    const-string v8, "content"

    .line 18
    .line 19
    const-string v9, "FontProvider.query"

    .line 20
    .line 21
    invoke-static {v9}, LJ6/r;->b(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :try_start_0
    new-instance v9, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    new-instance v10, Landroid/net/Uri$Builder;

    .line 30
    .line 31
    invoke-direct {v10}, Landroid/net/Uri$Builder;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v10, v8}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 35
    .line 36
    .line 37
    move-result-object v10

    .line 38
    invoke-virtual {v10, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 39
    .line 40
    .line 41
    move-result-object v10

    .line 42
    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 43
    .line 44
    .line 45
    move-result-object v10

    .line 46
    new-instance v11, Landroid/net/Uri$Builder;

    .line 47
    .line 48
    invoke-direct {v11}, Landroid/net/Uri$Builder;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v11, v8}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    invoke-virtual {v8, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    const-string v8, "file"

    .line 60
    .line 61
    invoke-virtual {v1, v8}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 70
    .line 71
    const/16 v11, 0x18

    .line 72
    .line 73
    const/4 v15, 0x1

    .line 74
    const/4 v14, 0x0

    .line 75
    if-ge v8, v11, :cond_0

    .line 76
    .line 77
    new-instance v8, LK/c;

    .line 78
    .line 79
    invoke-direct {v8, v0, v10, v14}, LK/c;-><init>(Landroid/content/Context;Landroid/net/Uri;I)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_0
    new-instance v8, LK/c;

    .line 84
    .line 85
    invoke-direct {v8, v0, v10, v15}, LK/c;-><init>(Landroid/content/Context;Landroid/net/Uri;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 86
    .line 87
    .line 88
    :goto_0
    const/4 v0, 0x7

    .line 89
    const/16 v18, 0x0

    .line 90
    .line 91
    :try_start_1
    new-array v13, v0, [Ljava/lang/String;

    .line 92
    .line 93
    aput-object v7, v13, v14

    .line 94
    .line 95
    aput-object v6, v13, v15

    .line 96
    .line 97
    const/4 v0, 0x2

    .line 98
    aput-object v5, v13, v0

    .line 99
    .line 100
    const-string v0, "font_variation_settings"

    .line 101
    .line 102
    const/4 v11, 0x3

    .line 103
    aput-object v0, v13, v11

    .line 104
    .line 105
    const/4 v0, 0x4

    .line 106
    aput-object v4, v13, v0

    .line 107
    .line 108
    const/4 v0, 0x5

    .line 109
    aput-object v3, v13, v0

    .line 110
    .line 111
    const/4 v0, 0x6

    .line 112
    aput-object v2, v13, v0

    .line 113
    .line 114
    const-string v0, "ContentQueryWrapper.query"

    .line 115
    .line 116
    invoke-static {v0}, LJ6/r;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 117
    .line 118
    .line 119
    :try_start_2
    const-string v0, "query = ?"

    .line 120
    .line 121
    new-array v12, v15, [Ljava/lang/String;

    .line 122
    .line 123
    move-object/from16 v11, p1

    .line 124
    .line 125
    iget-object v11, v11, LK/f;->c:Ljava/lang/String;

    .line 126
    .line 127
    aput-object v11, v12, v14

    .line 128
    .line 129
    iget v11, v8, LK/c;->a:I

    .line 130
    .line 131
    move-object/from16 v19, v9

    .line 132
    .line 133
    const-string v9, "Unable to query the content provider"

    .line 134
    .line 135
    move-object/from16 p2, v1

    .line 136
    .line 137
    const-string v1, "FontsProvider"

    .line 138
    .line 139
    iget-object v14, v8, LK/c;->b:Landroid/content/ContentProviderClient;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 140
    .line 141
    const/16 v17, 0x0

    .line 142
    .line 143
    const/16 v20, 0x0

    .line 144
    .line 145
    packed-switch v11, :pswitch_data_0

    .line 146
    .line 147
    .line 148
    if-nez v14, :cond_1

    .line 149
    .line 150
    move-object/from16 p0, v8

    .line 151
    .line 152
    const/4 v8, 0x1

    .line 153
    goto :goto_1

    .line 154
    :cond_1
    move-object v11, v14

    .line 155
    move-object/from16 v21, v12

    .line 156
    .line 157
    move-object v12, v10

    .line 158
    move-object v14, v0

    .line 159
    move-object/from16 p0, v8

    .line 160
    .line 161
    const/4 v8, 0x1

    .line 162
    move-object/from16 v15, v21

    .line 163
    .line 164
    move-object/from16 v16, v20

    .line 165
    .line 166
    :try_start_3
    invoke-virtual/range {v11 .. v17}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 167
    .line 168
    .line 169
    move-result-object v18
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 170
    goto :goto_1

    .line 171
    :catch_0
    move-exception v0

    .line 172
    move-object v11, v0

    .line 173
    :try_start_4
    invoke-static {v1, v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 174
    .line 175
    .line 176
    :goto_1
    move-object/from16 v1, v18

    .line 177
    .line 178
    goto :goto_2

    .line 179
    :pswitch_0
    move-object/from16 p0, v8

    .line 180
    .line 181
    move-object/from16 v21, v12

    .line 182
    .line 183
    const/4 v8, 0x1

    .line 184
    if-nez v14, :cond_2

    .line 185
    .line 186
    goto :goto_1

    .line 187
    :cond_2
    move-object v11, v14

    .line 188
    move-object v12, v10

    .line 189
    move-object v14, v0

    .line 190
    move-object/from16 v15, v21

    .line 191
    .line 192
    move-object/from16 v16, v20

    .line 193
    .line 194
    :try_start_5
    invoke-virtual/range {v11 .. v17}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 195
    .line 196
    .line 197
    move-result-object v18
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 198
    goto :goto_1

    .line 199
    :catch_1
    move-exception v0

    .line 200
    move-object v11, v0

    .line 201
    :try_start_6
    invoke-static {v1, v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 202
    .line 203
    .line 204
    goto :goto_1

    .line 205
    :goto_2
    :try_start_7
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 206
    .line 207
    .line 208
    if-eqz v1, :cond_8

    .line 209
    .line 210
    :try_start_8
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    if-lez v0, :cond_8

    .line 215
    .line 216
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    new-instance v9, Ljava/util/ArrayList;

    .line 221
    .line 222
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .line 224
    .line 225
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 226
    .line 227
    .line 228
    move-result v2

    .line 229
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 230
    .line 231
    .line 232
    move-result v6

    .line 233
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 234
    .line 235
    .line 236
    move-result v5

    .line 237
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 238
    .line 239
    .line 240
    move-result v4

    .line 241
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 242
    .line 243
    .line 244
    move-result v3

    .line 245
    :goto_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 246
    .line 247
    .line 248
    move-result v7

    .line 249
    if-eqz v7, :cond_9

    .line 250
    .line 251
    const/4 v7, -0x1

    .line 252
    if-eq v0, v7, :cond_3

    .line 253
    .line 254
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 255
    .line 256
    .line 257
    move-result v14

    .line 258
    move/from16 v20, v14

    .line 259
    .line 260
    goto :goto_5

    .line 261
    :catchall_0
    move-exception v0

    .line 262
    :goto_4
    move-object/from16 v8, p0

    .line 263
    .line 264
    move-object/from16 v18, v1

    .line 265
    .line 266
    goto/16 :goto_f

    .line 267
    .line 268
    :cond_3
    const/16 v20, 0x0

    .line 269
    .line 270
    :goto_5
    if-eq v5, v7, :cond_4

    .line 271
    .line 272
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    .line 273
    .line 274
    .line 275
    move-result v14

    .line 276
    move/from16 v17, v14

    .line 277
    .line 278
    goto :goto_6

    .line 279
    :cond_4
    const/16 v17, 0x0

    .line 280
    .line 281
    :goto_6
    if-ne v6, v7, :cond_5

    .line 282
    .line 283
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 284
    .line 285
    .line 286
    move-result-wide v11

    .line 287
    invoke-static {v10, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 288
    .line 289
    .line 290
    move-result-object v11

    .line 291
    move-object/from16 v13, p2

    .line 292
    .line 293
    :goto_7
    move-object/from16 v16, v11

    .line 294
    .line 295
    goto :goto_8

    .line 296
    :cond_5
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    .line 297
    .line 298
    .line 299
    move-result-wide v11

    .line 300
    move-object/from16 v13, p2

    .line 301
    .line 302
    invoke-static {v13, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 303
    .line 304
    .line 305
    move-result-object v11

    .line 306
    goto :goto_7

    .line 307
    :goto_8
    if-eq v4, v7, :cond_6

    .line 308
    .line 309
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 310
    .line 311
    .line 312
    move-result v11

    .line 313
    move/from16 v18, v11

    .line 314
    .line 315
    goto :goto_9

    .line 316
    :cond_6
    const/16 v11, 0x190

    .line 317
    .line 318
    const/16 v18, 0x190

    .line 319
    .line 320
    :goto_9
    if-eq v3, v7, :cond_7

    .line 321
    .line 322
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 323
    .line 324
    .line 325
    move-result v7

    .line 326
    if-ne v7, v8, :cond_7

    .line 327
    .line 328
    const/16 v19, 0x1

    .line 329
    .line 330
    goto :goto_a

    .line 331
    :cond_7
    const/16 v19, 0x0

    .line 332
    .line 333
    :goto_a
    new-instance v7, LK/l;

    .line 334
    .line 335
    move-object v15, v7

    .line 336
    invoke-direct/range {v15 .. v20}, LK/l;-><init>(Landroid/net/Uri;IIZI)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 340
    .line 341
    .line 342
    move-object/from16 p2, v13

    .line 343
    .line 344
    goto :goto_3

    .line 345
    :cond_8
    move-object/from16 v9, v19

    .line 346
    .line 347
    :cond_9
    if-eqz v1, :cond_a

    .line 348
    .line 349
    :try_start_9
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 350
    .line 351
    .line 352
    :cond_a
    move-object/from16 v8, p0

    .line 353
    .line 354
    goto :goto_b

    .line 355
    :catchall_1
    move-exception v0

    .line 356
    goto :goto_11

    .line 357
    :goto_b
    iget v0, v8, LK/c;->a:I

    .line 358
    .line 359
    iget-object v1, v8, LK/c;->b:Landroid/content/ContentProviderClient;

    .line 360
    .line 361
    packed-switch v0, :pswitch_data_1

    .line 362
    .line 363
    .line 364
    if-eqz v1, :cond_b

    .line 365
    .line 366
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 367
    .line 368
    .line 369
    :cond_b
    :goto_c
    const/4 v1, 0x0

    .line 370
    goto :goto_d

    .line 371
    :pswitch_1
    if-eqz v1, :cond_b

    .line 372
    .line 373
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 374
    .line 375
    .line 376
    goto :goto_c

    .line 377
    :goto_d
    new-array v0, v1, [LK/l;

    .line 378
    .line 379
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    check-cast v0, [LK/l;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 384
    .line 385
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 386
    .line 387
    .line 388
    return-object v0

    .line 389
    :catchall_2
    move-exception v0

    .line 390
    goto/16 :goto_4

    .line 391
    .line 392
    :catchall_3
    move-exception v0

    .line 393
    move-object/from16 v8, p0

    .line 394
    .line 395
    goto :goto_e

    .line 396
    :catchall_4
    move-exception v0

    .line 397
    :goto_e
    :try_start_a
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 398
    .line 399
    .line 400
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 401
    :catchall_5
    move-exception v0

    .line 402
    :goto_f
    if-eqz v18, :cond_c

    .line 403
    .line 404
    :try_start_b
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 405
    .line 406
    .line 407
    :cond_c
    iget v1, v8, LK/c;->a:I

    .line 408
    .line 409
    iget-object v2, v8, LK/c;->b:Landroid/content/ContentProviderClient;

    .line 410
    .line 411
    packed-switch v1, :pswitch_data_2

    .line 412
    .line 413
    .line 414
    if-eqz v2, :cond_d

    .line 415
    .line 416
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    .line 417
    .line 418
    .line 419
    goto :goto_10

    .line 420
    :pswitch_2
    if-eqz v2, :cond_d

    .line 421
    .line 422
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    .line 423
    .line 424
    .line 425
    :cond_d
    :goto_10
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 426
    :goto_11
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 427
    .line 428
    .line 429
    throw v0

    .line 430
    nop

    .line 431
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method
