.class public final LF3/j;
.super Landroid/support/v4/media/session/MediaSessionCompat$Callback;
.source "SourceFile"


# instance fields
.field public final synthetic a:LF3/l;


# direct methods
.method public constructor <init>(LF3/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, LF3/j;->a:LF3/l;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    sget-object v3, LF3/l;->v:LH3/b;

    .line 6
    .line 7
    new-array v4, v2, [Ljava/lang/Object;

    .line 8
    .line 9
    aput-object v0, v4, v1

    .line 10
    .line 11
    const-string v5, "onCustomAction with action = %s"

    .line 12
    .line 13
    invoke-virtual {v3, v5, v4}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    const/4 v4, 0x2

    .line 21
    const/4 v5, 0x3

    .line 22
    sparse-switch v3, :sswitch_data_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :sswitch_0
    const-string v3, "com.google.android.gms.cast.framework.action.FORWARD"

    .line 27
    .line 28
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    goto :goto_1

    .line 36
    :sswitch_1
    const-string v3, "com.google.android.gms.cast.framework.action.DISCONNECT"

    .line 37
    .line 38
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_0

    .line 43
    .line 44
    const/4 v3, 0x3

    .line 45
    goto :goto_1

    .line 46
    :sswitch_2
    const-string v3, "com.google.android.gms.cast.framework.action.STOP_CASTING"

    .line 47
    .line 48
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_0

    .line 53
    .line 54
    const/4 v3, 0x2

    .line 55
    goto :goto_1

    .line 56
    :sswitch_3
    const-string v3, "com.google.android.gms.cast.framework.action.REWIND"

    .line 57
    .line 58
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_0

    .line 63
    .line 64
    const/4 v3, 0x1

    .line 65
    goto :goto_1

    .line 66
    :cond_0
    :goto_0
    const/4 v3, -0x1

    .line 67
    :goto_1
    const-string v6, "Must be called from the main thread."

    .line 68
    .line 69
    const-wide/16 v7, 0x0

    .line 70
    .line 71
    move-object/from16 v9, p0

    .line 72
    .line 73
    iget-object v10, v9, LF3/j;->a:LF3/l;

    .line 74
    .line 75
    if-eqz v3, :cond_8

    .line 76
    .line 77
    if-eq v3, v2, :cond_4

    .line 78
    .line 79
    if-eq v3, v4, :cond_2

    .line 80
    .line 81
    if-eq v3, v5, :cond_1

    .line 82
    .line 83
    new-instance v1, Landroid/content/Intent;

    .line 84
    .line 85
    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-object v0, v10, LF3/l;->g:Landroid/content/ComponentName;

    .line 89
    .line 90
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 91
    .line 92
    .line 93
    iget-object v0, v10, LF3/l;->a:Landroid/content/Context;

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_1
    iget-object v0, v10, LF3/l;->d:LD3/g;

    .line 100
    .line 101
    if-eqz v0, :cond_3

    .line 102
    .line 103
    invoke-virtual {v0, v1}, LD3/g;->b(Z)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_2
    iget-object v0, v10, LF3/l;->d:LD3/g;

    .line 108
    .line 109
    if-eqz v0, :cond_3

    .line 110
    .line 111
    invoke-virtual {v0, v2}, LD3/g;->b(Z)V

    .line 112
    .line 113
    .line 114
    :cond_3
    return-void

    .line 115
    :cond_4
    iget-object v0, v10, LF3/l;->e:LE3/g;

    .line 116
    .line 117
    iget-wide v0, v0, LE3/g;->I:J

    .line 118
    .line 119
    neg-long v0, v0

    .line 120
    iget-object v2, v10, LF3/l;->n:LE3/j;

    .line 121
    .line 122
    if-nez v2, :cond_5

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_5
    invoke-virtual {v2}, LE3/j;->a()J

    .line 126
    .line 127
    .line 128
    move-result-wide v11

    .line 129
    add-long/2addr v11, v0

    .line 130
    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->max(JJ)J

    .line 131
    .line 132
    .line 133
    move-result-wide v0

    .line 134
    invoke-virtual {v2}, LE3/j;->f()J

    .line 135
    .line 136
    .line 137
    move-result-wide v2

    .line 138
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 139
    .line 140
    .line 141
    move-result-wide v12

    .line 142
    iget-object v0, v10, LF3/l;->n:LE3/j;

    .line 143
    .line 144
    if-nez v0, :cond_6

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_6
    new-instance v1, LC3/q;

    .line 148
    .line 149
    const/4 v14, 0x0

    .line 150
    const/4 v15, 0x0

    .line 151
    const/16 v16, 0x0

    .line 152
    .line 153
    move-object v11, v1

    .line 154
    invoke-direct/range {v11 .. v16}, LC3/q;-><init>(JIZLorg/json/JSONObject;)V

    .line 155
    .line 156
    .line 157
    invoke-static {v6}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0}, LE3/j;->t()Z

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    if-nez v2, :cond_7

    .line 165
    .line 166
    invoke-static {}, LE3/j;->q()LE3/p;

    .line 167
    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_7
    new-instance v2, LE3/m;

    .line 171
    .line 172
    invoke-direct {v2, v0, v1, v4}, LE3/m;-><init>(LE3/j;Ljava/lang/Object;I)V

    .line 173
    .line 174
    .line 175
    invoke-static {v2}, LE3/j;->u(LE3/r;)V

    .line 176
    .line 177
    .line 178
    :goto_2
    return-void

    .line 179
    :cond_8
    iget-object v0, v10, LF3/l;->e:LE3/g;

    .line 180
    .line 181
    iget-wide v0, v0, LE3/g;->I:J

    .line 182
    .line 183
    iget-object v2, v10, LF3/l;->n:LE3/j;

    .line 184
    .line 185
    if-nez v2, :cond_9

    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_9
    invoke-virtual {v2}, LE3/j;->a()J

    .line 189
    .line 190
    .line 191
    move-result-wide v11

    .line 192
    add-long/2addr v11, v0

    .line 193
    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->max(JJ)J

    .line 194
    .line 195
    .line 196
    move-result-wide v0

    .line 197
    invoke-virtual {v2}, LE3/j;->f()J

    .line 198
    .line 199
    .line 200
    move-result-wide v2

    .line 201
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 202
    .line 203
    .line 204
    move-result-wide v12

    .line 205
    iget-object v0, v10, LF3/l;->n:LE3/j;

    .line 206
    .line 207
    if-nez v0, :cond_a

    .line 208
    .line 209
    goto :goto_3

    .line 210
    :cond_a
    new-instance v1, LC3/q;

    .line 211
    .line 212
    const/4 v14, 0x0

    .line 213
    const/4 v15, 0x0

    .line 214
    const/16 v16, 0x0

    .line 215
    .line 216
    move-object v11, v1

    .line 217
    invoke-direct/range {v11 .. v16}, LC3/q;-><init>(JIZLorg/json/JSONObject;)V

    .line 218
    .line 219
    .line 220
    invoke-static {v6}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0}, LE3/j;->t()Z

    .line 224
    .line 225
    .line 226
    move-result v2

    .line 227
    if-nez v2, :cond_b

    .line 228
    .line 229
    invoke-static {}, LE3/j;->q()LE3/p;

    .line 230
    .line 231
    .line 232
    goto :goto_3

    .line 233
    :cond_b
    new-instance v2, LE3/m;

    .line 234
    .line 235
    invoke-direct {v2, v0, v1, v4}, LE3/m;-><init>(LE3/j;Ljava/lang/Object;I)V

    .line 236
    .line 237
    .line 238
    invoke-static {v2}, LE3/j;->u(LE3/r;)V

    .line 239
    .line 240
    .line 241
    :goto_3
    return-void

    .line 242
    nop

    .line 243
    :sswitch_data_0
    .sparse-switch
        -0x655132e4 -> :sswitch_3
        -0x27d32f79 -> :sswitch_2
        -0x76b6783 -> :sswitch_1
        0x51303e64 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onMediaButtonEvent(Landroid/content/Intent;)Z
    .locals 3

    .line 1
    sget-object v0, LF3/l;->v:LH3/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const-string v2, "onMediaButtonEvent"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "android.intent.extra.KEY_EVENT"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Landroid/view/KeyEvent;

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/16 v1, 0x7f

    .line 26
    .line 27
    if-eq v0, v1, :cond_0

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    const/16 v0, 0x7e

    .line 34
    .line 35
    if-ne p1, v0, :cond_1

    .line 36
    .line 37
    :cond_0
    iget-object p1, p0, LF3/j;->a:LF3/l;

    .line 38
    .line 39
    iget-object p1, p1, LF3/l;->n:LE3/j;

    .line 40
    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    invoke-virtual {p1}, LE3/j;->o()V

    .line 44
    .line 45
    .line 46
    :cond_1
    const/4 p1, 0x1

    .line 47
    return p1
.end method

.method public final onPause()V
    .locals 3

    .line 1
    sget-object v0, LF3/l;->v:LH3/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const-string v2, "onPause"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, LF3/j;->a:LF3/l;

    .line 12
    .line 13
    iget-object v0, v0, LF3/l;->n:LE3/j;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, LE3/j;->o()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final onPlay()V
    .locals 3

    .line 1
    sget-object v0, LF3/l;->v:LH3/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const-string v2, "onPlay"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, LF3/j;->a:LF3/l;

    .line 12
    .line 13
    iget-object v0, v0, LF3/l;->n:LE3/j;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, LE3/j;->o()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final onSeekTo(J)V
    .locals 8

    .line 1
    sget-object v0, LF3/l;->v:LH3/b;

    .line 2
    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    new-array v2, v2, [Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    aput-object v1, v2, v3

    .line 12
    .line 13
    const-string v1, "onSeekTo %d"

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, LF3/j;->a:LF3/l;

    .line 19
    .line 20
    iget-object v0, v0, LF3/l;->n:LE3/j;

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance v7, LC3/q;

    .line 26
    .line 27
    const/4 v6, 0x0

    .line 28
    const/4 v4, 0x0

    .line 29
    const/4 v5, 0x0

    .line 30
    move-object v1, v7

    .line 31
    move-wide v2, p1

    .line 32
    invoke-direct/range {v1 .. v6}, LC3/q;-><init>(JIZLorg/json/JSONObject;)V

    .line 33
    .line 34
    .line 35
    const-string p1, "Must be called from the main thread."

    .line 36
    .line 37
    invoke-static {p1}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, LE3/j;->t()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-nez p1, :cond_1

    .line 45
    .line 46
    invoke-static {}, LE3/j;->q()LE3/p;

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    new-instance p1, LE3/m;

    .line 51
    .line 52
    const/4 p2, 0x2

    .line 53
    invoke-direct {p1, v0, v7, p2}, LE3/m;-><init>(LE3/j;Ljava/lang/Object;I)V

    .line 54
    .line 55
    .line 56
    invoke-static {p1}, LE3/j;->u(LE3/r;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    return-void
.end method

.method public final onSkipToNext()V
    .locals 3

    .line 1
    sget-object v0, LF3/l;->v:LH3/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const-string v2, "onSkipToNext"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, LF3/j;->a:LF3/l;

    .line 12
    .line 13
    iget-object v0, v0, LF3/l;->n:LE3/j;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const-string v1, "Must be called from the main thread."

    .line 18
    .line 19
    invoke-static {v1}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, LE3/j;->t()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    invoke-static {}, LE3/j;->q()LE3/p;

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance v1, LE3/l;

    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    invoke-direct {v1, v0, v2}, LE3/l;-><init>(LE3/j;I)V

    .line 36
    .line 37
    .line 38
    invoke-static {v1}, LE3/j;->u(LE3/r;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    :goto_0
    return-void
.end method

.method public final onSkipToPrevious()V
    .locals 4

    .line 1
    sget-object v0, LF3/l;->v:LH3/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const-string v3, "onSkipToPrevious"

    .line 7
    .line 8
    invoke-virtual {v0, v3, v2}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, LF3/j;->a:LF3/l;

    .line 12
    .line 13
    iget-object v0, v0, LF3/l;->n:LE3/j;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const-string v2, "Must be called from the main thread."

    .line 18
    .line 19
    invoke-static {v2}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, LE3/j;->t()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    invoke-static {}, LE3/j;->q()LE3/p;

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance v2, LE3/l;

    .line 33
    .line 34
    invoke-direct {v2, v0, v1}, LE3/l;-><init>(LE3/j;I)V

    .line 35
    .line 36
    .line 37
    invoke-static {v2}, LE3/j;->u(LE3/r;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    :goto_0
    return-void
.end method
