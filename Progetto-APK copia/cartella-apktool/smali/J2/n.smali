.class public final LJ2/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final K:LF2/G;


# instance fields
.field public volatile G:Lcom/bumptech/glide/n;

.field public final H:LF2/G;

.field public final I:LJ2/g;

.field public final J:LJ2/l;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LF2/G;

    .line 2
    .line 3
    const/16 v1, 0x9

    .line 4
    .line 5
    invoke-direct {v0, v1}, LF2/G;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, LJ2/n;->K:LF2/G;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(LF2/G;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    sget-object p1, LJ2/n;->K:LF2/G;

    .line 8
    .line 9
    :goto_0
    iput-object p1, p0, LJ2/n;->H:LF2/G;

    .line 10
    .line 11
    new-instance v0, LJ2/l;

    .line 12
    .line 13
    invoke-direct {v0, p1}, LJ2/l;-><init>(LF2/G;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, LJ2/n;->J:LJ2/l;

    .line 17
    .line 18
    sget-boolean p1, LF2/v;->f:Z

    .line 19
    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    sget-boolean p1, LF2/v;->e:Z

    .line 23
    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    new-instance p1, LJ2/f;

    .line 28
    .line 29
    invoke-direct {p1}, LJ2/f;-><init>()V

    .line 30
    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_2
    :goto_1
    new-instance p1, LF2/G;

    .line 34
    .line 35
    const/4 v0, 0x7

    .line 36
    invoke-direct {p1, v0}, LF2/G;-><init>(I)V

    .line 37
    .line 38
    .line 39
    :goto_2
    iput-object p1, p0, LJ2/n;->I:LJ2/g;

    .line 40
    .line 41
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1

    .line 1
    instance-of v0, p0, Landroid/app/Activity;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Landroid/app/Activity;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    check-cast p0, Landroid/content/ContextWrapper;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, LJ2/n;->a(Landroid/content/Context;)Landroid/app/Activity;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_1
    const/4 p0, 0x0

    .line 24
    return-object p0
.end method


# virtual methods
.method public final b(Landroid/content/Context;)Lcom/bumptech/glide/n;
    .locals 7

    .line 1
    if-eqz p1, :cond_9

    .line 2
    .line 3
    sget-object v0, LP2/o;->a:[C

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-ne v0, v1, :cond_6

    .line 14
    .line 15
    instance-of v0, p1, Landroid/app/Application;

    .line 16
    .line 17
    if-nez v0, :cond_6

    .line 18
    .line 19
    instance-of v0, p1, LY/v;

    .line 20
    .line 21
    if-eqz v0, :cond_5

    .line 22
    .line 23
    move-object v2, p1

    .line 24
    check-cast v2, LY/v;

    .line 25
    .line 26
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const/4 v1, 0x0

    .line 35
    const/4 v3, 0x1

    .line 36
    if-ne p1, v0, :cond_0

    .line 37
    .line 38
    const/4 p1, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 p1, 0x0

    .line 41
    :goto_0
    xor-int/2addr p1, v3

    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p0, p1}, LJ2/n;->b(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    goto :goto_3

    .line 53
    :cond_1
    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-nez p1, :cond_4

    .line 58
    .line 59
    iget-object p1, p0, LJ2/n;->I:LJ2/g;

    .line 60
    .line 61
    invoke-interface {p1, v2}, LJ2/g;->c(Landroid/app/Activity;)V

    .line 62
    .line 63
    .line 64
    invoke-static {v2}, LJ2/n;->a(Landroid/content/Context;)Landroid/app/Activity;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    if-eqz p1, :cond_3

    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-nez p1, :cond_2

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    const/4 v6, 0x0

    .line 78
    goto :goto_2

    .line 79
    :cond_3
    :goto_1
    const/4 v6, 0x1

    .line 80
    :goto_2
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-static {p1}, Lcom/bumptech/glide/b;->a(Landroid/content/Context;)Lcom/bumptech/glide/b;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    iget-object p1, v2, LY/v;->X:Lf/S;

    .line 89
    .line 90
    invoke-virtual {p1}, Lf/S;->R()LY/K;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    iget-object v1, p0, LJ2/n;->J:LJ2/l;

    .line 95
    .line 96
    iget-object v4, v2, La/m;->J:Le0/o;

    .line 97
    .line 98
    invoke-virtual/range {v1 .. v6}, LJ2/l;->a(Landroid/content/Context;Lcom/bumptech/glide/b;Le0/o;LY/K;Z)Lcom/bumptech/glide/n;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    :goto_3
    return-object p1

    .line 103
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 104
    .line 105
    const-string v0, "You cannot start a load for a destroyed activity"

    .line 106
    .line 107
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw p1

    .line 111
    :cond_5
    instance-of v0, p1, Landroid/content/ContextWrapper;

    .line 112
    .line 113
    if-eqz v0, :cond_6

    .line 114
    .line 115
    move-object v0, p1

    .line 116
    check-cast v0, Landroid/content/ContextWrapper;

    .line 117
    .line 118
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    if-eqz v1, :cond_6

    .line 127
    .line 128
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {p0, p1}, LJ2/n;->b(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    return-object p1

    .line 137
    :cond_6
    iget-object v0, p0, LJ2/n;->G:Lcom/bumptech/glide/n;

    .line 138
    .line 139
    if-nez v0, :cond_8

    .line 140
    .line 141
    monitor-enter p0

    .line 142
    :try_start_0
    iget-object v0, p0, LJ2/n;->G:Lcom/bumptech/glide/n;

    .line 143
    .line 144
    if-nez v0, :cond_7

    .line 145
    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-static {v0}, Lcom/bumptech/glide/b;->a(Landroid/content/Context;)Lcom/bumptech/glide/b;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    iget-object v1, p0, LJ2/n;->H:LF2/G;

    .line 155
    .line 156
    new-instance v2, LF2/G;

    .line 157
    .line 158
    const/4 v3, 0x5

    .line 159
    invoke-direct {v2, v3}, LF2/G;-><init>(I)V

    .line 160
    .line 161
    .line 162
    new-instance v3, LF2/G;

    .line 163
    .line 164
    const/16 v4, 0x8

    .line 165
    .line 166
    invoke-direct {v3, v4}, LF2/G;-><init>(I)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    new-instance v1, Lcom/bumptech/glide/n;

    .line 177
    .line 178
    invoke-direct {v1, v0, v2, v3, p1}, Lcom/bumptech/glide/n;-><init>(Lcom/bumptech/glide/b;LJ2/h;LJ2/o;Landroid/content/Context;)V

    .line 179
    .line 180
    .line 181
    iput-object v1, p0, LJ2/n;->G:Lcom/bumptech/glide/n;

    .line 182
    .line 183
    goto :goto_4

    .line 184
    :catchall_0
    move-exception p1

    .line 185
    goto :goto_5

    .line 186
    :cond_7
    :goto_4
    monitor-exit p0

    .line 187
    goto :goto_6

    .line 188
    :goto_5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    throw p1

    .line 190
    :cond_8
    :goto_6
    iget-object p1, p0, LJ2/n;->G:Lcom/bumptech/glide/n;

    .line 191
    .line 192
    return-object p1

    .line 193
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 194
    .line 195
    const-string v0, "You cannot start a load on a null Context"

    .line 196
    .line 197
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    throw p1
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method
