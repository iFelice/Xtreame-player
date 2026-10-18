.class public final Lcom/google/android/gms/internal/ads/Py;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public G:Lcom/google/android/gms/internal/ads/Gz;

.field public H:Lcom/google/android/gms/internal/ads/J;

.field public I:Ljava/net/HttpURLConnection;


# direct methods
.method public static k()Lcom/google/android/gms/internal/ads/Py;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/Py;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/b;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/b;-><init>(I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/Py;->G:Lcom/google/android/gms/internal/ads/Gz;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/Py;->H:Lcom/google/android/gms/internal/ads/J;

    .line 16
    .line 17
    return-object v0
.end method


# virtual methods
.method public final E(Lcom/google/android/gms/internal/ads/J;)Ljava/net/HttpURLConnection;
    .locals 8

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/Oy;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Oy;-><init>(II)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Py;->G:Lcom/google/android/gms/internal/ads/Gz;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Py;->H:Lcom/google/android/gms/internal/ads/J;

    .line 11
    .line 12
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Py;->G:Lcom/google/android/gms/internal/ads/Gz;

    .line 13
    .line 14
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Gz;->zza()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Ljava/lang/Integer;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Py;->H:Lcom/google/android/gms/internal/ads/J;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    sget-object v0, Lcom/google/android/gms/internal/ads/kf;->L:Ljava/util/Set;

    .line 29
    .line 30
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 31
    .line 32
    iget-object v0, v0, Lk3/l;->o:Lcom/google/android/gms/internal/ads/Aa;

    .line 33
    .line 34
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->x:Lcom/google/android/gms/internal/ads/J7;

    .line 35
    .line 36
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 37
    .line 38
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Ljava/lang/Integer;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    new-instance v1, Ljava/net/URL;

    .line 51
    .line 52
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/J;->H:Ljava/lang/String;

    .line 53
    .line 54
    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const/4 p1, 0x0

    .line 58
    const/4 v3, 0x0

    .line 59
    :goto_0
    add-int/2addr v3, v2

    .line 60
    const/16 v4, 0x14

    .line 61
    .line 62
    if-gt v3, v4, :cond_6

    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-virtual {v4, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 72
    .line 73
    .line 74
    instance-of v5, v4, Ljava/net/HttpURLConnection;

    .line 75
    .line 76
    if-eqz v5, :cond_5

    .line 77
    .line 78
    check-cast v4, Ljava/net/HttpURLConnection;

    .line 79
    .line 80
    new-instance v5, Lp3/g;

    .line 81
    .line 82
    invoke-direct {v5}, Lp3/g;-><init>()V

    .line 83
    .line 84
    .line 85
    const/4 v6, 0x0

    .line 86
    invoke-virtual {v5, v4, v6}, Lp3/g;->a(Ljava/net/HttpURLConnection;[B)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4, p1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    invoke-virtual {v5, v4, v6}, Lp3/g;->b(Ljava/net/HttpURLConnection;I)V

    .line 97
    .line 98
    .line 99
    div-int/lit8 v6, v6, 0x64

    .line 100
    .line 101
    const/4 v5, 0x3

    .line 102
    if-ne v6, v5, :cond_4

    .line 103
    .line 104
    const-string v5, "Location"

    .line 105
    .line 106
    invoke-virtual {v4, v5}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    if-eqz v5, :cond_3

    .line 111
    .line 112
    new-instance v6, Ljava/net/URL;

    .line 113
    .line 114
    invoke-direct {v6, v1, v5}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v6}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    if-eqz v1, :cond_2

    .line 122
    .line 123
    const-string v7, "http"

    .line 124
    .line 125
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v7

    .line 129
    if-nez v7, :cond_1

    .line 130
    .line 131
    const-string v7, "https"

    .line 132
    .line 133
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v7

    .line 137
    if-eqz v7, :cond_0

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_0
    const-string p1, "Unsupported scheme: "

    .line 141
    .line 142
    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    new-instance v0, Ljava/io/IOException;

    .line 147
    .line 148
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw v0

    .line 152
    :cond_1
    :goto_1
    const-string v1, "Redirecting to "

    .line 153
    .line 154
    invoke-virtual {v1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-static {v1}, Lp3/h;->b(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 162
    .line 163
    .line 164
    move-object v1, v6

    .line 165
    goto :goto_0

    .line 166
    :cond_2
    new-instance p1, Ljava/io/IOException;

    .line 167
    .line 168
    const-string v0, "Protocol is null"

    .line 169
    .line 170
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    throw p1

    .line 174
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 175
    .line 176
    const-string v0, "Missing Location header in redirect"

    .line 177
    .line 178
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    throw p1

    .line 182
    :cond_4
    iput-object v4, p0, Lcom/google/android/gms/internal/ads/Py;->I:Ljava/net/HttpURLConnection;

    .line 183
    .line 184
    return-object v4

    .line 185
    :cond_5
    new-instance p1, Ljava/io/IOException;

    .line 186
    .line 187
    const-string v0, "Invalid protocol."

    .line 188
    .line 189
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    throw p1

    .line 193
    :cond_6
    new-instance p1, Ljava/io/IOException;

    .line 194
    .line 195
    const-string v0, "Too many redirects (20)"

    .line 196
    .line 197
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    throw p1
.end method

.method public final close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Py;->I:Ljava/net/HttpURLConnection;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
