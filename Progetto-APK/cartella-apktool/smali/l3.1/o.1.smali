.class public abstract Ll3/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ll3/X;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const-string v0, "com.google.android.gms.ads.internal.client.IClientApi"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    const-class v2, Ll3/n;

    .line 5
    .line 6
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    const-string v3, "com.google.android.gms.ads.internal.ClientApi"

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const/4 v3, 0x0

    .line 17
    new-array v4, v3, [Ljava/lang/Class;

    .line 18
    .line 19
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    new-array v4, v3, [Ljava/lang/Object;

    .line 24
    .line 25
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    instance-of v4, v2, Landroid/os/IBinder;

    .line 30
    .line 31
    if-nez v4, :cond_0

    .line 32
    .line 33
    const-string v0, "ClientApi class is not an instance of IBinder."

    .line 34
    .line 35
    invoke-static {v0}, Lp3/h;->g(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    check-cast v2, Landroid/os/IBinder;

    .line 40
    .line 41
    if-nez v2, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    instance-of v5, v4, Ll3/X;

    .line 49
    .line 50
    if-eqz v5, :cond_2

    .line 51
    .line 52
    check-cast v4, Ll3/X;

    .line 53
    .line 54
    :goto_0
    move-object v1, v4

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    new-instance v4, Ll3/V;

    .line 57
    .line 58
    invoke-direct {v4, v2, v0, v3}, Lcom/google/android/gms/internal/ads/y5;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catch_0
    const-string v0, "Failed to instantiate ClientApi class."

    .line 63
    .line 64
    invoke-static {v0}, Lp3/h;->g(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :goto_1
    sput-object v1, Ll3/o;->a:Ll3/X;

    .line 68
    .line 69
    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/Object;
.end method

.method public abstract b(Ll3/X;)Ljava/lang/Object;
.end method

.method public abstract c()Ljava/lang/Object;
.end method

.method public final d(Landroid/content/Context;Z)Ljava/lang/Object;
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p2, :cond_1

    .line 3
    .line 4
    sget-object v1, Ll3/p;->f:Ll3/p;

    .line 5
    .line 6
    iget-object v1, v1, Ll3/p;->a:Lp3/d;

    .line 7
    .line 8
    sget-object v1, LJ3/f;->b:LJ3/f;

    .line 9
    .line 10
    const v2, 0xbdfcb8

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1, v2}, LJ3/f;->c(Landroid/content/Context;I)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string p2, "Google Play Services is not available."

    .line 21
    .line 22
    invoke-static {p2}, Lp3/h;->b(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 p2, 0x1

    .line 26
    :cond_1
    :goto_0
    const-string v1, "com.google.android.gms.ads.dynamite"

    .line 27
    .line 28
    invoke-static {p1, v1}, LS3/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-static {p1, v1, v3}, LS3/c;->d(Landroid/content/Context;Ljava/lang/String;Z)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-le v2, v1, :cond_2

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    const/4 v1, 0x1

    .line 42
    :goto_1
    xor-int/2addr v1, v0

    .line 43
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Q7;->a(Landroid/content/Context;)V

    .line 44
    .line 45
    .line 46
    sget-object v2, Lcom/google/android/gms/internal/ads/n8;->a:Lcom/google/android/gms/internal/ads/f8;

    .line 47
    .line 48
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Ljava/lang/Boolean;

    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_3

    .line 59
    .line 60
    :goto_2
    const/4 p2, 0x0

    .line 61
    goto :goto_3

    .line 62
    :cond_3
    sget-object v2, Lcom/google/android/gms/internal/ads/n8;->b:Lcom/google/android/gms/internal/ads/f8;

    .line 63
    .line 64
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Ljava/lang/Boolean;

    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_4

    .line 75
    .line 76
    const/4 p2, 0x1

    .line 77
    const/4 v3, 0x1

    .line 78
    goto :goto_3

    .line 79
    :cond_4
    or-int/2addr p2, v1

    .line 80
    move v3, p2

    .line 81
    goto :goto_2

    .line 82
    :goto_3
    const-string v1, "Cannot invoke remote loader."

    .line 83
    .line 84
    const-string v2, "ClientApi class cannot be loaded."

    .line 85
    .line 86
    const-string v4, "Cannot invoke local loader using ClientApi class."

    .line 87
    .line 88
    sget-object v5, Ll3/o;->a:Ll3/X;

    .line 89
    .line 90
    const/4 v6, 0x0

    .line 91
    if-eqz v3, :cond_6

    .line 92
    .line 93
    if-eqz v5, :cond_5

    .line 94
    .line 95
    :try_start_0
    invoke-virtual {p0, v5}, Ll3/o;->b(Ll3/X;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    goto :goto_5

    .line 100
    :catch_0
    move-exception p1

    .line 101
    invoke-static {v4, p1}, Lp3/h;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    .line 103
    .line 104
    :goto_4
    move-object p1, v6

    .line 105
    goto :goto_5

    .line 106
    :cond_5
    invoke-static {v2}, Lp3/h;->g(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    goto :goto_4

    .line 110
    :goto_5
    if-nez p1, :cond_a

    .line 111
    .line 112
    if-nez p2, :cond_a

    .line 113
    .line 114
    :try_start_1
    invoke-virtual {p0}, Ll3/o;->c()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v6
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 118
    goto :goto_6

    .line 119
    :catch_1
    move-exception p1

    .line 120
    invoke-static {v1, p1}, Lp3/h;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    .line 122
    .line 123
    :goto_6
    move-object p1, v6

    .line 124
    goto :goto_8

    .line 125
    :cond_6
    :try_start_2
    invoke-virtual {p0}, Ll3/o;->c()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 129
    goto :goto_7

    .line 130
    :catch_2
    move-exception p2

    .line 131
    invoke-static {v1, p2}, Lp3/h;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 132
    .line 133
    .line 134
    move-object p2, v6

    .line 135
    :goto_7
    if-nez p2, :cond_7

    .line 136
    .line 137
    sget-object v1, Lcom/google/android/gms/internal/ads/B8;->a:Lcom/google/android/gms/internal/ads/f8;

    .line 138
    .line 139
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    check-cast v1, Ljava/lang/Long;

    .line 144
    .line 145
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    sget-object v3, Ll3/p;->f:Ll3/p;

    .line 150
    .line 151
    iget-object v7, v3, Ll3/p;->e:Ljava/util/Random;

    .line 152
    .line 153
    invoke-virtual {v7, v1}, Ljava/util/Random;->nextInt(I)I

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    if-nez v1, :cond_7

    .line 158
    .line 159
    new-instance v1, Landroid/os/Bundle;

    .line 160
    .line 161
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 162
    .line 163
    .line 164
    const-string v7, "action"

    .line 165
    .line 166
    const-string v8, "dynamite_load"

    .line 167
    .line 168
    invoke-virtual {v1, v7, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    const-string v7, "is_missing"

    .line 172
    .line 173
    invoke-virtual {v1, v7, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 174
    .line 175
    .line 176
    iget-object v0, v3, Ll3/p;->d:Lp3/a;

    .line 177
    .line 178
    iget-object v0, v0, Lp3/a;->G:Ljava/lang/String;

    .line 179
    .line 180
    iget-object v3, v3, Ll3/p;->a:Lp3/d;

    .line 181
    .line 182
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 183
    .line 184
    .line 185
    new-instance v7, LC2/g;

    .line 186
    .line 187
    const/4 v8, 0x7

    .line 188
    invoke-direct {v7, v3, v8}, LC2/g;-><init>(Ljava/lang/Object;I)V

    .line 189
    .line 190
    .line 191
    invoke-static {p1, v0, v1, v7}, Lp3/d;->n(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lp3/c;)V

    .line 192
    .line 193
    .line 194
    :cond_7
    if-nez p2, :cond_9

    .line 195
    .line 196
    if-eqz v5, :cond_8

    .line 197
    .line 198
    :try_start_3
    invoke-virtual {p0, v5}, Ll3/o;->b(Ll3/X;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v6
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 202
    goto :goto_6

    .line 203
    :catch_3
    move-exception p1

    .line 204
    invoke-static {v4, p1}, Lp3/h;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 205
    .line 206
    .line 207
    goto :goto_6

    .line 208
    :cond_8
    invoke-static {v2}, Lp3/h;->g(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    goto :goto_6

    .line 212
    :cond_9
    move-object p1, p2

    .line 213
    :cond_a
    :goto_8
    if-nez p1, :cond_b

    .line 214
    .line 215
    invoke-virtual {p0}, Ll3/o;->a()Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    :cond_b
    return-object p1
.end method
