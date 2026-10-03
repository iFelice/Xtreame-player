.class public final Lcom/google/android/gms/internal/ads/Ne;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:Z

.field public final j:Z

.field public final k:Z

.field public final l:Z

.field public final m:J

.field public final n:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 8
    .line 9
    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    move-object v0, v1

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    nop

    .line 15
    :cond_0
    :goto_0
    sget-object p1, Lcom/google/android/gms/internal/ads/Q7;->G:Lcom/google/android/gms/internal/ads/J7;

    .line 16
    .line 17
    const-string v1, "aggressive_media_codec_release"

    .line 18
    .line 19
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/Ne;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/J7;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/Ne;->a:Z

    .line 24
    .line 25
    sget-object p1, Lcom/google/android/gms/internal/ads/Q7;->i:Lcom/google/android/gms/internal/ads/J7;

    .line 26
    .line 27
    const-string v1, "byte_buffer_precache_limit"

    .line 28
    .line 29
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/Ne;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/J7;)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    iput p1, p0, Lcom/google/android/gms/internal/ads/Ne;->b:I

    .line 34
    .line 35
    sget-object p1, Lcom/google/android/gms/internal/ads/Q7;->q:Lcom/google/android/gms/internal/ads/J7;

    .line 36
    .line 37
    const-string v1, "exo_cache_buffer_size"

    .line 38
    .line 39
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/Ne;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/J7;)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    iput p1, p0, Lcom/google/android/gms/internal/ads/Ne;->c:I

    .line 44
    .line 45
    sget-object p1, Lcom/google/android/gms/internal/ads/Q7;->e:Lcom/google/android/gms/internal/ads/J7;

    .line 46
    .line 47
    const-string v1, "exo_connect_timeout_millis"

    .line 48
    .line 49
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/Ne;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/J7;)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    iput p1, p0, Lcom/google/android/gms/internal/ads/Ne;->d:I

    .line 54
    .line 55
    const-string p1, "exo_player_version"

    .line 56
    .line 57
    sget-object v1, Lcom/google/android/gms/internal/ads/Q7;->d:Lcom/google/android/gms/internal/ads/J7;

    .line 58
    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    :try_start_1
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :catch_1
    :cond_1
    sget-object p1, Ll3/q;->d:Ll3/q;

    .line 66
    .line 67
    iget-object p1, p1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 68
    .line 69
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    check-cast p1, Ljava/lang/String;

    .line 74
    .line 75
    :goto_1
    sget-object p1, Lcom/google/android/gms/internal/ads/Q7;->f:Lcom/google/android/gms/internal/ads/J7;

    .line 76
    .line 77
    const-string v1, "exo_read_timeout_millis"

    .line 78
    .line 79
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/Ne;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/J7;)I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    iput p1, p0, Lcom/google/android/gms/internal/ads/Ne;->e:I

    .line 84
    .line 85
    sget-object p1, Lcom/google/android/gms/internal/ads/Q7;->g:Lcom/google/android/gms/internal/ads/J7;

    .line 86
    .line 87
    const-string v1, "load_check_interval_bytes"

    .line 88
    .line 89
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/Ne;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/J7;)I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    iput p1, p0, Lcom/google/android/gms/internal/ads/Ne;->f:I

    .line 94
    .line 95
    sget-object p1, Lcom/google/android/gms/internal/ads/Q7;->h:Lcom/google/android/gms/internal/ads/J7;

    .line 96
    .line 97
    const-string v1, "player_precache_limit"

    .line 98
    .line 99
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/Ne;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/J7;)I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    iput p1, p0, Lcom/google/android/gms/internal/ads/Ne;->g:I

    .line 104
    .line 105
    sget-object p1, Lcom/google/android/gms/internal/ads/Q7;->j:Lcom/google/android/gms/internal/ads/J7;

    .line 106
    .line 107
    const-string v1, "socket_receive_buffer_size"

    .line 108
    .line 109
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/Ne;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/J7;)I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    iput p1, p0, Lcom/google/android/gms/internal/ads/Ne;->h:I

    .line 114
    .line 115
    sget-object p1, Lcom/google/android/gms/internal/ads/Q7;->W3:Lcom/google/android/gms/internal/ads/J7;

    .line 116
    .line 117
    const-string v1, "use_cache_data_source"

    .line 118
    .line 119
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/Ne;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/J7;)Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/Ne;->i:Z

    .line 124
    .line 125
    sget-object p1, Lcom/google/android/gms/internal/ads/Q7;->k:Lcom/google/android/gms/internal/ads/J7;

    .line 126
    .line 127
    const-string v1, "min_retry_count"

    .line 128
    .line 129
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/Ne;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/J7;)I

    .line 130
    .line 131
    .line 132
    sget-object p1, Lcom/google/android/gms/internal/ads/Q7;->m:Lcom/google/android/gms/internal/ads/J7;

    .line 133
    .line 134
    const-string v1, "treat_load_exception_as_non_fatal"

    .line 135
    .line 136
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/Ne;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/J7;)Z

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/Ne;->j:Z

    .line 141
    .line 142
    sget-object p1, Lcom/google/android/gms/internal/ads/Q7;->J1:Lcom/google/android/gms/internal/ads/J7;

    .line 143
    .line 144
    const-string v1, "enable_multiple_video_playback"

    .line 145
    .line 146
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/Ne;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/J7;)Z

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/Ne;->k:Z

    .line 151
    .line 152
    sget-object p1, Lcom/google/android/gms/internal/ads/Q7;->L1:Lcom/google/android/gms/internal/ads/J7;

    .line 153
    .line 154
    const-string v1, "use_range_http_data_source"

    .line 155
    .line 156
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/Ne;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/J7;)Z

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/Ne;->l:Z

    .line 161
    .line 162
    sget-object p1, Lcom/google/android/gms/internal/ads/Q7;->M1:Lcom/google/android/gms/internal/ads/J7;

    .line 163
    .line 164
    const-string v1, "range_http_data_source_high_water_mark"

    .line 165
    .line 166
    if-eqz v0, :cond_2

    .line 167
    .line 168
    :try_start_2
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 169
    .line 170
    .line 171
    move-result-wide v1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 172
    goto :goto_2

    .line 173
    :catch_2
    :cond_2
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 174
    .line 175
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 176
    .line 177
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    check-cast p1, Ljava/lang/Long;

    .line 182
    .line 183
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 184
    .line 185
    .line 186
    move-result-wide v1

    .line 187
    :goto_2
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/Ne;->m:J

    .line 188
    .line 189
    sget-object p1, Lcom/google/android/gms/internal/ads/Q7;->N1:Lcom/google/android/gms/internal/ads/J7;

    .line 190
    .line 191
    const-string v1, "range_http_data_source_low_water_mark"

    .line 192
    .line 193
    if-eqz v0, :cond_3

    .line 194
    .line 195
    :try_start_3
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 196
    .line 197
    .line 198
    move-result-wide v0
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 199
    goto :goto_3

    .line 200
    :catch_3
    :cond_3
    sget-object v0, Ll3/q;->d:Ll3/q;

    .line 201
    .line 202
    iget-object v0, v0, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 203
    .line 204
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    check-cast p1, Ljava/lang/Long;

    .line 209
    .line 210
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 211
    .line 212
    .line 213
    move-result-wide v0

    .line 214
    :goto_3
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/Ne;->n:J

    .line 215
    .line 216
    return-void
.end method

.method public static final a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/J7;)Z
    .locals 1

    .line 1
    sget-object v0, Ll3/q;->d:Ll3/q;

    .line 2
    .line 3
    iget-object v0, v0, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 4
    .line 5
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    check-cast p2, Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :catch_0
    :cond_0
    return p2
.end method

.method public static final b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/J7;)I
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return p0

    .line 8
    :catch_0
    :cond_0
    sget-object p0, Ll3/q;->d:Ll3/q;

    .line 9
    .line 10
    iget-object p0, p0, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 11
    .line 12
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Ljava/lang/Integer;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0
.end method
