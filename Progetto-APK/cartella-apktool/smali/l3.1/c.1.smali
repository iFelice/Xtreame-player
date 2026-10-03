.class public final Ll3/c;
.super Ll3/o;
.source "SourceFile"


# instance fields
.field public final synthetic b:Landroid/app/Activity;

.field public final synthetic c:Ll3/n;


# direct methods
.method public constructor <init>(Ll3/n;Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Ll3/c;->b:Landroid/app/Activity;

    .line 5
    .line 6
    iput-object p1, p0, Ll3/c;->c:Ll3/n;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Ll3/c;->b:Landroid/app/Activity;

    .line 2
    .line 3
    const-string v1, "ad_overlay"

    .line 4
    .line 5
    invoke-static {v0, v1}, Ll3/n;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    return-object v0
.end method

.method public final b(Ll3/X;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, LR3/b;

    .line 2
    .line 3
    iget-object v1, p0, Ll3/c;->b:Landroid/app/Activity;

    .line 4
    .line 5
    invoke-direct {v0, v1}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1, v0}, Ll3/X;->y(LR3/a;)Lcom/google/android/gms/internal/ads/jc;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final c()Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Ll3/c;->b:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Q7;->a(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/google/android/gms/internal/ads/Q7;->W9:Lcom/google/android/gms/internal/ads/J7;

    .line 7
    .line 8
    sget-object v2, Ll3/q;->d:Ll3/q;

    .line 9
    .line 10
    iget-object v2, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Ljava/lang/Boolean;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const-string v2, "com.google.android.gms.ads.internal.overlay.client.IAdOverlay"

    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    const/4 v4, 0x0

    .line 26
    iget-object v5, p0, Ll3/c;->c:Ll3/n;

    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    :try_start_0
    new-instance v1, LR3/b;

    .line 31
    .line 32
    invoke-direct {v1, v0}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    const-string v6, "com.google.android.gms.ads.ChimeraAdOverlayCreatorImpl"

    .line 36
    .line 37
    new-instance v7, LF2/G;

    .line 38
    .line 39
    const/16 v8, 0xe

    .line 40
    .line 41
    invoke-direct {v7, v8}, LF2/G;-><init>(I)V

    .line 42
    .line 43
    .line 44
    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/measurement/H1;->G(Landroid/content/Context;Ljava/lang/String;Lp3/i;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    check-cast v6, Lcom/google/android/gms/internal/ads/mc;

    .line 49
    .line 50
    check-cast v6, Lcom/google/android/gms/internal/ads/kc;

    .line 51
    .line 52
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    invoke-static {v7, v1}, Lcom/google/android/gms/internal/ads/A5;->e(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v6, v3, v7}, Lcom/google/android/gms/internal/ads/y5;->n2(ILandroid/os/Parcel;)Landroid/os/Parcel;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 68
    .line 69
    .line 70
    sget v1, Lcom/google/android/gms/internal/ads/ic;->G:I

    .line 71
    .line 72
    if-nez v3, :cond_0

    .line 73
    .line 74
    goto/16 :goto_5

    .line 75
    .line 76
    :cond_0
    invoke-interface {v3, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    instance-of v2, v1, Lcom/google/android/gms/internal/ads/jc;

    .line 81
    .line 82
    if-eqz v2, :cond_1

    .line 83
    .line 84
    check-cast v1, Lcom/google/android/gms/internal/ads/jc;

    .line 85
    .line 86
    :goto_0
    move-object v4, v1

    .line 87
    goto/16 :goto_5

    .line 88
    .line 89
    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/hc;

    .line 90
    .line 91
    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/ads/hc;-><init>(Landroid/os/IBinder;)V
    :try_end_0
    .catch Lp3/j; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :catch_0
    move-exception v1

    .line 96
    goto :goto_1

    .line 97
    :catch_1
    move-exception v1

    .line 98
    goto :goto_1

    .line 99
    :catch_2
    move-exception v1

    .line 100
    :goto_1
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Bc;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/Cc;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    iput-object v0, v5, Ll3/n;->g:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v0, Lcom/google/android/gms/internal/ads/Cc;

    .line 111
    .line 112
    const-string v2, "ClientApiBroker.createAdOverlay"

    .line 113
    .line 114
    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/Cc;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    .line 116
    .line 117
    goto :goto_5

    .line 118
    :cond_2
    iget-object v1, v5, Ll3/n;->e:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast v1, Ll3/M0;

    .line 121
    .line 122
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    const-string v5, "Could not create remote AdOverlay."

    .line 126
    .line 127
    :try_start_1
    new-instance v6, LR3/b;

    .line 128
    .line 129
    invoke-direct {v6, v0}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, v0}, LR3/d;->getRemoteCreatorInstance(Landroid/content/Context;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    check-cast v0, Lcom/google/android/gms/internal/ads/mc;

    .line 137
    .line 138
    check-cast v0, Lcom/google/android/gms/internal/ads/kc;

    .line 139
    .line 140
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-static {v1, v6}, Lcom/google/android/gms/internal/ads/A5;->e(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/internal/ads/y5;->n2(ILandroid/os/Parcel;)Landroid/os/Parcel;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 156
    .line 157
    .line 158
    if-nez v1, :cond_3

    .line 159
    .line 160
    goto :goto_5

    .line 161
    :cond_3
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    instance-of v2, v0, Lcom/google/android/gms/internal/ads/jc;

    .line 166
    .line 167
    if-eqz v2, :cond_4

    .line 168
    .line 169
    check-cast v0, Lcom/google/android/gms/internal/ads/jc;

    .line 170
    .line 171
    :goto_2
    move-object v4, v0

    .line 172
    goto :goto_5

    .line 173
    :catch_3
    move-exception v0

    .line 174
    goto :goto_3

    .line 175
    :catch_4
    move-exception v0

    .line 176
    goto :goto_4

    .line 177
    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/ads/hc;

    .line 178
    .line 179
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/hc;-><init>(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4
    .catch LR3/c; {:try_start_1 .. :try_end_1} :catch_3

    .line 180
    .line 181
    .line 182
    goto :goto_2

    .line 183
    :goto_3
    invoke-static {v5, v0}, Lp3/h;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 184
    .line 185
    .line 186
    goto :goto_5

    .line 187
    :goto_4
    invoke-static {v5, v0}, Lp3/h;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 188
    .line 189
    .line 190
    :goto_5
    return-object v4
.end method
