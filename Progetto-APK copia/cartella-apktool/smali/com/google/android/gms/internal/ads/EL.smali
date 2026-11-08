.class public final Lcom/google/android/gms/internal/ads/EL;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/google/android/gms/internal/ads/EL;

.field public static final d:Lcom/google/android/gms/internal/ads/PA;

.field public static final e:Lcom/google/android/gms/internal/ads/UA;


# instance fields
.field public final a:Landroid/util/SparseArray;

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x3

    .line 3
    new-instance v2, Lcom/google/android/gms/internal/ads/EL;

    .line 4
    .line 5
    sget-object v3, Lcom/google/android/gms/internal/ads/DL;->d:Lcom/google/android/gms/internal/ads/DL;

    .line 6
    .line 7
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/uA;->w(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/PA;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/EL;-><init>(Lcom/google/android/gms/internal/ads/PA;)V

    .line 12
    .line 13
    .line 14
    sput-object v2, Lcom/google/android/gms/internal/ads/EL;->c:Lcom/google/android/gms/internal/ads/EL;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    const/4 v4, 0x5

    .line 22
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    const/4 v6, 0x6

    .line 27
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    new-array v7, v1, [Ljava/lang/Object;

    .line 32
    .line 33
    aput-object v3, v7, v0

    .line 34
    .line 35
    const/4 v3, 0x1

    .line 36
    aput-object v5, v7, v3

    .line 37
    .line 38
    aput-object v6, v7, v2

    .line 39
    .line 40
    invoke-static {v7, v1}, Lcom/google/android/gms/internal/ads/Cw;->O0([Ljava/lang/Object;I)V

    .line 41
    .line 42
    .line 43
    invoke-static {v1, v7}, Lcom/google/android/gms/internal/ads/uA;->s(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/PA;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    sput-object v1, Lcom/google/android/gms/internal/ads/EL;->d:Lcom/google/android/gms/internal/ads/PA;

    .line 48
    .line 49
    new-instance v1, Lcom/google/android/gms/internal/ads/f8;

    .line 50
    .line 51
    invoke-direct {v1, v4, v0}, Lcom/google/android/gms/internal/ads/f8;-><init>(II)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v5, v6}, Lcom/google/android/gms/internal/ads/f8;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    const/16 v0, 0x11

    .line 58
    .line 59
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v1, v0, v6}, Lcom/google/android/gms/internal/ads/f8;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    const/4 v0, 0x7

    .line 67
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v1, v0, v6}, Lcom/google/android/gms/internal/ads/f8;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    const/16 v0, 0x1e

    .line 75
    .line 76
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    const/16 v2, 0xa

    .line 81
    .line 82
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/f8;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    const/16 v0, 0x12

    .line 90
    .line 91
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v1, v0, v6}, Lcom/google/android/gms/internal/ads/f8;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    const/16 v0, 0x8

    .line 99
    .line 100
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v1, v6, v0}, Lcom/google/android/gms/internal/ads/f8;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v0, v0}, Lcom/google/android/gms/internal/ads/f8;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    const/16 v2, 0xe

    .line 111
    .line 112
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/f8;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/f8;->f()Lcom/google/android/gms/internal/ads/UA;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    sput-object v0, Lcom/google/android/gms/internal/ads/EL;->e:Lcom/google/android/gms/internal/ads/UA;

    .line 124
    .line 125
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/PA;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/EL;->a:Landroid/util/SparseArray;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    iget v2, p1, Lcom/google/android/gms/internal/ads/PA;->J:I

    .line 14
    .line 15
    if-ge v1, v2, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/PA;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lcom/google/android/gms/internal/ads/DL;

    .line 22
    .line 23
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/EL;->a:Landroid/util/SparseArray;

    .line 24
    .line 25
    iget v4, v2, Lcom/google/android/gms/internal/ads/DL;->a:I

    .line 26
    .line 27
    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p1, 0x0

    .line 34
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/EL;->a:Landroid/util/SparseArray;

    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-ge v0, v1, :cond_1

    .line 41
    .line 42
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/EL;->a:Landroid/util/SparseArray;

    .line 43
    .line 44
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Lcom/google/android/gms/internal/ads/DL;

    .line 49
    .line 50
    iget v1, v1, Lcom/google/android/gms/internal/ads/DL;->b:I

    .line 51
    .line 52
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    add-int/lit8 v0, v0, 0x1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    iput p1, p0, Lcom/google/android/gms/internal/ads/EL;->b:I

    .line 60
    .line 61
    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/google/android/gms/internal/ads/bH;Lcom/google/android/gms/internal/ads/IL;)Lcom/google/android/gms/internal/ads/EL;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    .line 2
    .line 3
    const-string v1, "android.media.action.HDMI_AUDIO_PLUG"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {p0, v0, p1, p2}, Lcom/google/android/gms/internal/ads/EL;->c(Landroid/content/Context;Landroid/content/Intent;Lcom/google/android/gms/internal/ads/bH;Lcom/google/android/gms/internal/ads/IL;)Lcom/google/android/gms/internal/ads/EL;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public static c(Landroid/content/Context;Landroid/content/Intent;Lcom/google/android/gms/internal/ads/bH;Lcom/google/android/gms/internal/ads/IL;)Lcom/google/android/gms/internal/ads/EL;
    .locals 5

    .line 1
    const-string v0, "audio"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    check-cast v0, Landroid/media/AudioManager;

    .line 11
    .line 12
    const/16 v1, 0x21

    .line 13
    .line 14
    if-nez p3, :cond_1

    .line 15
    .line 16
    sget p3, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 17
    .line 18
    if-lt p3, v1, :cond_0

    .line 19
    .line 20
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/CL;->b(Landroid/media/AudioManager;Lcom/google/android/gms/internal/ads/bH;)Lcom/google/android/gms/internal/ads/IL;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p3, 0x0

    .line 26
    :cond_1
    :goto_0
    sget v2, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 27
    .line 28
    const-string v3, "android.hardware.type.automotive"

    .line 29
    .line 30
    const/16 v4, 0x17

    .line 31
    .line 32
    if-lt v2, v1, :cond_3

    .line 33
    .line 34
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/Et;->e(Landroid/content/Context;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_2

    .line 39
    .line 40
    if-lt v2, v4, :cond_3

    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_3

    .line 51
    .line 52
    :cond_2
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/CL;->a(Landroid/media/AudioManager;Lcom/google/android/gms/internal/ads/bH;)Lcom/google/android/gms/internal/ads/EL;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0

    .line 57
    :cond_3
    if-lt v2, v4, :cond_5

    .line 58
    .line 59
    invoke-static {v0, p3}, Lcom/google/android/gms/internal/ads/AL;->a(Landroid/media/AudioManager;Lcom/google/android/gms/internal/ads/IL;)Z

    .line 60
    .line 61
    .line 62
    move-result p3

    .line 63
    if-nez p3, :cond_4

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_4
    sget-object p0, Lcom/google/android/gms/internal/ads/EL;->c:Lcom/google/android/gms/internal/ads/EL;

    .line 67
    .line 68
    return-object p0

    .line 69
    :cond_5
    :goto_1
    new-instance p3, Lcom/google/android/gms/internal/ads/yA;

    .line 70
    .line 71
    invoke-direct {p3}, Lcom/google/android/gms/internal/ads/yA;-><init>()V

    .line 72
    .line 73
    .line 74
    const/4 v0, 0x2

    .line 75
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/ads/yA;->h(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    const/16 v0, 0x1d

    .line 83
    .line 84
    const/16 v1, 0xa

    .line 85
    .line 86
    if-lt v2, v0, :cond_7

    .line 87
    .line 88
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/Et;->e(Landroid/content/Context;)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-nez v0, :cond_6

    .line 93
    .line 94
    if-lt v2, v4, :cond_7

    .line 95
    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-eqz v0, :cond_7

    .line 105
    .line 106
    :cond_6
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/BL;->b(Lcom/google/android/gms/internal/ads/bH;)Lcom/google/android/gms/internal/ads/uA;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-virtual {p3, p0}, Lcom/google/android/gms/internal/ads/yA;->i(Ljava/lang/Iterable;)V

    .line 111
    .line 112
    .line 113
    new-instance p0, Lcom/google/android/gms/internal/ads/EL;

    .line 114
    .line 115
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/yA;->j()Lcom/google/android/gms/internal/ads/zA;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Cw;->P1(Lcom/google/android/gms/internal/ads/zA;)[I

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/EL;->d([II)Lcom/google/android/gms/internal/ads/PA;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/EL;-><init>(Lcom/google/android/gms/internal/ads/PA;)V

    .line 128
    .line 129
    .line 130
    return-object p0

    .line 131
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    const-string p2, "use_external_surround_sound_flag"

    .line 136
    .line 137
    const/4 v0, 0x0

    .line 138
    invoke-static {p0, p2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 139
    .line 140
    .line 141
    move-result p2

    .line 142
    const/4 v2, 0x1

    .line 143
    if-ne p2, v2, :cond_8

    .line 144
    .line 145
    const/4 p2, 0x1

    .line 146
    goto :goto_2

    .line 147
    :cond_8
    const/4 p2, 0x0

    .line 148
    :goto_2
    if-nez p2, :cond_9

    .line 149
    .line 150
    sget-object v3, Lcom/google/android/gms/internal/ads/Et;->c:Ljava/lang/String;

    .line 151
    .line 152
    const-string v4, "Amazon"

    .line 153
    .line 154
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v4

    .line 158
    if-nez v4, :cond_9

    .line 159
    .line 160
    const-string v4, "Xiaomi"

    .line 161
    .line 162
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    if-eqz v3, :cond_a

    .line 167
    .line 168
    :cond_9
    const-string v3, "external_surround_sound_enabled"

    .line 169
    .line 170
    invoke-static {p0, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 171
    .line 172
    .line 173
    move-result p0

    .line 174
    if-ne p0, v2, :cond_a

    .line 175
    .line 176
    sget-object p0, Lcom/google/android/gms/internal/ads/EL;->d:Lcom/google/android/gms/internal/ads/PA;

    .line 177
    .line 178
    invoke-virtual {p3, p0}, Lcom/google/android/gms/internal/ads/yA;->i(Ljava/lang/Iterable;)V

    .line 179
    .line 180
    .line 181
    :cond_a
    if-eqz p1, :cond_c

    .line 182
    .line 183
    if-nez p2, :cond_c

    .line 184
    .line 185
    const-string p0, "android.media.extra.AUDIO_PLUG_STATE"

    .line 186
    .line 187
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 188
    .line 189
    .line 190
    move-result p0

    .line 191
    if-ne p0, v2, :cond_c

    .line 192
    .line 193
    const-string p0, "android.media.extra.ENCODINGS"

    .line 194
    .line 195
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    .line 196
    .line 197
    .line 198
    move-result-object p0

    .line 199
    if-eqz p0, :cond_b

    .line 200
    .line 201
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/Cw;->J1([I)Ljava/util/List;

    .line 202
    .line 203
    .line 204
    move-result-object p0

    .line 205
    invoke-virtual {p3, p0}, Lcom/google/android/gms/internal/ads/yA;->i(Ljava/lang/Iterable;)V

    .line 206
    .line 207
    .line 208
    :cond_b
    new-instance p0, Lcom/google/android/gms/internal/ads/EL;

    .line 209
    .line 210
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/yA;->j()Lcom/google/android/gms/internal/ads/zA;

    .line 211
    .line 212
    .line 213
    move-result-object p2

    .line 214
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/Cw;->P1(Lcom/google/android/gms/internal/ads/zA;)[I

    .line 215
    .line 216
    .line 217
    move-result-object p2

    .line 218
    const-string p3, "android.media.extra.MAX_CHANNEL_COUNT"

    .line 219
    .line 220
    invoke-virtual {p1, p3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 221
    .line 222
    .line 223
    move-result p1

    .line 224
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/EL;->d([II)Lcom/google/android/gms/internal/ads/PA;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/EL;-><init>(Lcom/google/android/gms/internal/ads/PA;)V

    .line 229
    .line 230
    .line 231
    return-object p0

    .line 232
    :cond_c
    new-instance p0, Lcom/google/android/gms/internal/ads/EL;

    .line 233
    .line 234
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/yA;->j()Lcom/google/android/gms/internal/ads/zA;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Cw;->P1(Lcom/google/android/gms/internal/ads/zA;)[I

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/EL;->d([II)Lcom/google/android/gms/internal/ads/PA;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/EL;-><init>(Lcom/google/android/gms/internal/ads/PA;)V

    .line 247
    .line 248
    .line 249
    return-object p0
.end method

.method public static d([II)Lcom/google/android/gms/internal/ads/PA;
    .locals 6

    .line 1
    const/4 v0, 0x4

    .line 2
    const-string v1, "initialCapacity"

    .line 3
    .line 4
    invoke-static {v0, v1}, Lo3/r;->q(ILjava/lang/String;)V

    .line 5
    .line 6
    .line 7
    new-array v0, v0, [Ljava/lang/Object;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    array-length v3, p0

    .line 12
    if-ge v1, v3, :cond_1

    .line 13
    .line 14
    aget v3, p0, v1

    .line 15
    .line 16
    new-instance v4, Lcom/google/android/gms/internal/ads/DL;

    .line 17
    .line 18
    invoke-direct {v4, v3, p1}, Lcom/google/android/gms/internal/ads/DL;-><init>(II)V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v3, v2, 0x1

    .line 22
    .line 23
    array-length v5, v0

    .line 24
    if-ge v5, v3, :cond_0

    .line 25
    .line 26
    invoke-static {v5, v3}, Lcom/google/android/gms/internal/ads/oA;->e(II)I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :cond_0
    aput-object v4, v0, v2

    .line 35
    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    move v2, v3

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/uA;->s(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/PA;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/p0;Lcom/google/android/gms/internal/ads/bH;)Landroid/util/Pair;
    .locals 11

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/p0;->m:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/p0;->j:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/va;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    sget-object v2, Lcom/google/android/gms/internal/ads/EL;->e:Lcom/google/android/gms/internal/ads/UA;

    .line 17
    .line 18
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/xA;->containsKey(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    goto/16 :goto_7

    .line 25
    .line 26
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/EL;->a:Landroid/util/SparseArray;

    .line 27
    .line 28
    const/4 v3, 0x7

    .line 29
    const/16 v4, 0x8

    .line 30
    .line 31
    const/4 v5, 0x6

    .line 32
    const/16 v6, 0x12

    .line 33
    .line 34
    if-ne v0, v6, :cond_2

    .line 35
    .line 36
    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-ltz v0, :cond_1

    .line 41
    .line 42
    const/16 v0, 0x12

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v0, 0x6

    .line 46
    goto :goto_2

    .line 47
    :cond_2
    :goto_0
    if-ne v0, v4, :cond_4

    .line 48
    .line 49
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-ltz v0, :cond_3

    .line 54
    .line 55
    const/16 v0, 0x8

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    const/4 v0, 0x7

    .line 59
    goto :goto_2

    .line 60
    :cond_4
    :goto_1
    const/16 v7, 0x1e

    .line 61
    .line 62
    if-ne v0, v7, :cond_5

    .line 63
    .line 64
    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    if-ltz v7, :cond_3

    .line 69
    .line 70
    :cond_5
    :goto_2
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    if-ltz v7, :cond_14

    .line 75
    .line 76
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    check-cast v1, Lcom/google/android/gms/internal/ads/DL;

    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    const/4 v7, -0x1

    .line 86
    iget v8, v1, Lcom/google/android/gms/internal/ads/DL;->b:I

    .line 87
    .line 88
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/DL;->c:Lcom/google/android/gms/internal/ads/zA;

    .line 89
    .line 90
    iget v10, p1, Lcom/google/android/gms/internal/ads/p0;->A:I

    .line 91
    .line 92
    if-eq v10, v7, :cond_a

    .line 93
    .line 94
    if-ne v0, v6, :cond_6

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_6
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/p0;->m:Ljava/lang/String;

    .line 98
    .line 99
    const-string p2, "audio/vnd.dts.uhd;profile=p2"

    .line 100
    .line 101
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-eqz p1, :cond_7

    .line 106
    .line 107
    sget p1, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 108
    .line 109
    const/16 p2, 0x21

    .line 110
    .line 111
    if-ge p1, p2, :cond_7

    .line 112
    .line 113
    const/16 p1, 0xa

    .line 114
    .line 115
    if-le v10, p1, :cond_f

    .line 116
    .line 117
    goto/16 :goto_7

    .line 118
    .line 119
    :cond_7
    if-nez v9, :cond_8

    .line 120
    .line 121
    if-gt v10, v8, :cond_14

    .line 122
    .line 123
    goto :goto_5

    .line 124
    :cond_8
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/Et;->n(I)I

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-nez p1, :cond_9

    .line 129
    .line 130
    goto/16 :goto_7

    .line 131
    .line 132
    :cond_9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-virtual {v9, p1}, Lcom/google/android/gms/internal/ads/pA;->contains(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    if-nez p1, :cond_f

    .line 141
    .line 142
    goto/16 :goto_7

    .line 143
    .line 144
    :cond_a
    :goto_3
    iget p1, p1, Lcom/google/android/gms/internal/ads/p0;->B:I

    .line 145
    .line 146
    if-ne p1, v7, :cond_b

    .line 147
    .line 148
    const p1, 0xbb80

    .line 149
    .line 150
    .line 151
    :cond_b
    if-eqz v9, :cond_c

    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_c
    sget v6, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 155
    .line 156
    const/16 v7, 0x1d

    .line 157
    .line 158
    iget v1, v1, Lcom/google/android/gms/internal/ads/DL;->a:I

    .line 159
    .line 160
    if-lt v6, v7, :cond_d

    .line 161
    .line 162
    invoke-static {v1, p1, p2}, Lcom/google/android/gms/internal/ads/BL;->a(IILcom/google/android/gms/internal/ads/bH;)I

    .line 163
    .line 164
    .line 165
    move-result v8

    .line 166
    goto :goto_4

    .line 167
    :cond_d
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    const/4 p2, 0x0

    .line 172
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 173
    .line 174
    .line 175
    move-result-object p2

    .line 176
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/UA;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    if-eqz p1, :cond_e

    .line 181
    .line 182
    move-object p2, p1

    .line 183
    :cond_e
    check-cast p2, Ljava/lang/Integer;

    .line 184
    .line 185
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 186
    .line 187
    .line 188
    move-result v8

    .line 189
    :goto_4
    move v10, v8

    .line 190
    :cond_f
    :goto_5
    sget p1, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 191
    .line 192
    const/16 p2, 0x1c

    .line 193
    .line 194
    if-gt p1, p2, :cond_12

    .line 195
    .line 196
    if-ne v10, v3, :cond_10

    .line 197
    .line 198
    goto :goto_6

    .line 199
    :cond_10
    const/4 p2, 0x3

    .line 200
    if-eq v10, p2, :cond_11

    .line 201
    .line 202
    const/4 p2, 0x4

    .line 203
    if-eq v10, p2, :cond_11

    .line 204
    .line 205
    const/4 p2, 0x5

    .line 206
    if-ne v10, p2, :cond_12

    .line 207
    .line 208
    :cond_11
    const/4 v4, 0x6

    .line 209
    goto :goto_6

    .line 210
    :cond_12
    move v4, v10

    .line 211
    :goto_6
    const/16 p2, 0x1a

    .line 212
    .line 213
    if-gt p1, p2, :cond_13

    .line 214
    .line 215
    const-string p1, "fugu"

    .line 216
    .line 217
    sget-object p2, Lcom/google/android/gms/internal/ads/Et;->b:Ljava/lang/String;

    .line 218
    .line 219
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result p1

    .line 223
    if-eqz p1, :cond_13

    .line 224
    .line 225
    const/4 p1, 0x1

    .line 226
    if-ne v4, p1, :cond_13

    .line 227
    .line 228
    const/4 v4, 0x2

    .line 229
    :cond_13
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/Et;->n(I)I

    .line 230
    .line 231
    .line 232
    move-result p1

    .line 233
    if-eqz p1, :cond_14

    .line 234
    .line 235
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 236
    .line 237
    .line 238
    move-result-object p2

    .line 239
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    invoke-static {p2, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    return-object p1

    .line 248
    :cond_14
    :goto_7
    const/4 p1, 0x0

    .line 249
    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/EL;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/EL;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/EL;->a:Landroid/util/SparseArray;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/EL;->a:Landroid/util/SparseArray;

    .line 16
    .line 17
    sget v4, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 18
    .line 19
    const/16 v5, 0x1f

    .line 20
    .line 21
    if-lt v4, v5, :cond_2

    .line 22
    .line 23
    invoke-static {v1, v3}, LN/f;->q(Landroid/util/SparseArray;Landroid/util/SparseArray;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_4

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_2
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    if-ne v4, v5, :cond_4

    .line 39
    .line 40
    const/4 v5, 0x0

    .line 41
    :goto_0
    if-ge v5, v4, :cond_3

    .line 42
    .line 43
    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->keyAt(I)I

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    invoke-static {v7, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    if-eqz v6, :cond_4

    .line 60
    .line 61
    add-int/lit8 v5, v5, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    :goto_1
    iget v1, p0, Lcom/google/android/gms/internal/ads/EL;->b:I

    .line 65
    .line 66
    iget p1, p1, Lcom/google/android/gms/internal/ads/EL;->b:I

    .line 67
    .line 68
    if-ne v1, p1, :cond_4

    .line 69
    .line 70
    return v0

    .line 71
    :cond_4
    return v2
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/EL;->a:Landroid/util/SparseArray;

    .line 4
    .line 5
    const/16 v2, 0x1f

    .line 6
    .line 7
    if-lt v0, v2, :cond_0

    .line 8
    .line 9
    invoke-static {v1}, LN/f;->b(Landroid/util/SparseArray;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    const/16 v3, 0x11

    .line 16
    .line 17
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-ge v0, v4, :cond_1

    .line 22
    .line 23
    mul-int/lit8 v3, v3, 0x1f

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    add-int/2addr v4, v3

    .line 30
    mul-int/lit8 v4, v4, 0x1f

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-static {v3}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    add-int/2addr v3, v4

    .line 41
    add-int/lit8 v0, v0, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    move v0, v3

    .line 45
    :goto_1
    iget v1, p0, Lcom/google/android/gms/internal/ads/EL;->b:I

    .line 46
    .line 47
    mul-int/lit8 v0, v0, 0x1f

    .line 48
    .line 49
    add-int/2addr v0, v1

    .line 50
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/EL;->a:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "AudioCapabilities[maxChannelCount="

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget v2, p0, Lcom/google/android/gms/internal/ads/EL;->b:I

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v2, ", audioProfiles="

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v0, "]"

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0
.end method
