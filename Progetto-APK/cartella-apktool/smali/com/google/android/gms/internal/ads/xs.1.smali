.class public final Lcom/google/android/gms/internal/ads/xs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/tu;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p4, p0, Lcom/google/android/gms/internal/ads/xs;->a:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xs;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/xs;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/xs;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/ads/xs;->a:I

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xs;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/xs;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/xs;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/xs;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/xs;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/xs;->b:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/xs;->d:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p1, Lorg/json/JSONObject;

    .line 13
    .line 14
    :try_start_0
    const-string v0, "pii"

    .line 15
    .line 16
    invoke-static {p1, v0}, LQ3/b;->Y(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    move-object v0, v2

    .line 21
    check-cast v0, Lj3/a;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, v0, Lj3/a;->a:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    const-string v0, "rdid"

    .line 34
    .line 35
    move-object v1, v2

    .line 36
    check-cast v1, Lj3/a;

    .line 37
    .line 38
    iget-object v1, v1, Lj3/a;->a:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    .line 42
    .line 43
    const-string v0, "is_lat"

    .line 44
    .line 45
    check-cast v2, Lj3/a;

    .line 46
    .line 47
    iget-boolean v1, v2, Lj3/a;->b:Z

    .line 48
    .line 49
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 50
    .line 51
    .line 52
    const-string v0, "idtype"

    .line 53
    .line 54
    const-string v1, "adid"

    .line 55
    .line 56
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    .line 58
    .line 59
    move-object v0, v3

    .line 60
    check-cast v0, Lcom/google/android/gms/internal/ads/Om;

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Om;->r()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_1

    .line 67
    .line 68
    const-string v0, "paidv1_id_android_3p"

    .line 69
    .line 70
    move-object v1, v3

    .line 71
    check-cast v1, Lcom/google/android/gms/internal/ads/Om;

    .line 72
    .line 73
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Om;->H:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v1, Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    .line 79
    .line 80
    const-string v0, "paidv1_creation_time_android_3p"

    .line 81
    .line 82
    check-cast v3, Lcom/google/android/gms/internal/ads/Om;

    .line 83
    .line 84
    iget-object v1, v3, Lcom/google/android/gms/internal/ads/Om;->I:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v1, Ljava/time/Instant;

    .line 87
    .line 88
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Hf;->e(Ljava/time/Instant;)J

    .line 89
    .line 90
    .line 91
    move-result-wide v1

    .line 92
    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :catch_0
    move-exception p1

    .line 97
    goto :goto_0

    .line 98
    :cond_0
    check-cast v1, Ljava/lang/String;

    .line 99
    .line 100
    if-eqz v1, :cond_1

    .line 101
    .line 102
    const-string v0, "pdid"

    .line 103
    .line 104
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    .line 106
    .line 107
    const-string v0, "pdidtype"

    .line 108
    .line 109
    const-string v1, "ssaid"

    .line 110
    .line 111
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :goto_0
    const-string v0, "Failed putting Ad ID."

    .line 116
    .line 117
    invoke-static {v0, p1}, Lo3/I;->l(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    .line 119
    .line 120
    :cond_1
    :goto_1
    return-void

    .line 121
    :pswitch_0
    check-cast p1, Landroid/os/Bundle;

    .line 122
    .line 123
    check-cast v2, Ljava/lang/String;

    .line 124
    .line 125
    const-string v0, "consent_string"

    .line 126
    .line 127
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    check-cast v1, Ljava/lang/String;

    .line 131
    .line 132
    const-string v0, "fc_consent"

    .line 133
    .line 134
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    check-cast v3, Landroid/os/Bundle;

    .line 138
    .line 139
    const-string v0, "iab_consent_info"

    .line 140
    .line 141
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :pswitch_1
    const-string v0, "activity"

    .line 146
    .line 147
    check-cast p1, Landroid/os/Bundle;

    .line 148
    .line 149
    sget-object v4, Lcom/google/android/gms/internal/ads/u8;->a:Lcom/google/android/gms/internal/ads/f8;

    .line 150
    .line 151
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    check-cast v4, Ljava/lang/Boolean;

    .line 156
    .line 157
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    if-nez v4, :cond_2

    .line 162
    .line 163
    goto/16 :goto_3

    .line 164
    .line 165
    :cond_2
    new-instance v4, Landroid/os/Bundle;

    .line 166
    .line 167
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 168
    .line 169
    .line 170
    sget-object v5, Lk3/l;->A:Lk3/l;

    .line 171
    .line 172
    iget-object v5, v5, Lk3/l;->c:Lo3/O;

    .line 173
    .line 174
    check-cast v2, Landroid/content/Context;

    .line 175
    .line 176
    const/4 v5, 0x0

    .line 177
    :try_start_1
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    check-cast v2, Landroid/app/ActivityManager;

    .line 182
    .line 183
    if-nez v2, :cond_3

    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_3
    const/4 v6, 0x1

    .line 187
    invoke-virtual {v2, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    if-eqz v2, :cond_4

    .line 192
    .line 193
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 194
    .line 195
    .line 196
    move-result v6

    .line 197
    if-nez v6, :cond_4

    .line 198
    .line 199
    const/4 v6, 0x0

    .line 200
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 205
    .line 206
    if-eqz v2, :cond_4

    .line 207
    .line 208
    invoke-static {v2}, Landroid/support/v4/media/session/a;->b(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;

    .line 209
    .line 210
    .line 211
    move-result-object v6

    .line 212
    if-eqz v6, :cond_4

    .line 213
    .line 214
    invoke-static {v2}, Landroid/support/v4/media/session/a;->b(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 222
    goto :goto_2

    .line 223
    :catch_1
    nop

    .line 224
    :cond_4
    :goto_2
    invoke-virtual {v4, v0, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    new-instance v0, Landroid/os/Bundle;

    .line 228
    .line 229
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 230
    .line 231
    .line 232
    check-cast v1, Ll3/d1;

    .line 233
    .line 234
    iget v2, v1, Ll3/d1;->K:I

    .line 235
    .line 236
    const-string v5, "width"

    .line 237
    .line 238
    invoke-virtual {v0, v5, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 239
    .line 240
    .line 241
    const-string v2, "height"

    .line 242
    .line 243
    iget v1, v1, Ll3/d1;->H:I

    .line 244
    .line 245
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 246
    .line 247
    .line 248
    const-string v1, "size"

    .line 249
    .line 250
    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 251
    .line 252
    .line 253
    check-cast v3, Ljava/util/List;

    .line 254
    .line 255
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 256
    .line 257
    .line 258
    move-result v0

    .line 259
    if-nez v0, :cond_5

    .line 260
    .line 261
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 262
    .line 263
    .line 264
    move-result v0

    .line 265
    new-array v0, v0, [Landroid/os/Parcelable;

    .line 266
    .line 267
    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    check-cast v0, [Landroid/os/Parcelable;

    .line 272
    .line 273
    const-string v1, "parents"

    .line 274
    .line 275
    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 276
    .line 277
    .line 278
    :cond_5
    const-string v0, "view_hierarchy"

    .line 279
    .line 280
    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 281
    .line 282
    .line 283
    :goto_3
    return-void

    .line 284
    nop

    .line 285
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
