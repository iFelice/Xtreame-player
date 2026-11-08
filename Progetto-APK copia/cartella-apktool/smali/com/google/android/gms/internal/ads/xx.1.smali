.class public final Lcom/google/android/gms/internal/ads/xx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ll/s1;

.field public final b:Lcom/google/android/gms/internal/ads/Lx;

.field public c:Lcom/google/android/gms/internal/ads/ay;

.field public d:Lcom/google/android/gms/internal/ads/Px;

.field public e:Z

.field public f:Z

.field public final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(LE3/a;Ll/s1;Ljava/lang/String;)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v2, Lcom/google/android/gms/internal/ads/Lx;

    .line 7
    .line 8
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/Lx;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/xx;->b:Lcom/google/android/gms/internal/ads/Lx;

    .line 12
    .line 13
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/xx;->e:Z

    .line 14
    .line 15
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/xx;->f:Z

    .line 16
    .line 17
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/xx;->a:Ll/s1;

    .line 18
    .line 19
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/xx;->g:Ljava/lang/String;

    .line 20
    .line 21
    new-instance v2, Lcom/google/android/gms/internal/ads/ay;

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/xx;->c:Lcom/google/android/gms/internal/ads/ay;

    .line 28
    .line 29
    iget-object v2, p2, Ll/s1;->g:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v2, Lcom/google/android/gms/internal/ads/wx;

    .line 32
    .line 33
    sget-object v3, Lcom/google/android/gms/internal/ads/wx;->H:Lcom/google/android/gms/internal/ads/wx;

    .line 34
    .line 35
    if-eq v2, v3, :cond_1

    .line 36
    .line 37
    sget-object v3, Lcom/google/android/gms/internal/ads/wx;->I:Lcom/google/android/gms/internal/ads/wx;

    .line 38
    .line 39
    if-ne v2, v3, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/ads/Rx;

    .line 43
    .line 44
    iget-object p2, p2, Ll/s1;->d:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p2, Ljava/util/Map;

    .line 47
    .line 48
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-direct {v2, p3, p2}, Lcom/google/android/gms/internal/ads/Rx;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 53
    .line 54
    .line 55
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/xx;->d:Lcom/google/android/gms/internal/ads/Px;

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    :goto_0
    new-instance v2, Lcom/google/android/gms/internal/ads/Qx;

    .line 59
    .line 60
    iget-object p2, p2, Ll/s1;->b:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast p2, Landroid/webkit/WebView;

    .line 63
    .line 64
    invoke-direct {v2, p3}, Lcom/google/android/gms/internal/ads/Px;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 68
    .line 69
    .line 70
    move-result-object p3

    .line 71
    invoke-virtual {p3}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    .line 72
    .line 73
    .line 74
    move-result p3

    .line 75
    if-nez p3, :cond_2

    .line 76
    .line 77
    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 78
    .line 79
    .line 80
    move-result-object p3

    .line 81
    invoke-virtual {p3, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 82
    .line 83
    .line 84
    :cond_2
    new-instance p3, Lcom/google/android/gms/internal/ads/ay;

    .line 85
    .line 86
    invoke-direct {p3, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    iput-object p3, v2, Lcom/google/android/gms/internal/ads/Px;->b:Lcom/google/android/gms/internal/ads/ay;

    .line 90
    .line 91
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/xx;->d:Lcom/google/android/gms/internal/ads/Px;

    .line 92
    .line 93
    :goto_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/xx;->d:Lcom/google/android/gms/internal/ads/Px;

    .line 94
    .line 95
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/Px;->f()V

    .line 96
    .line 97
    .line 98
    sget-object p2, Lcom/google/android/gms/internal/ads/Hx;->c:Lcom/google/android/gms/internal/ads/Hx;

    .line 99
    .line 100
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/Hx;->a:Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/xx;->d:Lcom/google/android/gms/internal/ads/Px;

    .line 106
    .line 107
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/Px;->a()Landroid/webkit/WebView;

    .line 108
    .line 109
    .line 110
    move-result-object p3

    .line 111
    new-instance v2, Lorg/json/JSONObject;

    .line 112
    .line 113
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 114
    .line 115
    .line 116
    iget-object v3, p1, LE3/a;->H:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v3, Lcom/google/android/gms/internal/ads/Cx;

    .line 119
    .line 120
    const-string v4, "impressionOwner"

    .line 121
    .line 122
    invoke-static {v2, v4, v3}, Lcom/google/android/gms/internal/ads/Sx;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    iget-object v3, p1, LE3/a;->I:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast v3, Lcom/google/android/gms/internal/ads/Cx;

    .line 128
    .line 129
    const-string v4, "mediaEventsOwner"

    .line 130
    .line 131
    invoke-static {v2, v4, v3}, Lcom/google/android/gms/internal/ads/Sx;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    iget-object v3, p1, LE3/a;->J:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast v3, Lcom/google/android/gms/internal/ads/yx;

    .line 137
    .line 138
    const-string v4, "creativeType"

    .line 139
    .line 140
    invoke-static {v2, v4, v3}, Lcom/google/android/gms/internal/ads/Sx;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    iget-object v3, p1, LE3/a;->K:Ljava/lang/Object;

    .line 144
    .line 145
    check-cast v3, Lcom/google/android/gms/internal/ads/Ax;

    .line 146
    .line 147
    const-string v4, "impressionType"

    .line 148
    .line 149
    invoke-static {v2, v4, v3}, Lcom/google/android/gms/internal/ads/Sx;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    iget-boolean p1, p1, LE3/a;->G:Z

    .line 153
    .line 154
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    const-string v3, "isolateVerificationScripts"

    .line 159
    .line 160
    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/ads/Sx;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/Px;->a:Ljava/lang/String;

    .line 164
    .line 165
    const/4 p2, 0x2

    .line 166
    new-array p2, p2, [Ljava/lang/Object;

    .line 167
    .line 168
    aput-object v2, p2, v1

    .line 169
    .line 170
    aput-object p1, p2, v0

    .line 171
    .line 172
    const-string p1, "init"

    .line 173
    .line 174
    invoke-static {p3, p1, p2}, Lcom/google/android/gms/internal/ads/Cw;->L0(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/xx;->f:Z

    .line 4
    .line 5
    if-eqz v2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/xx;->c:Lcom/google/android/gms/internal/ads/ay;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->clear()V

    .line 11
    .line 12
    .line 13
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/xx;->f:Z

    .line 14
    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/xx;->b:Lcom/google/android/gms/internal/ads/Lx;

    .line 18
    .line 19
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/Lx;->a:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 22
    .line 23
    .line 24
    :cond_1
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/xx;->f:Z

    .line 25
    .line 26
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/xx;->d:Lcom/google/android/gms/internal/ads/Px;

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Px;->a()Landroid/webkit/WebView;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/Px;->a:Ljava/lang/String;

    .line 33
    .line 34
    new-array v4, v1, [Ljava/lang/Object;

    .line 35
    .line 36
    aput-object v2, v4, v0

    .line 37
    .line 38
    const-string v2, "finishSession"

    .line 39
    .line 40
    invoke-static {v3, v2, v4}, Lcom/google/android/gms/internal/ads/Cw;->L0(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    sget-object v2, Lcom/google/android/gms/internal/ads/Hx;->c:Lcom/google/android/gms/internal/ads/Hx;

    .line 44
    .line 45
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/Hx;->a:Ljava/util/ArrayList;

    .line 46
    .line 47
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/Hx;->b:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-lez v4, :cond_2

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    const/4 v1, 0x0

    .line 57
    :goto_0
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    const/4 v3, 0x0

    .line 64
    if-eqz v1, :cond_5

    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-lez v1, :cond_3

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/Nx;->a()Lcom/google/android/gms/internal/ads/Nx;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    sget-object v2, Lcom/google/android/gms/internal/ads/Vx;->g:Lcom/google/android/gms/internal/ads/Vx;

    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    sget-object v4, Lcom/google/android/gms/internal/ads/Vx;->i:Landroid/os/Handler;

    .line 86
    .line 87
    if-eqz v4, :cond_4

    .line 88
    .line 89
    sget-object v5, Lcom/google/android/gms/internal/ads/Vx;->k:Lcom/google/android/gms/internal/ads/w4;

    .line 90
    .line 91
    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 92
    .line 93
    .line 94
    sput-object v3, Lcom/google/android/gms/internal/ads/Vx;->i:Landroid/os/Handler;

    .line 95
    .line 96
    :cond_4
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/Vx;->a:Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 99
    .line 100
    .line 101
    sget-object v4, Lcom/google/android/gms/internal/ads/Vx;->h:Landroid/os/Handler;

    .line 102
    .line 103
    new-instance v5, Lcom/google/android/gms/internal/ads/Zn;

    .line 104
    .line 105
    const/16 v6, 0xf

    .line 106
    .line 107
    invoke-direct {v5, v2, v6}, Lcom/google/android/gms/internal/ads/Zn;-><init>(Ljava/lang/Object;I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 111
    .line 112
    .line 113
    sget-object v2, Lcom/google/android/gms/internal/ads/Gx;->J:Lcom/google/android/gms/internal/ads/Gx;

    .line 114
    .line 115
    iput-boolean v0, v2, Lcom/google/android/gms/internal/ads/Jx;->G:Z

    .line 116
    .line 117
    iput-object v3, v2, Lcom/google/android/gms/internal/ads/Jx;->I:Lcom/google/android/gms/internal/ads/Ix;

    .line 118
    .line 119
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Nx;->b:Lcom/google/android/gms/internal/ads/Dx;

    .line 120
    .line 121
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Dx;->a:Landroid/content/Context;

    .line 122
    .line 123
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 128
    .line 129
    .line 130
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xx;->d:Lcom/google/android/gms/internal/ads/Px;

    .line 131
    .line 132
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Px;->b()V

    .line 133
    .line 134
    .line 135
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/xx;->d:Lcom/google/android/gms/internal/ads/Px;

    .line 136
    .line 137
    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/xx;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xx;->c:Lcom/google/android/gms/internal/ads/ay;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/view/View;

    .line 13
    .line 14
    if-eq v0, p1, :cond_2

    .line 15
    .line 16
    new-instance v0, Lcom/google/android/gms/internal/ads/ay;

    .line 17
    .line 18
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/xx;->c:Lcom/google/android/gms/internal/ads/ay;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xx;->d:Lcom/google/android/gms/internal/ads/Px;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 29
    .line 30
    .line 31
    move-result-wide v1

    .line 32
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/Px;->c:J

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    iput v1, v0, Lcom/google/android/gms/internal/ads/Px;->d:I

    .line 36
    .line 37
    sget-object v0, Lcom/google/android/gms/internal/ads/Hx;->c:Lcom/google/android/gms/internal/ads/Hx;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Hx;->a:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_2

    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_2

    .line 62
    .line 63
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Lcom/google/android/gms/internal/ads/xx;

    .line 68
    .line 69
    if-eq v1, p0, :cond_1

    .line 70
    .line 71
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/xx;->c:Lcom/google/android/gms/internal/ads/ay;

    .line 72
    .line 73
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    check-cast v2, Landroid/view/View;

    .line 78
    .line 79
    if-ne v2, p1, :cond_1

    .line 80
    .line 81
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/xx;->c:Lcom/google/android/gms/internal/ads/ay;

    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    :goto_1
    return-void
.end method

.method public final c()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/xx;->e:Z

    .line 4
    .line 5
    if-eqz v2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/xx;->e:Z

    .line 9
    .line 10
    sget-object v2, Lcom/google/android/gms/internal/ads/Hx;->c:Lcom/google/android/gms/internal/ads/Hx;

    .line 11
    .line 12
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/Hx;->b:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-lez v3, :cond_1

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 v3, 0x0

    .line 23
    :goto_0
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    if-nez v3, :cond_4

    .line 27
    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/ads/Nx;->a()Lcom/google/android/gms/internal/ads/Nx;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    sget-object v3, Lcom/google/android/gms/internal/ads/Gx;->J:Lcom/google/android/gms/internal/ads/Gx;

    .line 36
    .line 37
    iput-object v2, v3, Lcom/google/android/gms/internal/ads/Jx;->I:Lcom/google/android/gms/internal/ads/Ix;

    .line 38
    .line 39
    iput-boolean v1, v3, Lcom/google/android/gms/internal/ads/Jx;->G:Z

    .line 40
    .line 41
    new-instance v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 42
    .line 43
    invoke-direct {v4}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-static {v4}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 47
    .line 48
    .line 49
    iget v4, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    .line 50
    .line 51
    const/16 v5, 0x64

    .line 52
    .line 53
    if-ne v4, v5, :cond_2

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/Gx;->b()Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-nez v4, :cond_3

    .line 61
    .line 62
    const/4 v4, 0x0

    .line 63
    goto :goto_2

    .line 64
    :cond_3
    :goto_1
    const/4 v4, 0x1

    .line 65
    :goto_2
    iput-boolean v4, v3, Lcom/google/android/gms/internal/ads/Jx;->H:Z

    .line 66
    .line 67
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/Gx;->a(Z)V

    .line 68
    .line 69
    .line 70
    sget-object v3, Lcom/google/android/gms/internal/ads/Vx;->g:Lcom/google/android/gms/internal/ads/Vx;

    .line 71
    .line 72
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    invoke-static {}, Lcom/google/android/gms/internal/ads/Vx;->b()V

    .line 76
    .line 77
    .line 78
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/Nx;->b:Lcom/google/android/gms/internal/ads/Dx;

    .line 79
    .line 80
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Dx;->a()F

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    iput v3, v2, Lcom/google/android/gms/internal/ads/Dx;->c:F

    .line 85
    .line 86
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Dx;->b()V

    .line 87
    .line 88
    .line 89
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/Dx;->a:Landroid/content/Context;

    .line 90
    .line 91
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    sget-object v4, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    .line 96
    .line 97
    invoke-virtual {v3, v4, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 98
    .line 99
    .line 100
    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/ads/Nx;->a()Lcom/google/android/gms/internal/ads/Nx;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    iget v2, v2, Lcom/google/android/gms/internal/ads/Nx;->a:F

    .line 105
    .line 106
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/xx;->d:Lcom/google/android/gms/internal/ads/Px;

    .line 107
    .line 108
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/Px;->a()Landroid/webkit/WebView;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/Px;->a:Ljava/lang/String;

    .line 117
    .line 118
    const/4 v5, 0x2

    .line 119
    new-array v5, v5, [Ljava/lang/Object;

    .line 120
    .line 121
    aput-object v2, v5, v0

    .line 122
    .line 123
    aput-object v3, v5, v1

    .line 124
    .line 125
    const-string v0, "setDeviceVolume"

    .line 126
    .line 127
    invoke-static {v4, v0, v5}, Lcom/google/android/gms/internal/ads/Cw;->L0(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xx;->d:Lcom/google/android/gms/internal/ads/Px;

    .line 131
    .line 132
    sget-object v1, Lcom/google/android/gms/internal/ads/Fx;->e:Lcom/google/android/gms/internal/ads/Fx;

    .line 133
    .line 134
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Fx;->a:Ljava/util/Date;

    .line 135
    .line 136
    if-eqz v1, :cond_5

    .line 137
    .line 138
    invoke-virtual {v1}, Ljava/util/Date;->clone()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    check-cast v1, Ljava/util/Date;

    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_5
    const/4 v1, 0x0

    .line 146
    :goto_3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Px;->c(Ljava/util/Date;)V

    .line 147
    .line 148
    .line 149
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xx;->d:Lcom/google/android/gms/internal/ads/Px;

    .line 150
    .line 151
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/xx;->a:Ll/s1;

    .line 152
    .line 153
    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/internal/ads/Px;->d(Lcom/google/android/gms/internal/ads/xx;Ll/s1;)V

    .line 154
    .line 155
    .line 156
    return-void
.end method
