.class public final Lb7/J1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lpe/hf/black20/SplashActivity;


# direct methods
.method public synthetic constructor <init>(Lpe/hf/black20/SplashActivity;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lb7/J1;->a:I

    invoke-direct {p0, p1, v0}, Lb7/J1;-><init>(Lpe/hf/black20/SplashActivity;I)V

    return-void
.end method

.method public synthetic constructor <init>(Lpe/hf/black20/SplashActivity;I)V
    .locals 0

    .line 2
    iput p2, p0, Lb7/J1;->a:I

    iput-object p1, p0, Lb7/J1;->b:Lpe/hf/black20/SplashActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lpe/hf/black20/SplashActivity;Ljava/lang/Object;)V
    .locals 0

    .line 3
    const/4 p2, 0x1

    iput p2, p0, Lb7/J1;->a:I

    invoke-direct {p0, p1, p2}, Lb7/J1;-><init>(Lpe/hf/black20/SplashActivity;I)V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, Lb7/J1;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lb7/J1;->b:Lpe/hf/black20/SplashActivity;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p1, [Ljava/lang/Void;

    .line 10
    .line 11
    iget-object p1, v2, Lpe/hf/black20/SplashActivity;->W:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v0, v2, Lpe/hf/black20/SplashActivity;->X:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v4, v2, Lpe/hf/black20/SplashActivity;->Y:Ljava/lang/String;

    .line 21
    .line 22
    const-string v5, "/token/createtoken?userid="

    .line 23
    .line 24
    const-string v6, "&password="

    .line 25
    .line 26
    invoke-static {v3, v4, v5, p1, v6}, Lt/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    new-instance v0, LF2/G;

    .line 37
    .line 38
    const/4 v3, 0x5

    .line 39
    invoke-direct {v0, v3}, LF2/G;-><init>(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1}, LF2/G;->E(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-nez p1, :cond_0

    .line 47
    .line 48
    const-string p1, "-2"

    .line 49
    .line 50
    iput-object p1, v2, Lpe/hf/black20/SplashActivity;->a0:Ljava/lang/String;

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const-string v0, "token="

    .line 54
    .line 55
    const-string v3, ""

    .line 56
    .line 57
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iput-object p1, v2, Lpe/hf/black20/SplashActivity;->a0:Ljava/lang/String;

    .line 62
    .line 63
    :goto_0
    return-object v1

    .line 64
    :pswitch_0
    check-cast p1, [Ljava/lang/Void;

    .line 65
    .line 66
    iget-object p1, v2, Lpe/hf/black20/SplashActivity;->J:Lh7/i;

    .line 67
    .line 68
    iget-object p1, p1, Lh7/i;->e:Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {p1}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    const/4 v0, 0x1

    .line 75
    :try_start_0
    new-instance v3, Ljava/net/URL;

    .line 76
    .line 77
    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentLength()I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    invoke-virtual {v3}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    new-instance v4, Ljava/io/File;

    .line 96
    .line 97
    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 109
    .line 110
    .line 111
    move-result v5

    .line 112
    if-nez v5, :cond_1

    .line 113
    .line 114
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 115
    .line 116
    .line 117
    :cond_1
    new-instance v5, Ljava/io/FileOutputStream;

    .line 118
    .line 119
    new-instance v6, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v4, "/tv_m3u.txt"

    .line 128
    .line 129
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    const/16 v4, 0x400

    .line 140
    .line 141
    new-array v4, v4, [B

    .line 142
    .line 143
    const/4 v6, 0x0

    .line 144
    const-wide/16 v7, 0x0

    .line 145
    .line 146
    const/4 v9, 0x0

    .line 147
    :goto_1
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    .line 148
    .line 149
    .line 150
    move-result v10

    .line 151
    const/4 v11, -0x1

    .line 152
    if-eq v10, v11, :cond_3

    .line 153
    .line 154
    int-to-long v11, v10

    .line 155
    add-long/2addr v7, v11

    .line 156
    long-to-int v11, v7

    .line 157
    mul-int/lit8 v11, v11, 0x64

    .line 158
    .line 159
    div-int/2addr v11, p1

    .line 160
    rem-int/lit8 v12, v11, 0xa

    .line 161
    .line 162
    if-nez v12, :cond_2

    .line 163
    .line 164
    if-eq v9, v11, :cond_2

    .line 165
    .line 166
    move v9, v11

    .line 167
    :cond_2
    invoke-virtual {v5, v4, v6, v10}, Ljava/io/FileOutputStream;->write([BII)V

    .line 168
    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    .line 176
    .line 177
    goto :goto_2

    .line 178
    :catch_0
    iput-boolean v0, v2, Lpe/hf/black20/SplashActivity;->b0:Z

    .line 179
    .line 180
    invoke-static {}, Lpe/hf/black20/util/Methods;->B()V

    .line 181
    .line 182
    .line 183
    goto :goto_2

    .line 184
    :catch_1
    iput-boolean v0, v2, Lpe/hf/black20/SplashActivity;->b0:Z

    .line 185
    .line 186
    invoke-static {}, Lpe/hf/black20/util/Methods;->B()V

    .line 187
    .line 188
    .line 189
    goto :goto_2

    .line 190
    :catch_2
    iput-boolean v0, v2, Lpe/hf/black20/SplashActivity;->b0:Z

    .line 191
    .line 192
    invoke-static {}, Lpe/hf/black20/util/Methods;->B()V

    .line 193
    .line 194
    .line 195
    :goto_2
    return-object v1

    .line 196
    nop

    .line 197
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget v0, p0, Lb7/J1;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lb7/J1;->b:Lpe/hf/black20/SplashActivity;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Ljava/lang/String;

    .line 9
    .line 10
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, v1, Lpe/hf/black20/SplashActivity;->a0:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const/4 v0, 0x3

    .line 20
    if-le p1, v0, :cond_0

    .line 21
    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v0, "SplashActivity - LOGIN Success ------------------------------"

    .line 25
    .line 26
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->a0:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const-string v0, "XCIPTV_TAG"

    .line 39
    .line 40
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    iget-object p1, v1, Lpe/hf/black20/SplashActivity;->I:Lc7/a;

    .line 44
    .line 45
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v2, "ORT_PROFILE"

    .line 50
    .line 51
    const-string v3, "Default (XC)"

    .line 52
    .line 53
    invoke-virtual {v0, v2, v3}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget-object v2, v1, Lpe/hf/black20/SplashActivity;->W:Ljava/lang/String;

    .line 58
    .line 59
    invoke-static {v2}, Lpe/hf/black20/encryption/Encrypt;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    iget-object v3, v1, Lpe/hf/black20/SplashActivity;->X:Ljava/lang/String;

    .line 64
    .line 65
    invoke-static {v3}, Lpe/hf/black20/encryption/Encrypt;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->Y:Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {v4}, Lpe/hf/black20/encryption/Encrypt;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-virtual {p1, v0, v2, v3, v4}, Lc7/a;->O(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object p1, v1, Lpe/hf/black20/SplashActivity;->G:Lpe/hf/black20/SplashActivity;

    .line 79
    .line 80
    const-string v0, "pe.hf.black20"

    .line 81
    .line 82
    const/4 v2, 0x0

    .line 83
    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    iput-object p1, v1, Lpe/hf/black20/SplashActivity;->H:Landroid/content/SharedPreferences;

    .line 88
    .line 89
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->a0:Ljava/lang/String;

    .line 94
    .line 95
    invoke-static {v0}, Lpe/hf/black20/encryption/Encrypt;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    const-string v2, "token"

    .line 100
    .line 101
    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 102
    .line 103
    .line 104
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 105
    .line 106
    .line 107
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1}, Lpe/hf/black20/SplashActivity;->d()V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {v1}, Lpe/hf/black20/SplashActivity;->l()V

    .line 115
    .line 116
    .line 117
    :goto_0
    return-void

    .line 118
    :pswitch_0
    check-cast p1, Ljava/lang/Void;

    .line 119
    .line 120
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    iget-boolean p1, v1, Lpe/hf/black20/SplashActivity;->b0:Z

    .line 124
    .line 125
    if-nez p1, :cond_1

    .line 126
    .line 127
    invoke-virtual {v1}, Lpe/hf/black20/SplashActivity;->d()V

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_1
    invoke-virtual {v1}, Lpe/hf/black20/SplashActivity;->l()V

    .line 132
    .line 133
    .line 134
    :goto_1
    return-void

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onPreExecute()V
    .locals 3

    .line 1
    iget v0, p0, Lb7/J1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lb7/J1;->b:Lpe/hf/black20/SplashActivity;

    .line 10
    .line 11
    iget v1, v0, Lpe/hf/black20/SplashActivity;->i0:I

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    if-ne v1, v2, :cond_0

    .line 15
    .line 16
    iget-object v1, v0, Lpe/hf/black20/SplashActivity;->J:Lh7/i;

    .line 17
    .line 18
    iget-object v1, v1, Lh7/i;->e:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v1}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iput-object v1, v0, Lpe/hf/black20/SplashActivity;->Y:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v1, v0, Lpe/hf/black20/SplashActivity;->J:Lh7/i;

    .line 27
    .line 28
    iget-object v1, v1, Lh7/i;->c:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v1}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iput-object v1, v0, Lpe/hf/black20/SplashActivity;->W:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v1, v0, Lpe/hf/black20/SplashActivity;->J:Lh7/i;

    .line 37
    .line 38
    iget-object v1, v1, Lh7/i;->d:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v1}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iput-object v1, v0, Lpe/hf/black20/SplashActivity;->X:Ljava/lang/String;

    .line 45
    .line 46
    :cond_0
    return-void

    .line 47
    :pswitch_0
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
