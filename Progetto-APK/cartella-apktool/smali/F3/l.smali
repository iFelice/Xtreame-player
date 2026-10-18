.class public final LF3/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final v:LH3/b;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:LD3/b;

.field public final c:Lcom/google/android/gms/internal/cast/q;

.field public final d:LD3/g;

.field public final e:LE3/g;

.field public final f:Landroid/content/ComponentName;

.field public final g:Landroid/content/ComponentName;

.field public final h:LE1/e0;

.field public final i:LE1/e0;

.field public final j:LF3/h;

.field public final k:LX3/d;

.field public final l:La/f;

.field public final m:LF3/k;

.field public n:LE3/j;

.field public o:Lcom/google/android/gms/cast/CastDevice;

.field public p:Landroid/support/v4/media/session/MediaSessionCompat;

.field public q:Z

.field public r:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

.field public s:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

.field public t:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

.field public u:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, LH3/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "MediaSessionManager"

    .line 5
    .line 6
    invoke-direct {v0, v2, v1}, LH3/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, LF3/l;->v:LH3/b;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LD3/b;Lcom/google/android/gms/internal/cast/q;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LF3/l;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, LF3/l;->b:LD3/b;

    .line 7
    .line 8
    iput-object p3, p0, LF3/l;->c:Lcom/google/android/gms/internal/cast/q;

    .line 9
    .line 10
    sget-object p3, LD3/a;->k:LH3/b;

    .line 11
    .line 12
    const-string p3, "Must be called from the main thread."

    .line 13
    .line 14
    invoke-static {p3}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sget-object v0, LD3/a;->m:LD3/a;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-static {p3}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object p3, v0, LD3/a;->b:LD3/g;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move-object p3, v1

    .line 29
    :goto_0
    iput-object p3, p0, LF3/l;->d:LD3/g;

    .line 30
    .line 31
    iget-object p3, p2, LD3/b;->L:LE3/b;

    .line 32
    .line 33
    if-nez p3, :cond_1

    .line 34
    .line 35
    move-object v0, v1

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    iget-object v0, p3, LE3/b;->J:LE3/g;

    .line 38
    .line 39
    :goto_1
    iput-object v0, p0, LF3/l;->e:LE3/g;

    .line 40
    .line 41
    new-instance v0, LF3/k;

    .line 42
    .line 43
    invoke-direct {v0, p0}, LF3/k;-><init>(LF3/l;)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, LF3/l;->m:LF3/k;

    .line 47
    .line 48
    if-nez p3, :cond_2

    .line 49
    .line 50
    move-object v0, v1

    .line 51
    goto :goto_2

    .line 52
    :cond_2
    iget-object v0, p3, LE3/b;->H:Ljava/lang/String;

    .line 53
    .line 54
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-nez v2, :cond_3

    .line 59
    .line 60
    new-instance v2, Landroid/content/ComponentName;

    .line 61
    .line 62
    invoke-direct {v2, p1, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_3
    move-object v2, v1

    .line 67
    :goto_3
    iput-object v2, p0, LF3/l;->f:Landroid/content/ComponentName;

    .line 68
    .line 69
    if-nez p3, :cond_4

    .line 70
    .line 71
    move-object p3, v1

    .line 72
    goto :goto_4

    .line 73
    :cond_4
    iget-object p3, p3, LE3/b;->G:Ljava/lang/String;

    .line 74
    .line 75
    :goto_4
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-nez v0, :cond_5

    .line 80
    .line 81
    new-instance v0, Landroid/content/ComponentName;

    .line 82
    .line 83
    invoke-direct {v0, p1, p3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    goto :goto_5

    .line 87
    :cond_5
    move-object v0, v1

    .line 88
    :goto_5
    iput-object v0, p0, LF3/l;->g:Landroid/content/ComponentName;

    .line 89
    .line 90
    new-instance p3, LE1/e0;

    .line 91
    .line 92
    invoke-direct {p3, p1}, LE1/e0;-><init>(Landroid/content/Context;)V

    .line 93
    .line 94
    .line 95
    iput-object p3, p0, LF3/l;->h:LE1/e0;

    .line 96
    .line 97
    new-instance v0, LF3/i;

    .line 98
    .line 99
    const/4 v2, 0x0

    .line 100
    invoke-direct {v0, p0, v2}, LF3/i;-><init>(LF3/l;I)V

    .line 101
    .line 102
    .line 103
    iput-object v0, p3, LE1/e0;->h:Ljava/lang/Object;

    .line 104
    .line 105
    new-instance p3, LE1/e0;

    .line 106
    .line 107
    invoke-direct {p3, p1}, LE1/e0;-><init>(Landroid/content/Context;)V

    .line 108
    .line 109
    .line 110
    iput-object p3, p0, LF3/l;->i:LE1/e0;

    .line 111
    .line 112
    new-instance v0, LF3/i;

    .line 113
    .line 114
    const/4 v3, 0x1

    .line 115
    invoke-direct {v0, p0, v3}, LF3/i;-><init>(LF3/l;I)V

    .line 116
    .line 117
    .line 118
    iput-object v0, p3, LE1/e0;->h:Ljava/lang/Object;

    .line 119
    .line 120
    new-instance p3, LX3/d;

    .line 121
    .line 122
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-direct {p3, v0, v3}, LX3/d;-><init>(Landroid/os/Looper;I)V

    .line 127
    .line 128
    .line 129
    iput-object p3, p0, LF3/l;->k:LX3/d;

    .line 130
    .line 131
    sget-object p3, LF3/h;->u:LH3/b;

    .line 132
    .line 133
    iget-object p2, p2, LD3/b;->L:LE3/b;

    .line 134
    .line 135
    if-nez p2, :cond_6

    .line 136
    .line 137
    goto/16 :goto_c

    .line 138
    .line 139
    :cond_6
    iget-object p2, p2, LE3/b;->J:LE3/g;

    .line 140
    .line 141
    if-nez p2, :cond_7

    .line 142
    .line 143
    goto/16 :goto_c

    .line 144
    .line 145
    :cond_7
    iget-object p2, p2, LE3/g;->l0:LE3/t;

    .line 146
    .line 147
    if-nez p2, :cond_8

    .line 148
    .line 149
    goto :goto_9

    .line 150
    :cond_8
    invoke-static {p2}, LF3/m;->a(LE3/t;)Ljava/util/ArrayList;

    .line 151
    .line 152
    .line 153
    move-result-object p3

    .line 154
    invoke-static {p2}, LF3/m;->b(LE3/t;)[I

    .line 155
    .line 156
    .line 157
    move-result-object p2

    .line 158
    if-nez p3, :cond_9

    .line 159
    .line 160
    const/4 v0, 0x0

    .line 161
    goto :goto_6

    .line 162
    :cond_9
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    :goto_6
    sget-object v3, LF3/h;->u:LH3/b;

    .line 167
    .line 168
    const-class v4, LE3/f;

    .line 169
    .line 170
    if-eqz p3, :cond_11

    .line 171
    .line 172
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 173
    .line 174
    .line 175
    move-result v5

    .line 176
    if-eqz v5, :cond_a

    .line 177
    .line 178
    goto :goto_b

    .line 179
    :cond_a
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 180
    .line 181
    .line 182
    move-result p3

    .line 183
    const/4 v5, 0x5

    .line 184
    if-le p3, v5, :cond_b

    .line 185
    .line 186
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    new-array p2, v2, [Ljava/lang/Object;

    .line 191
    .line 192
    const-string p3, " provides more than 5 actions."

    .line 193
    .line 194
    invoke-virtual {p1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    iget-object p3, v3, LH3/b;->a:Ljava/lang/String;

    .line 199
    .line 200
    invoke-virtual {v3, p1, p2}, LH3/b;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    .line 206
    .line 207
    goto :goto_c

    .line 208
    :cond_b
    if-eqz p2, :cond_10

    .line 209
    .line 210
    array-length p3, p2

    .line 211
    if-nez p3, :cond_c

    .line 212
    .line 213
    goto :goto_a

    .line 214
    :cond_c
    const/4 v5, 0x0

    .line 215
    :goto_7
    if-ge v5, p3, :cond_f

    .line 216
    .line 217
    aget v6, p2, v5

    .line 218
    .line 219
    if-ltz v6, :cond_e

    .line 220
    .line 221
    if-lt v6, v0, :cond_d

    .line 222
    .line 223
    goto :goto_8

    .line 224
    :cond_d
    add-int/lit8 v5, v5, 0x1

    .line 225
    .line 226
    goto :goto_7

    .line 227
    :cond_e
    :goto_8
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    new-array p2, v2, [Ljava/lang/Object;

    .line 232
    .line 233
    const-string p3, "provides a compact view action whose index is out of bounds."

    .line 234
    .line 235
    invoke-virtual {p1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    iget-object p3, v3, LH3/b;->a:Ljava/lang/String;

    .line 240
    .line 241
    invoke-virtual {v3, p1, p2}, LH3/b;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    .line 247
    .line 248
    goto :goto_c

    .line 249
    :cond_f
    :goto_9
    new-instance v1, LF3/h;

    .line 250
    .line 251
    invoke-direct {v1, p1}, LF3/h;-><init>(Landroid/content/Context;)V

    .line 252
    .line 253
    .line 254
    goto :goto_c

    .line 255
    :cond_10
    :goto_a
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    new-array p2, v2, [Ljava/lang/Object;

    .line 260
    .line 261
    const-string p3, " doesn\'t provide any actions for compact view."

    .line 262
    .line 263
    invoke-virtual {p1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    iget-object p3, v3, LH3/b;->a:Ljava/lang/String;

    .line 268
    .line 269
    invoke-virtual {v3, p1, p2}, LH3/b;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    .line 275
    .line 276
    goto :goto_c

    .line 277
    :cond_11
    :goto_b
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    new-array p2, v2, [Ljava/lang/Object;

    .line 282
    .line 283
    const-string p3, " doesn\'t provide any action."

    .line 284
    .line 285
    invoke-virtual {p1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    iget-object p3, v3, LH3/b;->a:Ljava/lang/String;

    .line 290
    .line 291
    invoke-virtual {v3, p1, p2}, LH3/b;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    .line 297
    .line 298
    :goto_c
    iput-object v1, p0, LF3/l;->j:LF3/h;

    .line 299
    .line 300
    new-instance p1, La/f;

    .line 301
    .line 302
    const/16 p2, 0x1a

    .line 303
    .line 304
    invoke-direct {p1, p0, p2}, La/f;-><init>(Ljava/lang/Object;I)V

    .line 305
    .line 306
    .line 307
    iput-object p1, p0, LF3/l;->l:La/f;

    .line 308
    .line 309
    return-void
.end method


# virtual methods
.method public final a(LE3/j;Lcom/google/android/gms/cast/CastDevice;)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    iget-object v3, p0, LF3/l;->b:LD3/b;

    .line 5
    .line 6
    if-nez v3, :cond_0

    .line 7
    .line 8
    move-object v4, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v4, v3, LD3/b;->L:LE3/b;

    .line 11
    .line 12
    :goto_0
    iget-boolean v5, p0, LF3/l;->q:Z

    .line 13
    .line 14
    if-nez v5, :cond_5

    .line 15
    .line 16
    if-eqz v3, :cond_5

    .line 17
    .line 18
    if-eqz v4, :cond_5

    .line 19
    .line 20
    iget-object v3, p0, LF3/l;->e:LE3/g;

    .line 21
    .line 22
    if-eqz v3, :cond_5

    .line 23
    .line 24
    if-eqz p1, :cond_5

    .line 25
    .line 26
    if-eqz p2, :cond_5

    .line 27
    .line 28
    iget-object v3, p0, LF3/l;->g:Landroid/content/ComponentName;

    .line 29
    .line 30
    if-nez v3, :cond_1

    .line 31
    .line 32
    goto/16 :goto_1

    .line 33
    .line 34
    :cond_1
    iput-object p1, p0, LF3/l;->n:LE3/j;

    .line 35
    .line 36
    const-string v5, "Must be called from the main thread."

    .line 37
    .line 38
    invoke-static {v5}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v5, p0, LF3/l;->m:LF3/k;

    .line 42
    .line 43
    if-eqz v5, :cond_2

    .line 44
    .line 45
    iget-object p1, p1, LE3/j;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 46
    .line 47
    invoke-virtual {p1, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    :cond_2
    iput-object p2, p0, LF3/l;->o:Lcom/google/android/gms/cast/CastDevice;

    .line 51
    .line 52
    new-instance p1, Landroid/content/Intent;

    .line 53
    .line 54
    const-string p2, "android.intent.action.MEDIA_BUTTON"

    .line 55
    .line 56
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 60
    .line 61
    .line 62
    sget p2, Lcom/google/android/gms/internal/cast/x;->a:I

    .line 63
    .line 64
    iget-object v5, p0, LF3/l;->a:Landroid/content/Context;

    .line 65
    .line 66
    invoke-static {v5, v1, p1, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iget-boolean p2, v4, LE3/b;->L:Z

    .line 71
    .line 72
    if-eqz p2, :cond_4

    .line 73
    .line 74
    new-instance p2, Landroid/support/v4/media/session/MediaSessionCompat;

    .line 75
    .line 76
    const-string v4, "CastMediaSession"

    .line 77
    .line 78
    invoke-direct {p2, v5, v4, v3, p1}, Landroid/support/v4/media/session/MediaSessionCompat;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V

    .line 79
    .line 80
    .line 81
    iput-object p2, p0, LF3/l;->p:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 82
    .line 83
    invoke-virtual {p0, v1, v2}, LF3/l;->j(ILcom/google/android/gms/cast/MediaInfo;)V

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, LF3/l;->o:Lcom/google/android/gms/cast/CastDevice;

    .line 87
    .line 88
    if-eqz p1, :cond_3

    .line 89
    .line 90
    iget-object p1, p1, Lcom/google/android/gms/cast/CastDevice;->J:Ljava/lang/String;

    .line 91
    .line 92
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-nez p1, :cond_3

    .line 97
    .line 98
    new-instance p1, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 99
    .line 100
    invoke-direct {p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    iget-object v3, p0, LF3/l;->o:Lcom/google/android/gms/cast/CastDevice;

    .line 108
    .line 109
    iget-object v3, v3, Lcom/google/android/gms/cast/CastDevice;->J:Ljava/lang/String;

    .line 110
    .line 111
    new-array v4, v0, [Ljava/lang/Object;

    .line 112
    .line 113
    aput-object v3, v4, v1

    .line 114
    .line 115
    const v1, 0x7f13003a

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2, v1, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    const-string v2, "android.media.metadata.ALBUM_ARTIST"

    .line 123
    .line 124
    invoke-virtual {p1, v2, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {p2, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 133
    .line 134
    .line 135
    :cond_3
    new-instance p1, LF3/j;

    .line 136
    .line 137
    invoke-direct {p1, p0}, LF3/j;-><init>(LF3/l;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p2, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setActive(Z)V

    .line 144
    .line 145
    .line 146
    iget-object p1, p0, LF3/l;->c:Lcom/google/android/gms/internal/cast/q;

    .line 147
    .line 148
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/cast/q;->j0(Landroid/support/v4/media/session/MediaSessionCompat;)V

    .line 149
    .line 150
    .line 151
    :cond_4
    iput-boolean v0, p0, LF3/l;->q:Z

    .line 152
    .line 153
    invoke-virtual {p0}, LF3/l;->b()V

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :cond_5
    :goto_1
    new-array p1, v1, [Ljava/lang/Object;

    .line 158
    .line 159
    const-string p2, "skip attaching media session"

    .line 160
    .line 161
    sget-object v0, LF3/l;->v:LH3/b;

    .line 162
    .line 163
    invoke-virtual {v0, p2, p1}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    return-void
.end method

.method public final b()V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, LF3/l;->n:LE3/j;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_6

    .line 8
    .line 9
    :cond_0
    invoke-virtual {v1}, LE3/j;->p()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {v1}, LE3/j;->c()Lcom/google/android/gms/cast/MediaInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v1}, LE3/j;->j()Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-eqz v4, :cond_1

    .line 22
    .line 23
    invoke-virtual {v1}, LE3/j;->b()LC3/p;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    if-eqz v4, :cond_1

    .line 28
    .line 29
    iget-object v4, v4, LC3/p;->G:Lcom/google/android/gms/cast/MediaInfo;

    .line 30
    .line 31
    if-eqz v4, :cond_1

    .line 32
    .line 33
    move-object v3, v4

    .line 34
    :cond_1
    invoke-virtual {v0, v2, v3}, LF3/l;->j(ILcom/google/android/gms/cast/MediaInfo;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, LE3/j;->g()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-nez v3, :cond_2

    .line 42
    .line 43
    invoke-virtual/range {p0 .. p0}, LF3/l;->h()V

    .line 44
    .line 45
    .line 46
    invoke-virtual/range {p0 .. p0}, LF3/l;->i()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_2
    if-eqz v2, :cond_f

    .line 51
    .line 52
    const/4 v2, 0x1

    .line 53
    iget-object v3, v0, LF3/l;->j:LF3/h;

    .line 54
    .line 55
    if-eqz v3, :cond_e

    .line 56
    .line 57
    const/4 v4, 0x0

    .line 58
    new-array v5, v4, [Ljava/lang/Object;

    .line 59
    .line 60
    sget-object v6, LF3/l;->v:LH3/b;

    .line 61
    .line 62
    const-string v7, "Update media notification."

    .line 63
    .line 64
    invoke-virtual {v6, v7, v5}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    iget-object v5, v0, LF3/l;->o:Lcom/google/android/gms/cast/CastDevice;

    .line 68
    .line 69
    iget-object v6, v0, LF3/l;->n:LE3/j;

    .line 70
    .line 71
    iget-object v7, v0, LF3/l;->p:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 72
    .line 73
    if-eqz v5, :cond_e

    .line 74
    .line 75
    if-eqz v6, :cond_e

    .line 76
    .line 77
    if-nez v7, :cond_3

    .line 78
    .line 79
    goto/16 :goto_5

    .line 80
    .line 81
    :cond_3
    invoke-virtual {v6}, LE3/j;->c()Lcom/google/android/gms/cast/MediaInfo;

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    if-eqz v8, :cond_e

    .line 86
    .line 87
    iget-object v9, v8, Lcom/google/android/gms/cast/MediaInfo;->J:LC3/l;

    .line 88
    .line 89
    if-eqz v9, :cond_e

    .line 90
    .line 91
    invoke-virtual {v6}, LE3/j;->d()LC3/r;

    .line 92
    .line 93
    .line 94
    move-result-object v10

    .line 95
    const/4 v11, 0x2

    .line 96
    if-eqz v10, :cond_6

    .line 97
    .line 98
    iget v12, v10, LC3/r;->V:I

    .line 99
    .line 100
    if-eq v12, v2, :cond_7

    .line 101
    .line 102
    if-eq v12, v11, :cond_7

    .line 103
    .line 104
    const/4 v13, 0x3

    .line 105
    if-eq v12, v13, :cond_7

    .line 106
    .line 107
    iget v12, v10, LC3/r;->I:I

    .line 108
    .line 109
    iget-object v13, v10, LC3/r;->d0:Landroid/util/SparseArray;

    .line 110
    .line 111
    invoke-virtual {v13, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v12

    .line 115
    check-cast v12, Ljava/lang/Integer;

    .line 116
    .line 117
    if-eqz v12, :cond_6

    .line 118
    .line 119
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 120
    .line 121
    .line 122
    move-result v13

    .line 123
    if-lez v13, :cond_4

    .line 124
    .line 125
    const/4 v13, 0x1

    .line 126
    goto :goto_0

    .line 127
    :cond_4
    const/4 v13, 0x0

    .line 128
    :goto_0
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 129
    .line 130
    .line 131
    move-result v12

    .line 132
    iget-object v10, v10, LC3/r;->W:Ljava/util/ArrayList;

    .line 133
    .line 134
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 135
    .line 136
    .line 137
    move-result v10

    .line 138
    add-int/lit8 v10, v10, -0x1

    .line 139
    .line 140
    if-ge v12, v10, :cond_5

    .line 141
    .line 142
    const/4 v10, 0x1

    .line 143
    goto :goto_1

    .line 144
    :cond_5
    const/4 v10, 0x0

    .line 145
    goto :goto_1

    .line 146
    :cond_6
    const/4 v10, 0x0

    .line 147
    const/4 v13, 0x0

    .line 148
    goto :goto_1

    .line 149
    :cond_7
    const/4 v10, 0x1

    .line 150
    const/4 v13, 0x1

    .line 151
    :goto_1
    invoke-virtual {v6}, LE3/j;->e()I

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    if-ne v6, v11, :cond_8

    .line 156
    .line 157
    const/4 v6, 0x1

    .line 158
    goto :goto_2

    .line 159
    :cond_8
    const/4 v6, 0x0

    .line 160
    :goto_2
    new-instance v11, LF3/g;

    .line 161
    .line 162
    const-string v12, "com.google.android.gms.cast.metadata.TITLE"

    .line 163
    .line 164
    invoke-virtual {v9, v12}, LC3/l;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v12

    .line 168
    invoke-virtual {v7}, Landroid/support/v4/media/session/MediaSessionCompat;->getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 169
    .line 170
    .line 171
    move-result-object v19

    .line 172
    iget v7, v8, Lcom/google/android/gms/cast/MediaInfo;->H:I

    .line 173
    .line 174
    iget-object v5, v5, Lcom/google/android/gms/cast/CastDevice;->J:Ljava/lang/String;

    .line 175
    .line 176
    move-object v14, v11

    .line 177
    move v15, v6

    .line 178
    move/from16 v16, v7

    .line 179
    .line 180
    move-object/from16 v17, v12

    .line 181
    .line 182
    move-object/from16 v18, v5

    .line 183
    .line 184
    move/from16 v20, v10

    .line 185
    .line 186
    move/from16 v21, v13

    .line 187
    .line 188
    invoke-direct/range {v14 .. v21}, LF3/g;-><init>(ZILjava/lang/String;Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;ZZ)V

    .line 189
    .line 190
    .line 191
    iget-object v8, v3, LF3/h;->k:LF3/g;

    .line 192
    .line 193
    if-eqz v8, :cond_9

    .line 194
    .line 195
    iget-boolean v14, v8, LF3/g;->b:Z

    .line 196
    .line 197
    if-ne v6, v14, :cond_9

    .line 198
    .line 199
    iget v6, v8, LF3/g;->c:I

    .line 200
    .line 201
    if-ne v7, v6, :cond_9

    .line 202
    .line 203
    iget-object v6, v8, LF3/g;->d:Ljava/lang/String;

    .line 204
    .line 205
    invoke-static {v12, v6}, LH3/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v6

    .line 209
    if-eqz v6, :cond_9

    .line 210
    .line 211
    iget-object v6, v8, LF3/g;->e:Ljava/lang/String;

    .line 212
    .line 213
    invoke-static {v5, v6}, LH3/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v5

    .line 217
    if-eqz v5, :cond_9

    .line 218
    .line 219
    iget-boolean v5, v8, LF3/g;->f:Z

    .line 220
    .line 221
    if-ne v10, v5, :cond_9

    .line 222
    .line 223
    iget-boolean v5, v8, LF3/g;->g:Z

    .line 224
    .line 225
    if-eq v13, v5, :cond_a

    .line 226
    .line 227
    :cond_9
    iput-object v11, v3, LF3/h;->k:LF3/g;

    .line 228
    .line 229
    invoke-virtual {v3}, LF3/h;->b()V

    .line 230
    .line 231
    .line 232
    :cond_a
    new-instance v5, Lm2/e;

    .line 233
    .line 234
    iget-object v6, v9, LC3/l;->G:Ljava/util/List;

    .line 235
    .line 236
    if-eqz v6, :cond_b

    .line 237
    .line 238
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 239
    .line 240
    .line 241
    move-result v7

    .line 242
    if-nez v7, :cond_b

    .line 243
    .line 244
    const/4 v7, 0x1

    .line 245
    goto :goto_3

    .line 246
    :cond_b
    const/4 v7, 0x0

    .line 247
    :goto_3
    if-eqz v7, :cond_c

    .line 248
    .line 249
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v4

    .line 253
    check-cast v4, LL3/a;

    .line 254
    .line 255
    goto :goto_4

    .line 256
    :cond_c
    const/4 v4, 0x0

    .line 257
    :goto_4
    invoke-direct {v5, v4}, Lm2/e;-><init>(LL3/a;)V

    .line 258
    .line 259
    .line 260
    iget-object v4, v3, LF3/h;->l:Lm2/e;

    .line 261
    .line 262
    if-eqz v4, :cond_d

    .line 263
    .line 264
    iget-object v6, v5, Lm2/e;->H:Ljava/lang/Object;

    .line 265
    .line 266
    check-cast v6, Landroid/net/Uri;

    .line 267
    .line 268
    iget-object v4, v4, Lm2/e;->H:Ljava/lang/Object;

    .line 269
    .line 270
    check-cast v4, Landroid/net/Uri;

    .line 271
    .line 272
    invoke-static {v6, v4}, LH3/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    move-result v4

    .line 276
    if-nez v4, :cond_e

    .line 277
    .line 278
    :cond_d
    new-instance v4, Lm2/c;

    .line 279
    .line 280
    const/16 v6, 0xf

    .line 281
    .line 282
    invoke-direct {v4, v3, v5, v6}, Lm2/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 283
    .line 284
    .line 285
    iget-object v3, v3, LF3/h;->i:LE1/e0;

    .line 286
    .line 287
    iput-object v4, v3, LE1/e0;->h:Ljava/lang/Object;

    .line 288
    .line 289
    iget-object v4, v5, Lm2/e;->H:Ljava/lang/Object;

    .line 290
    .line 291
    check-cast v4, Landroid/net/Uri;

    .line 292
    .line 293
    invoke-virtual {v3, v4}, LE1/e0;->b(Landroid/net/Uri;)V

    .line 294
    .line 295
    .line 296
    :cond_e
    :goto_5
    invoke-virtual {v1}, LE3/j;->j()Z

    .line 297
    .line 298
    .line 299
    move-result v1

    .line 300
    if-nez v1, :cond_f

    .line 301
    .line 302
    invoke-virtual {v0, v2}, LF3/l;->g(Z)V

    .line 303
    .line 304
    .line 305
    :cond_f
    :goto_6
    return-void
.end method

.method public final c(ILandroid/os/Bundle;Ljava/lang/String;)J
    .locals 9

    .line 1
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, -0x3855de4e

    .line 6
    .line 7
    .line 8
    const/4 v2, -0x1

    .line 9
    const/4 v3, 0x2

    .line 10
    const/4 v4, 0x1

    .line 11
    if-eq v0, v1, :cond_2

    .line 12
    .line 13
    const v1, -0x3854c70e

    .line 14
    .line 15
    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    const v1, 0xe0a3765

    .line 19
    .line 20
    .line 21
    if-eq v0, v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-string v0, "com.google.android.gms.cast.framework.action.TOGGLE_PLAYBACK"

    .line 25
    .line 26
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p3

    .line 30
    if-eqz p3, :cond_3

    .line 31
    .line 32
    const/4 p3, 0x0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const-string v0, "com.google.android.gms.cast.framework.action.SKIP_PREV"

    .line 35
    .line 36
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p3

    .line 40
    if-eqz p3, :cond_3

    .line 41
    .line 42
    const/4 p3, 0x1

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    const-string v0, "com.google.android.gms.cast.framework.action.SKIP_NEXT"

    .line 45
    .line 46
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result p3

    .line 50
    if-eqz p3, :cond_3

    .line 51
    .line 52
    const/4 p3, 0x2

    .line 53
    goto :goto_1

    .line 54
    :cond_3
    :goto_0
    const/4 p3, -0x1

    .line 55
    :goto_1
    if-eqz p3, :cond_e

    .line 56
    .line 57
    const-wide/16 v0, 0x0

    .line 58
    .line 59
    if-eq p3, v4, :cond_9

    .line 60
    .line 61
    if-eq p3, v3, :cond_4

    .line 62
    .line 63
    goto/16 :goto_7

    .line 64
    .line 65
    :cond_4
    iget-object p1, p0, LF3/l;->n:LE3/j;

    .line 66
    .line 67
    if-eqz p1, :cond_8

    .line 68
    .line 69
    invoke-virtual {p1}, LE3/j;->g()Z

    .line 70
    .line 71
    .line 72
    move-result p3

    .line 73
    if-nez p3, :cond_5

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_5
    invoke-virtual {p1}, LE3/j;->d()LC3/r;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-static {p1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    iget-wide v5, p1, LC3/r;->N:J

    .line 84
    .line 85
    const-wide/16 v7, 0x40

    .line 86
    .line 87
    and-long/2addr v5, v7

    .line 88
    cmp-long p3, v5, v0

    .line 89
    .line 90
    if-eqz p3, :cond_6

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_6
    iget p3, p1, LC3/r;->V:I

    .line 94
    .line 95
    if-nez p3, :cond_7

    .line 96
    .line 97
    iget p3, p1, LC3/r;->I:I

    .line 98
    .line 99
    iget-object v3, p1, LC3/r;->d0:Landroid/util/SparseArray;

    .line 100
    .line 101
    invoke-virtual {v3, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p3

    .line 105
    check-cast p3, Ljava/lang/Integer;

    .line 106
    .line 107
    if-eqz p3, :cond_8

    .line 108
    .line 109
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 110
    .line 111
    .line 112
    move-result p3

    .line 113
    iget-object p1, p1, LC3/r;->W:Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    add-int/2addr p1, v2

    .line 120
    if-ge p3, p1, :cond_8

    .line 121
    .line 122
    :cond_7
    :goto_2
    const-wide/16 v0, 0x20

    .line 123
    .line 124
    goto :goto_7

    .line 125
    :cond_8
    :goto_3
    const-string p1, "android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_NEXT"

    .line 126
    .line 127
    invoke-virtual {p2, p1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 128
    .line 129
    .line 130
    return-wide v0

    .line 131
    :cond_9
    iget-object p1, p0, LF3/l;->n:LE3/j;

    .line 132
    .line 133
    if-eqz p1, :cond_d

    .line 134
    .line 135
    invoke-virtual {p1}, LE3/j;->g()Z

    .line 136
    .line 137
    .line 138
    move-result p3

    .line 139
    if-nez p3, :cond_a

    .line 140
    .line 141
    goto :goto_5

    .line 142
    :cond_a
    invoke-virtual {p1}, LE3/j;->d()LC3/r;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-static {p1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    iget-wide v2, p1, LC3/r;->N:J

    .line 150
    .line 151
    const-wide/16 v5, 0x80

    .line 152
    .line 153
    and-long/2addr v2, v5

    .line 154
    cmp-long p3, v2, v0

    .line 155
    .line 156
    if-eqz p3, :cond_b

    .line 157
    .line 158
    goto :goto_4

    .line 159
    :cond_b
    iget p3, p1, LC3/r;->V:I

    .line 160
    .line 161
    if-nez p3, :cond_c

    .line 162
    .line 163
    iget p3, p1, LC3/r;->I:I

    .line 164
    .line 165
    iget-object p1, p1, LC3/r;->d0:Landroid/util/SparseArray;

    .line 166
    .line 167
    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    check-cast p1, Ljava/lang/Integer;

    .line 172
    .line 173
    if-eqz p1, :cond_d

    .line 174
    .line 175
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    if-lez p1, :cond_d

    .line 180
    .line 181
    :cond_c
    :goto_4
    const-wide/16 v0, 0x10

    .line 182
    .line 183
    goto :goto_7

    .line 184
    :cond_d
    :goto_5
    const-string p1, "android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_PREVIOUS"

    .line 185
    .line 186
    invoke-virtual {p2, p1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 187
    .line 188
    .line 189
    return-wide v0

    .line 190
    :cond_e
    const/4 p2, 0x3

    .line 191
    if-ne p1, p2, :cond_f

    .line 192
    .line 193
    const-wide/16 v0, 0x202

    .line 194
    .line 195
    const/4 p1, 0x3

    .line 196
    goto :goto_6

    .line 197
    :cond_f
    const-wide/16 p2, 0x200

    .line 198
    .line 199
    move-wide v0, p2

    .line 200
    :goto_6
    if-eq p1, v3, :cond_10

    .line 201
    .line 202
    :goto_7
    return-wide v0

    .line 203
    :cond_10
    const-wide/16 p1, 0x204

    .line 204
    .line 205
    return-wide p1
.end method

.method public final d(LC3/l;)Landroid/net/Uri;
    .locals 3

    .line 1
    iget-object v0, p0, LF3/l;->b:LD3/b;

    .line 2
    .line 3
    iget-object v0, v0, LD3/b;->L:LE3/b;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, LE3/b;->i()V

    .line 9
    .line 10
    .line 11
    :goto_0
    const/4 v0, 0x0

    .line 12
    iget-object p1, p1, LC3/l;->G:Ljava/util/List;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    const/4 v1, 0x0

    .line 25
    :goto_1
    const/4 v2, 0x0

    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, LL3/a;

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_2
    move-object p1, v2

    .line 36
    :goto_2
    if-nez p1, :cond_3

    .line 37
    .line 38
    return-object v2

    .line 39
    :cond_3
    iget-object p1, p1, LL3/a;->H:Landroid/net/Uri;

    .line 40
    .line 41
    return-object p1
.end method

.method public final e(Landroid/graphics/Bitmap;I)V
    .locals 3

    .line 1
    iget-object v0, p0, LF3/l;->p:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-nez p1, :cond_1

    .line 7
    .line 8
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-static {v1, v1, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {p1, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 17
    .line 18
    .line 19
    :cond_1
    iget-object v1, p0, LF3/l;->p:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 20
    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    goto :goto_0

    .line 25
    :cond_2
    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->getController()Landroid/support/v4/media/session/MediaControllerCompat;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    :goto_0
    if-nez v1, :cond_3

    .line 34
    .line 35
    new-instance v1, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 36
    .line 37
    invoke-direct {v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_3
    new-instance v2, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 42
    .line 43
    invoke-direct {v2, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 44
    .line 45
    .line 46
    move-object v1, v2

    .line 47
    :goto_1
    if-nez p2, :cond_4

    .line 48
    .line 49
    const-string p2, "android.media.metadata.DISPLAY_ICON"

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_4
    const-string p2, "android.media.metadata.ALBUM_ART"

    .line 53
    .line 54
    :goto_2
    invoke-virtual {v1, p2, p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final f(Landroid/support/v4/media/session/PlaybackStateCompat$Builder;Ljava/lang/String;LE3/e;)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p2

    .line 3
    .line 4
    move-object/from16 v2, p3

    .line 5
    .line 6
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    const/4 v4, 0x1

    .line 11
    const-string v5, "com.google.android.gms.cast.framework.action.REWIND"

    .line 12
    .line 13
    const/4 v6, 0x2

    .line 14
    const-string v7, "com.google.android.gms.cast.framework.action.STOP_CASTING"

    .line 15
    .line 16
    const/4 v8, 0x3

    .line 17
    const-string v9, "com.google.android.gms.cast.framework.action.DISCONNECT"

    .line 18
    .line 19
    const-string v10, "com.google.android.gms.cast.framework.action.FORWARD"

    .line 20
    .line 21
    sparse-switch v3, :sswitch_data_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :sswitch_0
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    goto :goto_1

    .line 33
    :sswitch_1
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_0

    .line 38
    .line 39
    const/4 v3, 0x3

    .line 40
    goto :goto_1

    .line 41
    :sswitch_2
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_0

    .line 46
    .line 47
    const/4 v3, 0x2

    .line 48
    goto :goto_1

    .line 49
    :sswitch_3
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_0

    .line 54
    .line 55
    const/4 v3, 0x1

    .line 56
    goto :goto_1

    .line 57
    :cond_0
    :goto_0
    const/4 v3, -0x1

    .line 58
    :goto_1
    const-wide/16 v11, 0x2710

    .line 59
    .line 60
    iget-object v14, v0, LF3/l;->a:Landroid/content/Context;

    .line 61
    .line 62
    iget-object v13, v0, LF3/l;->e:LE3/g;

    .line 63
    .line 64
    if-eqz v3, :cond_c

    .line 65
    .line 66
    if-eq v3, v4, :cond_6

    .line 67
    .line 68
    if-eq v3, v6, :cond_4

    .line 69
    .line 70
    if-eq v3, v8, :cond_2

    .line 71
    .line 72
    if-eqz v2, :cond_1

    .line 73
    .line 74
    new-instance v3, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;

    .line 75
    .line 76
    iget-object v4, v2, LE3/e;->I:Ljava/lang/String;

    .line 77
    .line 78
    iget v2, v2, LE3/e;->H:I

    .line 79
    .line 80
    invoke-direct {v3, v1, v4, v2}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    goto/16 :goto_6

    .line 88
    .line 89
    :cond_1
    const/4 v1, 0x0

    .line 90
    goto/16 :goto_6

    .line 91
    .line 92
    :cond_2
    iget-object v1, v0, LF3/l;->u:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 93
    .line 94
    if-nez v1, :cond_3

    .line 95
    .line 96
    if-eqz v13, :cond_3

    .line 97
    .line 98
    new-instance v1, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;

    .line 99
    .line 100
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    iget v3, v13, LE3/g;->k0:I

    .line 105
    .line 106
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    iget v3, v13, LE3/g;->W:I

    .line 111
    .line 112
    invoke-direct {v1, v9, v2, v3}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    iput-object v1, v0, LF3/l;->u:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 120
    .line 121
    :cond_3
    iget-object v1, v0, LF3/l;->u:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 122
    .line 123
    goto/16 :goto_6

    .line 124
    .line 125
    :cond_4
    iget-object v1, v0, LF3/l;->t:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 126
    .line 127
    if-nez v1, :cond_5

    .line 128
    .line 129
    if-eqz v13, :cond_5

    .line 130
    .line 131
    new-instance v1, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;

    .line 132
    .line 133
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    iget v3, v13, LE3/g;->k0:I

    .line 138
    .line 139
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    iget v3, v13, LE3/g;->W:I

    .line 144
    .line 145
    invoke-direct {v1, v7, v2, v3}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    iput-object v1, v0, LF3/l;->t:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 153
    .line 154
    :cond_5
    iget-object v1, v0, LF3/l;->t:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 155
    .line 156
    goto/16 :goto_6

    .line 157
    .line 158
    :cond_6
    iget-object v1, v0, LF3/l;->s:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 159
    .line 160
    if-nez v1, :cond_b

    .line 161
    .line 162
    if-eqz v13, :cond_b

    .line 163
    .line 164
    sget-object v1, LF3/m;->a:LH3/b;

    .line 165
    .line 166
    iget-wide v1, v13, LE3/g;->I:J

    .line 167
    .line 168
    cmp-long v3, v1, v11

    .line 169
    .line 170
    if-nez v3, :cond_7

    .line 171
    .line 172
    iget v4, v13, LE3/g;->i0:I

    .line 173
    .line 174
    const-wide/16 v6, 0x7530

    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_7
    const-wide/16 v6, 0x7530

    .line 178
    .line 179
    cmp-long v4, v1, v6

    .line 180
    .line 181
    if-eqz v4, :cond_8

    .line 182
    .line 183
    iget v4, v13, LE3/g;->h0:I

    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_8
    iget v4, v13, LE3/g;->j0:I

    .line 187
    .line 188
    :goto_2
    if-nez v3, :cond_9

    .line 189
    .line 190
    iget v1, v13, LE3/g;->U:I

    .line 191
    .line 192
    goto :goto_3

    .line 193
    :cond_9
    cmp-long v3, v1, v6

    .line 194
    .line 195
    if-eqz v3, :cond_a

    .line 196
    .line 197
    iget v1, v13, LE3/g;->T:I

    .line 198
    .line 199
    goto :goto_3

    .line 200
    :cond_a
    iget v1, v13, LE3/g;->V:I

    .line 201
    .line 202
    :goto_3
    new-instance v2, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;

    .line 203
    .line 204
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    invoke-direct {v2, v5, v3, v1}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    iput-object v1, v0, LF3/l;->s:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 220
    .line 221
    :cond_b
    iget-object v1, v0, LF3/l;->s:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 222
    .line 223
    goto :goto_6

    .line 224
    :cond_c
    iget-object v1, v0, LF3/l;->r:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 225
    .line 226
    if-nez v1, :cond_11

    .line 227
    .line 228
    if-eqz v13, :cond_11

    .line 229
    .line 230
    sget-object v1, LF3/m;->a:LH3/b;

    .line 231
    .line 232
    iget-wide v1, v13, LE3/g;->I:J

    .line 233
    .line 234
    cmp-long v3, v1, v11

    .line 235
    .line 236
    if-nez v3, :cond_d

    .line 237
    .line 238
    iget v4, v13, LE3/g;->f0:I

    .line 239
    .line 240
    move v6, v4

    .line 241
    const-wide/16 v4, 0x7530

    .line 242
    .line 243
    goto :goto_4

    .line 244
    :cond_d
    const-wide/16 v4, 0x7530

    .line 245
    .line 246
    cmp-long v6, v1, v4

    .line 247
    .line 248
    if-eqz v6, :cond_e

    .line 249
    .line 250
    iget v6, v13, LE3/g;->e0:I

    .line 251
    .line 252
    goto :goto_4

    .line 253
    :cond_e
    iget v6, v13, LE3/g;->g0:I

    .line 254
    .line 255
    :goto_4
    if-nez v3, :cond_f

    .line 256
    .line 257
    iget v1, v13, LE3/g;->R:I

    .line 258
    .line 259
    goto :goto_5

    .line 260
    :cond_f
    cmp-long v3, v1, v4

    .line 261
    .line 262
    if-eqz v3, :cond_10

    .line 263
    .line 264
    iget v1, v13, LE3/g;->Q:I

    .line 265
    .line 266
    goto :goto_5

    .line 267
    :cond_10
    iget v1, v13, LE3/g;->S:I

    .line 268
    .line 269
    :goto_5
    new-instance v2, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;

    .line 270
    .line 271
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 272
    .line 273
    .line 274
    move-result-object v3

    .line 275
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v3

    .line 279
    invoke-direct {v2, v10, v3, v1}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    iput-object v1, v0, LF3/l;->r:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 287
    .line 288
    :cond_11
    iget-object v1, v0, LF3/l;->r:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 289
    .line 290
    :goto_6
    if-eqz v1, :cond_12

    .line 291
    .line 292
    move-object/from16 v2, p1

    .line 293
    .line 294
    invoke-virtual {v2, v1}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->addCustomAction(Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    .line 295
    .line 296
    .line 297
    :cond_12
    return-void

    .line 298
    nop

    .line 299
    :sswitch_data_0
    .sparse-switch
        -0x655132e4 -> :sswitch_3
        -0x27d32f79 -> :sswitch_2
        -0x76b6783 -> :sswitch_1
        0x51303e64 -> :sswitch_0
    .end sparse-switch
.end method

.method public final g(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, LF3/l;->b:LD3/b;

    .line 2
    .line 3
    iget-boolean v0, v0, LD3/b;->M:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, LF3/l;->k:LX3/d;

    .line 9
    .line 10
    iget-object v1, p0, LF3/l;->l:La/f;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    new-instance v2, Landroid/content/Intent;

    .line 18
    .line 19
    const-class v3, Lcom/google/android/gms/cast/framework/ReconnectionService;

    .line 20
    .line 21
    iget-object v4, p0, LF3/l;->a:Landroid/content/Context;

    .line 22
    .line 23
    invoke-direct {v2, v4, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    :try_start_0
    invoke-virtual {v4, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :catch_0
    if-eqz p1, :cond_2

    .line 38
    .line 39
    const-wide/16 v2, 0x3e8

    .line 40
    .line 41
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 42
    .line 43
    .line 44
    :cond_2
    :goto_0
    return-void
.end method

.method public final h()V
    .locals 4

    .line 1
    iget-object v0, p0, LF3/l;->j:LF3/h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    new-array v1, v1, [Ljava/lang/Object;

    .line 7
    .line 8
    sget-object v2, LF3/l;->v:LH3/b;

    .line 9
    .line 10
    const-string v3, "Stopping media notification."

    .line 11
    .line 12
    invoke-virtual {v2, v3, v1}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, v0, LF3/h;->i:LE1/e0;

    .line 16
    .line 17
    invoke-virtual {v1}, LE1/e0;->c()V

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    iput-object v2, v1, LE1/e0;->h:Ljava/lang/Object;

    .line 22
    .line 23
    iget-object v0, v0, LF3/h;->b:Landroid/app/NotificationManager;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const-string v1, "castMediaNotification"

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public final i()V
    .locals 3

    .line 1
    iget-object v0, p0, LF3/l;->b:LD3/b;

    .line 2
    .line 3
    iget-boolean v0, v0, LD3/b;->M:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, LF3/l;->k:LX3/d;

    .line 9
    .line 10
    iget-object v1, p0, LF3/l;->l:La/f;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Landroid/content/Intent;

    .line 16
    .line 17
    const-class v1, Lcom/google/android/gms/cast/framework/ReconnectionService;

    .line 18
    .line 19
    iget-object v2, p0, LF3/l;->a:Landroid/content/Context;

    .line 20
    .line 21
    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final j(ILcom/google/android/gms/cast/MediaInfo;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v0, LF3/l;->p:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 8
    .line 9
    if-nez v3, :cond_0

    .line 10
    .line 11
    goto/16 :goto_e

    .line 12
    .line 13
    :cond_0
    new-instance v4, Landroid/os/Bundle;

    .line 14
    .line 15
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v5, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    .line 19
    .line 20
    invoke-direct {v5}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-object v6, v0, LF3/l;->n:LE3/j;

    .line 24
    .line 25
    const/4 v7, 0x0

    .line 26
    iget-object v8, v0, LF3/l;->e:LE3/g;

    .line 27
    .line 28
    if-eqz v6, :cond_e

    .line 29
    .line 30
    iget-object v11, v0, LF3/l;->j:LF3/h;

    .line 31
    .line 32
    if-nez v11, :cond_1

    .line 33
    .line 34
    goto/16 :goto_7

    .line 35
    .line 36
    :cond_1
    invoke-virtual {v6}, LE3/j;->p()I

    .line 37
    .line 38
    .line 39
    move-result v11

    .line 40
    if-eqz v11, :cond_2

    .line 41
    .line 42
    invoke-virtual {v6}, LE3/j;->i()Z

    .line 43
    .line 44
    .line 45
    move-result v11

    .line 46
    if-eqz v11, :cond_3

    .line 47
    .line 48
    :cond_2
    const-wide/16 v11, 0x0

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    invoke-virtual {v6}, LE3/j;->a()J

    .line 52
    .line 53
    .line 54
    move-result-wide v11

    .line 55
    :goto_0
    const/high16 v6, 0x3f800000    # 1.0f

    .line 56
    .line 57
    invoke-virtual {v5, v1, v11, v12, v6}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJF)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    .line 58
    .line 59
    .line 60
    if-nez v1, :cond_4

    .line 61
    .line 62
    invoke-virtual {v5}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    goto/16 :goto_8

    .line 67
    .line 68
    :cond_4
    if-eqz v8, :cond_5

    .line 69
    .line 70
    iget-object v6, v8, LE3/g;->l0:LE3/t;

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_5
    move-object v6, v7

    .line 74
    :goto_1
    iget-object v11, v0, LF3/l;->n:LE3/j;

    .line 75
    .line 76
    if-eqz v11, :cond_6

    .line 77
    .line 78
    invoke-virtual {v11}, LE3/j;->i()Z

    .line 79
    .line 80
    .line 81
    move-result v11

    .line 82
    if-nez v11, :cond_6

    .line 83
    .line 84
    iget-object v11, v0, LF3/l;->n:LE3/j;

    .line 85
    .line 86
    invoke-virtual {v11}, LE3/j;->m()Z

    .line 87
    .line 88
    .line 89
    move-result v11

    .line 90
    if-eqz v11, :cond_7

    .line 91
    .line 92
    :cond_6
    const-wide/16 v11, 0x0

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_7
    const-wide/16 v11, 0x100

    .line 96
    .line 97
    :goto_2
    const-string v13, "com.google.android.gms.cast.framework.action.SKIP_NEXT"

    .line 98
    .line 99
    const-string v14, "com.google.android.gms.cast.framework.action.SKIP_PREV"

    .line 100
    .line 101
    const-string v15, "com.google.android.gms.cast.framework.action.TOGGLE_PLAYBACK"

    .line 102
    .line 103
    if-eqz v6, :cond_a

    .line 104
    .line 105
    invoke-static {v6}, LF3/m;->a(LE3/t;)Ljava/util/ArrayList;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    if-eqz v6, :cond_d

    .line 110
    .line 111
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    .line 117
    .line 118
    move-result v16

    .line 119
    if-eqz v16, :cond_d

    .line 120
    .line 121
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v16

    .line 125
    move-object/from16 v9, v16

    .line 126
    .line 127
    check-cast v9, LE3/e;

    .line 128
    .line 129
    iget-object v10, v9, LE3/e;->G:Ljava/lang/String;

    .line 130
    .line 131
    invoke-static {v10, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 132
    .line 133
    .line 134
    move-result v16

    .line 135
    if-nez v16, :cond_9

    .line 136
    .line 137
    invoke-static {v10, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 138
    .line 139
    .line 140
    move-result v16

    .line 141
    if-nez v16, :cond_9

    .line 142
    .line 143
    invoke-static {v10, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 144
    .line 145
    .line 146
    move-result v16

    .line 147
    if-eqz v16, :cond_8

    .line 148
    .line 149
    goto :goto_4

    .line 150
    :cond_8
    invoke-virtual {v0, v5, v10, v9}, LF3/l;->f(Landroid/support/v4/media/session/PlaybackStateCompat$Builder;Ljava/lang/String;LE3/e;)V

    .line 151
    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_9
    :goto_4
    invoke-virtual {v0, v1, v4, v10}, LF3/l;->c(ILandroid/os/Bundle;Ljava/lang/String;)J

    .line 155
    .line 156
    .line 157
    move-result-wide v9

    .line 158
    or-long/2addr v9, v11

    .line 159
    move-wide v11, v9

    .line 160
    goto :goto_3

    .line 161
    :cond_a
    if-eqz v8, :cond_d

    .line 162
    .line 163
    iget-object v6, v8, LE3/g;->G:Ljava/util/ArrayList;

    .line 164
    .line 165
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 166
    .line 167
    .line 168
    move-result-object v6

    .line 169
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 170
    .line 171
    .line 172
    move-result v9

    .line 173
    if-eqz v9, :cond_d

    .line 174
    .line 175
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v9

    .line 179
    check-cast v9, Ljava/lang/String;

    .line 180
    .line 181
    invoke-static {v9, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 182
    .line 183
    .line 184
    move-result v10

    .line 185
    if-nez v10, :cond_c

    .line 186
    .line 187
    invoke-static {v9, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 188
    .line 189
    .line 190
    move-result v10

    .line 191
    if-nez v10, :cond_c

    .line 192
    .line 193
    invoke-static {v9, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 194
    .line 195
    .line 196
    move-result v10

    .line 197
    if-eqz v10, :cond_b

    .line 198
    .line 199
    goto :goto_6

    .line 200
    :cond_b
    invoke-virtual {v0, v5, v9, v7}, LF3/l;->f(Landroid/support/v4/media/session/PlaybackStateCompat$Builder;Ljava/lang/String;LE3/e;)V

    .line 201
    .line 202
    .line 203
    goto :goto_5

    .line 204
    :cond_c
    :goto_6
    invoke-virtual {v0, v1, v4, v9}, LF3/l;->c(ILandroid/os/Bundle;Ljava/lang/String;)J

    .line 205
    .line 206
    .line 207
    move-result-wide v9

    .line 208
    or-long/2addr v9, v11

    .line 209
    move-wide v11, v9

    .line 210
    goto :goto_5

    .line 211
    :cond_d
    invoke-virtual {v5, v11, v12}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setActions(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    .line 212
    .line 213
    .line 214
    move-result-object v5

    .line 215
    invoke-virtual {v5}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 216
    .line 217
    .line 218
    move-result-object v5

    .line 219
    goto :goto_8

    .line 220
    :cond_e
    :goto_7
    invoke-virtual {v5}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 221
    .line 222
    .line 223
    move-result-object v5

    .line 224
    :goto_8
    invoke-virtual {v3, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 225
    .line 226
    .line 227
    const/4 v5, 0x1

    .line 228
    const-string v6, "android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_PREVIOUS"

    .line 229
    .line 230
    if-eqz v8, :cond_f

    .line 231
    .line 232
    iget-boolean v9, v8, LE3/g;->m0:Z

    .line 233
    .line 234
    if-eqz v9, :cond_f

    .line 235
    .line 236
    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 237
    .line 238
    .line 239
    :cond_f
    const-string v9, "android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_NEXT"

    .line 240
    .line 241
    if-eqz v8, :cond_10

    .line 242
    .line 243
    iget-boolean v8, v8, LE3/g;->n0:Z

    .line 244
    .line 245
    if-eqz v8, :cond_10

    .line 246
    .line 247
    invoke-virtual {v4, v9, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 248
    .line 249
    .line 250
    :cond_10
    invoke-virtual {v4, v6}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 251
    .line 252
    .line 253
    move-result v5

    .line 254
    if-nez v5, :cond_11

    .line 255
    .line 256
    invoke-virtual {v4, v9}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 257
    .line 258
    .line 259
    move-result v5

    .line 260
    if-eqz v5, :cond_12

    .line 261
    .line 262
    :cond_11
    invoke-virtual {v3, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->setExtras(Landroid/os/Bundle;)V

    .line 263
    .line 264
    .line 265
    :cond_12
    if-eqz v1, :cond_1d

    .line 266
    .line 267
    iget-object v1, v0, LF3/l;->n:LE3/j;

    .line 268
    .line 269
    const/4 v4, 0x0

    .line 270
    if-eqz v1, :cond_14

    .line 271
    .line 272
    iget-object v1, v0, LF3/l;->f:Landroid/content/ComponentName;

    .line 273
    .line 274
    if-nez v1, :cond_13

    .line 275
    .line 276
    move-object v1, v7

    .line 277
    goto :goto_9

    .line 278
    :cond_13
    new-instance v5, Landroid/content/Intent;

    .line 279
    .line 280
    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v5, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 284
    .line 285
    .line 286
    sget v1, Lcom/google/android/gms/internal/cast/x;->a:I

    .line 287
    .line 288
    const/high16 v6, 0x8000000

    .line 289
    .line 290
    or-int/2addr v1, v6

    .line 291
    iget-object v6, v0, LF3/l;->a:Landroid/content/Context;

    .line 292
    .line 293
    invoke-static {v6, v4, v5, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    :goto_9
    if-eqz v1, :cond_14

    .line 298
    .line 299
    invoke-virtual {v3, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->setSessionActivity(Landroid/app/PendingIntent;)V

    .line 300
    .line 301
    .line 302
    :cond_14
    iget-object v1, v0, LF3/l;->n:LE3/j;

    .line 303
    .line 304
    if-eqz v1, :cond_1c

    .line 305
    .line 306
    iget-object v3, v0, LF3/l;->p:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 307
    .line 308
    if-eqz v3, :cond_1c

    .line 309
    .line 310
    if-eqz v2, :cond_1c

    .line 311
    .line 312
    iget-object v5, v2, Lcom/google/android/gms/cast/MediaInfo;->J:LC3/l;

    .line 313
    .line 314
    if-eqz v5, :cond_1c

    .line 315
    .line 316
    invoke-virtual {v1}, LE3/j;->i()Z

    .line 317
    .line 318
    .line 319
    move-result v1

    .line 320
    if-eqz v1, :cond_15

    .line 321
    .line 322
    const-wide/16 v9, 0x0

    .line 323
    .line 324
    goto :goto_a

    .line 325
    :cond_15
    iget-wide v9, v2, Lcom/google/android/gms/cast/MediaInfo;->K:J

    .line 326
    .line 327
    :goto_a
    const-string v1, "com.google.android.gms.cast.metadata.TITLE"

    .line 328
    .line 329
    invoke-virtual {v5, v1}, LC3/l;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    const-string v2, "com.google.android.gms.cast.metadata.SUBTITLE"

    .line 334
    .line 335
    invoke-virtual {v5, v2}, LC3/l;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v2

    .line 339
    iget-object v6, v0, LF3/l;->p:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 340
    .line 341
    if-nez v6, :cond_16

    .line 342
    .line 343
    move-object v6, v7

    .line 344
    goto :goto_b

    .line 345
    :cond_16
    invoke-virtual {v6}, Landroid/support/v4/media/session/MediaSessionCompat;->getController()Landroid/support/v4/media/session/MediaControllerCompat;

    .line 346
    .line 347
    .line 348
    move-result-object v6

    .line 349
    invoke-virtual {v6}, Landroid/support/v4/media/session/MediaControllerCompat;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    .line 350
    .line 351
    .line 352
    move-result-object v6

    .line 353
    :goto_b
    if-nez v6, :cond_17

    .line 354
    .line 355
    new-instance v6, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 356
    .line 357
    invoke-direct {v6}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    .line 358
    .line 359
    .line 360
    goto :goto_c

    .line 361
    :cond_17
    new-instance v8, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 362
    .line 363
    invoke-direct {v8, v6}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 364
    .line 365
    .line 366
    move-object v6, v8

    .line 367
    :goto_c
    const-string v8, "android.media.metadata.DURATION"

    .line 368
    .line 369
    invoke-virtual {v6, v8, v9, v10}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putLong(Ljava/lang/String;J)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 370
    .line 371
    .line 372
    move-result-object v6

    .line 373
    if-eqz v1, :cond_18

    .line 374
    .line 375
    const-string v8, "android.media.metadata.TITLE"

    .line 376
    .line 377
    invoke-virtual {v6, v8, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 378
    .line 379
    .line 380
    const-string v8, "android.media.metadata.DISPLAY_TITLE"

    .line 381
    .line 382
    invoke-virtual {v6, v8, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 383
    .line 384
    .line 385
    :cond_18
    if-eqz v2, :cond_19

    .line 386
    .line 387
    const-string v1, "android.media.metadata.DISPLAY_SUBTITLE"

    .line 388
    .line 389
    invoke-virtual {v6, v1, v2}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 390
    .line 391
    .line 392
    :cond_19
    invoke-virtual {v6}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    .line 393
    .line 394
    .line 395
    move-result-object v1

    .line 396
    invoke-virtual {v3, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v0, v5}, LF3/l;->d(LC3/l;)Landroid/net/Uri;

    .line 400
    .line 401
    .line 402
    move-result-object v1

    .line 403
    if-eqz v1, :cond_1a

    .line 404
    .line 405
    iget-object v2, v0, LF3/l;->h:LE1/e0;

    .line 406
    .line 407
    invoke-virtual {v2, v1}, LE1/e0;->b(Landroid/net/Uri;)V

    .line 408
    .line 409
    .line 410
    goto :goto_d

    .line 411
    :cond_1a
    invoke-virtual {v0, v7, v4}, LF3/l;->e(Landroid/graphics/Bitmap;I)V

    .line 412
    .line 413
    .line 414
    :goto_d
    invoke-virtual {v0, v5}, LF3/l;->d(LC3/l;)Landroid/net/Uri;

    .line 415
    .line 416
    .line 417
    move-result-object v1

    .line 418
    if-eqz v1, :cond_1b

    .line 419
    .line 420
    iget-object v2, v0, LF3/l;->i:LE1/e0;

    .line 421
    .line 422
    invoke-virtual {v2, v1}, LE1/e0;->b(Landroid/net/Uri;)V

    .line 423
    .line 424
    .line 425
    return-void

    .line 426
    :cond_1b
    const/4 v1, 0x3

    .line 427
    invoke-virtual {v0, v7, v1}, LF3/l;->e(Landroid/graphics/Bitmap;I)V

    .line 428
    .line 429
    .line 430
    :cond_1c
    :goto_e
    return-void

    .line 431
    :cond_1d
    new-instance v1, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 432
    .line 433
    invoke-direct {v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    .line 434
    .line 435
    .line 436
    invoke-virtual {v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    .line 437
    .line 438
    .line 439
    move-result-object v1

    .line 440
    invoke-virtual {v3, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 441
    .line 442
    .line 443
    return-void
.end method
