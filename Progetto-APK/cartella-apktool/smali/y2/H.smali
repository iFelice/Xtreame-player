.class public final Ly2/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly2/h;
.implements Ly2/g;


# instance fields
.field public final G:Ly2/i;

.field public final H:Ly2/g;

.field public volatile I:I

.field public volatile J:Ly2/e;

.field public volatile K:Ljava/lang/Object;

.field public volatile L:LC2/B;

.field public volatile M:Ly2/f;


# direct methods
.method public constructor <init>(Ly2/i;Ly2/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ly2/H;->G:Ly2/i;

    .line 5
    .line 6
    iput-object p2, p0, Ly2/H;->H:Ly2/g;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lw2/i;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/e;Lw2/a;)V
    .locals 1

    .line 1
    iget-object p4, p0, Ly2/H;->H:Ly2/g;

    .line 2
    .line 3
    iget-object v0, p0, Ly2/H;->L:LC2/B;

    .line 4
    .line 5
    iget-object v0, v0, LC2/B;->c:Lcom/bumptech/glide/load/data/e;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/bumptech/glide/load/data/e;->d()Lw2/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {p4, p1, p2, p3, v0}, Ly2/g;->a(Lw2/i;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/e;Lw2/a;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method public final c()Z
    .locals 6

    .line 1
    iget-object v0, p0, Ly2/H;->K:Ljava/lang/Object;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Ly2/H;->K:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object v2, p0, Ly2/H;->K:Ljava/lang/Object;

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p0, v0}, Ly2/H;->e(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    return v1

    .line 18
    :catch_0
    move-exception v0

    .line 19
    const-string v3, "SourceGenerator"

    .line 20
    .line 21
    const/4 v4, 0x3

    .line 22
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-eqz v4, :cond_0

    .line 27
    .line 28
    const-string v4, "Failed to properly rewind or write data to cache"

    .line 29
    .line 30
    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Ly2/H;->J:Ly2/e;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    iget-object v0, p0, Ly2/H;->J:Ly2/e;

    .line 38
    .line 39
    invoke-virtual {v0}, Ly2/e;->c()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    return v1

    .line 46
    :cond_1
    iput-object v2, p0, Ly2/H;->J:Ly2/e;

    .line 47
    .line 48
    iput-object v2, p0, Ly2/H;->L:LC2/B;

    .line 49
    .line 50
    const/4 v0, 0x0

    .line 51
    :cond_2
    :goto_0
    if-nez v0, :cond_4

    .line 52
    .line 53
    iget v2, p0, Ly2/H;->I:I

    .line 54
    .line 55
    iget-object v3, p0, Ly2/H;->G:Ly2/i;

    .line 56
    .line 57
    invoke-virtual {v3}, Ly2/i;->b()Ljava/util/ArrayList;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-ge v2, v3, :cond_4

    .line 66
    .line 67
    iget-object v2, p0, Ly2/H;->G:Ly2/i;

    .line 68
    .line 69
    invoke-virtual {v2}, Ly2/i;->b()Ljava/util/ArrayList;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    iget v3, p0, Ly2/H;->I:I

    .line 74
    .line 75
    add-int/lit8 v4, v3, 0x1

    .line 76
    .line 77
    iput v4, p0, Ly2/H;->I:I

    .line 78
    .line 79
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    check-cast v2, LC2/B;

    .line 84
    .line 85
    iput-object v2, p0, Ly2/H;->L:LC2/B;

    .line 86
    .line 87
    iget-object v2, p0, Ly2/H;->L:LC2/B;

    .line 88
    .line 89
    if-eqz v2, :cond_2

    .line 90
    .line 91
    iget-object v2, p0, Ly2/H;->G:Ly2/i;

    .line 92
    .line 93
    iget-object v2, v2, Ly2/i;->p:Ly2/o;

    .line 94
    .line 95
    iget-object v3, p0, Ly2/H;->L:LC2/B;

    .line 96
    .line 97
    iget-object v3, v3, LC2/B;->c:Lcom/bumptech/glide/load/data/e;

    .line 98
    .line 99
    invoke-interface {v3}, Lcom/bumptech/glide/load/data/e;->d()Lw2/a;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    check-cast v2, Ly2/n;

    .line 104
    .line 105
    iget v2, v2, Ly2/n;->d:I

    .line 106
    .line 107
    packed-switch v2, :pswitch_data_0

    .line 108
    .line 109
    .line 110
    sget-object v2, Lw2/a;->H:Lw2/a;

    .line 111
    .line 112
    if-ne v3, v2, :cond_3

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :pswitch_0
    sget-object v2, Lw2/a;->I:Lw2/a;

    .line 116
    .line 117
    if-eq v3, v2, :cond_3

    .line 118
    .line 119
    sget-object v2, Lw2/a;->K:Lw2/a;

    .line 120
    .line 121
    if-eq v3, v2, :cond_3

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_3
    :pswitch_1
    iget-object v2, p0, Ly2/H;->G:Ly2/i;

    .line 125
    .line 126
    iget-object v3, p0, Ly2/H;->L:LC2/B;

    .line 127
    .line 128
    iget-object v3, v3, LC2/B;->c:Lcom/bumptech/glide/load/data/e;

    .line 129
    .line 130
    invoke-interface {v3}, Lcom/bumptech/glide/load/data/e;->a()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    invoke-virtual {v2, v3}, Ly2/i;->c(Ljava/lang/Class;)Ly2/B;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    if-eqz v2, :cond_2

    .line 139
    .line 140
    :goto_1
    iget-object v0, p0, Ly2/H;->L:LC2/B;

    .line 141
    .line 142
    iget-object v2, p0, Ly2/H;->L:LC2/B;

    .line 143
    .line 144
    iget-object v2, v2, LC2/B;->c:Lcom/bumptech/glide/load/data/e;

    .line 145
    .line 146
    iget-object v3, p0, Ly2/H;->G:Ly2/i;

    .line 147
    .line 148
    iget-object v3, v3, Ly2/i;->o:Lcom/bumptech/glide/g;

    .line 149
    .line 150
    new-instance v4, Lm2/l;

    .line 151
    .line 152
    const/16 v5, 0x9

    .line 153
    .line 154
    invoke-direct {v4, p0, v0, v5}, Lm2/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 155
    .line 156
    .line 157
    invoke-interface {v2, v3, v4}, Lcom/bumptech/glide/load/data/e;->e(Lcom/bumptech/glide/g;Lcom/bumptech/glide/load/data/d;)V

    .line 158
    .line 159
    .line 160
    const/4 v0, 0x1

    .line 161
    goto :goto_0

    .line 162
    :cond_4
    return v0

    .line 163
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Ly2/H;->L:LC2/B;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, LC2/B;->c:Lcom/bumptech/glide/load/data/e;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/bumptech/glide/load/data/e;->cancel()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final d(Lw2/i;Ljava/lang/Object;Lcom/bumptech/glide/load/data/e;Lw2/a;Lw2/i;)V
    .locals 6

    .line 1
    iget-object v0, p0, Ly2/H;->H:Ly2/g;

    .line 2
    .line 3
    iget-object p4, p0, Ly2/H;->L:LC2/B;

    .line 4
    .line 5
    iget-object p4, p4, LC2/B;->c:Lcom/bumptech/glide/load/data/e;

    .line 6
    .line 7
    invoke-interface {p4}, Lcom/bumptech/glide/load/data/e;->d()Lw2/a;

    .line 8
    .line 9
    .line 10
    move-result-object v4

    .line 11
    move-object v1, p1

    .line 12
    move-object v2, p2

    .line 13
    move-object v3, p3

    .line 14
    move-object v5, p1

    .line 15
    invoke-interface/range {v0 .. v5}, Ly2/g;->d(Lw2/i;Ljava/lang/Object;Lcom/bumptech/glide/load/data/e;Lw2/a;Lw2/i;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final e(Ljava/lang/Object;)Z
    .locals 13

    .line 1
    const-string v0, "SourceGenerator"

    .line 2
    .line 3
    const-string v1, "Attempt to write: "

    .line 4
    .line 5
    const-string v2, "Finished encoding source to cache, key: "

    .line 6
    .line 7
    sget v3, LP2/i;->b:I

    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 10
    .line 11
    .line 12
    move-result-wide v3

    .line 13
    const/4 v5, 0x0

    .line 14
    :try_start_0
    iget-object v6, p0, Ly2/H;->G:Ly2/i;

    .line 15
    .line 16
    iget-object v6, v6, Ly2/i;->c:Lcom/bumptech/glide/f;

    .line 17
    .line 18
    invoke-virtual {v6}, Lcom/bumptech/glide/f;->b()Lcom/bumptech/glide/j;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    invoke-virtual {v6, p1}, Lcom/bumptech/glide/j;->h(Ljava/lang/Object;)Lcom/bumptech/glide/load/data/g;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    invoke-interface {v6}, Lcom/bumptech/glide/load/data/g;->a()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    iget-object v8, p0, Ly2/H;->G:Ly2/i;

    .line 31
    .line 32
    invoke-virtual {v8, v7}, Ly2/i;->e(Ljava/lang/Object;)Lw2/c;

    .line 33
    .line 34
    .line 35
    move-result-object v8

    .line 36
    new-instance v9, Ly2/k;

    .line 37
    .line 38
    iget-object v10, p0, Ly2/H;->G:Ly2/i;

    .line 39
    .line 40
    iget-object v10, v10, Ly2/i;->i:Lw2/l;

    .line 41
    .line 42
    invoke-direct {v9, v8, v7, v10}, Ly2/k;-><init>(Lw2/c;Ljava/lang/Object;Lw2/l;)V

    .line 43
    .line 44
    .line 45
    new-instance v7, Ly2/f;

    .line 46
    .line 47
    iget-object v10, p0, Ly2/H;->L:LC2/B;

    .line 48
    .line 49
    iget-object v10, v10, LC2/B;->a:Lw2/i;

    .line 50
    .line 51
    iget-object v11, p0, Ly2/H;->G:Ly2/i;

    .line 52
    .line 53
    iget-object v12, v11, Ly2/i;->n:Lw2/i;

    .line 54
    .line 55
    invoke-direct {v7, v10, v12}, Ly2/f;-><init>(Lw2/i;Lw2/i;)V

    .line 56
    .line 57
    .line 58
    iget-object v10, v11, Ly2/i;->h:LJ3/k;

    .line 59
    .line 60
    invoke-virtual {v10}, LJ3/k;->a()LA2/a;

    .line 61
    .line 62
    .line 63
    move-result-object v10

    .line 64
    invoke-interface {v10, v7, v9}, LA2/a;->c(Lw2/i;Ly2/k;)V

    .line 65
    .line 66
    .line 67
    const/4 v9, 0x2

    .line 68
    invoke-static {v0, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 69
    .line 70
    .line 71
    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    const-string v11, ", data: "

    .line 73
    .line 74
    if-eqz v9, :cond_0

    .line 75
    .line 76
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v2, ", encoder: "

    .line 91
    .line 92
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v2, ", duration: "

    .line 99
    .line 100
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-static {v3, v4}, LP2/i;->a(J)D

    .line 104
    .line 105
    .line 106
    move-result-wide v2

    .line 107
    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :catchall_0
    move-exception p1

    .line 119
    goto :goto_1

    .line 120
    :cond_0
    :goto_0
    invoke-interface {v10, v7}, LA2/a;->a(Lw2/i;)Ljava/io/File;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    const/4 v3, 0x1

    .line 125
    if-eqz v2, :cond_1

    .line 126
    .line 127
    iput-object v7, p0, Ly2/H;->M:Ly2/f;

    .line 128
    .line 129
    new-instance p1, Ly2/e;

    .line 130
    .line 131
    iget-object v0, p0, Ly2/H;->L:LC2/B;

    .line 132
    .line 133
    iget-object v0, v0, LC2/B;->a:Lw2/i;

    .line 134
    .line 135
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    iget-object v1, p0, Ly2/H;->G:Ly2/i;

    .line 140
    .line 141
    invoke-direct {p1, v0, v1, p0}, Ly2/e;-><init>(Ljava/util/List;Ly2/i;Ly2/g;)V

    .line 142
    .line 143
    .line 144
    iput-object p1, p0, Ly2/H;->J:Ly2/e;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    .line 146
    iget-object p1, p0, Ly2/H;->L:LC2/B;

    .line 147
    .line 148
    iget-object p1, p1, LC2/B;->c:Lcom/bumptech/glide/load/data/e;

    .line 149
    .line 150
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/e;->c()V

    .line 151
    .line 152
    .line 153
    return v3

    .line 154
    :cond_1
    const/4 v2, 0x3

    .line 155
    :try_start_2
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    if-eqz v2, :cond_2

    .line 160
    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    iget-object v1, p0, Ly2/H;->M:Ly2/f;

    .line 167
    .line 168
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string p1, " to the disk cache failed, maybe the disk cache is disabled? Trying to decode the data directly..."

    .line 178
    .line 179
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 187
    .line 188
    .line 189
    :cond_2
    :try_start_3
    iget-object p1, p0, Ly2/H;->H:Ly2/g;

    .line 190
    .line 191
    iget-object v0, p0, Ly2/H;->L:LC2/B;

    .line 192
    .line 193
    iget-object v7, v0, LC2/B;->a:Lw2/i;

    .line 194
    .line 195
    invoke-interface {v6}, Lcom/bumptech/glide/load/data/g;->a()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v8

    .line 199
    iget-object v0, p0, Ly2/H;->L:LC2/B;

    .line 200
    .line 201
    iget-object v9, v0, LC2/B;->c:Lcom/bumptech/glide/load/data/e;

    .line 202
    .line 203
    iget-object v0, p0, Ly2/H;->L:LC2/B;

    .line 204
    .line 205
    iget-object v0, v0, LC2/B;->c:Lcom/bumptech/glide/load/data/e;

    .line 206
    .line 207
    invoke-interface {v0}, Lcom/bumptech/glide/load/data/e;->d()Lw2/a;

    .line 208
    .line 209
    .line 210
    move-result-object v10

    .line 211
    iget-object v0, p0, Ly2/H;->L:LC2/B;

    .line 212
    .line 213
    iget-object v11, v0, LC2/B;->a:Lw2/i;

    .line 214
    .line 215
    move-object v6, p1

    .line 216
    invoke-interface/range {v6 .. v11}, Ly2/g;->d(Lw2/i;Ljava/lang/Object;Lcom/bumptech/glide/load/data/e;Lw2/a;Lw2/i;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 217
    .line 218
    .line 219
    return v5

    .line 220
    :catchall_1
    move-exception p1

    .line 221
    const/4 v5, 0x1

    .line 222
    :goto_1
    if-nez v5, :cond_3

    .line 223
    .line 224
    iget-object v0, p0, Ly2/H;->L:LC2/B;

    .line 225
    .line 226
    iget-object v0, v0, LC2/B;->c:Lcom/bumptech/glide/load/data/e;

    .line 227
    .line 228
    invoke-interface {v0}, Lcom/bumptech/glide/load/data/e;->c()V

    .line 229
    .line 230
    .line 231
    :cond_3
    throw p1
.end method
