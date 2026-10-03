.class public abstract LD3/l;
.super Lcom/google/android/gms/internal/cast/o;
.source "SourceFile"


# virtual methods
.method public final Y(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 6

    .line 1
    const/4 p2, 0x1

    .line 2
    if-eq p1, p2, :cond_8

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eq p1, v0, :cond_6

    .line 7
    .line 8
    const/4 v2, 0x3

    .line 9
    if-eq p1, v2, :cond_1

    .line 10
    .line 11
    const/4 v0, 0x4

    .line 12
    if-eq p1, v0, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 16
    .line 17
    .line 18
    const p1, 0xbdfcb8

    .line 19
    .line 20
    .line 21
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    .line 23
    .line 24
    goto/16 :goto_2

    .line 25
    .line 26
    :cond_1
    move-object p1, p0

    .line 27
    check-cast p1, Lcom/google/android/gms/internal/cast/c;

    .line 28
    .line 29
    new-array v2, v1, [Ljava/lang/Object;

    .line 30
    .line 31
    sget-object v3, Lcom/google/android/gms/internal/cast/c;->J:LH3/b;

    .line 32
    .line 33
    iget-object v4, v3, LH3/b;->a:Ljava/lang/String;

    .line 34
    .line 35
    const-string v5, "onAppEnteredBackground"

    .line 36
    .line 37
    invoke-virtual {v3, v5, v2}, LH3/b;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    iput v0, p1, Lcom/google/android/gms/internal/cast/c;->I:I

    .line 45
    .line 46
    iget-object p1, p1, Lcom/google/android/gms/internal/cast/c;->H:Ljava/util/Set;

    .line 47
    .line 48
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_5

    .line 57
    .line 58
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Lcom/google/android/gms/internal/cast/m;

    .line 63
    .line 64
    iget-object v0, v0, Lcom/google/android/gms/internal/cast/m;->a:Lcom/google/android/gms/internal/cast/n;

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    new-array v2, v1, [Ljava/lang/Object;

    .line 70
    .line 71
    sget-object v3, Lcom/google/android/gms/internal/cast/n;->f:LH3/b;

    .line 72
    .line 73
    const-string v4, "Stopping RouteDiscovery."

    .line 74
    .line 75
    invoke-virtual {v3, v4, v2}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    iget-object v2, v0, Lcom/google/android/gms/internal/cast/n;->c:Ljava/util/Map;

    .line 79
    .line 80
    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 81
    .line 82
    .line 83
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    if-ne v2, v3, :cond_4

    .line 92
    .line 93
    iget-object v2, v0, Lcom/google/android/gms/internal/cast/n;->e:Lm2/c;

    .line 94
    .line 95
    iget-object v3, v2, Lm2/c;->I:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v3, LE1/H;

    .line 98
    .line 99
    if-nez v3, :cond_3

    .line 100
    .line 101
    iget-object v3, v2, Lm2/c;->H:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v3, Landroid/content/Context;

    .line 104
    .line 105
    invoke-static {v3}, LE1/H;->d(Landroid/content/Context;)LE1/H;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    iput-object v3, v2, Lm2/c;->I:Ljava/lang/Object;

    .line 110
    .line 111
    :cond_3
    iget-object v2, v2, Lm2/c;->I:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast v2, LE1/H;

    .line 114
    .line 115
    if-eqz v2, :cond_2

    .line 116
    .line 117
    invoke-virtual {v2, v0}, LE1/H;->e(LE1/q;)V

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_4
    new-instance v2, LX3/d;

    .line 122
    .line 123
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    invoke-direct {v2, v3, p2}, LX3/d;-><init>(Landroid/os/Looper;I)V

    .line 128
    .line 129
    .line 130
    new-instance v3, Lcom/google/android/gms/internal/cast/k;

    .line 131
    .line 132
    invoke-direct {v3, v0, v1}, Lcom/google/android/gms/internal/cast/k;-><init>(Lcom/google/android/gms/internal/cast/n;I)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_6
    move-object p1, p0

    .line 144
    check-cast p1, Lcom/google/android/gms/internal/cast/c;

    .line 145
    .line 146
    new-array v0, v1, [Ljava/lang/Object;

    .line 147
    .line 148
    sget-object v1, Lcom/google/android/gms/internal/cast/c;->J:LH3/b;

    .line 149
    .line 150
    iget-object v2, v1, LH3/b;->a:Ljava/lang/String;

    .line 151
    .line 152
    const-string v3, "onAppEnteredForeground"

    .line 153
    .line 154
    invoke-virtual {v1, v3, v0}, LH3/b;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    iput p2, p1, Lcom/google/android/gms/internal/cast/c;->I:I

    .line 162
    .line 163
    iget-object p1, p1, Lcom/google/android/gms/internal/cast/c;->H:Ljava/util/Set;

    .line 164
    .line 165
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    if-eqz v0, :cond_7

    .line 174
    .line 175
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    check-cast v0, Lcom/google/android/gms/internal/cast/m;

    .line 180
    .line 181
    iget-object v0, v0, Lcom/google/android/gms/internal/cast/m;->a:Lcom/google/android/gms/internal/cast/n;

    .line 182
    .line 183
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/n;->f()V

    .line 184
    .line 185
    .line 186
    goto :goto_1

    .line 187
    :cond_7
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_8
    move-object p1, p0

    .line 192
    check-cast p1, Lcom/google/android/gms/internal/cast/c;

    .line 193
    .line 194
    new-instance v0, LR3/b;

    .line 195
    .line 196
    invoke-direct {v0, p1}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    .line 201
    .line 202
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/cast/u;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 203
    .line 204
    .line 205
    :goto_2
    return p2
.end method
