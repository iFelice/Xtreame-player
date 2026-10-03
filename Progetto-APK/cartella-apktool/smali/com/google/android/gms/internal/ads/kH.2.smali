.class public final Lcom/google/android/gms/internal/ads/kH;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/y;
.implements Lcom/google/android/gms/internal/ads/B;
.implements Lcom/google/android/gms/internal/ads/G;
.implements Lcom/google/android/gms/internal/ads/c0;
.implements Lcom/google/android/gms/internal/ads/V1;
.implements Lp3/i;
.implements Lcom/google/android/gms/internal/ads/vH;


# instance fields
.field public final synthetic G:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/kH;->G:I

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/kH;->G:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x8

    iput p1, p0, Lcom/google/android/gms/internal/ads/kH;->G:I

    return-void
.end method

.method public constructor <init>([I)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    .line 6
    iput v0, p0, Lcom/google/android/gms/internal/ads/kH;->G:I

    if-eqz p1, :cond_0

    .line 7
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    .line 8
    array-length p1, p1

    :cond_0
    return-void
.end method

.method public static final d(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "google_ads_flags"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 5
    .line 6
    .line 7
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    return-object p0

    .line 9
    :catch_0
    move-exception p0

    .line 10
    const-string v0, ""

    .line 11
    .line 12
    invoke-static {v0, p0}, Lp3/h;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return-object p0
.end method

.method public static final e(Landroid/content/Context;Lcom/google/android/gms/internal/ads/o6;)Lcom/google/android/gms/internal/ads/q6;
    .locals 8

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/x3;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/x3;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    new-instance p0, Lcom/google/android/gms/internal/ads/q6;

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/q6;-><init>(Lcom/google/android/gms/internal/ads/x3;)V

    .line 9
    .line 10
    .line 11
    new-instance v4, Lcom/google/android/gms/internal/ads/s6;

    .line 12
    .line 13
    invoke-direct {v4, v0, p1, p0}, Lcom/google/android/gms/internal/ads/s6;-><init>(Lcom/google/android/gms/internal/ads/x3;Lcom/google/android/gms/internal/ads/o6;Lcom/google/android/gms/internal/ads/q6;)V

    .line 14
    .line 15
    .line 16
    new-instance v5, Lcom/google/android/gms/internal/ads/t6;

    .line 17
    .line 18
    invoke-direct {v5, v0, p0}, Lcom/google/android/gms/internal/ads/t6;-><init>(Lcom/google/android/gms/internal/ads/x3;Lcom/google/android/gms/internal/ads/q6;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/x3;->H:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter p1

    .line 24
    :try_start_0
    new-instance v7, Lcom/google/android/gms/internal/ads/n6;

    .line 25
    .line 26
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/x3;->J:Ljava/lang/Object;

    .line 27
    .line 28
    move-object v2, v1

    .line 29
    check-cast v2, Landroid/content/Context;

    .line 30
    .line 31
    sget-object v1, Lk3/l;->A:Lk3/l;

    .line 32
    .line 33
    iget-object v1, v1, Lk3/l;->r:LB0/w0;

    .line 34
    .line 35
    invoke-virtual {v1}, LB0/w0;->j()Landroid/os/Looper;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    const/4 v6, 0x0

    .line 40
    move-object v1, v7

    .line 41
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/n6;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/b;Lcom/google/android/gms/common/internal/c;I)V

    .line 42
    .line 43
    .line 44
    iput-object v7, v0, Lcom/google/android/gms/internal/ads/x3;->I:Ljava/lang/Object;

    .line 45
    .line 46
    invoke-virtual {v7}, Lcom/google/android/gms/common/internal/g;->checkAvailabilityAndConnect()V

    .line 47
    .line 48
    .line 49
    monitor-exit p1

    .line 50
    return-object p0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw p0
.end method

.method public static final g(Lcom/google/android/gms/internal/ads/Nd;Lcom/google/android/gms/internal/ads/xc;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/xc;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/content/Context;

    .line 4
    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/xc;->J:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/xc;->H:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Landroid/content/Context;

    .line 20
    .line 21
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/xc;->J:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v1, Ljava/lang/String;

    .line 24
    .line 25
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/xc;->K:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v2, Ljava/lang/String;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/xc;->I:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p1, Ljava/util/Map;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Nd;->e:Ljava/lang/Object;

    .line 34
    .line 35
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Nd;->f:Ljava/lang/Object;

    .line 36
    .line 37
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/Nd;->d:Ljava/lang/Object;

    .line 38
    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Nd;->h:Ljava/lang/Object;

    .line 46
    .line 47
    sget-object v1, Lcom/google/android/gms/internal/ads/n8;->c:Lcom/google/android/gms/internal/ads/f8;

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Ljava/lang/Boolean;

    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nd;->h:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_0

    .line 71
    .line 72
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    if-eqz v0, :cond_0

    .line 77
    .line 78
    new-instance v1, Ljava/io/File;

    .line 79
    .line 80
    sget v2, Lcom/google/android/gms/internal/ads/Ly;->d:I

    .line 81
    .line 82
    new-instance v2, Ljava/io/File;

    .line 83
    .line 84
    const-string v3, "sdk_csi_data.txt"

    .line 85
    .line 86
    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Nd;->i:Ljava/lang/Object;

    .line 97
    .line 98
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-eqz v0, :cond_1

    .line 111
    .line 112
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    check-cast v0, Ljava/util/Map$Entry;

    .line 117
    .line 118
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nd;->b:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast v1, Ljava/util/LinkedHashMap;

    .line 121
    .line 122
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    check-cast v2, Ljava/lang/String;

    .line 127
    .line 128
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    check-cast v0, Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {v1, v2, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/ads/se;->a:Lcom/google/android/gms/internal/ads/re;

    .line 139
    .line 140
    new-instance v0, Lcom/google/android/gms/internal/ads/Pf;

    .line 141
    .line 142
    const/16 v1, 0x9

    .line 143
    .line 144
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/Pf;-><init>(Ljava/lang/Object;I)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/re;->execute(Ljava/lang/Runnable;)V

    .line 148
    .line 149
    .line 150
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nd;->c:Ljava/lang/Object;

    .line 151
    .line 152
    check-cast p1, Ljava/util/Map;

    .line 153
    .line 154
    sget-object v0, Lcom/google/android/gms/internal/ads/T7;->b:Lcom/google/android/gms/internal/ads/S7;

    .line 155
    .line 156
    const-string v1, "action"

    .line 157
    .line 158
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nd;->c:Ljava/lang/Object;

    .line 162
    .line 163
    check-cast p1, Ljava/util/Map;

    .line 164
    .line 165
    const-string v1, "ad_format"

    .line 166
    .line 167
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/Nd;->c:Ljava/lang/Object;

    .line 171
    .line 172
    check-cast p0, Ljava/util/Map;

    .line 173
    .line 174
    sget-object p1, Lcom/google/android/gms/internal/ads/T7;->c:Lcom/google/android/gms/internal/ads/S7;

    .line 175
    .line 176
    const-string v0, "e"

    .line 177
    .line 178
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    return-void

    .line 182
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 183
    .line 184
    const-string p1, "AfmaVersion can\'t be null or empty. Please set up afmaVersion in CsiConfiguration."

    .line 185
    .line 186
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    throw p0

    .line 190
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 191
    .line 192
    const-string p1, "Context can\'t be null. Please set up context in CsiConfiguration."

    .line 193
    .line 194
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    throw p0
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final b()V
    .locals 0

    .line 1
    return-void
.end method

.method public final c(J)J
    .locals 0

    .line 1
    return-wide p1
.end method

.method public final f()Ljava/lang/reflect/Constructor;
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/kH;->G:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-class v2, Lcom/google/android/gms/internal/ads/L;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    const-string v0, "androidx.media3.decoder.midi.MidiExtractor"

    .line 10
    .line 11
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-array v1, v1, [Ljava/lang/Class;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0

    .line 26
    :pswitch_0
    sget-object v0, Landroidx/media3/decoder/flac/j;->a:Lx0/b;

    .line 27
    .line 28
    new-array v0, v1, [Ljava/lang/Class;

    .line 29
    .line 30
    const-class v3, Landroidx/media3/decoder/flac/j;

    .line 31
    .line 32
    const-string v4, "isAvailable"

    .line 33
    .line 34
    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    new-array v3, v1, [Ljava/lang/Object;

    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    invoke-virtual {v0, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 46
    .line 47
    invoke-virtual {v3, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    const-class v0, Landroidx/media3/decoder/flac/i;

    .line 54
    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const/4 v2, 0x1

    .line 60
    new-array v2, v2, [Ljava/lang/Class;

    .line 61
    .line 62
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 63
    .line 64
    aput-object v3, v2, v1

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    :cond_0
    return-object v4

    .line 71
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public final zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/kH;->G:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Landroid/os/IBinder;

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.flags.IFlagRetrieverSupplierProxy"

    .line 14
    .line 15
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    instance-of v3, v2, Lcom/google/android/gms/internal/ads/G8;

    .line 20
    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    check-cast v2, Lcom/google/android/gms/internal/ads/G8;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/ads/G8;

    .line 27
    .line 28
    invoke-direct {v2, p1, v0, v1}, Lcom/google/android/gms/internal/ads/y5;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-object v2

    .line 32
    :pswitch_0
    check-cast p1, Landroid/os/IBinder;

    .line 33
    .line 34
    sget v0, Lcom/google/android/gms/internal/ads/C5;->G:I

    .line 35
    .line 36
    if-nez p1, :cond_2

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    const-string v0, "com.google.android.gms.ads.clearcut.IClearcut"

    .line 40
    .line 41
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    instance-of v3, v2, Lcom/google/android/gms/internal/ads/D5;

    .line 46
    .line 47
    if-eqz v3, :cond_3

    .line 48
    .line 49
    check-cast v2, Lcom/google/android/gms/internal/ads/D5;

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_3
    new-instance v2, Lcom/google/android/gms/internal/ads/B5;

    .line 53
    .line 54
    invoke-direct {v2, p1, v0, v1}, Lcom/google/android/gms/internal/ads/y5;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    :goto_1
    return-object v2

    .line 58
    nop

    .line 59
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method
