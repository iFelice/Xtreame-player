.class public final LF3/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final u:LH3/b;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/app/NotificationManager;

.field public final c:LE3/g;

.field public final d:Landroid/content/ComponentName;

.field public final e:Landroid/content/ComponentName;

.field public f:Ljava/util/ArrayList;

.field public g:[I

.field public final h:J

.field public final i:LE1/e0;

.field public final j:Landroid/content/res/Resources;

.field public k:LF3/g;

.field public l:Lm2/e;

.field public m:LD/j;

.field public n:LD/j;

.field public o:LD/j;

.field public p:LD/j;

.field public q:LD/j;

.field public r:LD/j;

.field public s:LD/j;

.field public t:LD/j;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, LH3/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "MediaNotificationProxy"

    .line 5
    .line 6
    invoke-direct {v0, v2, v1}, LH3/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, LF3/h;->u:LH3/b;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LF3/h;->f:Ljava/util/ArrayList;

    .line 10
    .line 11
    iput-object p1, p0, LF3/h;->a:Landroid/content/Context;

    .line 12
    .line 13
    const-string v0, "notification"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/app/NotificationManager;

    .line 20
    .line 21
    iput-object v0, p0, LF3/h;->b:Landroid/app/NotificationManager;

    .line 22
    .line 23
    sget-object v1, LD3/a;->k:LH3/b;

    .line 24
    .line 25
    const-string v1, "Must be called from the main thread."

    .line 26
    .line 27
    invoke-static {v1}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    sget-object v2, LD3/a;->m:LD3/a;

    .line 31
    .line 32
    invoke-static {v2}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v1}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v1, v2, LD3/a;->d:LD3/b;

    .line 39
    .line 40
    invoke-static {v1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, v1, LD3/b;->L:LE3/b;

    .line 44
    .line 45
    invoke-static {v1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    iget-object v2, v1, LE3/b;->J:LE3/g;

    .line 49
    .line 50
    invoke-static {v2}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iput-object v2, p0, LF3/h;->c:LE3/g;

    .line 54
    .line 55
    invoke-virtual {v1}, LE3/b;->i()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    iput-object v3, p0, LF3/h;->j:Landroid/content/res/Resources;

    .line 63
    .line 64
    new-instance v4, Landroid/content/ComponentName;

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    iget-object v1, v1, LE3/b;->G:Ljava/lang/String;

    .line 71
    .line 72
    invoke-direct {v4, v5, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iput-object v4, p0, LF3/h;->d:Landroid/content/ComponentName;

    .line 76
    .line 77
    iget-object v1, v2, LE3/g;->J:Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-nez v4, :cond_0

    .line 84
    .line 85
    new-instance v4, Landroid/content/ComponentName;

    .line 86
    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-direct {v4, v5, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iput-object v4, p0, LF3/h;->e:Landroid/content/ComponentName;

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_0
    const/4 v1, 0x0

    .line 98
    iput-object v1, p0, LF3/h;->e:Landroid/content/ComponentName;

    .line 99
    .line 100
    :goto_0
    iget-wide v4, v2, LE3/g;->I:J

    .line 101
    .line 102
    iput-wide v4, p0, LF3/h;->h:J

    .line 103
    .line 104
    iget v1, v2, LE3/g;->X:I

    .line 105
    .line 106
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    new-instance v2, LE3/c;

    .line 111
    .line 112
    const/4 v3, 0x1

    .line 113
    invoke-direct {v2, v3, v1, v1}, LE3/c;-><init>(III)V

    .line 114
    .line 115
    .line 116
    new-instance v1, LE1/e0;

    .line 117
    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-direct {v1, v3, v2}, LE1/e0;-><init>(Landroid/content/Context;LE3/c;)V

    .line 123
    .line 124
    .line 125
    iput-object v1, p0, LF3/h;->i:LE1/e0;

    .line 126
    .line 127
    invoke-static {}, LU2/m;->a()Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-eqz v1, :cond_1

    .line 132
    .line 133
    if-eqz v0, :cond_1

    .line 134
    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    const v1, 0x7f130125

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-static {p1}, LE1/b0;->b(Ljava/lang/String;)Landroid/app/NotificationChannel;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Hf;->r(Landroid/app/NotificationChannel;)V

    .line 151
    .line 152
    .line 153
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/Hf;->s(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 154
    .line 155
    .line 156
    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/cast/d0;->K0:Lcom/google/android/gms/internal/cast/d0;

    .line 157
    .line 158
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/D0;->a(Lcom/google/android/gms/internal/cast/d0;)V

    .line 159
    .line 160
    .line 161
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)LD/j;
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    const-string v4, "com.google.android.gms.cast.framework.action.REWIND"

    .line 10
    .line 11
    const-string v5, "com.google.android.gms.cast.framework.action.SKIP_NEXT"

    .line 12
    .line 13
    const-string v7, "com.google.android.gms.cast.framework.action.SKIP_PREV"

    .line 14
    .line 15
    const-string v8, "com.google.android.gms.cast.framework.action.STOP_CASTING"

    .line 16
    .line 17
    const-string v9, "com.google.android.gms.cast.framework.action.DISCONNECT"

    .line 18
    .line 19
    const-string v10, "com.google.android.gms.cast.framework.action.FORWARD"

    .line 20
    .line 21
    const-string v11, "com.google.android.gms.cast.framework.action.TOGGLE_PLAYBACK"

    .line 22
    .line 23
    sparse-switch v3, :sswitch_data_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :sswitch_0
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    const/4 v3, 0x3

    .line 34
    goto :goto_1

    .line 35
    :sswitch_1
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_0

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    goto :goto_1

    .line 43
    :sswitch_2
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_0

    .line 48
    .line 49
    const/4 v3, 0x6

    .line 50
    goto :goto_1

    .line 51
    :sswitch_3
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_0

    .line 56
    .line 57
    const/4 v3, 0x5

    .line 58
    goto :goto_1

    .line 59
    :sswitch_4
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_0

    .line 64
    .line 65
    const/4 v3, 0x2

    .line 66
    goto :goto_1

    .line 67
    :sswitch_5
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_0

    .line 72
    .line 73
    const/4 v3, 0x1

    .line 74
    goto :goto_1

    .line 75
    :sswitch_6
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-eqz v3, :cond_0

    .line 80
    .line 81
    const/4 v3, 0x4

    .line 82
    goto :goto_1

    .line 83
    :cond_0
    :goto_0
    const/4 v3, -0x1

    .line 84
    :goto_1
    const-string v6, ""

    .line 85
    .line 86
    const/high16 v16, 0x8000000

    .line 87
    .line 88
    const-string v13, "googlecast-extra_skip_step_ms"

    .line 89
    .line 90
    move-object/from16 v17, v13

    .line 91
    .line 92
    iget-wide v12, v0, LF3/h;->h:J

    .line 93
    .line 94
    iget-object v14, v0, LF3/h;->j:Landroid/content/res/Resources;

    .line 95
    .line 96
    iget-object v15, v0, LF3/h;->a:Landroid/content/Context;

    .line 97
    .line 98
    iget-object v2, v0, LF3/h;->d:Landroid/content/ComponentName;

    .line 99
    .line 100
    move-object/from16 v19, v11

    .line 101
    .line 102
    iget-object v11, v0, LF3/h;->c:LE3/g;

    .line 103
    .line 104
    packed-switch v3, :pswitch_data_0

    .line 105
    .line 106
    .line 107
    const/4 v3, 0x1

    .line 108
    new-array v2, v3, [Ljava/lang/Object;

    .line 109
    .line 110
    const/4 v3, 0x0

    .line 111
    aput-object v1, v2, v3

    .line 112
    .line 113
    sget-object v1, LF3/h;->u:LH3/b;

    .line 114
    .line 115
    iget-object v3, v1, LH3/b;->a:Ljava/lang/String;

    .line 116
    .line 117
    const-string v4, "Action: %s is not a pre-defined action."

    .line 118
    .line 119
    invoke-virtual {v1, v4, v2}, LH3/b;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    const/4 v1, 0x0

    .line 127
    return-object v1

    .line 128
    :pswitch_0
    iget-object v3, v0, LF3/h;->s:LD/j;

    .line 129
    .line 130
    if-nez v3, :cond_4

    .line 131
    .line 132
    new-instance v3, Landroid/content/Intent;

    .line 133
    .line 134
    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 138
    .line 139
    .line 140
    sget v2, Lcom/google/android/gms/internal/cast/x;->a:I

    .line 141
    .line 142
    const/4 v1, 0x0

    .line 143
    invoke-static {v15, v1, v3, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 144
    .line 145
    .line 146
    move-result-object v22

    .line 147
    iget v2, v11, LE3/g;->W:I

    .line 148
    .line 149
    const/4 v3, 0x1

    .line 150
    new-array v3, v3, [Ljava/lang/Object;

    .line 151
    .line 152
    aput-object v6, v3, v1

    .line 153
    .line 154
    iget v1, v11, LE3/g;->k0:I

    .line 155
    .line 156
    invoke-virtual {v14, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    if-nez v2, :cond_1

    .line 161
    .line 162
    const/16 v20, 0x0

    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_1
    const/4 v3, 0x0

    .line 166
    invoke-static {v3, v6, v2}, Landroidx/core/graphics/drawable/IconCompat;->c(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    move-object/from16 v20, v2

    .line 171
    .line 172
    :goto_2
    new-instance v23, Landroid/os/Bundle;

    .line 173
    .line 174
    invoke-direct/range {v23 .. v23}, Landroid/os/Bundle;-><init>()V

    .line 175
    .line 176
    .line 177
    invoke-static {v1}, LD/o;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 178
    .line 179
    .line 180
    move-result-object v21

    .line 181
    new-instance v1, Ljava/util/ArrayList;

    .line 182
    .line 183
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .line 185
    .line 186
    new-instance v2, Ljava/util/ArrayList;

    .line 187
    .line 188
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 192
    .line 193
    .line 194
    move-result v3

    .line 195
    if-eqz v3, :cond_2

    .line 196
    .line 197
    const/16 v25, 0x0

    .line 198
    .line 199
    goto :goto_3

    .line 200
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 201
    .line 202
    .line 203
    move-result v3

    .line 204
    new-array v3, v3, [LD/y;

    .line 205
    .line 206
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    check-cast v1, [LD/y;

    .line 211
    .line 212
    move-object/from16 v25, v1

    .line 213
    .line 214
    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    if-eqz v1, :cond_3

    .line 219
    .line 220
    const/16 v24, 0x0

    .line 221
    .line 222
    goto :goto_4

    .line 223
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    new-array v1, v1, [LD/y;

    .line 228
    .line 229
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    move-object v15, v1

    .line 234
    check-cast v15, [LD/y;

    .line 235
    .line 236
    move-object/from16 v24, v15

    .line 237
    .line 238
    :goto_4
    new-instance v1, LD/j;

    .line 239
    .line 240
    const/16 v29, 0x0

    .line 241
    .line 242
    const/16 v30, 0x0

    .line 243
    .line 244
    const/16 v28, 0x1

    .line 245
    .line 246
    const/16 v27, 0x0

    .line 247
    .line 248
    move-object/from16 v19, v1

    .line 249
    .line 250
    move/from16 v26, v28

    .line 251
    .line 252
    invoke-direct/range {v19 .. v30}, LD/j;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[LD/y;[LD/y;ZIZZZ)V

    .line 253
    .line 254
    .line 255
    iput-object v1, v0, LF3/h;->s:LD/j;

    .line 256
    .line 257
    :cond_4
    iget-object v1, v0, LF3/h;->s:LD/j;

    .line 258
    .line 259
    return-object v1

    .line 260
    :pswitch_1
    iget-object v3, v0, LF3/h;->t:LD/j;

    .line 261
    .line 262
    if-nez v3, :cond_8

    .line 263
    .line 264
    new-instance v3, Landroid/content/Intent;

    .line 265
    .line 266
    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 270
    .line 271
    .line 272
    sget v2, Lcom/google/android/gms/internal/cast/x;->a:I

    .line 273
    .line 274
    const/4 v1, 0x0

    .line 275
    invoke-static {v15, v1, v3, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 276
    .line 277
    .line 278
    move-result-object v21

    .line 279
    iget v1, v11, LE3/g;->W:I

    .line 280
    .line 281
    iget v2, v11, LE3/g;->k0:I

    .line 282
    .line 283
    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    if-nez v1, :cond_5

    .line 288
    .line 289
    const/16 v19, 0x0

    .line 290
    .line 291
    goto :goto_5

    .line 292
    :cond_5
    const/4 v3, 0x0

    .line 293
    invoke-static {v3, v6, v1}, Landroidx/core/graphics/drawable/IconCompat;->c(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    move-object/from16 v19, v1

    .line 298
    .line 299
    :goto_5
    new-instance v22, Landroid/os/Bundle;

    .line 300
    .line 301
    invoke-direct/range {v22 .. v22}, Landroid/os/Bundle;-><init>()V

    .line 302
    .line 303
    .line 304
    invoke-static {v2}, LD/o;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 305
    .line 306
    .line 307
    move-result-object v20

    .line 308
    new-instance v1, Ljava/util/ArrayList;

    .line 309
    .line 310
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 311
    .line 312
    .line 313
    new-instance v2, Ljava/util/ArrayList;

    .line 314
    .line 315
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 319
    .line 320
    .line 321
    move-result v3

    .line 322
    if-eqz v3, :cond_6

    .line 323
    .line 324
    const/16 v24, 0x0

    .line 325
    .line 326
    goto :goto_6

    .line 327
    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 328
    .line 329
    .line 330
    move-result v3

    .line 331
    new-array v3, v3, [LD/y;

    .line 332
    .line 333
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    check-cast v1, [LD/y;

    .line 338
    .line 339
    move-object/from16 v24, v1

    .line 340
    .line 341
    :goto_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 342
    .line 343
    .line 344
    move-result v1

    .line 345
    if-eqz v1, :cond_7

    .line 346
    .line 347
    const/16 v23, 0x0

    .line 348
    .line 349
    goto :goto_7

    .line 350
    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 351
    .line 352
    .line 353
    move-result v1

    .line 354
    new-array v1, v1, [LD/y;

    .line 355
    .line 356
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v1

    .line 360
    move-object v15, v1

    .line 361
    check-cast v15, [LD/y;

    .line 362
    .line 363
    move-object/from16 v23, v15

    .line 364
    .line 365
    :goto_7
    new-instance v1, LD/j;

    .line 366
    .line 367
    const/16 v28, 0x0

    .line 368
    .line 369
    const/16 v29, 0x0

    .line 370
    .line 371
    const/16 v27, 0x1

    .line 372
    .line 373
    const/16 v26, 0x0

    .line 374
    .line 375
    move-object/from16 v18, v1

    .line 376
    .line 377
    move/from16 v25, v27

    .line 378
    .line 379
    invoke-direct/range {v18 .. v29}, LD/j;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[LD/y;[LD/y;ZIZZZ)V

    .line 380
    .line 381
    .line 382
    iput-object v1, v0, LF3/h;->t:LD/j;

    .line 383
    .line 384
    :cond_8
    iget-object v1, v0, LF3/h;->t:LD/j;

    .line 385
    .line 386
    return-object v1

    .line 387
    :pswitch_2
    iget-object v3, v0, LF3/h;->r:LD/j;

    .line 388
    .line 389
    if-nez v3, :cond_10

    .line 390
    .line 391
    new-instance v3, Landroid/content/Intent;

    .line 392
    .line 393
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 397
    .line 398
    .line 399
    move-object/from16 v4, v17

    .line 400
    .line 401
    invoke-virtual {v3, v4, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 402
    .line 403
    .line 404
    sget v2, Lcom/google/android/gms/internal/cast/x;->a:I

    .line 405
    .line 406
    or-int v2, v2, v16

    .line 407
    .line 408
    const/4 v1, 0x0

    .line 409
    invoke-static {v15, v1, v3, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 410
    .line 411
    .line 412
    move-result-object v21

    .line 413
    sget-object v1, LF3/m;->a:LH3/b;

    .line 414
    .line 415
    const-wide/16 v1, 0x2710

    .line 416
    .line 417
    cmp-long v3, v12, v1

    .line 418
    .line 419
    iget v1, v11, LE3/g;->T:I

    .line 420
    .line 421
    if-nez v3, :cond_9

    .line 422
    .line 423
    iget v1, v11, LE3/g;->U:I

    .line 424
    .line 425
    const-wide/16 v4, 0x7530

    .line 426
    .line 427
    goto :goto_8

    .line 428
    :cond_9
    const-wide/16 v4, 0x7530

    .line 429
    .line 430
    cmp-long v2, v12, v4

    .line 431
    .line 432
    if-eqz v2, :cond_a

    .line 433
    .line 434
    goto :goto_8

    .line 435
    :cond_a
    iget v1, v11, LE3/g;->V:I

    .line 436
    .line 437
    :goto_8
    if-nez v3, :cond_b

    .line 438
    .line 439
    iget v2, v11, LE3/g;->i0:I

    .line 440
    .line 441
    goto :goto_9

    .line 442
    :cond_b
    cmp-long v2, v12, v4

    .line 443
    .line 444
    if-eqz v2, :cond_c

    .line 445
    .line 446
    iget v2, v11, LE3/g;->h0:I

    .line 447
    .line 448
    goto :goto_9

    .line 449
    :cond_c
    iget v2, v11, LE3/g;->j0:I

    .line 450
    .line 451
    :goto_9
    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v2

    .line 455
    if-nez v1, :cond_d

    .line 456
    .line 457
    const/16 v19, 0x0

    .line 458
    .line 459
    goto :goto_a

    .line 460
    :cond_d
    const/4 v3, 0x0

    .line 461
    invoke-static {v3, v6, v1}, Landroidx/core/graphics/drawable/IconCompat;->c(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    .line 462
    .line 463
    .line 464
    move-result-object v1

    .line 465
    move-object/from16 v19, v1

    .line 466
    .line 467
    :goto_a
    new-instance v22, Landroid/os/Bundle;

    .line 468
    .line 469
    invoke-direct/range {v22 .. v22}, Landroid/os/Bundle;-><init>()V

    .line 470
    .line 471
    .line 472
    invoke-static {v2}, LD/o;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 473
    .line 474
    .line 475
    move-result-object v20

    .line 476
    new-instance v1, Ljava/util/ArrayList;

    .line 477
    .line 478
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 479
    .line 480
    .line 481
    new-instance v2, Ljava/util/ArrayList;

    .line 482
    .line 483
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 484
    .line 485
    .line 486
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 487
    .line 488
    .line 489
    move-result v3

    .line 490
    if-eqz v3, :cond_e

    .line 491
    .line 492
    const/16 v24, 0x0

    .line 493
    .line 494
    goto :goto_b

    .line 495
    :cond_e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 496
    .line 497
    .line 498
    move-result v3

    .line 499
    new-array v3, v3, [LD/y;

    .line 500
    .line 501
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 502
    .line 503
    .line 504
    move-result-object v1

    .line 505
    check-cast v1, [LD/y;

    .line 506
    .line 507
    move-object/from16 v24, v1

    .line 508
    .line 509
    :goto_b
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 510
    .line 511
    .line 512
    move-result v1

    .line 513
    if-eqz v1, :cond_f

    .line 514
    .line 515
    const/16 v23, 0x0

    .line 516
    .line 517
    goto :goto_c

    .line 518
    :cond_f
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 519
    .line 520
    .line 521
    move-result v1

    .line 522
    new-array v1, v1, [LD/y;

    .line 523
    .line 524
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 525
    .line 526
    .line 527
    move-result-object v1

    .line 528
    move-object v15, v1

    .line 529
    check-cast v15, [LD/y;

    .line 530
    .line 531
    move-object/from16 v23, v15

    .line 532
    .line 533
    :goto_c
    new-instance v1, LD/j;

    .line 534
    .line 535
    const/16 v28, 0x0

    .line 536
    .line 537
    const/16 v29, 0x0

    .line 538
    .line 539
    const/16 v27, 0x1

    .line 540
    .line 541
    const/16 v26, 0x0

    .line 542
    .line 543
    move-object/from16 v18, v1

    .line 544
    .line 545
    move/from16 v25, v27

    .line 546
    .line 547
    invoke-direct/range {v18 .. v29}, LD/j;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[LD/y;[LD/y;ZIZZZ)V

    .line 548
    .line 549
    .line 550
    iput-object v1, v0, LF3/h;->r:LD/j;

    .line 551
    .line 552
    :cond_10
    iget-object v1, v0, LF3/h;->r:LD/j;

    .line 553
    .line 554
    return-object v1

    .line 555
    :pswitch_3
    move-object/from16 v4, v17

    .line 556
    .line 557
    iget-object v3, v0, LF3/h;->q:LD/j;

    .line 558
    .line 559
    if-nez v3, :cond_18

    .line 560
    .line 561
    new-instance v3, Landroid/content/Intent;

    .line 562
    .line 563
    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 564
    .line 565
    .line 566
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 567
    .line 568
    .line 569
    invoke-virtual {v3, v4, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 570
    .line 571
    .line 572
    sget v2, Lcom/google/android/gms/internal/cast/x;->a:I

    .line 573
    .line 574
    or-int v2, v2, v16

    .line 575
    .line 576
    const/4 v1, 0x0

    .line 577
    invoke-static {v15, v1, v3, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 578
    .line 579
    .line 580
    move-result-object v21

    .line 581
    sget-object v1, LF3/m;->a:LH3/b;

    .line 582
    .line 583
    const-wide/16 v1, 0x2710

    .line 584
    .line 585
    cmp-long v3, v12, v1

    .line 586
    .line 587
    iget v1, v11, LE3/g;->Q:I

    .line 588
    .line 589
    if-nez v3, :cond_11

    .line 590
    .line 591
    iget v1, v11, LE3/g;->R:I

    .line 592
    .line 593
    const-wide/16 v4, 0x7530

    .line 594
    .line 595
    goto :goto_d

    .line 596
    :cond_11
    const-wide/16 v4, 0x7530

    .line 597
    .line 598
    cmp-long v2, v12, v4

    .line 599
    .line 600
    if-eqz v2, :cond_12

    .line 601
    .line 602
    goto :goto_d

    .line 603
    :cond_12
    iget v1, v11, LE3/g;->S:I

    .line 604
    .line 605
    :goto_d
    if-nez v3, :cond_13

    .line 606
    .line 607
    iget v2, v11, LE3/g;->f0:I

    .line 608
    .line 609
    goto :goto_e

    .line 610
    :cond_13
    cmp-long v2, v12, v4

    .line 611
    .line 612
    if-eqz v2, :cond_14

    .line 613
    .line 614
    iget v2, v11, LE3/g;->e0:I

    .line 615
    .line 616
    goto :goto_e

    .line 617
    :cond_14
    iget v2, v11, LE3/g;->g0:I

    .line 618
    .line 619
    :goto_e
    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v2

    .line 623
    if-nez v1, :cond_15

    .line 624
    .line 625
    const/16 v19, 0x0

    .line 626
    .line 627
    goto :goto_f

    .line 628
    :cond_15
    const/4 v3, 0x0

    .line 629
    invoke-static {v3, v6, v1}, Landroidx/core/graphics/drawable/IconCompat;->c(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    .line 630
    .line 631
    .line 632
    move-result-object v1

    .line 633
    move-object/from16 v19, v1

    .line 634
    .line 635
    :goto_f
    new-instance v22, Landroid/os/Bundle;

    .line 636
    .line 637
    invoke-direct/range {v22 .. v22}, Landroid/os/Bundle;-><init>()V

    .line 638
    .line 639
    .line 640
    invoke-static {v2}, LD/o;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 641
    .line 642
    .line 643
    move-result-object v20

    .line 644
    new-instance v1, Ljava/util/ArrayList;

    .line 645
    .line 646
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 647
    .line 648
    .line 649
    new-instance v2, Ljava/util/ArrayList;

    .line 650
    .line 651
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 652
    .line 653
    .line 654
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 655
    .line 656
    .line 657
    move-result v3

    .line 658
    if-eqz v3, :cond_16

    .line 659
    .line 660
    const/16 v24, 0x0

    .line 661
    .line 662
    goto :goto_10

    .line 663
    :cond_16
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 664
    .line 665
    .line 666
    move-result v3

    .line 667
    new-array v3, v3, [LD/y;

    .line 668
    .line 669
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 670
    .line 671
    .line 672
    move-result-object v1

    .line 673
    check-cast v1, [LD/y;

    .line 674
    .line 675
    move-object/from16 v24, v1

    .line 676
    .line 677
    :goto_10
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 678
    .line 679
    .line 680
    move-result v1

    .line 681
    if-eqz v1, :cond_17

    .line 682
    .line 683
    const/16 v23, 0x0

    .line 684
    .line 685
    goto :goto_11

    .line 686
    :cond_17
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 687
    .line 688
    .line 689
    move-result v1

    .line 690
    new-array v1, v1, [LD/y;

    .line 691
    .line 692
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 693
    .line 694
    .line 695
    move-result-object v1

    .line 696
    move-object v15, v1

    .line 697
    check-cast v15, [LD/y;

    .line 698
    .line 699
    move-object/from16 v23, v15

    .line 700
    .line 701
    :goto_11
    new-instance v1, LD/j;

    .line 702
    .line 703
    const/16 v28, 0x0

    .line 704
    .line 705
    const/16 v29, 0x0

    .line 706
    .line 707
    const/16 v27, 0x1

    .line 708
    .line 709
    const/16 v26, 0x0

    .line 710
    .line 711
    move-object/from16 v18, v1

    .line 712
    .line 713
    move/from16 v25, v27

    .line 714
    .line 715
    invoke-direct/range {v18 .. v29}, LD/j;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[LD/y;[LD/y;ZIZZZ)V

    .line 716
    .line 717
    .line 718
    iput-object v1, v0, LF3/h;->q:LD/j;

    .line 719
    .line 720
    :cond_18
    iget-object v1, v0, LF3/h;->q:LD/j;

    .line 721
    .line 722
    return-object v1

    .line 723
    :pswitch_4
    iget-object v3, v0, LF3/h;->k:LF3/g;

    .line 724
    .line 725
    iget-boolean v3, v3, LF3/g;->g:Z

    .line 726
    .line 727
    iget-object v4, v0, LF3/h;->p:LD/j;

    .line 728
    .line 729
    if-nez v4, :cond_1d

    .line 730
    .line 731
    if-eqz v3, :cond_19

    .line 732
    .line 733
    new-instance v3, Landroid/content/Intent;

    .line 734
    .line 735
    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 736
    .line 737
    .line 738
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 739
    .line 740
    .line 741
    sget v2, Lcom/google/android/gms/internal/cast/x;->a:I

    .line 742
    .line 743
    const/4 v1, 0x0

    .line 744
    invoke-static {v15, v1, v3, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 745
    .line 746
    .line 747
    move-result-object v1

    .line 748
    move-object/from16 v21, v1

    .line 749
    .line 750
    goto :goto_12

    .line 751
    :cond_19
    const/16 v21, 0x0

    .line 752
    .line 753
    :goto_12
    iget v1, v11, LE3/g;->P:I

    .line 754
    .line 755
    iget v2, v11, LE3/g;->d0:I

    .line 756
    .line 757
    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 758
    .line 759
    .line 760
    move-result-object v2

    .line 761
    if-nez v1, :cond_1a

    .line 762
    .line 763
    const/16 v19, 0x0

    .line 764
    .line 765
    goto :goto_13

    .line 766
    :cond_1a
    const/4 v3, 0x0

    .line 767
    invoke-static {v3, v6, v1}, Landroidx/core/graphics/drawable/IconCompat;->c(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    .line 768
    .line 769
    .line 770
    move-result-object v1

    .line 771
    move-object/from16 v19, v1

    .line 772
    .line 773
    :goto_13
    new-instance v22, Landroid/os/Bundle;

    .line 774
    .line 775
    invoke-direct/range {v22 .. v22}, Landroid/os/Bundle;-><init>()V

    .line 776
    .line 777
    .line 778
    invoke-static {v2}, LD/o;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 779
    .line 780
    .line 781
    move-result-object v20

    .line 782
    new-instance v1, Ljava/util/ArrayList;

    .line 783
    .line 784
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 785
    .line 786
    .line 787
    new-instance v2, Ljava/util/ArrayList;

    .line 788
    .line 789
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 790
    .line 791
    .line 792
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 793
    .line 794
    .line 795
    move-result v3

    .line 796
    if-eqz v3, :cond_1b

    .line 797
    .line 798
    const/16 v24, 0x0

    .line 799
    .line 800
    goto :goto_14

    .line 801
    :cond_1b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 802
    .line 803
    .line 804
    move-result v3

    .line 805
    new-array v3, v3, [LD/y;

    .line 806
    .line 807
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 808
    .line 809
    .line 810
    move-result-object v1

    .line 811
    check-cast v1, [LD/y;

    .line 812
    .line 813
    move-object/from16 v24, v1

    .line 814
    .line 815
    :goto_14
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 816
    .line 817
    .line 818
    move-result v1

    .line 819
    if-eqz v1, :cond_1c

    .line 820
    .line 821
    const/16 v23, 0x0

    .line 822
    .line 823
    goto :goto_15

    .line 824
    :cond_1c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 825
    .line 826
    .line 827
    move-result v1

    .line 828
    new-array v1, v1, [LD/y;

    .line 829
    .line 830
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 831
    .line 832
    .line 833
    move-result-object v1

    .line 834
    move-object v15, v1

    .line 835
    check-cast v15, [LD/y;

    .line 836
    .line 837
    move-object/from16 v23, v15

    .line 838
    .line 839
    :goto_15
    new-instance v1, LD/j;

    .line 840
    .line 841
    const/16 v28, 0x0

    .line 842
    .line 843
    const/16 v29, 0x0

    .line 844
    .line 845
    const/16 v27, 0x1

    .line 846
    .line 847
    const/16 v26, 0x0

    .line 848
    .line 849
    move-object/from16 v18, v1

    .line 850
    .line 851
    move/from16 v25, v27

    .line 852
    .line 853
    invoke-direct/range {v18 .. v29}, LD/j;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[LD/y;[LD/y;ZIZZZ)V

    .line 854
    .line 855
    .line 856
    iput-object v1, v0, LF3/h;->p:LD/j;

    .line 857
    .line 858
    :cond_1d
    iget-object v1, v0, LF3/h;->p:LD/j;

    .line 859
    .line 860
    return-object v1

    .line 861
    :pswitch_5
    iget-object v3, v0, LF3/h;->k:LF3/g;

    .line 862
    .line 863
    iget-boolean v3, v3, LF3/g;->f:Z

    .line 864
    .line 865
    iget-object v4, v0, LF3/h;->o:LD/j;

    .line 866
    .line 867
    if-nez v4, :cond_22

    .line 868
    .line 869
    if-eqz v3, :cond_1e

    .line 870
    .line 871
    new-instance v3, Landroid/content/Intent;

    .line 872
    .line 873
    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 874
    .line 875
    .line 876
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 877
    .line 878
    .line 879
    sget v2, Lcom/google/android/gms/internal/cast/x;->a:I

    .line 880
    .line 881
    const/4 v1, 0x0

    .line 882
    invoke-static {v15, v1, v3, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 883
    .line 884
    .line 885
    move-result-object v1

    .line 886
    move-object/from16 v21, v1

    .line 887
    .line 888
    goto :goto_16

    .line 889
    :cond_1e
    const/16 v21, 0x0

    .line 890
    .line 891
    :goto_16
    iget v1, v11, LE3/g;->O:I

    .line 892
    .line 893
    iget v2, v11, LE3/g;->c0:I

    .line 894
    .line 895
    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 896
    .line 897
    .line 898
    move-result-object v2

    .line 899
    if-nez v1, :cond_1f

    .line 900
    .line 901
    const/16 v19, 0x0

    .line 902
    .line 903
    goto :goto_17

    .line 904
    :cond_1f
    const/4 v3, 0x0

    .line 905
    invoke-static {v3, v6, v1}, Landroidx/core/graphics/drawable/IconCompat;->c(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    .line 906
    .line 907
    .line 908
    move-result-object v1

    .line 909
    move-object/from16 v19, v1

    .line 910
    .line 911
    :goto_17
    new-instance v22, Landroid/os/Bundle;

    .line 912
    .line 913
    invoke-direct/range {v22 .. v22}, Landroid/os/Bundle;-><init>()V

    .line 914
    .line 915
    .line 916
    invoke-static {v2}, LD/o;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 917
    .line 918
    .line 919
    move-result-object v20

    .line 920
    new-instance v1, Ljava/util/ArrayList;

    .line 921
    .line 922
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 923
    .line 924
    .line 925
    new-instance v2, Ljava/util/ArrayList;

    .line 926
    .line 927
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 928
    .line 929
    .line 930
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 931
    .line 932
    .line 933
    move-result v3

    .line 934
    if-eqz v3, :cond_20

    .line 935
    .line 936
    const/16 v24, 0x0

    .line 937
    .line 938
    goto :goto_18

    .line 939
    :cond_20
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 940
    .line 941
    .line 942
    move-result v3

    .line 943
    new-array v3, v3, [LD/y;

    .line 944
    .line 945
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 946
    .line 947
    .line 948
    move-result-object v1

    .line 949
    check-cast v1, [LD/y;

    .line 950
    .line 951
    move-object/from16 v24, v1

    .line 952
    .line 953
    :goto_18
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 954
    .line 955
    .line 956
    move-result v1

    .line 957
    if-eqz v1, :cond_21

    .line 958
    .line 959
    const/16 v23, 0x0

    .line 960
    .line 961
    goto :goto_19

    .line 962
    :cond_21
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 963
    .line 964
    .line 965
    move-result v1

    .line 966
    new-array v1, v1, [LD/y;

    .line 967
    .line 968
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 969
    .line 970
    .line 971
    move-result-object v1

    .line 972
    move-object v15, v1

    .line 973
    check-cast v15, [LD/y;

    .line 974
    .line 975
    move-object/from16 v23, v15

    .line 976
    .line 977
    :goto_19
    new-instance v1, LD/j;

    .line 978
    .line 979
    const/16 v28, 0x0

    .line 980
    .line 981
    const/16 v29, 0x0

    .line 982
    .line 983
    const/16 v27, 0x1

    .line 984
    .line 985
    const/16 v26, 0x0

    .line 986
    .line 987
    move-object/from16 v18, v1

    .line 988
    .line 989
    move/from16 v25, v27

    .line 990
    .line 991
    invoke-direct/range {v18 .. v29}, LD/j;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[LD/y;[LD/y;ZIZZZ)V

    .line 992
    .line 993
    .line 994
    iput-object v1, v0, LF3/h;->o:LD/j;

    .line 995
    .line 996
    :cond_22
    iget-object v1, v0, LF3/h;->o:LD/j;

    .line 997
    .line 998
    return-object v1

    .line 999
    :pswitch_6
    iget-object v3, v0, LF3/h;->k:LF3/g;

    .line 1000
    .line 1001
    iget v4, v3, LF3/g;->c:I

    .line 1002
    .line 1003
    iget-boolean v3, v3, LF3/g;->b:Z

    .line 1004
    .line 1005
    if-eqz v3, :cond_28

    .line 1006
    .line 1007
    iget-object v3, v0, LF3/h;->n:LD/j;

    .line 1008
    .line 1009
    if-nez v3, :cond_27

    .line 1010
    .line 1011
    const/4 v3, 0x2

    .line 1012
    if-ne v4, v3, :cond_23

    .line 1013
    .line 1014
    iget v3, v11, LE3/g;->L:I

    .line 1015
    .line 1016
    iget v4, v11, LE3/g;->Z:I

    .line 1017
    .line 1018
    goto :goto_1a

    .line 1019
    :cond_23
    iget v3, v11, LE3/g;->M:I

    .line 1020
    .line 1021
    iget v4, v11, LE3/g;->a0:I

    .line 1022
    .line 1023
    :goto_1a
    new-instance v5, Landroid/content/Intent;

    .line 1024
    .line 1025
    move-object/from16 v7, v19

    .line 1026
    .line 1027
    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1028
    .line 1029
    .line 1030
    invoke-virtual {v5, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1031
    .line 1032
    .line 1033
    sget v2, Lcom/google/android/gms/internal/cast/x;->a:I

    .line 1034
    .line 1035
    const/4 v1, 0x0

    .line 1036
    invoke-static {v15, v1, v5, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 1037
    .line 1038
    .line 1039
    move-result-object v21

    .line 1040
    invoke-virtual {v14, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1041
    .line 1042
    .line 1043
    move-result-object v1

    .line 1044
    if-nez v3, :cond_24

    .line 1045
    .line 1046
    const/16 v19, 0x0

    .line 1047
    .line 1048
    goto :goto_1b

    .line 1049
    :cond_24
    const/4 v2, 0x0

    .line 1050
    invoke-static {v2, v6, v3}, Landroidx/core/graphics/drawable/IconCompat;->c(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    .line 1051
    .line 1052
    .line 1053
    move-result-object v3

    .line 1054
    move-object/from16 v19, v3

    .line 1055
    .line 1056
    :goto_1b
    new-instance v22, Landroid/os/Bundle;

    .line 1057
    .line 1058
    invoke-direct/range {v22 .. v22}, Landroid/os/Bundle;-><init>()V

    .line 1059
    .line 1060
    .line 1061
    invoke-static {v1}, LD/o;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v20

    .line 1065
    new-instance v1, Ljava/util/ArrayList;

    .line 1066
    .line 1067
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1068
    .line 1069
    .line 1070
    new-instance v2, Ljava/util/ArrayList;

    .line 1071
    .line 1072
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1073
    .line 1074
    .line 1075
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1076
    .line 1077
    .line 1078
    move-result v3

    .line 1079
    if-eqz v3, :cond_25

    .line 1080
    .line 1081
    const/16 v24, 0x0

    .line 1082
    .line 1083
    goto :goto_1c

    .line 1084
    :cond_25
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1085
    .line 1086
    .line 1087
    move-result v3

    .line 1088
    new-array v3, v3, [LD/y;

    .line 1089
    .line 1090
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1091
    .line 1092
    .line 1093
    move-result-object v1

    .line 1094
    check-cast v1, [LD/y;

    .line 1095
    .line 1096
    move-object/from16 v24, v1

    .line 1097
    .line 1098
    :goto_1c
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1099
    .line 1100
    .line 1101
    move-result v1

    .line 1102
    if-eqz v1, :cond_26

    .line 1103
    .line 1104
    const/16 v23, 0x0

    .line 1105
    .line 1106
    goto :goto_1d

    .line 1107
    :cond_26
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1108
    .line 1109
    .line 1110
    move-result v1

    .line 1111
    new-array v1, v1, [LD/y;

    .line 1112
    .line 1113
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1114
    .line 1115
    .line 1116
    move-result-object v1

    .line 1117
    move-object v15, v1

    .line 1118
    check-cast v15, [LD/y;

    .line 1119
    .line 1120
    move-object/from16 v23, v15

    .line 1121
    .line 1122
    :goto_1d
    new-instance v1, LD/j;

    .line 1123
    .line 1124
    const/16 v28, 0x0

    .line 1125
    .line 1126
    const/16 v29, 0x0

    .line 1127
    .line 1128
    const/16 v27, 0x1

    .line 1129
    .line 1130
    const/16 v26, 0x0

    .line 1131
    .line 1132
    move-object/from16 v18, v1

    .line 1133
    .line 1134
    move/from16 v25, v27

    .line 1135
    .line 1136
    invoke-direct/range {v18 .. v29}, LD/j;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[LD/y;[LD/y;ZIZZZ)V

    .line 1137
    .line 1138
    .line 1139
    iput-object v1, v0, LF3/h;->n:LD/j;

    .line 1140
    .line 1141
    :cond_27
    iget-object v1, v0, LF3/h;->n:LD/j;

    .line 1142
    .line 1143
    goto/16 :goto_21

    .line 1144
    .line 1145
    :cond_28
    move-object/from16 v7, v19

    .line 1146
    .line 1147
    iget-object v3, v0, LF3/h;->m:LD/j;

    .line 1148
    .line 1149
    if-nez v3, :cond_2c

    .line 1150
    .line 1151
    new-instance v3, Landroid/content/Intent;

    .line 1152
    .line 1153
    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1154
    .line 1155
    .line 1156
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1157
    .line 1158
    .line 1159
    sget v2, Lcom/google/android/gms/internal/cast/x;->a:I

    .line 1160
    .line 1161
    const/4 v1, 0x0

    .line 1162
    invoke-static {v15, v1, v3, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 1163
    .line 1164
    .line 1165
    move-result-object v21

    .line 1166
    iget v1, v11, LE3/g;->N:I

    .line 1167
    .line 1168
    iget v2, v11, LE3/g;->b0:I

    .line 1169
    .line 1170
    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1171
    .line 1172
    .line 1173
    move-result-object v2

    .line 1174
    const/4 v3, 0x0

    .line 1175
    if-nez v1, :cond_29

    .line 1176
    .line 1177
    const/16 v19, 0x0

    .line 1178
    .line 1179
    goto :goto_1e

    .line 1180
    :cond_29
    invoke-static {v3, v6, v1}, Landroidx/core/graphics/drawable/IconCompat;->c(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    .line 1181
    .line 1182
    .line 1183
    move-result-object v1

    .line 1184
    move-object/from16 v19, v1

    .line 1185
    .line 1186
    :goto_1e
    new-instance v22, Landroid/os/Bundle;

    .line 1187
    .line 1188
    invoke-direct/range {v22 .. v22}, Landroid/os/Bundle;-><init>()V

    .line 1189
    .line 1190
    .line 1191
    invoke-static {v2}, LD/o;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 1192
    .line 1193
    .line 1194
    move-result-object v20

    .line 1195
    new-instance v1, Ljava/util/ArrayList;

    .line 1196
    .line 1197
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1198
    .line 1199
    .line 1200
    new-instance v2, Ljava/util/ArrayList;

    .line 1201
    .line 1202
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1203
    .line 1204
    .line 1205
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1206
    .line 1207
    .line 1208
    move-result v4

    .line 1209
    if-eqz v4, :cond_2a

    .line 1210
    .line 1211
    move-object/from16 v24, v3

    .line 1212
    .line 1213
    goto :goto_1f

    .line 1214
    :cond_2a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1215
    .line 1216
    .line 1217
    move-result v4

    .line 1218
    new-array v4, v4, [LD/y;

    .line 1219
    .line 1220
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1221
    .line 1222
    .line 1223
    move-result-object v1

    .line 1224
    check-cast v1, [LD/y;

    .line 1225
    .line 1226
    move-object/from16 v24, v1

    .line 1227
    .line 1228
    :goto_1f
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1229
    .line 1230
    .line 1231
    move-result v1

    .line 1232
    if-eqz v1, :cond_2b

    .line 1233
    .line 1234
    move-object/from16 v23, v3

    .line 1235
    .line 1236
    goto :goto_20

    .line 1237
    :cond_2b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1238
    .line 1239
    .line 1240
    move-result v1

    .line 1241
    new-array v1, v1, [LD/y;

    .line 1242
    .line 1243
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1244
    .line 1245
    .line 1246
    move-result-object v1

    .line 1247
    move-object v15, v1

    .line 1248
    check-cast v15, [LD/y;

    .line 1249
    .line 1250
    move-object/from16 v23, v15

    .line 1251
    .line 1252
    :goto_20
    new-instance v1, LD/j;

    .line 1253
    .line 1254
    const/16 v28, 0x0

    .line 1255
    .line 1256
    const/16 v29, 0x0

    .line 1257
    .line 1258
    const/16 v27, 0x1

    .line 1259
    .line 1260
    const/16 v26, 0x0

    .line 1261
    .line 1262
    move-object/from16 v18, v1

    .line 1263
    .line 1264
    move/from16 v25, v27

    .line 1265
    .line 1266
    invoke-direct/range {v18 .. v29}, LD/j;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[LD/y;[LD/y;ZIZZZ)V

    .line 1267
    .line 1268
    .line 1269
    iput-object v1, v0, LF3/h;->m:LD/j;

    .line 1270
    .line 1271
    :cond_2c
    iget-object v1, v0, LF3/h;->m:LD/j;

    .line 1272
    .line 1273
    :goto_21
    return-object v1

    .line 1274
    nop

    .line 1275
    :sswitch_data_0
    .sparse-switch
        -0x655132e4 -> :sswitch_6
        -0x3855de4e -> :sswitch_5
        -0x3854c70e -> :sswitch_4
        -0x27d32f79 -> :sswitch_3
        -0x76b6783 -> :sswitch_2
        0xe0a3765 -> :sswitch_1
        0x51303e64 -> :sswitch_0
    .end sparse-switch

    .line 1276
    .line 1277
    .line 1278
    .line 1279
    .line 1280
    .line 1281
    .line 1282
    .line 1283
    .line 1284
    .line 1285
    .line 1286
    .line 1287
    .line 1288
    .line 1289
    .line 1290
    .line 1291
    .line 1292
    .line 1293
    .line 1294
    .line 1295
    .line 1296
    .line 1297
    .line 1298
    .line 1299
    .line 1300
    .line 1301
    .line 1302
    .line 1303
    .line 1304
    .line 1305
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()V
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    iget-object v3, v1, LF3/h;->b:Landroid/app/NotificationManager;

    .line 6
    .line 7
    if-eqz v3, :cond_17

    .line 8
    .line 9
    iget-object v4, v1, LF3/h;->k:LF3/g;

    .line 10
    .line 11
    if-nez v4, :cond_0

    .line 12
    .line 13
    goto/16 :goto_d

    .line 14
    .line 15
    :cond_0
    iget-object v4, v1, LF3/h;->l:Lm2/e;

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    if-nez v4, :cond_1

    .line 19
    .line 20
    move-object v4, v5

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget-object v4, v4, Lm2/e;->I:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v4, Landroid/graphics/Bitmap;

    .line 25
    .line 26
    :goto_0
    new-instance v6, LD/o;

    .line 27
    .line 28
    const-string v7, "cast_media_notification"

    .line 29
    .line 30
    iget-object v8, v1, LF3/h;->a:Landroid/content/Context;

    .line 31
    .line 32
    invoke-direct {v6, v8, v7}, LD/o;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v6, v4}, LD/o;->d(Landroid/graphics/Bitmap;)V

    .line 36
    .line 37
    .line 38
    iget-object v4, v1, LF3/h;->c:LE3/g;

    .line 39
    .line 40
    iget v7, v4, LE3/g;->K:I

    .line 41
    .line 42
    iget-object v9, v6, LD/o;->q:Landroid/app/Notification;

    .line 43
    .line 44
    iput v7, v9, Landroid/app/Notification;->icon:I

    .line 45
    .line 46
    iget-object v7, v1, LF3/h;->k:LF3/g;

    .line 47
    .line 48
    iget-object v7, v7, LF3/g;->d:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v7}, LD/o;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    iput-object v7, v6, LD/o;->e:Ljava/lang/CharSequence;

    .line 55
    .line 56
    iget-object v7, v1, LF3/h;->k:LF3/g;

    .line 57
    .line 58
    iget-object v7, v7, LF3/g;->e:Ljava/lang/String;

    .line 59
    .line 60
    new-array v9, v2, [Ljava/lang/Object;

    .line 61
    .line 62
    aput-object v7, v9, v0

    .line 63
    .line 64
    iget-object v7, v1, LF3/h;->j:Landroid/content/res/Resources;

    .line 65
    .line 66
    iget v10, v4, LE3/g;->Y:I

    .line 67
    .line 68
    invoke-virtual {v7, v10, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    invoke-static {v7}, LD/o;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    iput-object v7, v6, LD/o;->f:Ljava/lang/CharSequence;

    .line 77
    .line 78
    const/4 v7, 0x2

    .line 79
    invoke-virtual {v6, v7}, LD/o;->c(I)V

    .line 80
    .line 81
    .line 82
    iput-boolean v0, v6, LD/o;->j:Z

    .line 83
    .line 84
    iput v2, v6, LD/o;->n:I

    .line 85
    .line 86
    iget-object v7, v1, LF3/h;->e:Landroid/content/ComponentName;

    .line 87
    .line 88
    if-nez v7, :cond_2

    .line 89
    .line 90
    move-object v7, v5

    .line 91
    goto/16 :goto_2

    .line 92
    .line 93
    :cond_2
    new-instance v9, Landroid/content/Intent;

    .line 94
    .line 95
    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string v10, "targetActivity"

    .line 99
    .line 100
    invoke-virtual {v9, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v10

    .line 107
    invoke-virtual {v9, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v9, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 111
    .line 112
    .line 113
    new-instance v7, Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 119
    .line 120
    .line 121
    move-result-object v10

    .line 122
    if-nez v10, :cond_3

    .line 123
    .line 124
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 125
    .line 126
    .line 127
    move-result-object v10

    .line 128
    invoke-virtual {v9, v10}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    .line 129
    .line 130
    .line 131
    move-result-object v10

    .line 132
    :cond_3
    if-eqz v10, :cond_4

    .line 133
    .line 134
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 135
    .line 136
    .line 137
    move-result v11

    .line 138
    :try_start_0
    invoke-static {v8, v10}, Ln0/c;->i(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 139
    .line 140
    .line 141
    move-result-object v10

    .line 142
    :goto_1
    if-eqz v10, :cond_4

    .line 143
    .line 144
    invoke-virtual {v7, v11, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 148
    .line 149
    .line 150
    move-result-object v10

    .line 151
    invoke-static {v8, v10}, Ln0/c;->i(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 152
    .line 153
    .line 154
    move-result-object v10
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    goto :goto_1

    .line 156
    :catch_0
    move-exception v0

    .line 157
    const-string v2, "TaskStackBuilder"

    .line 158
    .line 159
    const-string v3, "Bad ComponentName while traversing activity parent metadata"

    .line 160
    .line 161
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    .line 163
    .line 164
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 165
    .line 166
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 167
    .line 168
    .line 169
    throw v2

    .line 170
    :cond_4
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    sget v9, Lcom/google/android/gms/internal/cast/x;->a:I

    .line 174
    .line 175
    const/high16 v10, 0x8000000

    .line 176
    .line 177
    or-int/2addr v9, v10

    .line 178
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 179
    .line 180
    .line 181
    move-result v10

    .line 182
    if-nez v10, :cond_16

    .line 183
    .line 184
    new-array v10, v0, [Landroid/content/Intent;

    .line 185
    .line 186
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v7

    .line 190
    check-cast v7, [Landroid/content/Intent;

    .line 191
    .line 192
    new-instance v10, Landroid/content/Intent;

    .line 193
    .line 194
    aget-object v11, v7, v0

    .line 195
    .line 196
    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 197
    .line 198
    .line 199
    const v11, 0x1000c000

    .line 200
    .line 201
    .line 202
    invoke-virtual {v10, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 203
    .line 204
    .line 205
    move-result-object v10

    .line 206
    aput-object v10, v7, v0

    .line 207
    .line 208
    invoke-static {v8, v2, v7, v9, v5}, Landroid/app/PendingIntent;->getActivities(Landroid/content/Context;I[Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    .line 209
    .line 210
    .line 211
    move-result-object v7

    .line 212
    :goto_2
    if-eqz v7, :cond_5

    .line 213
    .line 214
    iput-object v7, v6, LD/o;->g:Landroid/app/PendingIntent;

    .line 215
    .line 216
    :cond_5
    iget-object v7, v4, LE3/g;->l0:LE3/t;

    .line 217
    .line 218
    sget-object v9, LF3/h;->u:LH3/b;

    .line 219
    .line 220
    if-eqz v7, :cond_e

    .line 221
    .line 222
    new-array v4, v0, [Ljava/lang/Object;

    .line 223
    .line 224
    const-string v10, "actionsProvider != null"

    .line 225
    .line 226
    invoke-virtual {v9, v10, v4}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    invoke-static {v7}, LF3/m;->b(LE3/t;)[I

    .line 230
    .line 231
    .line 232
    move-result-object v4

    .line 233
    if-nez v4, :cond_6

    .line 234
    .line 235
    move-object v4, v5

    .line 236
    goto :goto_3

    .line 237
    :cond_6
    invoke-virtual {v4}, [I->clone()Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v4

    .line 241
    check-cast v4, [I

    .line 242
    .line 243
    :goto_3
    iput-object v4, v1, LF3/h;->g:[I

    .line 244
    .line 245
    invoke-static {v7}, LF3/m;->a(LE3/t;)Ljava/util/ArrayList;

    .line 246
    .line 247
    .line 248
    move-result-object v4

    .line 249
    new-instance v7, Ljava/util/ArrayList;

    .line 250
    .line 251
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 252
    .line 253
    .line 254
    iput-object v7, v1, LF3/h;->f:Ljava/util/ArrayList;

    .line 255
    .line 256
    if-nez v4, :cond_7

    .line 257
    .line 258
    goto/16 :goto_b

    .line 259
    .line 260
    :cond_7
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 261
    .line 262
    .line 263
    move-result-object v4

    .line 264
    :cond_8
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 265
    .line 266
    .line 267
    move-result v7

    .line 268
    if-eqz v7, :cond_11

    .line 269
    .line 270
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v7

    .line 274
    check-cast v7, LE3/e;

    .line 275
    .line 276
    iget-object v9, v7, LE3/e;->G:Ljava/lang/String;

    .line 277
    .line 278
    const-string v10, "com.google.android.gms.cast.framework.action.TOGGLE_PLAYBACK"

    .line 279
    .line 280
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v10

    .line 284
    iget-object v11, v7, LE3/e;->G:Ljava/lang/String;

    .line 285
    .line 286
    if-nez v10, :cond_d

    .line 287
    .line 288
    const-string v10, "com.google.android.gms.cast.framework.action.SKIP_NEXT"

    .line 289
    .line 290
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    move-result v10

    .line 294
    if-nez v10, :cond_d

    .line 295
    .line 296
    const-string v10, "com.google.android.gms.cast.framework.action.SKIP_PREV"

    .line 297
    .line 298
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    move-result v10

    .line 302
    if-nez v10, :cond_d

    .line 303
    .line 304
    const-string v10, "com.google.android.gms.cast.framework.action.FORWARD"

    .line 305
    .line 306
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    move-result v10

    .line 310
    if-nez v10, :cond_d

    .line 311
    .line 312
    const-string v10, "com.google.android.gms.cast.framework.action.REWIND"

    .line 313
    .line 314
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result v10

    .line 318
    if-nez v10, :cond_d

    .line 319
    .line 320
    const-string v10, "com.google.android.gms.cast.framework.action.STOP_CASTING"

    .line 321
    .line 322
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 323
    .line 324
    .line 325
    move-result v10

    .line 326
    if-nez v10, :cond_d

    .line 327
    .line 328
    const-string v10, "com.google.android.gms.cast.framework.action.DISCONNECT"

    .line 329
    .line 330
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    move-result v9

    .line 334
    if-eqz v9, :cond_9

    .line 335
    .line 336
    goto/16 :goto_8

    .line 337
    .line 338
    :cond_9
    new-instance v9, Landroid/content/Intent;

    .line 339
    .line 340
    invoke-direct {v9, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    iget-object v10, v1, LF3/h;->d:Landroid/content/ComponentName;

    .line 344
    .line 345
    invoke-virtual {v9, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 346
    .line 347
    .line 348
    sget v10, Lcom/google/android/gms/internal/cast/x;->a:I

    .line 349
    .line 350
    invoke-static {v8, v0, v9, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 351
    .line 352
    .line 353
    move-result-object v14

    .line 354
    iget v9, v7, LE3/e;->H:I

    .line 355
    .line 356
    if-nez v9, :cond_a

    .line 357
    .line 358
    move-object v12, v5

    .line 359
    goto :goto_5

    .line 360
    :cond_a
    const-string v10, ""

    .line 361
    .line 362
    invoke-static {v5, v10, v9}, Landroidx/core/graphics/drawable/IconCompat;->c(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    .line 363
    .line 364
    .line 365
    move-result-object v9

    .line 366
    move-object v12, v9

    .line 367
    :goto_5
    new-instance v15, Landroid/os/Bundle;

    .line 368
    .line 369
    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 370
    .line 371
    .line 372
    iget-object v7, v7, LE3/e;->I:Ljava/lang/String;

    .line 373
    .line 374
    invoke-static {v7}, LD/o;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 375
    .line 376
    .line 377
    move-result-object v13

    .line 378
    new-instance v7, Ljava/util/ArrayList;

    .line 379
    .line 380
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 381
    .line 382
    .line 383
    new-instance v9, Ljava/util/ArrayList;

    .line 384
    .line 385
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 389
    .line 390
    .line 391
    move-result v10

    .line 392
    if-eqz v10, :cond_b

    .line 393
    .line 394
    move-object/from16 v17, v5

    .line 395
    .line 396
    goto :goto_6

    .line 397
    :cond_b
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 398
    .line 399
    .line 400
    move-result v10

    .line 401
    new-array v10, v10, [LD/y;

    .line 402
    .line 403
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object v7

    .line 407
    check-cast v7, [LD/y;

    .line 408
    .line 409
    move-object/from16 v17, v7

    .line 410
    .line 411
    :goto_6
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 412
    .line 413
    .line 414
    move-result v7

    .line 415
    if-eqz v7, :cond_c

    .line 416
    .line 417
    move-object/from16 v16, v5

    .line 418
    .line 419
    goto :goto_7

    .line 420
    :cond_c
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 421
    .line 422
    .line 423
    move-result v7

    .line 424
    new-array v7, v7, [LD/y;

    .line 425
    .line 426
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object v7

    .line 430
    check-cast v7, [LD/y;

    .line 431
    .line 432
    move-object/from16 v16, v7

    .line 433
    .line 434
    :goto_7
    new-instance v7, LD/j;

    .line 435
    .line 436
    const/16 v21, 0x0

    .line 437
    .line 438
    const/16 v22, 0x0

    .line 439
    .line 440
    const/16 v20, 0x1

    .line 441
    .line 442
    const/16 v19, 0x0

    .line 443
    .line 444
    move-object v11, v7

    .line 445
    move/from16 v18, v20

    .line 446
    .line 447
    invoke-direct/range {v11 .. v22}, LD/j;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[LD/y;[LD/y;ZIZZZ)V

    .line 448
    .line 449
    .line 450
    goto :goto_9

    .line 451
    :cond_d
    :goto_8
    invoke-virtual {v1, v11}, LF3/h;->a(Ljava/lang/String;)LD/j;

    .line 452
    .line 453
    .line 454
    move-result-object v7

    .line 455
    :goto_9
    if-eqz v7, :cond_8

    .line 456
    .line 457
    iget-object v9, v1, LF3/h;->f:Ljava/util/ArrayList;

    .line 458
    .line 459
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    .line 461
    .line 462
    goto/16 :goto_4

    .line 463
    .line 464
    :cond_e
    new-array v0, v0, [Ljava/lang/Object;

    .line 465
    .line 466
    const-string v7, "actionsProvider == null"

    .line 467
    .line 468
    invoke-virtual {v9, v7, v0}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 469
    .line 470
    .line 471
    new-instance v0, Ljava/util/ArrayList;

    .line 472
    .line 473
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 474
    .line 475
    .line 476
    iput-object v0, v1, LF3/h;->f:Ljava/util/ArrayList;

    .line 477
    .line 478
    iget-object v0, v4, LE3/g;->G:Ljava/util/ArrayList;

    .line 479
    .line 480
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 481
    .line 482
    .line 483
    move-result-object v0

    .line 484
    :cond_f
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 485
    .line 486
    .line 487
    move-result v7

    .line 488
    if-eqz v7, :cond_10

    .line 489
    .line 490
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 491
    .line 492
    .line 493
    move-result-object v7

    .line 494
    check-cast v7, Ljava/lang/String;

    .line 495
    .line 496
    invoke-virtual {v1, v7}, LF3/h;->a(Ljava/lang/String;)LD/j;

    .line 497
    .line 498
    .line 499
    move-result-object v7

    .line 500
    if-eqz v7, :cond_f

    .line 501
    .line 502
    iget-object v8, v1, LF3/h;->f:Ljava/util/ArrayList;

    .line 503
    .line 504
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    .line 506
    .line 507
    goto :goto_a

    .line 508
    :cond_10
    iget-object v0, v4, LE3/g;->H:[I

    .line 509
    .line 510
    array-length v4, v0

    .line 511
    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([II)[I

    .line 512
    .line 513
    .line 514
    move-result-object v0

    .line 515
    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    .line 516
    .line 517
    .line 518
    move-result-object v0

    .line 519
    check-cast v0, [I

    .line 520
    .line 521
    iput-object v0, v1, LF3/h;->g:[I

    .line 522
    .line 523
    :cond_11
    :goto_b
    iget-object v0, v1, LF3/h;->f:Ljava/util/ArrayList;

    .line 524
    .line 525
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 526
    .line 527
    .line 528
    move-result-object v0

    .line 529
    :cond_12
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 530
    .line 531
    .line 532
    move-result v4

    .line 533
    if-eqz v4, :cond_13

    .line 534
    .line 535
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 536
    .line 537
    .line 538
    move-result-object v4

    .line 539
    check-cast v4, LD/j;

    .line 540
    .line 541
    if-eqz v4, :cond_12

    .line 542
    .line 543
    iget-object v7, v6, LD/o;->b:Ljava/util/ArrayList;

    .line 544
    .line 545
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    .line 547
    .line 548
    goto :goto_c

    .line 549
    :cond_13
    new-instance v0, Lk0/c;

    .line 550
    .line 551
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 552
    .line 553
    .line 554
    iput-object v5, v0, Lk0/c;->b:[I

    .line 555
    .line 556
    iget-object v4, v1, LF3/h;->g:[I

    .line 557
    .line 558
    if-eqz v4, :cond_14

    .line 559
    .line 560
    iput-object v4, v0, Lk0/c;->b:[I

    .line 561
    .line 562
    :cond_14
    iget-object v4, v1, LF3/h;->k:LF3/g;

    .line 563
    .line 564
    iget-object v4, v4, LF3/g;->a:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 565
    .line 566
    if-eqz v4, :cond_15

    .line 567
    .line 568
    iput-object v4, v0, Lk0/c;->c:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 569
    .line 570
    :cond_15
    invoke-virtual {v6, v0}, LD/o;->e(LD/p;)V

    .line 571
    .line 572
    .line 573
    invoke-virtual {v6}, LD/o;->a()Landroid/app/Notification;

    .line 574
    .line 575
    .line 576
    move-result-object v0

    .line 577
    const-string v4, "castMediaNotification"

    .line 578
    .line 579
    invoke-virtual {v3, v4, v2, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 580
    .line 581
    .line 582
    return-void

    .line 583
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 584
    .line 585
    const-string v2, "No intents added to TaskStackBuilder; cannot getPendingIntent"

    .line 586
    .line 587
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 588
    .line 589
    .line 590
    throw v0

    .line 591
    :cond_17
    :goto_d
    return-void
.end method
