.class public final Lcom/google/android/gms/internal/ads/Lp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/Dw;


# static fields
.field public static final J:Ljava/util/regex/Pattern;


# instance fields
.field public final G:Ljava/lang/String;

.field public final H:Lcom/google/android/gms/internal/ads/Ow;

.field public final I:Lcom/google/android/gms/internal/ads/Tw;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "([^;]+=[^;]+)(;\\s|$)"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/Lp;->J:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/Tw;Lcom/google/android/gms/internal/ads/Ow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Lp;->G:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Lp;->I:Lcom/google/android/gms/internal/ads/Tw;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Lp;->H:Lcom/google/android/gms/internal/ads/Ow;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/Kp;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/Kp;->a:Lorg/json/JSONObject;

    .line 4
    .line 5
    const-string v1, "http_timeout_millis"

    .line 6
    .line 7
    const v2, 0xea60

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result v5

    .line 14
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/Kp;->b:Lcom/google/android/gms/internal/ads/Xc;

    .line 15
    .line 16
    iget v1, v0, Lcom/google/android/gms/internal/ads/Xc;->g:I

    .line 17
    .line 18
    const/4 v2, -0x2

    .line 19
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Lp;->H:Lcom/google/android/gms/internal/ads/Ow;

    .line 20
    .line 21
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Lp;->I:Lcom/google/android/gms/internal/ads/Tw;

    .line 22
    .line 23
    const-string v6, ""

    .line 24
    .line 25
    const/4 v7, 0x1

    .line 26
    if-ne v1, v2, :cond_9

    .line 27
    .line 28
    new-instance v1, Ljava/util/HashMap;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 31
    .line 32
    .line 33
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/Xc;->e:Z

    .line 34
    .line 35
    if-eqz v2, :cond_6

    .line 36
    .line 37
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Lp;->G:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v8

    .line 43
    if-nez v8, :cond_6

    .line 44
    .line 45
    sget-object v8, Lcom/google/android/gms/internal/ads/Q7;->I0:Lcom/google/android/gms/internal/ads/J7;

    .line 46
    .line 47
    sget-object v9, Ll3/q;->d:Ll3/q;

    .line 48
    .line 49
    iget-object v9, v9, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 50
    .line 51
    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    check-cast v8, Ljava/lang/Boolean;

    .line 56
    .line 57
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    const-string v9, "Cookie"

    .line 62
    .line 63
    if-eqz v8, :cond_5

    .line 64
    .line 65
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 66
    .line 67
    .line 68
    move-result v8

    .line 69
    if-eqz v8, :cond_0

    .line 70
    .line 71
    move-object v8, v6

    .line 72
    goto :goto_1

    .line 73
    :cond_0
    sget-object v8, Lcom/google/android/gms/internal/ads/Lp;->J:Ljava/util/regex/Pattern;

    .line 74
    .line 75
    invoke-virtual {v8, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    move-object v8, v6

    .line 80
    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    .line 81
    .line 82
    .line 83
    move-result v10

    .line 84
    if-eqz v10, :cond_4

    .line 85
    .line 86
    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v10

    .line 90
    if-eqz v10, :cond_1

    .line 91
    .line 92
    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 93
    .line 94
    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v12

    .line 98
    const-string v13, "id="

    .line 99
    .line 100
    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 101
    .line 102
    .line 103
    move-result v12

    .line 104
    if-nez v12, :cond_2

    .line 105
    .line 106
    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v11

    .line 110
    const-string v12, "ide="

    .line 111
    .line 112
    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 113
    .line 114
    .line 115
    move-result v11

    .line 116
    if-eqz v11, :cond_1

    .line 117
    .line 118
    :cond_2
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 119
    .line 120
    .line 121
    move-result v11

    .line 122
    if-nez v11, :cond_3

    .line 123
    .line 124
    const-string v11, "; "

    .line 125
    .line 126
    invoke-virtual {v8, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v8

    .line 130
    :cond_3
    invoke-virtual {v8, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v8

    .line 134
    goto :goto_0

    .line 135
    :cond_4
    :goto_1
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-nez v2, :cond_6

    .line 140
    .line 141
    invoke-virtual {v1, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_5
    invoke-virtual {v1, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    :cond_6
    :goto_2
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/Xc;->d:Z

    .line 149
    .line 150
    if-eqz v2, :cond_7

    .line 151
    .line 152
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Kp;->a:Lorg/json/JSONObject;

    .line 153
    .line 154
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/Mp;->a(Ljava/util/Map;Lorg/json/JSONObject;)V

    .line 155
    .line 156
    .line 157
    :cond_7
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/Xc;->c:Ljava/lang/String;

    .line 158
    .line 159
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    if-nez v2, :cond_8

    .line 164
    .line 165
    move-object v6, p1

    .line 166
    :cond_8
    invoke-interface {v3, v7}, Lcom/google/android/gms/internal/ads/Ow;->e(Z)Lcom/google/android/gms/internal/ads/Ow;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/Tw;->a(Lcom/google/android/gms/internal/ads/Ow;)V

    .line 170
    .line 171
    .line 172
    new-instance p1, Lcom/google/android/gms/internal/ads/Ip;

    .line 173
    .line 174
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 175
    .line 176
    invoke-virtual {v6, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 177
    .line 178
    .line 179
    move-result-object v7

    .line 180
    const-string v8, ""

    .line 181
    .line 182
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Xc;->f:Ljava/lang/String;

    .line 183
    .line 184
    iget-boolean v9, v0, Lcom/google/android/gms/internal/ads/Xc;->d:Z

    .line 185
    .line 186
    move-object v3, p1

    .line 187
    move-object v6, v1

    .line 188
    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/Ip;-><init>(Ljava/lang/String;ILjava/util/HashMap;[BLjava/lang/String;Z)V

    .line 189
    .line 190
    .line 191
    return-object p1

    .line 192
    :cond_9
    if-ne v1, v7, :cond_b

    .line 193
    .line 194
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/Xc;->a:Ljava/util/List;

    .line 195
    .line 196
    if-eqz p1, :cond_a

    .line 197
    .line 198
    const-string v0, ", "

    .line 199
    .line 200
    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v6

    .line 204
    invoke-static {v6}, Lp3/h;->d(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    :cond_a
    new-instance p1, Lcom/google/android/gms/internal/ads/Bo;

    .line 208
    .line 209
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    const-string v1, "Error building request URL: "

    .line 214
    .line 215
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    const/4 v1, 0x2

    .line 220
    invoke-direct {p1, v1, v0}, Lcom/google/android/gms/internal/ads/Bo;-><init>(ILjava/lang/String;)V

    .line 221
    .line 222
    .line 223
    goto :goto_3

    .line 224
    :cond_b
    new-instance p1, Lcom/google/android/gms/internal/ads/Bo;

    .line 225
    .line 226
    invoke-direct {p1, v7}, Lcom/google/android/gms/internal/ads/Bo;-><init>(I)V

    .line 227
    .line 228
    .line 229
    :goto_3
    invoke-interface {v3, p1}, Lcom/google/android/gms/internal/ads/Ow;->d(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/Ow;

    .line 230
    .line 231
    .line 232
    const/4 v0, 0x0

    .line 233
    invoke-interface {v3, v0}, Lcom/google/android/gms/internal/ads/Ow;->e(Z)Lcom/google/android/gms/internal/ads/Ow;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/Tw;->a(Lcom/google/android/gms/internal/ads/Ow;)V

    .line 237
    .line 238
    .line 239
    throw p1
.end method
